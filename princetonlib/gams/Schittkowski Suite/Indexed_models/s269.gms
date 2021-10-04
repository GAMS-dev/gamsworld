* Shitkovski AMPL model  (translation to GAMS)
$Set N 5
Set I /1*%N%/;

Variable     X[I], f      ;

Equation Eq_1,Eq_2,Eq_3,Def_obj;

Eq_1..  x['1']+3*x['2']                        =e= 0;
Eq_2..                 +x['3']+x['4']-2*x['5'] =e= 0;
Eq_3..        +  x['2']              -  x['5'] =e= 0;
Def_obj..
     f =e= sqr(x['1']-x['2'])+sqr(x['2']+x['3']-2)+sqr(x['4']-1)+sqr(x['5']-1);

x.l['1'] = 2   ;
x.l['2'] = 2   ;
x.l['3'] = 2   ;
x.l['4'] = 2   ;
x.l['5'] = 2   ;

Model s269 /all/;

Solve s269 using nlp minimize f;

display x.l;
display f.l;
