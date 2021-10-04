* Shitkovski AMPL model  (translation to GAMS)
$Set N 3
Set I /1*%N%/;

Variable     x[I], f    ;

Equation Eq_1,Def_obj;

Eq_1..           x['1']+sqr(x['3'])+1 =e= 0;
Def_obj..  f =e= 0.01*sqr(x['1']-1)+sqr(x['2']-sqr(x['1']));

x.l['1'] = -2  ;
x.l['2'] =  3  ;
x.l['3'] =  1  ;

Model s235 /all/;

Solve s235 using nlp minimize f;

display x.l;
display f.l;
