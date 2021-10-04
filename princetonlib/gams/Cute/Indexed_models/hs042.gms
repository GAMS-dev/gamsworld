* Cute AMPL model  (translation to GAMS)
*
$Set N 4
Set i /i1*i%N%/;

Positive Variable x[i]  ;
         Variable   obj ;

Equation constr1 ,
         Def_obj  ;

constr1..  sqr(x['i3']) + sqr(x['i4']) =e= 2 ;
Def_obj..  obj =e= sqr(x['i1']-1) + sqr(x['i2']-2) +
                   sqr(x['i3']-3) + sqr(x['i4']-4) ;

x.l['i1'] = 1;
x.l['i2'] = 1;
x.l['i3'] = 1;
x.l['i4'] = 1;

x.fx['i1'] = 2;

*printf "optimal solution as starting point \n";
*x.l['i1'] = 2;
*x.l['i2'] = 2;
*x.l['i3'] = 0.848529;
*x.l['i4'] = 1.13137;

Model hs042  /all/;

Solve hs042 using nlp minimize obj;

display   x.l               ;

obj.l = obj.l-28+10*sqrt(2) ;
display obj.l               ;
