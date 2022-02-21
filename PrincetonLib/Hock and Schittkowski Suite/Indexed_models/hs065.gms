$Set N 3
Set I /i1*i%N%/;

Variable X(i) , Obj ;

Equation constr1 , Def_obj ;

constr1.. sqr(x['i1']) + sqr(x['i2']) + sqr(x['i3']) =l= 48;

Def_obj..  obj =e= sqr(x['i1'] - x['i2']     )    +
                   sqr(x['i1'] + x['i2'] - 10) /9 +
                   sqr(x['i3'] - 5           )     ;

x.lo['i1'] = -4.5;
x.lo['i2'] = -4.5;
x.lo['i3'] = -5  ;
x.up['i1'] =  4.5;
x.up['i2'] =  4.5;
x.up['i3'] =  5  ;

x.l['i1'] = -5;
x.l['i2'] =  5;
x.l['i3'] =  0;

*"optimal solution as starting point \n";
*x.l['i1'] = 3.650461821  ;
*x.l['i2'] = 3.65046168   ;
*x.l['i3'] = 4.6204170507 ;

Model hs065 /all/;

Solve hs065 using nlp minimazing obj ;

obj.l = obj.l - 0.9535288567;
display x.l;
display obj.l;
