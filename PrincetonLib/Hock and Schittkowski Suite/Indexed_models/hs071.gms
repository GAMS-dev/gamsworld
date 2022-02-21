$Set N 4
Set I /i1*i%N%/;

Variable X(i) , Obj ;
Equation constr1, constr2, Def_obj ;

constr1.. prod{i, x[i] } =g= 25;
constr2.. sum{i, sqr(x[i]) } =e= 40;
Def_obj.. obj =e= x['i1']*x['i4']*(x['i1'] + x['i2'] + x['i3']) + x['i3'] ;

x.lo[i] = 1;
x.up[i] = 5;
x.l['i1'] = 1;
x.l['i2'] = 5;
x.l['i3'] = 5;
x.l['i4'] = 1;

*"optimal solution as starting point \n";
*x.l['i1'] = 1         ;
*x.l['i2'] = 4.742994  ;
*x.l['i3'] = 3.8211503 ;
*x.l['i4'] = 1.3794082 ;

Model hs071 /all/;

Solve hs071 using nlp minimazing obj ;

obj.l = obj.l - 17.0140173;
display x.l;
display obj.l;
