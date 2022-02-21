* Shitkovski AMPL model  (translation to GAMS)
*


* AMPL Model by Hande Y. Benson
*
* Copyright (C) 2001 Princeton University
* All Rights Reserved
*
* Permission to use, copy, modify, and distribute this software and
* its documentation for any purpose and without fee is hereby
* granted, provided that the above copyright notice appear in all
* copies and that the copyright notice and this
* permission notice appear in all supporting documentation.

*   Source: Problem 9 in
*   J.J. More',"A collection of nonlinear model problems"
*   Proceedings of the AMS-SIAM Summer Seminar on the Computational
*   Solution of Nonlinear Systems of Equations, Colorado, 1988.
*   Argonne National Laboratory MCS-P60-0289, 1989.

*   SIF input: Ph. Toint, Dec 1989.

*   classification NOR2-RN-8-5


Variable   rollrate,pitchrat,yawrate ,attckang,
           sslipang,elevator,aileron ,rudderdf,f;


Equation Eq_1,Eq_2,Eq_3,Eq_4,Eq_5,def_obj;




Eq_1..   (-3.933*rollrate+0.107*pitchrat+
         0.126*yawrate-9.99*sslipang-45.83*aileron-
         7.64*rudderdf-0.727*pitchrat*yawrate+
         8.39*yawrate*attckang-684.4*
         attckang*sslipang+63.5*pitchrat*attckang) =e= 0;

Eq_2..   (-0.987*pitchrat-22.95*attckang-
         28.37*elevator+0.949*rollrate*yawrate+
         0.173*rollrate*sslipang) =e= 0;

Eq_3..   (0.002*rollrate-0.235*yawrate+5.67*sslipang
         -0.921*aileron-6.51*rudderdf-
         0.716*rollrate*pitchrat-1.578*rollrate*
         attckang+1.132*pitchrat*attckang) =e= 0;

Eq_4..   (pitchrat- attckang-1.168*elevator-rollrate*sslipang) =e= 0;

Eq_5..   (-yawrate-0.196*sslipang-0.0071*aileron+rollrate*attckang) =e= 0;
def_obj.. f=e=0;

rollrate.l = 0;
pitchrat.l = 0;
yawrate.l  = 0;
attckang.l = 0;
sslipang.l = 0;
elevator.l = 0;
aileron.l  = 0;
rudderdf.l = 0;
f.l         =0;

elevator.fx = 0.1;
 aileron.fx = 0.0;
rudderdf.fx = 0.0;




Model aircrfta /all/;

Solve aircrfta using nlp minimize f;

display f.l,rollrate.l,pitchrat.l,yawrate.l,attckang.l,
        sslipang.l,elevator.l,aileron.l,rudderdf.l;
