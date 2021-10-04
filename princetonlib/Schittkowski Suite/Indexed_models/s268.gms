* Shitkovski AMPL model  (translation to GAMS)
$Set N 5
Set I /1*%N%/;
$Set M 6
Set J /1*%M%/;
Alias(I,K);
parameter d_small[J] / 1 51, 2 -61, 3 -56,
                       4 69, 5  10, 6 -12 / ;

table D[J,I]
        1       2       3       4       5
1     -74      80      18     -11      -4
2      14     -69      21      28       0
3      66     -72      -5       7       1
4     -12      66     -30     -23       3
5       3       8      -7      -4       1
6       4     -12       4       4       0  ;

parameter DtD[i,k]; DtD[i,k] = sum{j,(D[J,I]*D[J,K])};

Variable     X[I], f      ;

Equation Eq_1,Eq_2,Eq_3,Eq_4,Eq_5,Def_obj;

Eq_1..          -1*x['1']-   x['2']-  x['3']-  x['4']-  x['5']+ 5 =g= 0;
Eq_2..          10*x['1']+10*x['2']-3*x['3']+5*x['4']+4*x['5']-20 =g= 0;
Eq_3..          -8*x['1']+   x['2']-2*x['3']-5*x['4']+3*x['5']+40 =g= 0;
Eq_4..           8*x['1']-   x['2']+2*x['3']+5*x['4']-3*x['5']-11 =g= 0;
Eq_5..          -4*x['1']- 2*x['2']+3*x['3']-5*x['4']+  x['5']+30 =g= 0;
Def_obj..    f =e=   sum{I,(x[I]*sum{k,(DtD[i,k]*x[k])})}
                  -2*sum{J,(d_small[J]*(sum{k,(D[J,k]*x[k])}))}
                  +  sum{J,sqr(d_small[J])};
x.l[I]   =  1 ;
Model s268 /all/;
Solve s268 using nlp minimize f;
display x.l;
display f.l;
