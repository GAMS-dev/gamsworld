*******************************************************
*   Mosel Example Problems
*   ======================
*
*   file d4backup2_ka.mos
*   `````````````````````
*   Bin packing: backup of files onto floppy disks
*   - Alternative formulation using 'cumulative' -
*
*   (c) 2006 Artelys S.A. and Dash Associates
*
********************************************************

* model "D-4 Bin packing (CP)"
* uses "kalis", "mmsystem"

* Number of floppy disks
Scalar ND ;

* Set of files
Set S_FILES / f1*f16 / ;


* Size of files to be saved
Parameter SIZE[S_FILES] /  f1   46 ,  f2   55 , f3   62 , f4   87 ,
                           f5  108 ,  f6  114 , f7  137 , f8  164 ,
                           f9  253 ,  f10 364 , f11 372 , f12 388 ,
                           f13 406 ,  f14 432 , f15 461 , f16 851  / ;


Set DISKS / j1*j5 / ;
* We have to give possibility to use big number of disks !!!!

* Floppy disk size
Parameter CAP[DISKS] ; CAP[DISKS] = 1440  ;

*  Provide a sufficiently large number of disks
ND = ceil(Sum{S_FILES, SIZE[S_FILES]/CAP['j1'] } ) ;

Binary Variable
* Disk a file is saved on
         Location[S_FILES,DISKS] ;

Variable diskuse ;

Equation Eq_1(DISKS)      ,
         Eq_2             ,
         Eq_3(S_FILES)    ,
         Def_Obj(S_FILES,DISKS) ;

Eq_1(DISKS)..
     Sum{S_FILES,Location[S_FILES,DISKS]* SIZE[S_FILES]} =l= CAP[DISKS]  ;

Eq_2..
     Sum{(S_FILES,DISKS),Location[S_FILES,DISKS]} =e= 16 ;

Eq_3(S_FILES)..
     Sum{DISKS,Location[S_FILES,DISKS]} =e= 1 ;

* Limit the number of disks used
Def_Obj(S_FILES,DISKS)..
    diskuse =g=   ord(DISKS)*Location[S_FILES,DISKS] ;

* X-Press Kalis Solution    GAMS-solution
*save_on.fx['f1']  = 2 ;    save_on.fx['f1']  = 1 ;
*save_on.fx['f2']  = 3 ;    save_on.fx['f2']  = 1 ;
*save_on.fx['f3']  = 3 ;    save_on.fx['f3']  = 3 ;
*save_on.fx['f4']  = 3 ;    save_on.fx['f4']  = 3 ;
*save_on.fx['f5']  = 3 ;    save_on.fx['f5']  = 1 ;
*save_on.fx['f6']  = 1 ;    save_on.fx['f6']  = 2 ;
*save_on.fx['f7']  = 3 ;    save_on.fx['f7']  = 2 ;
*save_on.fx['f8']  = 2 ;    save_on.fx['f8']  = 2 ;
*save_on.fx['f9']  = 3 ;    save_on.fx['f9']  = 2 ;
*save_on.fx['f10'] = 3 ;    save_on.fx['f10'] = 2 ;
*save_on.fx['f11'] = 3 ;    save_on.fx['f11'] = 1 ;
*save_on.fx['f12'] = 2 ;    save_on.fx['f12'] = 1 ;
*save_on.fx['f13'] = 2 ;    save_on.fx['f13'] = 2 ;
*save_on.fx['f14'] = 2 ;    save_on.fx['f14'] = 3 ;
*save_on.fx['f15'] = 1 ;    save_on.fx['f15'] = 1 ;
*save_on.fx['f16'] = 1 ;    save_on.fx['f16'] = 3 ;

* Minimize the total number of disks used
Model D_4_Bin_packing / all / ;

Solve D_4_Bin_packing using MIP minimazing diskuse ;

Display diskuse.l ;
Display ND ;

$exit
* Lets Check

Parameter Fill[DISKS] ;
Fill[DISKS] = Sum{S_FILES,Location.l[S_FILES,DISKS]* SIZE[S_FILES]}  ;

*GAMS filing  X-Press solution
first  1430   1426
second 1438   1436
third  1432   1438


