*******************************************************
*   Mosel Example Problems
*   ======================
*
* origin  file b4seq.mos
*   ``````````````
*   Sequencing jobs on a bottleneck machine
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "B-4 Sequencing"

$Set  NJ 7
* Number of jobs
Set JOBS / j1*j%NJ% /;

* Release dates of jobs
Parameter REL[JOBS] / j1 2 , j2 5 , j3  4 ,
                      j4 0 , j5 0 , j6  8 , j7  9 / ;
* Durations of jobs
Parameter  DUR[JOBS] / j1 5 , j2 6 , j3  8 ,
                       j4 4 , j5 2 , j6  4 , j7 2 / ;

* Due dates of jobs
Parameter  DUE[JOBS] / j1 10 , j2 21 , j3  15 ,
                       j4 10 , j5  5 , j6  15 , j7  22  / ;


Alias(JOBS,JOBS1);

Binary Variable  rank[JOBS,JOBS1]  ;
* =1 if job j at position k
       Variable
          start[JOBS] ,
* Start time of job at position k
          comp[JOBS]  ,
* Completion time of job at position k
          late[JOBS]  ,
* Lateness of job at position k
          finish      ,
* Completion time of the entire schedule
          Obj_1       ,
          Obj_2       ,
          Obj_3       ;

Equation Eq_1(JOBS) ,
         Eq_2(JOBS) ,
         Eq_3(JOBS) ,
         Eq_4(JOBS) ,
         Eq_5(JOBS) ,
         Eq_6(JOBS) ,
         Eq_7(JOBS) ,
         Def_obj_1  ,
         Def_obj_2  ,
         Def_obj_3 ;

* One job per position
Eq_1(JOBS)..
     Sum{JOBS1,rank[JOBS1,JOBS] } =e= 1 ;
* One position per job
Eq_2(JOBS)..
     Sum{JOBS1,rank[JOBS,JOBS1] } =e= 1  ;

* Sequence of jobs
Eq_3(JOBS)$(ord(JOBS) ne card(JOBS) )..
   start[JOBS+1] =g= start[JOBS] + Sum{JOBS1,DUR[JOBS1]*rank[JOBS1,JOBS] } ;

* Start times
Eq_4(JOBS)..
   start[JOBS] =g= Sum{JOBS1,REL[JOBS1]*rank[JOBS1,JOBS]} ;

* Completion times
Eq_5(JOBS)..
   comp[JOBS] =e= start[JOBS] + Sum{JOBS1, DUR[JOBS1]*rank[JOBS1,JOBS]} ;

Eq_6(JOBS)..
  finish =g= comp[JOBS] ;

* Xpress solutions

*start.fx['J1'] =   0 ;
*start.fx['J2'] =   4 ;
*start.fx['J3'] =   9 ;
*start.fx['J4'] =  11 ;
*start.fx['J5'] =  13 ;
*start.fx['J6'] =  17 ;
*start.fx['J7'] =  23 ;

*comp.fx['J1'] = 2  ;
*comp.fx['J2'] = 6  ;
*comp.fx['J3'] = 11 ;
*comp.fx['J4'] = 13 ;
*comp.fx['J5'] = 17 ;
*comp.fx['J6'] = 23 ;
*comp.fx['J7'] = 31 ;

start.lo[JOBS] =   0 ;
comp.lo[JOBS] =   0 ;
late.lo[JOBS] =   0 ;
* Objective function 1: minimize latest completion time
Def_obj_1..
  Obj_1 =e= finish ;


* Objective function 2: minimize average completion time
Def_obj_2..
  Obj_2 =e= Sum{JOBS, comp[JOBS]} ;

* Objective function 3: minimize total tardiness
Eq_7(JOBS)..
  late[JOBS] =g= comp[JOBS] - Sum{JOBS1, DUE[JOBS1]*rank[JOBS1,JOBS]} ;

Def_obj_3..
  Obj_3 =e= Sum{JOBS, late[JOBS]} ;

Model B_4_Sequencing_1 / Eq_1 , Eq_2 , Eq_3 , Eq_4 , Eq_5 , Eq_6 , Def_obj_1 / ;
Model B_4_Sequencing_2 / Eq_1 , Eq_2 , Eq_3 , Eq_4 , Eq_5 ,        Def_obj_2 / ;
Model B_4_Sequencing_3 / Eq_1 , Eq_2 , Eq_3 , Eq_4 , Eq_5 , Eq_7 , Def_obj_3 / ;

Solve B_4_Sequencing_2  using  mip minimazing Obj_2 ;
Solve B_4_Sequencing_1  using  mip minimazing Obj_1 ;
Solve B_4_Sequencing_3  using  mip minimazing Obj_3 ;

Display Obj_1.l ;
Display Obj_2.l ;
Display Obj_3.l ;