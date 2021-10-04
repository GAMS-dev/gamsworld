* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 14
Set i /1*%N%/;
Set left(i)  /1*5/;
Set right(i) /6*%N%/;


parameter a[i] /1 12842.275, 2   634.250, 3   634.250, 4   634.125,
                5  1268.000, 6   633.875, 7   633.750, 8  1267.000,
                9   760.050,10   633.250,11  1266.250,12   632.875,
               13   394.460,14   940.838 /;

parameter c[i] /1 5.47934, 2 0.83234, 3 0.94749, 4 1.11082,
                5 2.64824, 6 1.55868, 7 1.73215, 8 3.90896,
                9 2.74284,10 2.60541,11 5.96184,12 3.29522,
               13 1.83517,14 2.81372/;

Positive Variable     X[I];
Variable              f   ;

Equation Eq_1,Def_obj;
Eq_1..    sum{i,(c[i]*x[i])}-1=e=0 ;
Def_obj.. f=e= sum{i,(a[i]/x[i])}  ;

x.up[i]$left(i)   =    0.04;
x.up[i]$right(i)  =    0.03;

x.lo[i]  =    0.000001;
x.l[i]  =    0.01     ;
Model s383 /all/;

Solve s383 using nlp minimize f;

display x.l;
display f.l;
