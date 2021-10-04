* hs114.mod     QOR2-MY-10-31
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Alkylation process

* Ref.: W. Hock and K. Schittkowski, Test Examples for Nonlinear Programming
* Codes.  Lecture Notes in Economics and Mathematical Systems, v. 187,
* Springer-Verlag, New York, 1981, p. 123.
*
* Number of variables:  10
* Number of constraints:  31
* Objective separable
* Objective nonconvex
* Nonlinear constraints

$Set n 10
set I /1*%n%/;

parameter  lb[I] / 1  0.00001, 2  0.00001, 3 0.00001, 4 0.00001, 5   0.00001,
                   6 85      , 7 90      , 8 3      , 9 1.2    , 10 145    /;

parameter  ub[i] /1  2000    , 2 16000   , 3   120  , 4  5000  ,  5  2000 ,
                  6    93    , 7    95   , 8    12  , 9     4  , 10   162 /;

parameter  x0{I} /1  1745   , 2 12000    , 3   110  , 4  3048  ,  5  1974 ,
                  6    89.2 , 7    92.8  , 8     8  , 9     3.6, 10   145 /;

parameter a;  a = 0.99;
parameter b;  b = 0.9 ;

Positive Variable G1,G2,G5,G6 ;
Variable           x[i]       ,
                   f          ;
Equation
 first,
 second,
 third,
 forth,
 eq_g3,
 eq_g4,
 eq_g7,
 eq_g8,
 eq_g9,
 eq_g10,
 eq_g11,
 defobj;
**************************************************************
 first..  G1 =e=  35.82 -0.222*x['10'] - b*x['9']            ;
 second.. G2 =e= -133 + 3*x['7'] - a*x['10']                 ;
 third..  G5 =e=  1.12*x['1'] +0.13167*x['1']*x['8'] -
                  0.00667*x['1']*sqr(x['8'])- a*x['4']       ;
 forth..  G6 =e=  57.425 + 1.098*x['8'] - 0.038*sqr(x['8'])+
                  0.325*x['6']-a*x['7']                      ;

 eq_g3..  -G1 + x['9']*(1/b - b)        =g= 0;
 eq_g4..  -G2 + (1/a - a)*x['10']       =g= 0;
 eq_g7..  -G5 + (1/a - a)*x['4']        =g= 0;
 eq_g8..  -G6 + (1/a - a)*x['7']        =g= 0;
 eq_g9..  1.22*x['4'] - x['1'] - x['5'] =e= 0;
 eq_g10.. 98000*x['3']/(x['4']*x['9'] +
                  1000*x['3']) - x['6'] =e= 0;
 eq_g11.. (x['2']+x['5'])/x['1']-x['8'] =e= 0;

 defobj.. f =e=
            5.04*x['1']+0.035*x['2']+10*x['3']+3.36*x['5']-0.063*x['4']*x['7'];

x.lo[i] = lb[i];
x.up[i] = ub[i];
x.l[i]  = x0[i];


Model hs114 /all/;

solve hs114 using nlp minimize f;

display f.l;
display x.l;
display g1.l;
display g2.l;
display g5.l;
display g6.l;
