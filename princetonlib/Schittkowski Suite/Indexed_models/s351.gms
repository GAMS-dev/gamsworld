* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 4
Set j /1*%N%/;
$Set M 7
Set i /1*%M%/;

Parameter a[i] /1  0.0     ,2  0.000428,3  0.00100 ,4  0.00161 ,
                5  0.00209 ,6  0.00348 ,7  0.00525/;

Parameter b[i] /1   7.391  ,2  11.18   ,3  16.44   ,4  16.20   ,
                5  22.20   ,6  24.02   ,7  31.32/;

Variable      x[j],   f   ;

Equation Def_obj;
Def_obj.. f=e=
10000*sum{i,sqr(((sqr(x['1'])+sqr(x['2'])*a[i]+sqr(x['3'])*sqr(a[i]))/
                     (1+sqr(x['4'])*a[i])-b[i])/b[i]) };


x.l['1']  =   2.7      ;
x.l['2']  =   90       ;
x.l['3']  =   1500     ;
x.l['4']  =   10       ;
Model s351 /all/;

Solve s351 using nlp minimize f;

display x.l;
display f.l;
