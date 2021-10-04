
**********************************************************************
*  Mosel Example Problems
*  ======================
*
* Origin file binpacking.mos
*  ```````````````````
*  TYPE:         Bin packing problem
*  DIFFICULTY:   2
*  FEATURES:     simple MIP problem, random generation of data,
*                use of model parameters, setting Optimizer controls
*  DESCRIPTION:  A number of items of different sizes are to be put
*                into bins of different capacities. Item sizes and bin
*                capacities are randomly generated integers that lie in
*                the given intervals. We wish to minimize the total
*                number of bins used.
*  FURTHER INFO: Similar problem:
*                `Applications of optimization with Xpress-MP',
*                Section 9.4 `Backing up files'
*
*  (c) 2004 Dash Associates
***********************************************************************!)

* model Binpacking

* Number of items
$Set NITEMS  20
* Number of bins
$Set NBINS   11

* Min. size of items
Scalar MinSize     / 20 / ;
* Max. size of items
Scalar MaxSize     / 39 / ;
* Min. capacity of bins
Scalar MinCapacity / 40 / ;
* Max. capacity of bins
Scalar MaxCapacity / 89 / ;

* Items
Set ITEMS / i1*i%NITEMS%/ ;
* Bins
Set BINS  / b1*b%NBINS% / ;

Parameter SIZE[ITEMS]
* Sizes of items
Scalar TOTALSIZE
* Total size of items
Parameter CAP[BINS]
* Bin capacities

* Generate random bin capacities in the interval [MinCapacity,MaxCapacity]
Loop{BINS,CAP[BINS]=MinCapacity+round(Uniform(0,MaxCapacity+1-MinCapacity)-0.5);};
* Generate random item sizes in the interval [MinSize,MaxSize]
Scalar TOTALSIZE / 0 / ;

Loop{ITEMS,  SIZE[ITEMS] = MinSize+round(Uniform(0,MaxSize+1-MinSize) - 0.5);
  TOTALSIZE = TOTALSIZE + SIZE[ITEMS] ; } ;

Binary Variables contains[BINS,ITEMS] ,
*                1 if item in bin, 0 otherwise
                 binused[BINS]        ;
*                1 if bin used, 0 otherwise


Variables BinsUsed ;

Equation ItemInOneBinOnly(ITEMS) ,
         BinCapacity(BINS)       ,
         PackAll                 ,
         Def_Obj                 ;
* Each item can go in at most one bin
ItemInOneBinOnly(ITEMS)..
    Sum{BINS , contains[BINS,ITEMS] } =l= 1 ;

* Ensure bin capacity is not exceeded
BinCapacity(BINS)..
    Sum{ITEMS, contains[BINS,ITEMS]*SIZE[ITEMS] } =l= CAP[BINS]*binused[BINS];

* Pack all items
PackAll..
    Sum{(BINS,ITEMS), contains[BINS,ITEMS] } =e= %NITEMS% ;

* Objective function: number of bins used
Def_Obj..
    BinsUsed =e= Sum{BINS, binused[BINS] } ;

contains.lo[BINS,ITEMS] = 0 ;
binused.lo[BINS] = 0 ;
* Solve the problem
Model Binpacking / all / ;

Solve Binpacking using MIP minimazing BinsUsed ;

Display BinsUsed.l ;
