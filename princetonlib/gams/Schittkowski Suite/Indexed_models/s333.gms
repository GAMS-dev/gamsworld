* Shitkovski AMPL model  (translation to GAMS)
* SOLVER "loqo" in AMPL vartiant works after adding:  >= -200;
*
$Set N 3
Set i /1*%N%/;
$Set M 8
Set j /1*%M%/;

parameter  y[j] /1 72.1,2 65.6,3 55.9,4 17.1,5  9.8,6  4.5,7  1.3,8  0.6/;
parameter  a[j] /1  4  ,2 5.75,3  7.5,4 24  ,5 32  ,6 48  ,7 72  ,8 96  /;
Variable     X[i], f      ;

Equation Def_obj;

Def_obj.. f=e=sum{j,sqr((y[j]-x['1']*exp(-x['2']*a[j])-x['3'])/y[j])} ;



x.l['1']  =  30     ;
x.l['2']  =   0.00  ;
x.l['3']  =   3     ;

Model s333 /all/;

Solve s333 using nlp minimize f;

display x.l;
display f.l;
