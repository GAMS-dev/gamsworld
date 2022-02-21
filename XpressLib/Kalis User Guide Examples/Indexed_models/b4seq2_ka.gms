*******************************************************
*   CP Example Problems
*   ===================
*
*   file b4seq2_ka.mos
*   ``````````````````
*   Sequencing jobs on a bottleneck machine
*   (See "Applications of optimization with Xpress-MP",
*        Section 7.4 Sequencing jobs on a bottleneck machine)
*   - Alternative formulation using disjunctions -
*
*   (c) 2005 Artelys S.A. and Dash Associates
*
********************************************************

*model "B-4 Sequencing (CP)"
* uses "kalis"

* Number of jobs
$Set NJ 7
Set JOBS / j1*j%NJ% / ;
Alias(JOBS,JOBS1) ;

* Release dates of jobs
Parameter REL[JOBS] / j1  2 , j2  5 , j3  4 , j4  0 , j5  0 , j6  8 , j7  9 / ;
* Durations of jobs
Parameter DUR[JOBS] / j1  5 , j2  6 , j3  8 , j4  4 , j5  2 , j6  4 , j7  2 / ;
* Due dates of jobs
Parameter DUE[JOBS] / j1 10 , j2 21 , j3 15 , j4 10 , j5  5 , j6 15 , j7 22 / ;

Scalar MAXTIME ;
       MAXTIME = MAX(REL['j1'],
                     REL['j2'],
                     REL['j3'],
                     REL['j4'],
                     REL['j5'],
                     REL['j6'],
                     REL['j7'] )  + Sum{JOBS, DUR[JOBS] } ;

Scalar MINDUR ;
       MINDUR = Min(DUR['j1'],
                    DUR['j2'],
                    DUR['j3'],
                    DUR['j4'],
                    DUR['j5'],
                    DUR['j6'],
                    DUR['j7'] ) ;

Scalar MAXDUR ;
       MAXDUR = MAX(DUR['j1'],
                    DUR['j2'],
                    DUR['j3'],
                    DUR['j4'],
                    DUR['j5'],
                    DUR['j6'],
                    DUR['j7'] ) ;
Scalar MINREL ;
       MINREL = Min(REL['j1'],
                    REL['j2'],
                    REL['j3'],
                    REL['j4'],
                    REL['j5'],
                    REL['j6'],
                    REL['j7'] ) ;
Scalar MAXREL ;
       MAXREL = Max(REL['j1'],
                    REL['j2'],
                    REL['j3'],
                    REL['j4'],
                    REL['j5'],
                    REL['j6'],
                    REL['j7'] ) ;

Scalar MINDUE ;
       MINDUE = Min(DUE['j1'],
                    DUE['j2'],
                    DUE['j3'],
                    DUE['j4'],
                    DUE['j5'],
                    DUE['j6'],
                    DUE['j7'] ) ;

Scalar MAXDUE ;
       MAXDUE = MAX(DUE['j1'],
                    DUE['j2'],
                    DUE['j3'],
                    DUE['j4'],
                    DUE['j5'],
                    DUE['j6'],
                    DUE['j7'] ) ;

Binary Variable
* Number of job at position k
              rank[JOBS,JOBS1];

Variable
* Start time of job at position k
              start[JOBS]     ,
* Duration of job at position k
              dur_small[JOBS]       ,
* Completion time of job at position k
              comp[JOBS]      ,
* Release date of job at position k
              rel_small[JOBS]       ,
* Lateness of job at position k
              late[JOBS]      ,
* Due date of job at position k
              due_small[JOBS] ,
              totComp         ,
              totLate         ;


Equation
          Eq_1_a(JOBS)     ,
          Eq_1_b(JOBS)     ,
          Eq_2(JOBS)       ,
          Eq_3(JOBS)       ,
          Eq_4(JOBS)       ,
          Eq_5(JOBS)       ,
          Eq_6(JOBS)       ,
          Eq_7(JOBS)       ,
          Def_Obj_1(JOBS)  ,
          Def_Obj_2        ,
          Def_Obj_3        ;

* One posistion per job
Eq_1_a(JOBS)..
     Sum{JOBS1,rank[JOBS,JOBS1]}  =e= 1 ;
Eq_1_b(JOBS)..
     Sum{JOBS1,rank[JOBS1,JOBS]}  =e= 1 ;


* Duration of job at position k
Eq_2(JOBS)..
 dur_small[JOBS] =e= Sum{JOBS1,DUR[JOBS1]*rank[JOBS,JOBS1] } ;

* Release date of job at position k
Eq_3(JOBS)..
rel_small[JOBS] =e= Sum{JOBS1,REL[JOBS1]*rank[JOBS,JOBS1] } ;

* Sequence of jobs
Eq_4(JOBS)$(ord(JOBS) lt card(JOBS))..
    start[JOBS+1] =g= start[JOBS] + dur_small[JOBS] ;

* Completion times
Eq_5(JOBS)..
    comp[JOBS] =e= start[JOBS] + dur_small[JOBS] ;


***** Objective function 1: minimize latest completion time ****

Def_Obj_1(JOBS)$(ord(JOBS) eq card(JOBS))..
    totComp =g= comp[JOBS] ;

***** Objective function 2: minimize average completion time ****
Def_Obj_2..
    totLate =e= Sum{JOBS, comp[JOBS]} ;
***** Objective function 3: minimize total tardiness ****

* Due date of job at position k
Eq_6(JOBS)..
    due_small[JOBS] =e= Sum{JOBS1,DUE[JOBS1]*rank[JOBS,JOBS1] } ;
* Late jobs: completion time exceeds the due date
Eq_7(JOBS)..
    late[JOBS] =g= comp[JOBS] - due_small[JOBS]                            ;

Def_Obj_3..
    totLate =e= Sum{JOBS, late[JOBS]} ;

*-----------------------------------------------------------------

rank.lo[JOBS,JOBS1] =  0   ;
rank.up[JOBS,JOBS1] =  1   ;

start.lo[JOBS] = 0       ;
start.up[JOBS] = MAXTIME ;

dur_small.lo[JOBS] = MINDUR ;
dur_small.up[JOBS] = MAXDUR ;

comp.lo[JOBS] = 0       ;
comp.up[JOBS] = MAXTIME ;

rel_small.lo[JOBS] = MINREL ;
rel_small.up[JOBS] = MAXREL ;

due_small.lo[JOBS] = MINDUE ;
due_small.up[JOBS] = MAXDUE ;

late.lo[JOBS] = 0       ;
late.up[JOBS] = MAXTIME ;

* Solve the problem
Model B_4_Sequencing_1 / Eq_1_a ,Eq_1_b ,Eq_2 ,Eq_3 ,Eq_4 ,Eq_5 ,Def_Obj_1 / ;

* Start times
start.lo[JOBS] = rel_small.l[JOBS] ;

Model B_4_Sequencing_2 / Eq_1_a ,Eq_1_b , Eq_2 , Eq_3 , Eq_4 , Eq_5 ,  Eq_6 ,
                         Eq_7   ,Def_Obj_2 / ;

Model B_4_Sequencing_3 / Eq_1_a ,Eq_1_b , Eq_2 , Eq_3 , Eq_4 , Eq_5 ,  Eq_6 ,
                         Eq_7 ,  Def_Obj_3 / ;


Solve B_4_Sequencing_1 using MIP minimazing totComp ;
Display totComp.l ;
Parameter Sum_totcomp ;
          Sum_totcomp = Sum{JOBS, comp.l[JOBS]} ;
Solve B_4_Sequencing_2 using MIP minimazing totLate ;
Display totLate.l ;
Solve B_4_Sequencing_3 using MIP minimazing totLate ;
Display totLate.l ;
