$Set N 4
Set I /i1*i%N%/;

Parameter a ;  a = 0.55;
Parameter  l(i); l['i1'] =  0 ; l['i2'] =  0 ;
                 l['i3'] = -a ; l['i4'] = -a ;
Parameter  u(i); u['i1'] =1200 ; u['i2'] =1200 ;
                 u['i3'] =  a  ; u['i4'] =  a  ;

Variable x(i) , obj ;
Equation constr1a , constr1b , constr2 , constr3 , constr4 ,  Def_obj ;

constr1a..     -a =l= x['i4'] - x['i3'] ;
constr1b..      a =g= x['i4'] - x['i3'] ;
constr2.. x['i1'] =e= 1000*sin(-x['i3']-0.25)+1000*sin(       -x['i4']-0.25)+ 894.8 ;
constr3.. x['i2'] =e= 1000*sin( x['i3']-0.25)+1000*sin(x['i3']-x['i4']-0.25)+ 894.8 ;
constr4..       0 =e= 1000*sin( x['i4']-0.25)+1000*sin(x['i4']-x['i3']-0.25)+1294.8 ;

Def_obj..  obj =e= 3*x['i1'] + 0.000001 * power(x['i1'],3)  +
                   2*x['i2'] + 0.000002 * power(x['i2'],3)/3  ;

x.lo[i] = l[i];
x.up[i] = u[i];

x.l['i1'] = 0 ;
x.l['i2'] = 0 ;
x.l['i3'] = 0 ;
x.l['i4'] = 0 ;

* optimal solution
*x.fx['i1'] = 679.9453;
*x.fx['i2'] = 1026.067;
*x.fx['i3'] =  0.1188764;
*x.fx['i4'] = -0.3962336;

Model hs074 /all/;

Solve hs074 using nlp minimazing obj ;

obj.l = obj.l - 5126.4981;
display x.l;
display obj.l;
