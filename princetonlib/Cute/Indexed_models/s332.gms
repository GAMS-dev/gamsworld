$Set n 2
Set I /i1*i%n%/;
Set j /j1*j100/;

Parameter pi   ;   pi = 4*arctan(1) ;
Parameter t[j] ; t[j] = pi*(1/3+(ord(j)-1)/180);

Variable x[i] , f ;

Equation cons01(j) , cons02(j) ,  Def_obj ;



cons01(j).. -30 =l=(180/pi)*arctan((1/t[j]-x['i1'])/(log(t[j])+x['i2']));
cons02(j)..        (180/pi)*arctan((1/t[j]-x['i1'])/(log(t[j])+x['i2'])) =l=30;

Def_obj..
f =e= (pi/3.6)*sum{j, ( sqr(log(t[j])+x['i2']*sin(t[j])+x['i1']*cos(t[j])) +
                        sqr(log(t[j])+x['i2']*cos(t[j])-x['i1']*sin(t[j]))) };
x.lo[i]   = 0.0  ;
x.up[i]   = 1.5  ;
x.l['i1'] = 0.75 ;
x.l['i2'] = 0.75 ;

Model s332 /all /;

Solve s332  using nlp minimazing f ;

display f.l ;
display x.l ;
