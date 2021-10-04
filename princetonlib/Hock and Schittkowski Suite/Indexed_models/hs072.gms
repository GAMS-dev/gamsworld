$Set N 4
Set I /i1*i%N%/;

$Set M 2
Set J /j1*j%M%/;

Parameter a(j,i) ; a('j1','i1') = 4.0 ;
                   a('j2','i1') = 0.16;
                   a('j1','i2') = 2.25;
                   a('j2','i2') = 0.36;
                   a('j1','i3') = 1.0 ;
                   a('j2','i3') = 0.64;
                   a('j1','i4') = 0.25;
                   a('j2','i4') = 0.64;

Parameter b(j) / j1 0.0401  , j2 0.010085 /;

Variable x(i) , obj ;

Equation constr(j) , ub(i) , Def_obj ;

constr(j).. sum{i,(a[j,i]/x[i])} =l= b[j] ;
ub(i)..     x[i] =l= (5-ord(i))*1.0e5  ;
Def_obj..   obj  =e= 1 + sum{i, x[i] }  ;

x.lo[i] = 0.001 ;
x.l['i1'] = 1  ;
x.l['i2'] = 1  ;
x.l['i3'] = 1  ;
x.l['i4'] = 1  ;

* "optimal solution as starting point \n";
*x.fx['i1'] = 193.4071 ;
*x.fx['i2'] = 179.5475 ;
*x.fx['i3'] = 185.0186 ;
*x.fx['i4'] = 168.7062 ;

Model hs072 /all/;

Solve hs072 using nlp minimazing obj ;

obj.l = obj.l - 727.67937;
display x.l;
display obj.l;
