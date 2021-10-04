* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 4
Set i /1*%N%/;
$Set M 11
Set j /1*%M%/;

Parameter y[j] /1  0.1957,2  0.1947,3  0.1735,4  0.1600,5  0.0844,
                6  0.0627,7  0.0456,8  0.0342,9  0.0323,10 0.0235,11 0.0246/;

Parameter u[j] /1  4.0000,2  2.0000,3  1.0000,4  0.5000,5  0.2500,
                6  0.1670,7  0.1250,8  0.1000,9  0.0833,10 0.0714,11 0.0625/;

Variable      X[I],   f   ;

Equation Def_obj;
Def_obj.. f=e=  sum{j,sqr(y[j]-x['1']*(sqr(u[j])+x['2']*u[j])/
                             (sqr(u[j])+x['3']*u[j]+x['4'])       )};

x.l['1']  =   0.25     ;
x.l['2']  =   0.39     ;
x.l['3']  =   0.415    ;
x.l['4']  =   0.39     ;
Model s350 /all/;

Solve s350 using nlp minimize f;

display x.l;
display f.l;
