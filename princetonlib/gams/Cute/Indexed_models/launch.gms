*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem:
*   ********
*   The objective function to be minimized represents the total cost of
*   the development and launching of a 3 stages space launching vehicle.
*   Constraints are imposed on physical interrelations between the variables
*   and performance.
*   The problem is highly non-convex.
*   Source:
*   B. Rush, J. Bracken and G. McCormick,
*   "A nonliner programming model for launch vehicle design and costing",
*   Operations Research, pp. 185-210, 1967.
*   SIF input: P. Driscoll, Virginia Tech., April 1993,
*              corrected and simplified by Ph. L. Toint, May 1993.
*   classification OOR2-MY-25-28
*   Cost of stage 1
*   Cost of stage 2
*   Cost of stage 3
*   Instrumentation cost
*   Launch operating costs
*XN LAUN      'SCALE'   0.039215686
*   Relations between airframe weights and inert weights
*   Definition of stage mass fractions
*   Relation between stage thrust and single engine thrust
*   Constraints on structural integrity (stage weight vs propellant weight)
*   Constraints expression the ratio of thrust to initial weight for a given
*   payload
*   Constraints on the stage mass fraction of the 3 stages
*   Constraints on the specific impulse
*   Total vehicle launch constraint
*   Objective function
*   Constraints
*   The starting point is very close to feasible
*   Elements for stage 1 modelling
*   a) airframe R&D
*   b) LOX/RP propulsion R&D
*   c) airframe production unit
*   d) LOX/RP propulsion production of 5 engines
*   Elements for stage 2 modelling
*   a) airframe R&D
*   b) LOX/RP propulsion R&D
*   c) airframe production unit
*   d) LOX/RP propulsion production of 5 engines
*   Elements for stage 3 modelling
*   a) airframe R&D
*   b) LOX/RP propulsion R&D
*   c) airframe production unit
*   d) LOX/RP propulsion production of 1 engine
*   Elements for constraints on the stage mass fraction
*   Constraints on specific impulse
$offdigit ;
Variable   aw1  ,  iw1  ,  mf1  ,  tt1  ,  pw1  ,  et1  ,
           s1l  ,  aw2  ,  iw2  ,  mf2  ,  tt2  ,  pw2  ,
           et2  ,  s2l  ,  aw3  ,  iw3  ,  mf3  ,  tt3  ,
           pw3  ,  et3  ,  s3l  ,  inw  ,  bt1  ,  bt2  ,
           bt3  , epsi ,
           obj ;
Equation sgth1  ,   sgth3  ,   sgth5  ,   sgth2  ,   sgth4  ,
         sgth6  ,  sgsi1a  ,  sgsi1b  ,  sgsi2a  ,  sgsi2b  ,
        sgsi3a  ,  sgsi3b  ,  ttiw1a  ,  ttiw1b  ,  ttiw2a  ,
        ttiw2b  ,  ttiw3a  ,  ttiw3b  ,
          smf1  ,
          smf2  ,
          smf3  ,
          si1a  ,    si1b  ,    si2a  ,    si2b  ,
          si3a  ,    si3b  ,  glgcon1 ,  glgcon2 , Def_obj ;

sgth1..     2.0*aw1 - iw1 =e=  0;
sgth3..     0.6*iw2 - aw2 =e=  0;
sgth5..     0.7*iw3 - aw3 =e=  0;
sgth2..     5.0*et1 - tt1 =e=  0;
sgth4..     5.0*et2 - tt2 =e=  0;
sgth6..     tt3 - et3 =e= 0;
sgsi1a..     0  =l=  pw1 - 12.0*iw1;
sgsi1b..     0  =g=  pw1 - 17.0*iw1;
sgsi2a..     0  =l=  pw2 - 10.0*iw2;
sgsi2b..     0  =g=  pw2 - 13.0*iw2;
sgsi3a..     0  =l=  pw3 - 7.0*iw3;
sgsi3b..     0  =g=  pw3 - 10.0*iw3;
ttiw1a..     0  =l=  tt1 - 1.2*iw1 - 1.2*pw1 - 1.2*iw2 - 1.2*pw2 - 1.2*iw3 -
             1.2*pw3 -1.2*inw - 24.0;
ttiw1b..     0  =g=  tt1 - 1.4*iw1 - 1.4*pw1 - 1.4*iw2 - 1.4*pw2 - 1.4*iw3 -
             1.4*pw3 -1.4*inw - 28.0;
ttiw2a..     0  =l=  tt2 - 0.6*iw2 - 0.6*pw2 - 0.6*iw3 - 0.6*pw3 - 0.6*inw -
             12.0;
ttiw2b..     0  =g=  tt2 - 0.75*iw2 - 0.75*pw2 - 0.75*iw3 - 0.75*pw3 -
             0.75*inw - 15.0;
ttiw3a..     0  =l=  tt3 - 0.7*iw3 - 0.7*pw3 - 0.7*inw - 14.0;
ttiw3b..     0  =g=  tt3 - 0.9*iw3 - 0.9*pw3 - 0.9*inw - 18.0;

smf1..       (mf1)*(inw)+20.0*mf1-iw1-iw2-pw2-iw3-pw3-inw -20.0 =l=  epsi;
smf2..       (mf2)*(inw)+20.0*mf2-iw2-iw3-pw3-inw         -20.0 =l=  epsi;
smf3..       (mf3)*(inw)+20.0*mf3-iw3-inw                 -20.0 =l=  epsi;

si1a..       0  =l=  tt1 * bt1 - 240.0*pw1;
si1b..       0  =g=  tt1 * bt1 - 290.0*pw1;
si2a..       0  =l=  tt2 * bt2 - 240.0*pw2;
si2b..       0  =g=  tt2 * bt2 - 290.0*pw2;
si3a..       0  =l=  tt3 * bt3 - 340.0*pw3;
si3b..       0  =g=  tt3 * bt3 - 375.0*pw3;
glgcon1..    0  =l=  -32.0*(tt1 * bt1 * (log(mf1)) ) /pw1 -
             32.0*(tt2 * bt2 * (log(mf2)) )/pw2 - 32.0*(tt3 * bt3 * (log(mf3)))
             / pw3 - 35000.0  ;

glgcon2..    -32.0*(tt1 * bt1 * (log(mf1)) ) /pw1 -
             32.0*(tt2 * bt2 * (log(mf2)) )/pw2 - 32.0*(tt3 * bt3 * (log(mf3)))
             / pw3 - 35000.0  =l=  15000.0;



Def_obj..
obj =e=  epsi*epsi +
         ((5272.77*   (exp{log(aw1)*( 1.2781 )}  ) *
                      (exp{log(iw1)*(-0.1959 )}  ) *
                      (exp{log(mf1)*( 2.4242 )}  ) *
                      (exp{log(tt1)*( 0.38745)}  ) *
                      (exp{log(pw1)*( 0.9904 )}  ) +
   160.909*exp{log((et1 / 1000.0 ))*(-0.146  )}    +
   282.874*exp{log((et1 / 1000.0 ))*( 0.648  )}    +
           0.64570846*(exp{log(aw1)*( 0.3322 )} )  *
                      (exp{log(mf1)*(-1.5935 )} )  *
                      (exp{log(pw1)*( 0.2363 )} )  *
                      (exp{log(s1l)*( 0.1079 )} )  +
 31.136196*exp{log((et1 / 1000.0 ))*( 0.736  )}    +
 12.092112*exp{log((et1 / 1000.0 ))*(-0.229  )}    +
 31.136196*exp{log((et2 / 1000.0 ))*( 0.736  )}    +
 12.092112*exp{log((et2 / 1000.0 ))*(-0.229  )}    +
                                          2.5870000000000005e-4*et1 -
                                          247.963)/1.0e8) +
            ((5272.77*exp(log{aw2}*( 1.2781 ) )  *
                      exp(log{iw2}*(-0.1959 ) )  *
                      exp(log{mf2}*( 2.4242 ) )  *
                      exp(log{tt2}*( 0.38745) ) *
                      exp(log{pw2}*( 0.9904 ) )  +
   160.909*exp{log(et2 / 1000.0 )*(-0.146  )}    +
   282.874*exp{log(et2 / 1000.0 )*( 0.648  )}    +
           0.64570846*exp(log{aw2}*( 0.3322 ) )  *
                      exp(log{mf2}*(-1.5935 ) )  *
                      exp(log{pw2}*( 0.2363 ) )  *
                      exp(log{s2l}*( 0.1079 ) )  +
                                           2.5870000000000005e-4*et2 -
                                           247.963)/1.0e8) +
            ((5272.77*exp(log(aw3)*( 1.2781 ) )  *
                      exp(log(iw3)*(-0.1959 ) )  *
                      exp(log(mf3)*( 2.4242 ) )  *
                      exp(log(tt3)*( 0.38745) ) *
                      exp(log(pw3)*( 0.9904 ) )  +
     181.806*exp(log(et3 /1000.0)*( 0.539  ))    +
      232.57*exp(log(et3 /1000.0)*( 0.772  ))    +
           0.49783215*exp(log(aw3)*( 0.3322 ) )  *
                      exp(log(mf3)*(-1.5935 ) )  *
                      exp(log(pw3)*( 0.2363 ) )  *
                      exp(log(s3l)*( 0.1079 ) )  -
 0.22424514*exp(log(et3 / 100.0 )*(-1.33   ))    +
  20.708238*exp(log(et3 / 100.0 )*( 0.498  ))    +
                                           0.001958*et3 - 32.591)/1.0e8) +
                                           ((47.040096*inw - 35.5)/1.0e8) +
                                           ((
exp(log(0.0030*pw1 + 0.0030*pw2+ 0.0030*pw3)*(0.460))    )/3.9215686e7);



aw1.lo =  1.0e-8 ; aw1.up =  10000.0 ; aw1.l =  68.0      ;
iw1.lo =  1.0e-8 ; iw1.up =  10000.0 ; iw1.l =  136.0     ;
mf1.lo =  0.25   ; mf1.up =  0.3     ; mf1.l =  0.29988744;
tt1.lo =  1.0e-8 ; tt1.up =  10000.0 ; tt1.l =  3733.0    ;
pw1.lo =  1.0e-8 ; pw1.up =  10000.0 ; pw1.l =  2177.0    ;
et1.lo =  1.0e-8 ; et1.up =  10000.0 ; et1.l =  746.6     ;
s1l.lo =  125.0  ; s1l.up =  150.0   ; s1l.l =  125.0     ;
aw2.lo =  1.0e-8 ; aw2.up =  10000.0 ; aw2.l =  28.2      ;
iw2.lo =  1.0e-8 ; iw2.up =  10000.0 ; iw2.l =  47.0      ;
mf2.lo =  0.24   ; mf2.up =  0.29    ; mf2.l =  0.28939109;
tt2.lo =  1.0e-8 ; tt2.up =  10000.0 ; tt2.l =  480.0     ;
pw2.lo =  1.0e-8 ; pw2.up =  10000.0 ; pw2.l =  566.0     ;
et2.lo =  1.0e-8 ; et2.up =  10000.0 ; et2.l =  96.0      ;
s2l.lo =  75.0   ; s2l.up =  100.0   ; s2l.l =  75.0      ;
aw3.lo =  1.0e-8 ; aw3.up =  10000.0 ; aw3.l =  11.2      ;
iw3.lo =  1.0e-8 ; iw3.up =  10000.0 ; iw3.l =  16.0      ;
mf3.lo =  0.16   ; mf3.up =  0.21    ; mf3.l =  0.20980926;
tt3.lo =  1.0e-8 ; tt3.up =  10000.0 ; tt3.l =  129.0     ;
pw3.lo =  1.0e-8 ; pw3.up =  10000.0 ; pw3.l =  145.0     ;
et3.lo =  1.0e-8 ; et3.up =  10000.0 ; et3.l =  129.0     ;
s3l.lo =  50.0   ; s3l.up =  70.0    ; s3l.l =  50.0      ;
inw.lo =  2.5    ; inw.up =  4.0     ; inw.l =  2.5       ;
bt1.lo =  1.0e-8 ; bt1.up =  10000.0 ; bt1.l =  155.0     ;
bt2.lo =  1.0e-8 ; bt2.up =  10000.0 ; bt2.l =  314.0     ;
bt3.lo =  1.0e-8 ; bt3.up =  10000.0 ; bt3.l =  403.0     ;

Model launch /all/ ;

Solve launch using nlp minimazing obj ;

display epsi.l  ;
display aw1.l  ;  display iw1.l  ;  display mf1.l  ;
display tt1.l  ;  display pw1.l  ;  display et1.l  ;
display s1l.l  ;  display aw2.l  ;  display iw2.l  ;
display mf2.l  ;  display tt2.l  ;  display pw2.l  ;
display et2.l  ;  display s2l.l  ;  display aw3.l  ;
display iw3.l  ;  display mf3.l  ;  display tt3.l  ;
display pw3.l  ;  display et3.l  ;  display s3l.l  ;
display inw.l  ;  display bt1.l  ;  display bt2.l  ;
display bt3.l  ;  display obj.l  ;
