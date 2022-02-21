*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file g5satell.mos
*   `````````````````
*   Scheduling of telecommunications via satellite
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Apr. 2002
********************************************************

* model "G-5 Satellite scheduling"

Set TRANSM / t1*t4 / ;
* Set of transmitters
Set RECV   / r1*r4 / ;
* Set of receivers

Table TRAF[TRANSM,RECV]
                                r1 r2 r3 r4
                             t1  0  7 11 15
                             t2 15  8 13  9
                             t3 17 12  6 10
                             t4  6 13 15  4  ;

Parameter TQBS[TRANSM,RECV] ; TQBS[TRANSM,RECV] = 0 ;
* Quasi bistochastic traffic matrix
Parameter row[TRANSM]       ;
* Row sums
Parameter col[RECV]         ;
* Column sums

* Row and column sums
 Loop(TRANSM, row[TRANSM] = Sum{RECV,   TRAF[TRANSM,RECV]} ; ) ;
 Loop(RECV,   col[RECV]   = Sum{TRANSM, TRAF[TRANSM,RECV]} ; ) ;

Scalar    LB1 / 0 / ;
Scalar    LB2 / 0 / ;
Scalar    LB / 0 / ;
* Maximum of row and column sums
LB1:=0; Loop(RECV,   IF(LB1 LE col[RECV],   LB1 = col[RECV];   ) ) ;
LB2:=0; Loop(TRANSM, IF(LB2 LE row[TRANSM], LB2 = row[TRANSM]; ) ) ;
LB=max(LB1,LB2);

Scalar  q / 0 / ;
* Calculate TQBS
Loop(TRANSM,
Loop(RECV,
q = min(LB-row[TRANSM],LB-col[RECV]);
TQBS[TRANSM,RECV] = TRAF[TRANSM,RECV]+q ;
  row[TRANSM] = row[TRANSM] + q  ;
  col[RECV]   = col[RECV]   + q  ;

    );
    );

Binary Variable flow[TRANSM,RECV] ;
* 1 if transmission from t to r,
* 0 otherwise
Variable pmin ;

Equation Eq_1(TRANSM)   ,
         Eq_2(RECV)     ,
         Def_obj(TRANSM) ;

* One receiver per transmitter
Eq_1(TRANSM)..
  Sum{RECV$(TQBS[TRANSM,RECV] gt 0), flow[TRANSM,RECV]} =e= 1 ;

* One transmitter per receiver
Eq_2(RECV)..
  Sum{TRANSM$(TQBS[TRANSM,RECV] gt 0),flow[TRANSM,RECV]} =e= 1 ;

Def_obj(TRANSM)..
  Sum{RECV$(TQBS[TRANSM,RECV] gt 0),TQBS[TRANSM,RECV]*flow[TRANSM,RECV]}=g=pmin;

* Solve the problem
Model G_5_Satellite_scheduling / All / ;

Solve G_5_Satellite_scheduling using MIP maximazing pmin ;

Display pmin.l ;