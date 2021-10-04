* Cute AMPL model  (translation to GAMS)
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

*   Source: problem 9 in
*   J.J. More',"A collection of nonlinear model problems"
*   Proceedings of the AMS-SIAM Summer Seminar on the Computational
*   Solution of Nonlinear Systems of Equations, Colorado, 1988.
*   Argonne National Laboratory MCS-P60-0289, 1989.

*   SIF input: Ph. Toint, Dec 1989.

*   classification SXR2-RN-8-0

$Set N 8
Set i /1*%N%/;
$Set M 5
Set j /1*%M%/;

table A[i,j]
        1       2       3       4       5
1    -3.933     0       0.002   0       0
2     0.107    -0.987   0       1.0     0
3     0.126     0      -0.235   0      -1.0
4     0       -22.95    0      -1.0     0
5    -9.99      0       5.67    0      -0.196
6     0       -28.37    0      -0.168   0
7   -45.83      0      -0.921   0      -0.0071
8    -7.64      0      -6.51    0       0        ;

Variable P1,P2,P3,P4,P5,ax[j],x[i],L2force;

Equation Eq_1,Eq_2,Eq_3,Eq_4,Eq_5,Eq_6[j],Def_obj;

Eq_1.. P1    =e=  -0.727*X['2']*X['3']+ 8.39*X['3']*X['4']-
                   684.4*X['4']*X['5']+63.5 *X['4']*X['2'];

Eq_2.. P2    =e=  0.949*X['1']*X['3']+0.173*X['1']*X['5'];

Eq_3.. P3    =e= -0.716*X['1']*X['2']-1.578*X['1']*X['4']+1.132*X['4']*X['2'];

Eq_4.. P4    =e=       -X['1']*X['5'];

Eq_5.. P5    =e=        X['1']*X['4'];

Eq_6[j].. AX[j]   =e=  sum{i,(A[i,j]*X[i])};
Def_obj.. L2force =e=  sqr(AX['1']+P1)+sqr(AX['2']+P2)+
                       sqr(AX['3']+P3)+sqr(AX['4']+P4)+sqr(AX['5']+P5);

x.l['1']=  0     ;
x.l['2']=  0     ;
x.l['3']=  0     ;
x.l['4']=  0     ;
x.l['5']=  0     ;
x.l['6']= -0.05  ;
x.l['7']=  0.1   ;
x.l['8']=  0.0   ;

X.fx['6'] = -0.05;
X.fx['7'] =  0.1 ;
X.fx['8'] =  0.0 ;


Model aircrftb /all/;

Solve aircrftb  using nlp minimize L2force;

display x.l;
display L2force.l;
