

* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 13
Set i /1*%N%/;

parameter r[i] /1  0.80, 2  1.10, 3  0.85, 4  3.45, 5  2.00,
                6  2.10, 7  3.00, 8  0.80, 9  0.45,10  0.72,
               11  1.80,12  3.00,13  0.60/;

parameter s[i] /1 11.60, 2 13.70, 3  9.50, 4 48.50, 5 31.90,
                6 51.10, 7 65.50, 8  0.00, 9  0.00,10  0.00,
               11 21.80,12 46.90,13  0.00/;

parameter u[i] /1  0.05, 2  0.07, 3  0.00, 4  0.33, 5  0.00,
                6  1.27, 7  1.27, 8 23.35, 9 35.84,10  0.81,
               11  1.79,12  7.34,13  0.00/;

parameter v[i] /1  0.35, 2  0.37, 3  0.10, 4  0.62, 5  0.00,
                6  1.03, 7  1.69, 8 18.21, 9  0.01,10  0.08,
               11  0.31,12  1.59,13 22.45/;


Positive Variable     X[I];
Variable              f   ;

Equation Eq_1,Eq_2,Eq_3,Eq_4,Def_obj;
Eq_1..  -18  +sum{i,  (s[i]*x[i])}    =g= 0;
Eq_2..   -1  +sum{i,  (u[i]*x[i])}    =g= 0;
Eq_3..   -0.9+sum{i,  (v[i]*x[i])}    =g= 0;
Eq_4..        sum{i,  (x[i])} -1      =e= 0;
Def_obj.. f=e=sum{i, r[i]*x[i] };

x.l[i]  =     0.1    ;
Model s381 /all/;

Solve s381 using nlp minimize f;

display x.l;
display f.l;
