******************************************************
*   Mosel Example Problems
*   ======================
*
* origin  file b2flowshop.mos
*   ```````````````````
*   Flow shop production planning
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
*******************************************************

* model "B-2 Flow shop"

$Set NM  3
* Number of machines
$Set NJ  6
* Number of jobs
Set MACH  / m1*m%NM% / ;
Set RANKS / r1*r%NJ% / ;
Set JOBS  / j1*j%NJ% / ;

Table DUR[MACH,JOBS]
       j1 j2 j3 j4 j5 j6
    m1  3  6  3  5  5  7
    m2  5  4  2  4  4  5
    m3  5  2  4  6  3  6  ;
* Durations of jobs on machines

Alias(MACH,MACH1);
Alias(RANKS,RANKS1);

Binary Variable rank[JOBS,RANKS] ;
* 1 if job j has rank k, 0 otherwise
       Variable empty[MACH,RANKS]    ,
* Space between jobs of ranks k and k+1
                wait[MACH,RANKS]     ,
* Waiting time between machines m
* and m+1 for job of rank k
                start[MACH,RANKS]    ,
* Start of job rank k on machine m
* (optional)
                TotWait ;

Equation Eq_1(RANKS)      ,
         Eq_2(JOBS)       ,
         Eq_3(MACH,RANKS) ,
         Eq_4(MACH,RANKS) ,
         Def_obj          ;
* Every position gets a jobs

Eq_1(RANKS)..
     Sum{JOBS,rank[JOBS,RANKS]} =e= 1 ;
* Every job is assigned a rank
Eq_2(JOBS)..
     Sum{RANKS,rank[JOBS,RANKS]} =e= 1 ;
* Relations between the end of job rank k on machine m and start of job on
*! machine m+1
Eq_3(MACH,RANKS)$((ord(RANKS) ne card(RANKS)) and (ord(MACH) ne card(MACH)))..
                    empty[MACH,RANKS] +
                    Sum{JOBS, DUR[MACH,JOBS]  * rank[JOBS,RANKS+1]} +
                    wait(MACH,RANKS+1) =e=
                    wait(MACH,RANKS) +
                    Sum{JOBS, DUR[MACH+1,JOBS]* rank[JOBS,RANKS]} +
                    empty[MACH+1,RANKS] ;

* Calculation of start times (to facilitate the interpretation of results)
Eq_4(MACH,RANKS)..
  start(MACH,RANKS) =e= Sum{(MACH1,JOBS)$(ord(MACH1) lt ord(MACH)),
                                         DUR[MACH1,JOBS]*rank[JOBS,'r1'] } +
                        Sum{(RANKS1,JOBS)$(ord(RANKS1) lt ord(RANKS)),
                                         DUR[MACH,JOBS]*rank[JOBS,RANKS1]} +
                        Sum{RANKS1$(ord(RANKS1) lt ord(RANKS)),
                                         empty[MACH,RANKS1]              } ;

* Objective: total waiting time (= time before first job + times between
* jobs) on the last machine
Def_obj..
 TotWait =e= Sum{(MACH,JOBS)$(ord(MACH) ne card(MACH)),
                                    (DUR[MACH,JOBS]*rank[JOBS,'r1'])  } +
             Sum{RANKS$(ord(RANKS) lt card(RANKS)), empty['m%NM%',RANKS]} ;

* First machine has no idle times

empty.lo[MACH,RANKS] = 0 ;
wait.lo[MACH,RANKS]  = 0 ;
empty.fx['m1',RANKS]$(ord(RANKS) ne card(RANKS)) = 0 ;
wait.fx[MACH,'r1']$(ord(MACH) ne card(MACH)) =  0 ;

* XPress solution
*rank.fx['J3','r1'] = 1 ;

*empty.fx['m3','r1'] = 2 ;
*empty.fx['m3','r2'] = 1 ;
*empty.fx['m3','r3'] = 0 ;
*empty.fx['m3','r4'] = 1 ;
*empty.fx['m3','r5'] = 0 ;
*empty.fx['m3','r6'] = 0 ;

*start.fx['m1','r1'] =  0 ;
*start.fx['m2','r1'] =  3 ;
*start.fx['m3','r1'] =  5 ;
*start.fx['m1','r2'] =  3 ;
*start.fx['m2','r2'] =  6 ;
*start.fx['m3','r2'] = 11 ;
*start.fx['m1','r3'] =  6 ;
*start.fx['m2','r3'] = 11 ;
*start.fx['m3','r3'] = 17 ;
*start.fx['m1','r4'] = 11 ;
*start.fx['m2','r4'] = 18 ;
*start.fx['m3','r4'] = 23 ;
*start.fx['m1','r5'] = 18 ;
*start.fx['m2','r5'] = 25 ;
*start.fx['m3','r5'] = 30 ;
*start.fx['m1','r6'] = 23 ;
*start.fx['m2','r6'] = 29 ;
*start.fx['m3','r6'] = 33 ;

* Solve the problem
Model B_2_Flow_shop / All / ;

Solve B_2_Flow_shop using  mip minimazing TotWait ;

Display TotWait.l ;