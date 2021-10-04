$Set N 3
Set I /i1*i%N%/;

Positive Variable x(i)  ;
         Variable Obj ;

Equation constr1, constr2, Def_obj ;

constr1.. x['i2'] - exp(x['i1']) =g= 0;
constr2.. x['i3'] - exp(x['i2']) =g= 0;

Def_obj..  obj =e= 0.2*x['i3'] - 0.8*x['i1'] ;


x.up['i1'] = 100.0 ;
x.up['i2'] = 100.0 ;
x.up['i3'] =  10.0 ;

x.l['i1'] = 0    ;
x.l['i2'] = 1.05 ;
x.l['i3'] = 2.9  ;

*"optimal solution as starting point \n";
*lx.l['i1'] = 0.1841264879;
*lx.l['i2'] = 1.202167873;
*x.l['i3'] = 3.327322322;

Model hs066 /all/;

Solve hs066 using nlp minimazing obj ;

obj.l = obj.l - 0.5181632741;
display x.l;
display obj.l;
