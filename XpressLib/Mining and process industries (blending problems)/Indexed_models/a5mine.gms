******************************************************
*   Mosel Example Problems
*   ======================
*
*   file a5mine.mos
*   ```````````````
*   Opencast mining
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Feb. 2002
********************************************************
*
*model "A-5 Opencast mining"
Set BLOCKS /b1*b18/;
* Set of blocks
Alias(BLOCKS,BLOCKS1);

Set I /i1*i3/;

Set LEVEL23(BLOCKS) /b9*b18/;

* Blocks in levels 2 and 3
Parameter ARC[BLOCKS,I];

ARC['b9','i1']  =  1 ;
ARC['b9','i2']  =  2 ;
ARC['b9','i3']  =  3 ;

ARC['b10','i1'] =  2 ;
ARC['b10','i2'] =  3 ;
ARC['b10','i3'] =  4 ;

ARC['b11','i1'] =  3 ;
ARC['b11','i2'] =  4 ;
ARC['b11','i3'] =  5 ;

ARC['b12','i1'] =  4 ;
ARC['b12','i2'] =  5 ;
ARC['b12','i3'] =  6 ;

ARC['b13','i1'] =  5 ;
ARC['b13','i2'] =  6 ;
ARC['b13','i3'] =  7 ;

ARC['b14','i1'] =  6 ;
ARC['b14','i2'] =  7 ;
ARC['b14','i3'] =  8 ;

ARC['b15','i1'] =  9 ;
ARC['b15','i2'] = 10 ;
ARC['b15','i3'] = 11 ;

ARC['b16','i1'] = 10 ;
ARC['b16','i2'] = 11 ;
ARC['b16','i3'] = 12 ;

ARC['b17','i1'] = 11 ;
ARC['b17','i2'] = 12 ;
ARC['b17','i3'] = 13 ;

ARC['b18','i1'] = 12 ;
ARC['b18','i2'] = 13 ;
ARC['b18','i3'] = 14 ;

* Arcs indicating order of extraction

Parameter COST[BLOCKS]
                      / b1  100 ,  b2  100 ,  b3   100 ,  b4  100 ,
                        b5  100 ,  b6  100 ,  b7   100 ,  b8  100 ,
                        b9 1000 , b10  200 , b11   200 , b12  200 ,
                       b13  200 , b14 1000 , b15  1000 , b16 1000 ,
                       b17  300 , b18 1000  / ;
* COST -> Exploitation cost of blocks
Parameter VALUE[BLOCKS] ;
VALUE['b1']  =  200 ;
VALUE['b7']  =  300 ;
VALUE['b10'] =  500 ;
VALUE['b12'] =  200 ;
VALUE['b17'] = 1000 ;
VALUE['b18'] = 1200 ;
* VALUE -> Value of blocks

Scalar WEIGHT / 10000 / ;

Binary Variable extract[BLOCKS] ;
* 1 if block b is extracted
Variable Profit ;

Equation Eq_1(BLOCKS,I) ,
         Def_obj         ;

Eq_1(BLOCKS,I)$(LEVEL23(BLOCKS))..
  extract[BLOCKS] =l= Sum{BLOCKS1$(ARC(BLOCKS,I) eq ord(BLOCKS1)),extract[BLOCKS1]} ;

* Objective: maximize total profit
Def_obj..
    Profit =e= Sum{BLOCKS, (VALUE[BLOCKS]-COST[BLOCKS])* extract[BLOCKS] } ;

Model A_5_Opencast_mining / all / ;

Solve A_5_Opencast_mining using mip maximazing Profit ;

Display Profit.l ;