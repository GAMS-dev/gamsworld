*******************************************************
*   Mosel Example Problems
*   ======================
*
*   file openshop.mos
*   `````````````````
*   TYPE:         Preemptive open shop scheduling
*   DIFFICULTY:   5
*   FEATURES:     MIP problem, data preprocessing, algorithm for preemptive
*                 scheduling that involves looping over optimization,
*                 `Gantt chart' printing and drawing
*   DESCRIPTION:  A satellite routes the traffic from four transmitter
*                 stations to four receiver stations. It has a switch that
*                 allows any permutation (mode) between the four transmitters
*                 and the four receivers. A valid schedule of transmissions
*                 defines a sequence of permutations that routes all the
*                 traffic of the given traffic matrix TRAF. An element of
*                 TRAF may be fragmented, and appear in several modes of
*                 the final decomposition. The objective is to find a
*                 schedule with minimal total duration.
*                 The solution algorithm solves an assignment problem for
*                 every permutation.
*   FURTHER INFO: `Applications of optimization with Xpress-MP',
*                 Section 12.5 `Scheduling of telecommunications via satellite'
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke
********************************************************

* model "Satellite scheduling"

* Set of transmitters
Set TRANSM / t1*t4 / ;
* Set of receivers
Set RECV   / r1*r4 / ;
Alias(TRANSM,TRANSM1);
Alias(TRANSM,TRANSM2);
Alias(TRANSM,TRANSM3);
Alias(RECV,RECV3);

* Traffic betw. terrestrial stations
Table TRAF[TRANSM,RECV]
                        r1  r2  r3  r4
                   t1    0   7  11  15
                   t2   15   8  13   9
                   t3   17  12   6  10
                   t4    6  13  15   4  ;
* Row sums
Parameter row[TRANSM] ;
* Column sums
Parameter col[RECV]   ;
* Row and column sums
                    row[TRANSM] = Sum{RECV, TRAF[TRANSM,RECV]  } ;
                    col[RECV]   = Sum{TRANSM, TRAF[TRANSM,RECV]} ;
* Maximum of row and column sums
Scalar LB / 45 / ;
* LB:=maxlist(max(r in RECV) col(r), max(t in TRANSM) row(t))

Scalar q ;
* Quasi bistochastic traffic matrix
Parameter TQBS[TRANSM,RECV] ;
Loop{TRANSM,
Loop{RECV,
  q = min(LB-row[TRANSM],LB-col[RECV]) ;
  TQBS[TRANSM,RECV] = TRAF[TRANSM,RECV] + q ;
  row[TRANSM]=row[TRANSM]+q ;
  col[RECV]=col[RECV]+q ;

    };
    };
*****************************************************
Parameter ct ;
Set MODES /m1*m20/;
* Solutions of every iteration
Parameter solflowt[TRANSM,MODES] ; solflowt[TRANSM,MODES] = 0 ;
* Solutions of every iteration
Parameter solflowr[RECV,MODES]   ; solflowr[RECV,MODES] = 0 ;
* Objective value per iteration
Parameter solpmin[MODES]         ; solpmin[MODES] = 0 ;
*****************************************************


Binary Variable
* 1 if transmission from t to r,
* 0 otherwise
        flow[TRANSM,RECV] ;

Variable
* Minimum exchange
         pmin ;
Equation
         onerec(TRANSM)   ,
         onetrans(RECV)   ,
         minexchg(TRANSM) ;

* One receiver per transmitter
onerec(TRANSM)..
     Sum{RECV$(TQBS(TRANSM,RECV) gt  0) , flow[TRANSM,RECV] } =e= 1 ;
* One transmitter per receiver
onetrans(RECV)..
     Sum{TRANSM$(TQBS(TRANSM,RECV) gt  0), flow[TRANSM,RECV] } =e= 1 ;

* Minimum exchange
minexchg(TRANSM)..
     Sum{RECV$(TQBS(TRANSM,RECV) gt 0),
                      TQBS[TRANSM,RECV]*flow[TRANSM,RECV]} =g= pmin ;

* Solve the problem: maximize the minimum exchange
Model Satellite_scheduling / all / ;



ct=0;
************************************************************
* Update TQBS
Loop((TRANSM3,RECV3),
ct=ct+1;
Loop{(TRANSM2,MODES)$(ord(MODES) eq ct),
if (solflowt[TRANSM2,MODES] eq ord(TRANSM3) and
    solflowr[RECV3,MODES]    eq ord(RECV3)       ,
TQBS[TRANSM2,RECV3] = TQBS[TRANSM2,RECV3] - solpmin[MODES] ;
    );
    };

Solve Satellite_scheduling using MIP Maximazing pmin ;

* Save the solution
Loop{MODES$(ord(MODES) eq ct),
solpmin[MODES] = round(pmin.l);
    };
Loop((TRANSM1,RECV),
   if(flow.l(TRANSM1,RECV)>0,

Loop{MODES$(ord(MODES) eq ct),
    solflowt(TRANSM,MODES) = ord(TRANSM);
    solflowr(RECV,MODES)   = ord(RECV)  ;
    }
    );
    );
************************************************************
Display pmin.l ;
    );

