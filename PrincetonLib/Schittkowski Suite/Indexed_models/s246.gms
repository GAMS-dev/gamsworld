* Shitkovski AMPL model  (translation to GAMS)
$Set N 3
Set I /1*%N%/;

Variable     x[I], f    ;

Equation Def_obj ;

Def_obj..
f =e= 100*sqr(x['3']-sqr( (x['1']+x['2'])/2) )+sqr(1-x['1'])+sqr(1-x['2']);

x.l['1'] = -1.2;
x.l['2'] =  2  ;
x.l['3'] =  0  ;


Model s246 /all/;

Solve s246 using nlp minimize f;

display x.l;
display f.l;
