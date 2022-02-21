*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file flowshop.mos
*   `````````````````
*   TYPE:         Flow-shop scheduling problem
*   DIFFICULTY:   4
*   FEATURES:     MIP problem, alternative formulation using SOS1,
*                 graphical solution representation
*   DESCRIPTION:  A workshop with three different machines produces six
*                 types of pipes, for which the durations of the processing
*                 steps are given. Every workpiece runs through the machines
*                 in the same order. Once started, any operations must be
*                 carried out without interruption, but the workpieces may
*                 wait between the machines. Every machine only processes
*                 one piece at a time. A workpiece may not overtake any
*                 other by passing onto the following machine. Which is the
*                 sequence of workpieces that minimizes the total time for
*                 completing all pieces?
*   FURTHER INFO: `Applications of optimization with Xpress-MP',
*                 Section 7.2 `Flow-shop scheduling'
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke
********************************************************

* model "Flow shop"

* Number of machines
$Set NM 3
* Number of jobs
$Set NJ 6

Set MACH  / m1*m%NM% / ;
Set RANKS / r1*r%NJ% / ;
Set JOBS  / j1*j%NJ% / ;
Alias(MACH,MACH1);
Alias(RANKS,RANKS1);

* Durations of jobs on machines
Table DUR[MACH,JOBS]
                       j1 j2 j3 j4 j5 j6
                    m1  3  6  3  5  5  7
                    m2  5  4  2  4  4  5
                    m3  5  2  4  6  3  6  ;


Binary Variable rank[JOBS,RANKS]  ;
* 1 if job j has rank k, 0 otherwise

Positive Variable
          empty[MACH,RANKS]         ,
*         Space between jobs of ranks k and k+1
          wait[MACH,RANKS]          ,
* Waiting time between machines m
* and m+1 for job of rank k
          start[MACH,RANKS]         ;
* Start of job rank k on machine m
Variable
* (optional)
          TotWait                   ;

Equation OneJobPos(RANKS)     ,
         JobRank(JOBS)        ,
         Prec(MACH,RANKS)     ,
         Eq_Start(MACH,RANKS) ,
         Def_Obj              ;


* Every position gets a job
OneJobPos(RANKS)..
    sum{JOBS, rank[JOBS,RANKS]  } =e= 1 ;

* Every job is assigned a rank
JobRank(JOBS)..
    sum{RANKS, rank(JOBS,RANKS) } =e= 1 ;

* Relations between the end of job rank k on machine m and start of job on
* machine m+1
Prec(MACH,RANKS)$((ord(MACH) ne card(MACH)) and(ord(RANKS) ne card(RANKS)))..
         empty[MACH,RANKS] +
         Sum{JOBS, DUR(MACH,JOBS)  *rank[JOBS,RANKS+1]} +
         wait[MACH,RANKS+1] =e=
         wait[MACH,RANKS] +
         Sum{JOBS, DUR[MACH+1,JOBS]*rank[JOBS,RANKS]  } +
         empty[MACH+1,RANKS] ;

* Calculation of start times (to facilitate the interpretation of results)
Eq_Start(MACH,RANKS)..
    start[MACH,RANKS] =e= Sum{(MACH1,JOBS)$(ord(MACH1) lt ord(MACH)),
                                           DUR[MACH1,JOBS]*rank[JOBS,'r1']}  +
                          Sum{(RANKS1,JOBS)$(ord(RANKS1) lt ord(RANKS)),
                                           DUR[MACH,JOBS] *rank[JOBS,RANKS1]}+
                          Sum{RANKS1$(ord(RANKS1) lt ord(RANKS)),
                                           empty[MACH,RANKS1]                } ;

* Objective: total waiting time (= time before first job + times between
* jobs) on the last machine
Def_Obj..
    TotWait =e=
      Sum{(MACH,JOBS)$(ord(MACH) ne card(MACH)),(DUR[MACH,JOBS]*rank[JOBS,'r1']) } +
      Sum{RANKS$(ord(RANKS) ne card(RANKS)), empty['m%NM%',RANKS] } ;

* First machine has no idle times
empty.fx['m1',RANKS]$(ord(RANKS) gt 1) = 0 ;

* First job has no waiting times
wait.fx(MACH,'r1')$(ord(MACH) lt card(MACH)) = 0 ;


* Solve the problem
Model Flow_shop / all / ;

Solve Flow_shop using MIP minimazing TotWait ;

Display TotWait.l ;