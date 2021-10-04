* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 4
Set i /1*%N%/;

Variable  r1,r2,r3,r4,X[I],f;

Equation Eq_1,Eq_2,Eq_3,Eq_4,Eq_5,Def_obj;

Eq_1.. r1 =e= 11-x['1']*x['4']-x['2']*x['4']+x['3']*x['4']    ;

Eq_2.. r2 =e= x['1']+10*x['2']-x['3']+x['4']+x['2']*x['4']*
                                               (x['3']-x['1']);

Eq_3.. r3 =e= 11-4*x['1']*x['4']-4*x['2']*x['4']+x['3']*x['4'];

Eq_4.. r4 =e= 2*x['1']+20*x['2']-0.5*x['3']+2*x['4']+2*x['2']*
                                      x['4']*(x['3']-4*x['1']);

Eq_5.. sqr(r1)+sqr(r2)-sqr(r3)-sqr(r4) =e= 0;

Def_obj.. f=e= sqr(r1) + sqr(r2);

x.lo['1']   =       0.1  ;
x.lo['2']   =       0.1  ;
x.lo['3']   =       0    ;
x.lo['4']   =       0    ;

x.l[i]  =        0   ;
Model s355 /all/;

Solve s355 using nlp minimize f;

display x.l;
display f.l;
