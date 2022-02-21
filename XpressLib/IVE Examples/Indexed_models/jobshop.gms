*******************************************************
*   Mosel Example Problems
*   ======================
*
*   file jobshop.mos
*   ````````````````
*   TYPE:         Job shop scheduling problem
*   DIFFICULTY:   3
*   FEATURES:     MIP problem, formulating disjunctions (BigM);
*                 `dynamic array', `range', `exists', `forall-do',
*                 graphical solution representation
*   DESCRIPTION:  A company has received an order for three types of
*                 wallpapers. Every paper type is produced as a continuous
*                 roll of paper that passes through several machines, each
*                 printing a different color. The order in which the papers
*                 are run through the machines depends on the design of the
*                 paper. The processing times differ depending on the surface
*                 that needs to be printed.
*                 Knowing that every machine can only process one wallpaper
*                 at a time and that a paper cannot be processed by several
*                 machines simultaneously, how should the paper printing be
*                 scheduled on the machines in order to finish the order as
*                 early as possible?
*   FURTHER INFO: `Applications of optimization with Xpress-MP',
*                 Section 7.3 `Job shop scheduling'
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke
********************************************************

* model "Job shop"

* Set of jobs (wall paper types)
Set JOBS /j1 , j2 , j3 / ;
* Set of machines (colors)
Set MACH /m1 , m2 , m3 / ;
Set D / d1*d7 /;

Alias(MACH,MACH1);
Alias(JOBS,JOBS1);
Alias(JOBS,JOBS2);

* Durations per machine and paper
Parameter DUR[MACH,JOBS] ;
      DUR['m1','j1'] = 45 ; DUR['m1','j2'] = 20 ; DUR['m1','j3'] = 12 ;
                            DUR['m2','j2'] = 10 ; DUR['m2','j3'] = 17 ;
      DUR['m3','j1'] = 10 ; DUR['m3','j2'] = 34 ; DUR['m3','j3'] = 28 ;


* Number of tasks per job
Parameter NUMT[JOBS] / j1 2 , j2 3 , j3 3 / ;
* Number of tasks per job
Parameter SEQ[JOBS,MACH] ;
                 SEQ['j1','m1'] = 1 ; SEQ['j1','m2'] = 3 ; SEQ['j1','m3'] = 0 ;
                 SEQ['j2','m1'] = 2 ; SEQ['j2','m2'] = 1 ; SEQ['j2','m3'] = 3 ;
                 SEQ['j3','m1'] = 3 ; SEQ['j3','m2'] = 1 ; SEQ['j3','m3'] = 2 ;

Parameter Add_SEQ[JOBS,JOBS1] ;
      Add_SEQ['j1','j1'] = 1 ; Add_SEQ['j1','j2'] = 3 ; Add_SEQ['j1','j3'] = 0 ;
      Add_SEQ['j2','j1'] = 2 ; Add_SEQ['j2','j2'] = 1 ; Add_SEQ['j2','j3'] = 3 ;
      Add_SEQ['j3','j1'] = 3 ; Add_SEQ['j3','j2'] = 1 ; Add_SEQ['j3','j3'] = 2 ;
Parameter Add_SEQ_1[JOBS,JOBS1] ;
       Add_SEQ_1[JOBS,JOBS1] =  Add_SEQ[JOBS,JOBS1+1] ;

* No. of jobs (disjunctions) per machine
Parameter NUMD[MACH] / m1 3 , m2 2 , m3 3 / ;
* List of jobs per machine
Parameter DISJ[MACH,JOBS] ;
                 DISJ['m1','j1'] = 1 ; DISJ['m1','j2'] = 2 ; DISJ['m1','j3'] =  3 ;
                 DISJ['m2','j1'] = 2 ; DISJ['m2','j2'] = 3 ; DISJ['m2','j3'] =  0 ;
                 DISJ['m3','j1'] = 1 ; DISJ['m3','j2'] = 2 ; DISJ['m3','j3'] =  3 ;

Parameter Additional[JOBS] ;
Parameter Additional_1[JOBS] ;


Loop(JOBS,
     Additional[JOBS] = Sum{MACH$(ord(MACH) eq NUMT(JOBS)),SEQ[JOBS,MACH]};
     );

Loop(JOBS,
     Additional_1[JOBS] = Sum{MACH$(ord(MACH)+1 eq NUMT(JOBS)),SEQ[JOBS,MACH]};
     );

Parameter BIGM ;
          BIGM = Sum{(JOBS,MACH), DUR[MACH,JOBS] } ;

Binary Variable y[D] ;
Variable
* Start times of tasks
         start[MACH,JOBS] ,
* Schedule completion time
         finish           ;
Equation
         PrecLast(JOBS)           ,
         Prec(JOBS1,JOBS)         ,
         Disj1(MACH,JOBS,JOBS1,D) ,
         Disj2(MACH,JOBS,JOBS1,D) ,
         Def_Obj                  ;

* Precedence constraints
PrecLast(JOBS)..
finish =g=
           Sum{MACH$(ord(MACH) eq Additional[JOBS]),start[MACH,JOBS] } +
           Sum{MACH$(ord(MACH) eq Additional[JOBS]),DUR[MACH,JOBS]   } ;

Prec(JOBS,JOBS1)$(ord(JOBS1) lt NUMT[JOBS])..

Sum{MACH1$(ord(MACH1) eq Add_SEQ[JOBS,JOBS1]),start[MACH1,JOBS ]   } +
Sum{MACH1$(ord(MACH1) eq Add_SEQ[JOBS,JOBS1]),DUR[MACH1,JOBS]      }    =l=
Sum{MACH1$(ord(MACH1) eq Add_SEQ_1[JOBS,JOBS1]),start[MACH1,JOBS]  } ;

* Disjunctions

Disj1(MACH,JOBS,JOBS1,D)$((ord(JOBS) le NUMD(MACH) ) and
                          (ord(JOBS1) le NUMD(MACH)) and
                          (ord(JOBS) lt ord(JOBS1) ))..

Sum{JOBS2$(ord(JOBS2) eq DISJ[MACH,JOBS] ) , start[MACH,JOBS2]} +
Sum{JOBS2$(ord(JOBS2) eq DISJ[MACH,JOBS] ) , DUR[MACH,JOBS2]  }   =l=
Sum{JOBS2$(ord(JOBS2) eq DISJ[MACH,JOBS1]) , start[MACH,JOBS2]} +
BIGM*y[D] ;

Disj2(MACH,JOBS,JOBS1,D)$((ord(JOBS) le NUMD(MACH) ) and
                          (ord(JOBS1) le NUMD(MACH)) and
                          (ord(JOBS) lt ord(JOBS1) ))..
Sum{JOBS2$(ord(JOBS2) eq DISJ[MACH,JOBS1]),start[MACH,JOBS2] } +
Sum{JOBS2$(ord(JOBS2) eq DISJ[MACH,JOBS1]),DUR[MACH,JOBS2]   }   =l=
Sum{JOBS2$(ord(JOBS2) eq DISJ[MACH,JOBS] ),start[MACH,JOBS2] } +
BIGM*(1-y[D]) ;

* Bound on latest completion time
Def_Obj..
    finish =l= BIGM ;
start.lo[MACH,JOBS] = 0 ;

* XPress solutions
*start.fx['M1','J1'] = 42 ;
*start.fx['M1','J2'] = 10 ;
*start.fx['M1','J3'] = 30 ;
*start.fx['M2','J1'] =  0 ;
*start.fx['M2','J2'] =  0 ;
*start.fx['M2','J3'] = 42 ;
*start.fx['M3','J1'] = 87 ;
*start.fx['M3','J2'] = 30 ;
*start.fx['M3','J3'] =  0 ;
Y.fx['D3'] = 0 ;
*Y.fx['d1'] = 1 ;
*Y.fx['d2'] = 1 ;
*Y.fx['d3'] = 0 ;
*Y.fx['d4'] = 0 ;
*Y.fx['d5'] = 1 ;
*Y.fx['d6'] = 1 ;
*Y.fx['d7'] = 1 ;



* Solve the problem: minimize latest completion time
Model Job_shop / all / ;

Solve Job_shop using MIP Minimazing finish ;

Display finish.l ;