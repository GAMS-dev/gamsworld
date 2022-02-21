* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 4
Set j /1*%N%/;
$Set M 20
Set i /1*%M%/;

Parameter t[i] ;  t[i]=0.2*ord(i);

Variable      x[j],   f   ;

Equation Def_obj;
Def_obj.. f=e=sum{i,( sqr(x['1']+x['2']*t[i]-exp(t[i]))+
                      sqr(x['3']+x['4']*sin(t[i])-cos(t[i]))) };

x.l['1']  =   25       ;
x.l['2']  =   5        ;
x.l['3']  =   -5       ;
x.l['4']  =   -1       ;
Model s352 /all/;

Solve s352 using nlp minimize f;

display x.l;
display f.l;
