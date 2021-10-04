$Set N 2
Set I /i1*i%N%/;
Set J /j1*j100/;

Parameter  pi ;  pi = 4*arctan(1);
Parameter t[j];  t[j] = pi*(1/3+(ord(j)-1)/180);

Positive Variable x[i] ;

Variable  f ;

Equation
 Def_obj ;


Def_obj.. f=e=(pi/3.6)*sum{j,
                          (sqr(log(t[j])+x['i2']*sin(t[j])+x['i1']*cos(t[j])) +
                           sqr(log(t[j])+x['i2']*cos(t[j])-x['i1']*sin(t[j])))};

x.up[i] = 1.5;

x.l['i1'] =    0.75 ;
x.l['i2'] =    0.75 ;

Model s332 /all/ ;
Solve s332 using dnlp minimazing f ;


display x.l;
display f.l;
