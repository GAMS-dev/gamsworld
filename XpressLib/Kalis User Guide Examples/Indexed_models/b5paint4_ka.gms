*******************************************************
*   Mosel Example Problems
*   ======================
*
*   file b5paint4_ka.mos
*   ```````````````````
*   Planning of paint production
*   - Alternative formulation using disjunctions
*     between tasks -
*
*   (c) 2006 Artelys S.A. and Dash Associates
*
********************************************************

* model "B-5 Paint production (CP)"
*  uses "kalis"

* Number of paint batches (=jobs)
$Set NJ 5
Set JOBS / j1*j%NJ% / ;
Alias(JOBS,JOBS1) ;

* Durations of jobs
Parameter DUR[JOBS] / j1 40 , j2 35 , j3 45 , j4 32 , j5 50 / ;

* Cleaning times between jobs
Table CLEAN_BIG[JOBS,JOBS1]
                             j1  j2  j3  j4  j5
                        j1    0  11   7  13  11
                        j2    5   0  13  15  15
                        j3   13  15   0  23  11
                        j4    9  13   5   0   3
                        j5    3   7   7   7   0   ;



* Cleaning times after a batch
Parameter CB[JOBS] ;

Binary Variable
* Variables for excluding subtours
         y[JOBS,JOBS1] ;

Variable
* Cleaning time after batches
          clean[JOBS]  ,
* Objective variable
          cycleTime    ;

Equation Eq_1(JOBS)       ,
         Eq_2(JOBS)       ,
         Eq_3(JOBS)       ,
         Def_Obj          ;


* Cleaning time after every batch

* One successor and one predecessor per batch

* Exclude subtours
Eq_1(JOBS)..
    clean[JOBS] =e= Sum{JOBS1 ,CLEAN_BIG[JOBS,JOBS1] * y[JOBS,JOBS1] };

Eq_2(JOBS)..
    Sum{JOBS1, y[JOBS,JOBS1]} =e= 1 ;

Eq_3(JOBS)..
    Sum{JOBS1, y[JOBS1,JOBS]} =e= 1 ;

* Objective: minimize the duration of a production cycle
Def_Obj..
    cycleTime =e= Sum{JOBS, (DUR[JOBS]+clean[JOBS]) } ;


y.fx[JOBS,JOBS1]$(ord(JOBS) eq ord(JOBS1)) = 0    ;


*************************************************************
* XPress_kalis Solutions:
*y.fx['j1','j4'] = 1 ;
*y.fx['j2','j1'] = 1 ;
*y.fx['j3','j5'] = 1 ;
*y.fx['j4','j3'] = 1 ;
*y.fx['j5','j2'] = 1 ;

* Number from CLEAN_BIG  is 4
*clean.fx['j1'] = 13 ;
* Number from CLEAN_BIG  is 1
*clean.fx['j2'] =  5 ;
* Number from CLEAN_BIG  is 5
*clean.fx['j3'] = 11 ;
* Number from CLEAN_BIG  is 3
*clean.fx['j4'] =  5 ;
* Number from CLEAN_BIG  is 2 (because only number 2  is free for 7)
*clean.fx['j5'] =  7 ;
*************************************************************
* GAMS solutions:
*y.fx['j1','j3'] = 1 ;
*y.fx['j2','j1'] = 1 ;
*y.fx['j3','j2'] = 1 ;
*y.fx['j4','j5'] = 1 ;
*y.fx['j5','j4'] = 1 ;
*************************************************************

* Solve the problem
Model B_5_Paint_production / all / ;

Solve B_5_Paint_production using MIP minimazing cycleTime ;

