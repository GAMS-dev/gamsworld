* Shitkovski AMPL model  (translation to GAMS)
$Set N 6
Set I /1*%N%/;
$Set M 13
Set j /1*%M%/;
parameter t[j]; t[j]= ord(j)/10;
parameter y[j]; y[j]= exp(-1*t[j]) - 5*exp(-10*t[j]) + 3*exp(-4*t[j]);

Variable     X[I], f      ;

Equation Def_obj;

Def_obj..       f =e= sum{j,sqr(x['4']*exp(-x['1']*t[j])
                               -x['5']*exp(-x['2']*t[j])
                               +x['6']*exp(-x['3']*t[j])-y[j])};
x.l['1']  =   4 ;
x.l['2']  =   2 ;
x.l['3']  =   1 ;
x.l['4']  =   1 ;
x.l['5']  =   1 ;
x.l['6']  =   1 ;
x.lo[I]   =   0 ;

Model s272 /all/;

Solve s272 using nlp minimize f;

display x.l;
display y;
display f.l;
