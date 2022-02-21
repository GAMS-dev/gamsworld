$Set N 2
Set I /i1*i%N%/;

Parameter u(i); u('i1') =75 ;  u('i2') =65 ;

Positive Variable x(i) ;
         Variable  obj ;

Equation
constr1,
constr2,constr3,Def_obj ;

Def_obj.. obj =e=
  -75.196 + 3.8112*x['i1']      + 0.0020567*power(x['i1'],3) -
         1.0345e-5*power(x['i1'],4)    + 6.8306*x['i2']      -
          0.030234*x['i1']*x['i2'] + 1.28134e-3*x['i2']*power(x['i1'],2)  +
          2.266e-7*power(x['i1'],4)*x['i2'] - 0.25645*power(x['i2'],2) +
         0.0034604*power(x['i2'],3) - 1.3514e-5*power(x['i2'],4)  +
           28.106/(x['i2'] + 1) + 5.2375e-6*power(x['i1'],2)*power(x['i2'],2) +
            6.3e-8*power(x['i1'],3)*power(x['i2'],2)  - 7e-10*power(x['i1'],3)*power(x['i2'],3) -
          3.405e-4*x['i1']*power(x['i2'],2) + 1.6638e-6*x['i1']*power(x['i2'],3)  +
         2.8673*exp(0.0005*x['i1']*x['i2']) - 3.5256e-5*power(x['i1'],3)*x['i2']
  -0.12694*power(x['i1'],2)  ;

constr1..     x['i1']*x['i2']                  =g= 700 ;
constr2..     x['i2'] - sqr(x['i1'])/125       =g=   0 ;
constr3.. sqr(x['i2'] - 50) - 5*(x['i1'] - 55) =g=   0 ;

x.up[i]= u(i) ;



x.l[i] = u(i);



*x[1] = 13.55010424;
*x[2] = 51.66018129;
Model hs59 /all/;

Solve hs59 using dnlp minimazing obj;

display x.l;

obj.l = obj.l + 7.804226324;

display obj.l ;
