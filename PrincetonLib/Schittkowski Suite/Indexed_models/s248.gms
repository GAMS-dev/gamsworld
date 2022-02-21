$Set N 3
Set I /1*%N%/;

Variable     x[I]  ,
             f     ;
Equation
         Eq_1   ,
         Eq_2   ,
         Def_obj;

Eq_1..     1 - 2*x['2'] + x['1']                   =g=  0 ;
Eq_2..     sqr(x['1'])+sqr(x['2'])-sqr(x['3'])-1   =e=  0 ;
Def_obj..  f =e= -x['2']  ;

x.l['1']  =  0.1 ;
x.l['2']  = -1.0 ;
x.l['3']  =  0.0 ;

Model s248 /all/;

Solve s248 using nlp minimize f;

display x.l;
display f.l;
