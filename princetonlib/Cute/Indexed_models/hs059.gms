* Cute AMPL model  (translation to GAMS)
*
$Set N 2
Set i /i1*i%N%/;

parameter u(i) /i1  75, i2  65 /;


Positive Variable x[i] ;
         Variable  obj ;

Equation constr1 ,
         constr2 ,
         constr3 ,
         Def_obj  ;

constr1..     x['i1']*x['i2']                           =g= 700 ;
constr2..     x['i2']         - sqr(x['i1']     ) / 125 =g=   0 ;
constr3.. sqr(x['i2'] - 50)   - 5* (x['i1'] - 55)       =g=   0 ;

Def_obj..

obj=e=
  - 75.196 + 3.8112*x['i1'] + 0.0020567*power(x['i1'],3) -
    1.0345e-5*power(x['i1'],4)
  + 6.8306*x['i2'] - 0.030234*x['i1']*x['i2']
  + 1.28134e-3*x['i2']*sqr(x['i1'])
  + 2.266e-7*power(x['i1'],4)*x['i2'] - 0.25645*sqr(x['i2'])
  + 0.0034604*power(x['i2'],3) - 1.3514e-5*power(x['i2'],4)
  + 28.106/(x['i2'] + 1) + 5.2375e-6*sqr(x['i1'])*sqr(x['i2'])
  + 6.3e-8*power(x['i1'],3)*sqr(x['i2'])
  - 7e-10*power(x['i1'],3)*power(x['i2'],3)
  - 3.405e-4*x['i1']*sqr(x['i2']) + 1.6638e-6*x['i1']*power(x['i2'],3)
  + 2.8673*exp(0.0005*x['i1']*x['i2']) - 3.5256e-5
  * power(x['i1'],3)*x['i2']
* the last term appears in CUTE but not in H&S
  -0.12694*sqr(x['i1'])
                              ;

x.up[i] = u[i] ;

x.l['i1'] = 60 ;
x.l['i2'] = 10 ;

*printf "optimal solution as starting point \n";
*x.l['i1'] = 13.55010424;
*x.l['i2'] = 51.66018129;


Model hs059  /all/;

Solve hs059 using nlp minimize obj;

display   x.l               ;

obj.l = obj.l  + 7.804226324;
display obj.l               ;
