*****************************************************************
*
*   CP example problems
*   ===================
*
*   file jobshop2.mos
*   `````````````````
*   Job-shob scheduling problem.
*   - Default search -
*
*   (c) 2006 Artelys S.A. and Dash Associates
*
******************************************************************

* model "Job shop (CP)"
*  uses "kalis", "mmsystem"

* Number of jobs
$Set NJ 6

* Number of resources
$Set NM 6



* Set of jobs
Set JOBS / j1*j%NJ% / ;

* Set of resources
Set MACH / m1*m%NM% / ;

Set Count / c1*c300 / ;

* Resource use of tasks
Table RES[JOBS,MACH]
                        m1 m2 m3 m4 m5 m6
                     j1  3  1  2  4  6  5
                     j2  2  3  5  6  1  4
                     j3  3  4  6  1  2  5
                     j4  2  1  3  4  5  6
                     j5  3  2  5  6  1  4
                     j6  2  4  6  1  5  3  ;

Scalar Res_much / 0 /  ;
Parameter res_small[MACH] ;

Loop{MACH,
Res_much = 0 ;
Loop{JOBS,
IF (RES[JOBS,MACH] gt Res_much,Res_much = RES[JOBS,MACH] )  ;
     } ;
res_small[MACH] = Res_much ;
     } ;

* Durations of tasks
Table DUR[JOBS,MACH]
                        m1 m2 m3 m4 m5 m6
                     j1  1  3  6  7  3  6
                     j2  8  5 10 10 10  4
                     j3  5  4  8  9  1  7
                     j4  5  5  5  3  8  9
                     j5  9  3  5  4  3  1
                     j6  3  3  9 10  4  1  ;

Scalar HORIZON ; HORIZON = Sum{(JOBS,MACH), DUR[JOBS,MACH] } ;

Variable
         Start[JOBS,MACH]       ,
         Finish[JOBS,MACH]      ;

Variable
         Position[JOBS,MACH,Count] ,
         starttime                 ;

Equation
         Eq_1_a(JOBS,MACH)      ,
         Eq_1_b(JOBS,MACH)      ,
         Eq_2(JOBS,MACH,Count)  ,
         Eq_3(MACH,Count)       ,
         Def_Obj(JOBS,MACH)     ;

Eq_1_a(JOBS,MACH)..
    Finish[JOBS,MACH] - Start[JOBS,MACH] =e= DUR[JOBS,MACH] ;

Eq_1_b(JOBS,MACH)$(ord(MACH) lt card(MACH))..
     Start[JOBS,MACH+1] =g= Finish[JOBS,MACH]  ;

Eq_2(JOBS,MACH,Count)..
    Position[JOBS,MACH,Count] =e=  SIGN( 1+ SIGN( 2+
                                 (-SQR( SIGN(Start[JOBS,MACH]-ord(Count) ) +
                                        SIGN(Finish[JOBS,MACH]-ord(Count)-1)
                                        )) )) ;

Eq_3(MACH,Count)..
    Sum{JOBS,Position[JOBS,MACH,Count]} =l= res_small[MACH] ;

* Solve the problem
Def_Obj(JOBS,MACH)..
    starttime =g= Finish[JOBS,MACH] ;

Start.lo[JOBS,MACH]  = 1 ;
Start.l[JOBS,MACH]  =  1 ;

Start.lo['J2',MACH]  = 7 ;
Start.lo['J4',MACH]  = 2 ;
Finish.lo[JOBS,MACH] = 1 ;
*Finish.up[JOBS,MACH] = HORIZON ;

Model Job_shop / all / ;
Solve Job_shop using DNLP minimazing starttime ;
Display starttime.l ;

Parameter Result[MACH,Count] ;
Result[MACH,Count] = Sum{JOBS,Position.l[JOBS,MACH,Count]} ;