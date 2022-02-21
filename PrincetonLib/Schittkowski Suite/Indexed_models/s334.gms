* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 3
Set i /1*%N%/;
$Set M 15
Set j /1*%M%/;

parameter  u[j] ; u[j]=   ord(j)     ;
parameter  v[j] ; v[j]=16-ord(j)     ;
parameter  w[j] ; w[j]=min(u[j],v[j]);

parameter y[j]

          /1 0.14, 2 0.18, 3 0.22, 4 0.25, 5 0.29, 6 0.32, 7 0.35, 8 0.39,
           9 0.37,10 0.58,11 0.73,12 0.96,13 1.34,14 2.10,15 4.39        /;



Variable     X[i], f      ;

Equation Def_obj;

Def_obj.. f=e= sum{j,sqr(y[j]-x['1']-u[j]/(x['2']*v[j]+x['3']*w[j]))};

x.l['1']  =   1     ;
x.l['2']  =   1     ;
x.l['3']  =   1     ;

Model s334 /all/;

Solve s334 using nlp minimize f;

display x.l;
display f.l;
