********************************************************
*  Mosel Example Problems
*  ======================
*
* Origin file expl1.mos
*  ``````````````
*  Scheduling example from BCL User Guide.
*
*  (c) 2001 Dash Associates
*      author: S.Heipcke, rev. 2007
**********************************************************

* model Jobs

* Number of jobs
$Set NJ  4
* Time limit
Scalar NT / 10 / ;
Set RJ / r1*r%NJ% / ;
Set T / t1*t10 / ;
* Durations of jobs
Parameter D[RJ] / r1 3 , r2 4 , r3 2 , r4 2 / ;

Binary Variable
* Binary variables for start times
         delta[RJ,T] ;

Variable
* Start times of jobs
         s[RJ]   ,
* Maximum completion time (makespan)
         z       ;

Equation C1(RJ)   ,
         C2       ,
         C3(RJ)   ,
         C4(RJ)   ;
* Input durations of jobs


* Calculate maximum completion time of all jobs
C1(RJ)..
      z - s[RJ] =g= D[RJ] ;

* Precedence relation between jobs
C2..
      s['r3'] - s['r1'] =g= D['r1'] ;

* Relation linking start times of jobs with corresponding binaries
C3(RJ)..
      Sum{T$(ord(T) le (NT-D[RJ]+1)) , ord(T)*delta[RJ,T] } - s(RJ)  =e= 0 ;

* One unique start time for each job
C4(RJ)..
      Sum{T$(ord(T) le (NT-D[RJ]+1)) , delta[RJ,T] } =e= 1 ;

* Interval for start times
s.lo[RJ] = 0          ;
s.up[RJ] = NT-D[RJ]+1 ;
delta.fx[RJ,T]$(ord(T) gt (NT-D[RJ]+1)) = 0 ;

* Solve the MIP-problem
Model Jobs / all / ;

Solve Jobs using MIP minimazing z ;

Display z.l ;

