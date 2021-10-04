* osborne1.mod OBR2-MN-5-10
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Exponential data fitting

* Original reference:
* M. R. Osborne, "Some Aspects of Nonlinear Least Squares Calculations".
* In Numerical Methods for Nonlinear Optimization, edited by F. A.
* Lootsma, Academic Press, New York, 1972.

* This also appears as problem "Exponential Data Fitting 1" in
* "The MINPACK-2 Test Problem Collection", by B.M. Averick,
* R.G. Carter, J.J. More' and G.-L. Xue; Argonne National Laboratory,
* Mathematics and Computer Science Division, Preprint MCS-P153-0692,
* June 1992, p. 26-27.
* The bounds are from this latter reference.

* Number of variables: 5
* Number of constraints: 10
* Objective nonseparable
* Objective nonconvex
* Simple bound constraints

* Global minimum ssq = 5.464894697e-05 at
* x = (0.37541, 1.93585, -1.46469, 0.0128675, 0.0221227).

$Set N  5
$Set M 33
set I /1*%N%/;
set J /1*%M%/;

parameter t[J];  t[J] = 10*(ord(j)-1);
parameter y[J] /
    1 .844,   7 .881,  13 .685,  19 .538,  25 .457,  31 .414,
    2 .908,   8 .85 ,  14 .658,  20 .522,  26 .448,  32 .411,
    3 .932,   9 .818,  15 .628,  21 .506,  27 .438,  33 .406,
    4 .936,  10 .784,  16 .603,  22 .49 ,  28 .431,
    5 .925,  11 .751,  17 .58 ,  23 .478,  29 .424,
    6 .908,  12 .718,  18 .558,  24 .467,  30 .42            /;


Variable x[I], ssq;
Equation Defobj;

Defobj..
ssq=e=sum{J,sqr(y[j]-(x['1']+x['2']*exp(-t[j]*x['4'])+x['3']*exp(-t[j]*x['5'])))};

x.lo[I]=-10;
x.up[I]= 10;

* initial guess
x.l['1'] =  0.50;
x.l['2'] =  1.50;
x.l['3'] = -1.00;
x.l['4'] =  0.01;
x.l['5'] =  0.02;


*x.fx['1'] =   0.37541   ;
*x.fx['2'] =   1.93585   ;
*x.fx['3'] =  -1.46469   ;
*x.fx['4'] =   0.0128675 ;
*x.fx['5'] =   0.0221227 ;

* for  MINOS and CONOPT solver  need to add important constraint
* x.lo['5'] =   0.0     ;
* solution must be equal 5.4649E-5


Model osborne1 /all/;
solve osborne1 using nlp minimize ssq;

display ssq.l;
