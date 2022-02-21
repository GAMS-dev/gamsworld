*******************************************************
*   Mosel Example Problems
*   ======================
*
* origin file b3jobshop.mos
*   ``````````````````
*   Job shop production planning.
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "B-3 Job shop"

Set JOBS / j1*j8 / ;
* Set of jobs (operations)

Parameter DUR[JOBS] / j1 45 , j2 20 , j3 12 , j4 10 ,
                      j5 17 , j6 10 , j7 34 , j8 28  / ;
* Durations of jobs on machines

Parameter BIGM ; BIGM = Sum{JOBS, DUR[JOBS]} ;
* Some (sufficiently) large value

Alias(JOBS,JOBS1) ;
Alias(JOBS,JOBS2) ;


Parameter ARC[JOBS,JOBS1] ;
*dynamic array(JOBS,JOBS) of integer
          ARC['j1','j6'] = 1 ;
          ARC['j4','j2'] = 1 ;
          ARC['j2','j7'] = 1 ;
          ARC['j8','j3'] = 1 ;
          ARC['j3','j5'] = 1 ;

* Precedence graph
Parameter DISJ[JOBS,JOBS1] ;
* Disjunctions between jobs
          DISJ['j1','j2']= 1 ;
          DISJ['j1','j3']= 1 ;
          DISJ['j2','j3']= 1 ;
          DISJ['j4','j5']= 1 ;
          DISJ['j6','j7']= 1 ;
          DISJ['j6','j8']= 1 ;
          DISJ['j7','j8']= 1 ;


Parameter order[JOBS,JOBS1] ;
Parameter A ;
          A = 0 ;
          Loop((JOBS,JOBS1)$(DISJ[JOBS,JOBS1] gt 0 ),
          A = A+1 ;
          order[JOBS,JOBS1] = A ;
                         );



Binary Variable y[JOBS]      ;
* Disjunction variables
       Variable start[JOBS]  ,
* Start times of jobs
                finish       ;
* Schedule completion time
Equation Eq_1(JOBS)       ,
         Eq_2(JOBS,JOBS1) ,
         Eq_3(JOBS,JOBS1) ,
         Eq_4(JOBS,JOBS1)  ;

* Precedence constraints
Eq_1(JOBS)..
     finish =g= start[JOBS]+DUR[JOBS] ;

Eq_2(JOBS,JOBS1)$(ARC[JOBS,JOBS1] gt 0)..
     start[JOBS]+DUR[JOBS] =l= start[JOBS1] ;

Eq_3(JOBS,JOBS1)$((DISJ[JOBS,JOBS1] gt 0)   and
                        (ord(JOBS) lt ord(JOBS1)) )..
  start(JOBS) +DUR(JOBS)  =l= start(JOBS1)+ BIGM *
  Sum{JOBS2$(ord(JOBS2) eq order[JOBS,JOBS1]),y(JOBS2)} ;

Eq_4(JOBS,JOBS1)$((DISJ[JOBS,JOBS1] gt 0)   and
                        (ord(JOBS) lt ord(JOBS1)) )..
  start(JOBS1)+DUR(JOBS1) =l= start(JOBS)+ BIGM * (1-Sum{JOBS2$(ord(JOBS2) eq order[JOBS,JOBS1]),y(JOBS2)}
                                                  ) ;

* Bound on latest completion time

* Xpress solution
*start.fx['J1'] = 42 ;
*start.fx['J2'] = 10 ;
*start.fx['J3'] = 30 ;
*start.fx['J4'] =  0 ;
*start.fx['J5'] = 42 ;
*start.fx['J6'] = 87 ;
*start.fx['J7'] = 30 ;
*start.fx['J8'] =  0 ;


*y.fx['J1'] = 1 ;
*y.fx['J2'] = 1 ;
*y.fx['J3'] = 0 ;
*y.fx['J4'] = 0 ;
*y.fx['J5'] = 1 ;
*y.fx['J6'] = 1 ;
*y.fx['J7'] = 1 ;
*y.fx['J8'] = 0 ;




finish.up = BIGM ;
start.lo[JOBS] = 0 ;
* Solve the problem: minimize latest completion time
Model B_3_Job_shop / All / ;

Solve B_3_Job_shop using  mip minimazing finish ;

Display finish.l ;



