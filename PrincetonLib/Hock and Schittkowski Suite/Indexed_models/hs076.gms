$Set N 4
Set I /i1*i%N%/;

Positive Variable x(i) ;
         Variable  obj ;
Equation constr1 , constr2 , constr3 , Def_obj ;

constr1..   x['i1'] + 2*x['i2'] +   x['i3'] + x['i4']  =l= 5 ;
constr2.. 3*x['i1'] +   x['i2'] + 2*x['i3'] - x['i4']  =l= 4 ;
constr3..   x['i2'] + 4*x['i3'] =g= 1.5;
Def_obj.. obj=e= sqr(x['i1'])+0.5*sqr(x['i2'])+sqr(x['i3'])+0.5*sqr(x['i4']) -
                     x['i1']*x['i3'] + x['i3']*x['i4'] -
                     x['i1'] - 3*x['i2'] + x['i3'] - x['i4'];
x.l['i1'] = 0.5;
x.l['i2'] = 0.5;
x.l['i3'] = 0.5;
x.l['i4'] = 0.5;

*"optimal solution as starting point \n";
*x.l['i1'] = 0.2727273;
*x.l['i2'] = 2.090909;
*x.l['i3'] =  -0.26e-10;
*x.l['i4'] = 0.5454545;

Model hs076 /all/;

Solve hs076 using nlp minimazing obj ;

obj.l = obj.l + 4.681818181;
display x.l;
display obj.l;
