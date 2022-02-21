*******************************************************
*   Mosel Example Problems
*   ======================
*
* origin  file b3jobshop2.mos
*   ``````````````````
*   Job shop production planning,
*   second, generic formulation.
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "B-3 Job shop (2)"

Set JOBS /j1,j2,j3/;
* Set of jobs (wall paper types)
Set I /i1*i7/;

Alias(JOBS,JOBS1) ;
Alias(JOBS,JOBS2) ;

Set MACH /m1,m2,m3/;
* Set of machines (colors)
Alias(MACH,MACH1) ;
Set COLOR / blue , green , yellow / ;

Parameter DUR[MACH,JOBS] ;
* Durations per machine and paper
      DUR['m1','j1'] = 45 ;
      DUR['m1','j2'] = 20 ;
      DUR['m1','j3'] = 12 ;
      DUR['m2','j2'] = 10 ;
      DUR['m2','j3'] = 17 ;
      DUR['m3','j1'] = 10 ;
      DUR['m3','j2'] = 34 ;
      DUR['m3','j3'] = 28 ;

Parameter NUMT[JOBS] / j1 2 , j2 3 , j3 3 / ;
* Number of tasks per job

Parameter SEQ[JOBS,MACH] ;
* Machine sequence per job
       SEQ['j1','m1'] = 1 ;
       SEQ['j1','m2'] = 3 ;

       SEQ['j2','m1'] = 2 ;
       SEQ['j2','m2'] = 1 ;
       SEQ['j2','m3'] = 3 ;

       SEQ['j3','m1'] = 3 ;
       SEQ['j3','m2'] = 1 ;
       SEQ['j3','m3'] = 2 ;

Parameter NUMD[MACH] / m1 3 , m2 2 , m3 3 / ;
* No. of jobs (disjunctions) per machine

Parameter DISJ[MACH,JOBS] ;
* List of jobs per machine

       DISJ['m1','j1'] = 1 ;
       DISJ['m1','j2'] = 2 ;
       DISJ['m1','j3'] = 3 ;

       DISJ['m2','j1'] = 2 ;
       DISJ['m2','j2'] = 3 ;

       DISJ['m3','j1'] = 1 ;
       DISJ['m3','j2'] = 2 ;
       DISJ['m3','j3'] = 3 ;

Parameter BIGM ; BIGM=Sum{(MACH,JOBS),DUR[MACH,JOBS]} ;
* Some (sufficiently) large value

Parameter order[MACH,JOBS] ;
Parameter A ;
          A = 0 ;
          Loop((MACH,JOBS,JOBS1)$((ord(JOBS) lt ord(JOBS1))and(ord(JOBS1) le NUMD[MACH])),
          A = A+1 ;
          order[MACH,JOBS] = A ;
                         );

Parameter Additional_1[JOBS];
Loop(JOBS,  Additional_1[JOBS] = Sum{MACH$(ord(MACH) eq NUMT[JOBS]), SEQ[JOBS,MACH]};
     );

Binary Variable y[I] ;
* Disjunction variables

Variable start[MACH,JOBS] ,
* Start times of tasks
         finish           ;
* Schedule completion time

Equation Eq_1(JOBS) ,
         Eq_2(JOBS,MACH) ,
         Eq_3(MACH,JOBS,JOBS1) ,
         Eq_4(MACH,JOBS,JOBS1) ;

* Precedence constraints
Eq_1(JOBS)..
     finish =g=
           Sum{MACH1$(ord(MACH1) eq Additional_1[JOBS]),start[MACH1,JOBS]} +
           Sum{MACH1$(ord(MACH1) eq Additional_1[JOBS]),  DUR[MACH1,JOBS]  }    ;

Eq_2(JOBS,MACH)$(ord(MACH) le (NUMT[JOBS]-1))..
            Sum{MACH1$(ord(MACH1) eq SEQ[JOBS,MACH]),start[MACH1,JOBS]} +
            Sum{MACH1$(ord(MACH1) eq SEQ[JOBS,MACH]),  DUR[MACH1,JOBS]} =l=
            Sum{MACH1$(ord(MACH1) eq SEQ[JOBS,MACH+1]),start[MACH1,JOBS]} ;

* Disjunctions

Eq_3(MACH,JOBS,JOBS1)$( (ord(JOBS)  lt ord(JOBS1) ) and
                        (ord(JOBS1) le NUMD[MACH] ) )..

Sum{JOBS2$(ord(JOBS2) eq DISJ[MACH,JOBS] ), start[MACH,JOBS2]} +
Sum{JOBS2$(ord(JOBS2) eq DISJ[MACH,JOBS] ), DUR[MACH,JOBS2]  }   =l=
Sum{JOBS2$(ord(JOBS2) eq DISJ[MACH,JOBS1]), start[MACH,JOBS2]} +
   BIGM * Sum{I$(ord(I) eq order[MACH,JOBS]),y(I)} ;

Eq_4(MACH,JOBS,JOBS1)$((ord(JOBS) lt ord(JOBS1))and(ord(JOBS1) le NUMD[MACH]))..
Sum{JOBS2$(ord(JOBS2) eq DISJ[MACH,JOBS1]), start[MACH,JOBS2]} +
Sum{JOBS2$(ord(JOBS2) eq DISJ[MACH,JOBS1] ), DUR[MACH,JOBS2]  }   =l=
Sum{JOBS2$(ord(JOBS2) eq DISJ[MACH,JOBS] ), start[MACH,JOBS2]} +
        BIGM*(1-Sum{I$(ord(I) eq order[MACH,JOBS]),y(I)}
                                                  ) ;


* Bound on latest completion time
finish.up = BIGM ;
start.lo[MACH,JOBS] = 0 ;

* Solve the problem: minimize latest completion time
Model B_3_Job_shop_2 / All / ;

Solve B_3_Job_shop_2 using  mip minimazing finish ;

Display finish.l ;



