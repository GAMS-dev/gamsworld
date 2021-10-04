* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 2
Set i /1*%N%/;

Variable     X[I], f      ;

Equation Eq_1,Eq_2,Eq_3,Def_obj;
Eq_1..              sqr(x['1']-5)     +    sqr(x['2']-5) - 100 =g= 0;
Eq_2..              sqr(x['1']-6)     +    sqr(x['2']-5)       =g= 0;
Eq_3..      82.81 - sqr(x['1']-6)     -    sqr(x['2']-5)       =e= 0;
Def_obj..  f =e= power((x['1']-10),3) + power((x['2']-20),3)        ;


x.lo['1'] =   13.0         ;
x.up['1'] =   16.0         ;
x.lo['2'] =    0.0         ;
x.up['2'] =   15.0         ;
x.l['1']  =   14.35        ;
x.l['2']  =    8.6         ;
Model s329 /all/;

Solve s329 using nlp minimize f;

display x.l;
display f.l;
