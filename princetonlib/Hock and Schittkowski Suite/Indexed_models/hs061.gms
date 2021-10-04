$Set N 3
Set I /i1*i%N%/;

Variable x(i) ,  obj ;
Equation constr1 , constr2 , Def_obj ;

Def_obj..
obj=e=  4*sqr(x['i1']) +  2*sqr(x['i2']) +  2*sqr(x['i3']) -
           33*x['i1']  + 16*    x['i2']  - 24*    x['i3']  ;

constr1.. 3*x['i1'] - 2*sqr(x['i2']) =e=  7 ;
constr2.. 4*x['i1'] -   sqr(x['i3']) =e= 11 ;

x.l['i1'] = 0;
x.l['i2'] = 0;
x.l['i3'] = 0;

*Solutions
* x[1] := 5.326770157;
* x[2] := -2.118998639;
* x[3] := 3.210464239;

Model hs61 /all/;

Solve hs61 using nlp minimazing obj;

display x.l;

obj.l = obj.l + 143.6461422;

display obj.l ;
