$Set N 6
Set I /i1*i%N%/;

Parameter u(i) ; u(i) = 1000000;  u('i1') = 0.6; u('i4') = 1;

Positive Variable x(i)  ;

Variable  obj ;

Equation constr1,constr2,constr3,constr4,constr5,constr6,Def_obj ;


constr1.. x['i1'] + 2*x['i2'] + 5*x['i5'] =e= 6;
constr2.. x['i1'] +   x['i2'] +   x['i3'] =e= 3;
constr3.. x['i4'] +   x['i5'] +   x['i6'] =e= 2;
constr4.. x['i1'] +   x['i4'] =e= 1;
constr5.. x['i2'] +   x['i5'] =e= 2;
constr6.. x['i3'] +   x['i6'] =e= 2;

Def_obj..  obj =e= x['i1'] + 2*x['i2'] + 4*x['i5'] + exp(x['i1']*x['i4']);

x.up[i] = u(i);

x.l['i1'] = 1 ;
x.l['i2'] = 2 ;
x.l['i3'] = 0 ;
x.l['i4'] = 1 ;
x.l['i5'] = 0 ;
x.l['i6'] = 2 ;




Model hs55 /all/;

Solve hs55 using nlp minimazing obj;

display x.l;

obj.l = obj.l - 19/3;

display obj.l ;
