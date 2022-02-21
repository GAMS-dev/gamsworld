* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 10
Set i /1*%N%/;
Alias(i,i1);
parameter A(i) /1        -6.089,2       -17.164,3       -34.054,
                4        -5.914,5       -24.721,6       -14.986,
                7       -24.100,8       -10.708,9       -26.662,
               10      -22.179/;

Variable  x[I],f   ;

Equation Eq_1,Eq_2,Eq_3,Def_obj;
Eq_1.. x['1']-2*x['2']+2*x['3']+  x['6']+x['10']-2 =e= 0;
Eq_2.. x['4']-2*x['5']+  x['6']+  x['7']-1         =e= 0;
Eq_3.. x['3']+  x['7']+  x['8']+2*x['9']+x['10']-1 =e= 0;
Def_obj.. f=e=
sum{i,(x[i]*(a[i]+log(x[i]/(sum{i1,x[i1]})))) };

x.up[i] =  10      ;
x.lo[i] =   0.1e-4 ;
x.l[i]  =   0.1    ;
Model s377 /all/;

Solve s377 using nlp minimize f;

display x.l;
display f.l;
