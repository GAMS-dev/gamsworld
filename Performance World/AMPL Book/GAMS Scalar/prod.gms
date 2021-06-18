Set P / bands , coils /;
Parameter b  / 40 / ;
Parameter a(P) /  bands  200 , coils  140 / ;
Parameter c(P) /  bands   25 , coils   30 / ;
Parameter u(P) /  bands 6000 , coils 4000 / ;

Variable X(P) , profit ;
Equation Eq_Time , Def_obj ;


Eq_Time..            sum{P, ((1/a[P])*X[P]) } =l= b ;


Def_obj.. profit =e= sum{P, (c[P] * X[P]  ) }       ;

*Instead Limit(P)..  0 <= X[j] <= u[j];
X.lo[P] = 0   ;
X.up[P] = u[P];

Model prod_ /all/;

Solve prod_ using lp maximizing profit ;

Display profit.l ;
