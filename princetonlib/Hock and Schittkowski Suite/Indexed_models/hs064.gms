$Set N 3
Set I /i1*i%N%/;

Variable X(i) , Obj ;

Equation constr1, Def_obj ;

constr1.. 4/x['i1'] + 32/x['i2'] + 120/x['i3'] =e= 1;

Def_obj..  obj =e=5*x['i1'] + 50000/x['i1'] + 20*x['i2'] + 72000/x['i2'] + 10*x['i3'] +144000/x['i3'];

x.lo[i]   = 0.00001;
x.l['i1'] = 0.7;
x.l['i2'] = 0.2;
x.l['i3'] = 0.1;

* "optimal solution as starting point \n";
*x.fx['i1'] = 108.7347175;
*x.fx['i2'] = 85.12613942;
*x.fx['i3'] = 204.3247078;

Model hs064 /all/;

Solve hs064 using nlp minimazing obj ;

obj.l = obj.l - 6299.842428;
display x.l;
display obj.l;
