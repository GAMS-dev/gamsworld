*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file d4backup.mos
*   `````````````````
*   Bin packing: backup of files onto floppy disks
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
*******************************************************
* model "D-4 Bin packing"

* Number of floppy disks
Set FIL / f1*f16 / ;
* Set of files
Scalar CAP /1440 / ;
* Floppy disk size

Parameter SIZE[FIL]   /  f1  46 ,  f2  55 ,  f3  62 ,  f4  87
                         f5 108 ,  f6 114 ,  f7 137 ,  f8 164
                         f9 253 , f10 364 , f11 372 , f12 388
                        f13 406 , f14 432 , f15 461 , f16 851 / ;
* Size of files to be saved

* Provide a sufficiently large number of disks
Scalar ND ; ND = ceil((Sum{FIL, SIZE[FIL]}/CAP)) ;

Set DISKS_All /d1*d100/ ;
* Set of disks
Set DISKS(DISKS_All) ;

    DISKS(DISKS_All) = Yes$(ord(DISKS_All) le ND ) ;


Binary Variable save[FIL,DISKS_All] ;
* 1 if file saved on disk, 0 otherwise
       Variable diskuse ;
* Number of disks used

Equation Eq_1(FIL)   ,
         Eq_2(FIL)   ,
         Eq_3(DISKS_All) ;

* Limit the number of disks used
Eq_1(FIL)..
     diskuse =g= Sum{DISKS_All$DISKS(DISKS_All), ord(DISKS_All)*save[FIL,DISKS_All] } ;

* Every file onto a single disk
Eq_2(FIL)..
     Sum{DISKS_All$DISKS(DISKS_All), save[FIL,DISKS_All] } =e= 1 ;

* Capacity limit of disks
Eq_3(DISKS_All)$DISKS(DISKS_All)..
     Sum{FIL, SIZE[FIL]*save[FIL,DISKS_All] } =l= CAP ;

* Solve the problem
Model D_4_Bin_packing / All  / ;

Solve D_4_Bin_packing using mip minimazing diskuse ;

Display diskuse.l ;

