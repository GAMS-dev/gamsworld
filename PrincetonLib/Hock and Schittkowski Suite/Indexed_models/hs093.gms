$Set N 6
Set I /i1*i%N%/;
Positive Variable x(i)  ;
         Variable   obj ;
Equation constr1 , constr2 , Def_obj ;
constr1.. 0.001* prod{i, x[i] } =g= 2.07;

constr2..
  0.00062*x['i1']*x['i4']*sqr(x['i5'])*(x['i1'] +      x['i2'] + x['i3']) +
  0.00058*x['i2']*x['i3']*sqr(x['i6'])*(x['i1'] + 1.57*x['i2'] + x['i4']) =l=1;

Def_obj.. obj=e=
  0.0204*x['i1']*x['i4']*             (x['i1'] +      x['i2'] + x['i3']) +
  0.0187*x['i2']*x['i3']*             (x['i1'] + 1.57*x['i2'] + x['i4']) +
  0.0607*x['i1']*x['i4']*sqr(x['i5'])*(x['i1'] +      x['i2'] + x['i3']) +
  0.0437*x['i2']*x['i3']*sqr(x['i6'])*(x['i1'] + 1.57*x['i2'] + x['i4']) ;

x.l['i1'] =  5.54  ;
x.l['i2'] =  4.4   ;
x.l['i3'] = 12.02  ;
x.l['i4'] = 11.82  ;
x.l['i5'] =  0.702 ;
x.l['i6'] =  0.852 ;

* "optimal solution as starting point ";
*x.l['i1'] = 5.332666;
*x.l['i2'] = 4.656744;
*x.l['i3'] = 10.43299;
*x.l['i4'] = 12.08230;
*x.l['i5'] =  0.7526074;
*x.l['i6'] =  0.87865084;

Model hs093 /all/ ;

Solve hs093 using nlp minimazing obj ;

obj.l = obj.l - 135.075961;

display obj.l;
