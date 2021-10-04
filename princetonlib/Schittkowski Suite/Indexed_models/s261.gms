* Shitkovski AMPL model  (translation to GAMS)
$Set N 4
Set I /1*%N%/;

Variable     X[I], f      ;

Equation Def_obj;

Def_obj..
    f=e=  power((exp(x['1'])- x['2']),4)+100*power((x['2']-x['3']),6)
        + power((SIN(x['3'] - x['4'])/COS(x['3']-x['4']) ),4)
        + power(x['1'],8)+sqr(x['4']-1);

x.l['1']  =  0 ;
x.l['2']  =  0 ;
x.l['3']  =  0 ;
x.l['4']  =  0 ;

Model s261 /all/;

Solve s261 using nlp minimize f;

display x.l;
display f.l;
