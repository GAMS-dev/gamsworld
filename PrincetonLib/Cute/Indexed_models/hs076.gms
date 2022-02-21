* Cute AMPL model  (translation to GAMS)
*
$Set N 4
Set i /i1*i%N%/;

Positive Variable x[i] ;
         Variable  obj ;

Equation constr1 ,
         constr2 ,
         constr3 ,
         Def_obj  ;

constr1..   x['i1'] + 2*x['i2'] +   x['i3'] + x['i4'] =l= 5.0 ;
constr2.. 3*x['i1'] +   x['i2'] + 2*x['i3'] - x['i4'] =l= 4.0 ;
constr3..               x['i2'] + 4*x['i3']        =g= 1.5 ;

Def_obj..  obj=e=sqr(x['i1'])+0.5*sqr(x['i2'])+sqr(x['i3'])+0.5*sqr(x['i4'])-
                     x['i1'] *        x['i3'] +    x['i3'] *        x['i4'] -
                     x['i1'] -3.0*    x['i2'] +    x['i3'] -        x['i4']   ;
x.l['i1'] = 0.5;
x.l['i2'] = 0.5;
x.l['i3'] = 0.5;
x.l['i4'] = 0.5;

*printf "optimal solution as starting point \n";
*x.l['i1'] = 0.2727273;
*x.l['i2'] = 2.090909;
*x.l['i3'] =  -0.26e-10;
*x.l['i4'] = 0.5454545;

Model hs076  /all/;

Solve hs076 using nlp minimize obj;

display   x.l               ;

obj.l = obj.l  + 4.681818181;
display obj.l               ;
