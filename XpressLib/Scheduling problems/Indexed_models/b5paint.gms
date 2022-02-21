*******************************************************
*   Mosel Example Problems
*   ======================
*
*   file b5paint.mos
*   ````````````````
*   Planning of paint production
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "B-5 Paint production"

$Set  NJ 5
Set JOBS / j1*j%NJ% /;
* Number of paint batches (=jobs)

* Durations of jobs
Parameter  DUR[JOBS] / j1 45 , j2 35 , j3 45 , j4 32 , j5 50 / ;

Alias(JOBS1,JOBS);

* Cleaning times between jobs
Table CLEAN[JOBS1,JOBS]
        j1   j2  j3   j4   j5
    j1   0   11   7   13   11
    j2   5    0  13   15   15
    j3  13   15   0   23   11
    j4   9   13   5    0    3
    j5   3    7   7    7    0  ;



Binary Variable succ[JOBS,JOBS1] ;
* =1 if batch i is followed by batch j,
* =0 otherwise
Variable y[JOBS]         ,
         CycleTime       ;

Equation Eq_1(JOBS)      ,
         Eq_2(JOBS)      ,
         Eq_3(JOBS,JOBS1),
         Def_obj         ;

* One successor and one predecessor per batch
Eq_1(JOBS)..
     Sum{JOBS1$(ord(JOBS) ne ord(JOBS1)), succ[JOBS,JOBS1]} =e= 1 ;

Eq_2(JOBS)..
     Sum{JOBS1$(ord(JOBS) ne ord(JOBS1)), succ[JOBS1,JOBS]} =e= 1 ;

* Exclude subtours
Eq_3(JOBS,JOBS1)$((ord(JOBS1) ne 1) and (ord(JOBS) ne ord(JOBS1)))..
     y[JOBS1] =g= y(JOBS) + 1 - %NJ% * (1 - succ[JOBS,JOBS1]) ;
* Variables for excluding subtours
* Objective: minimize the duration of a production cycle

Def_obj..
 CycleTime =e= Sum{(JOBS,JOBS1)$(ord(JOBS) ne ord(JOBS1)),
                   (DUR[JOBS]+CLEAN[JOBS,JOBS1])*succ[JOBS,JOBS1]} ;

* Solve the problem

y.lo[JOBS] = 0 ;

* XPress solution
*y.fx['J1'] = 0 ;
*y.fx['J2'] = 4 ;
*y.fx['J3'] = 2 ;
*y.fx['J4'] = 1 ;
*y.fx['J5'] = 3 ;

Model B_5_Paint / All / ;

Solve B_5_Paint using  mip minimazing CycleTime ;

Display CycleTime.l ;
