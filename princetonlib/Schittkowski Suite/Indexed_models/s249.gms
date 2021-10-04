* Shitkovski AMPL model  (translation to GAMS)
$Set N 3
Set I /1*%N%/;

Variable     x[I]  ,
             f     ;

Equation
         Eq_1   ,
         Def_obj;

Eq_1..     sqr(x['1'])+sqr(x['2'])-1           =g=  0 ;
Def_obj..  f =e= sqr(x['1'])+sqr(x['2'])+sqr(x['3'])  ;

x.lo['1'] = 1    ;

x.l['1']  = 1    ;
x.l['2']  = 1    ;
x.l['3']  = 1    ;

Model s249 /all/;

Solve s249 using nlp minimize f;

display x.l;
display f.l;
