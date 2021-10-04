* Shitkovski AMPL model  (translation to GAMS)
$Set N 3
Set I /1*%N%/;

Variable     X[I], f      ;

Equation Eq_1,Eq_2,Def_obj;

Eq_1..          sqr(x['2'])+sqr(x['3'])-4 =e= 0;
Eq_2..          x['3'] - 1 - sqr(x['1'] ) =e= 0;
Def_obj..       f =e= log(x['3']) - x['2']     ;

x.l['1'] =  1  ;
x.l['2'] =  1  ;
x.l['3'] =  1  ;

x.lo['3'] =  0.0001 ;

* answers from AMPL version of model
* log(x['3']) not exist if x['3']<0
* x.fx['1'] = -0.714  ;
* x.fx['2'] =  4.428  ;
* x.fx['3'] = -1.42   ;

Model s254 /all/;

Solve s254 using nlp minimize f;

display x.l;
display f.l;
