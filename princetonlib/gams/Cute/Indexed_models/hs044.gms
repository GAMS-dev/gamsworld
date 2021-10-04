* Cute AMPL model  (translation to GAMS)
*
$Set N 4
Set i /i1*i%N%/;

Positive Variable x[i]  ;
         Variable   obj ;

Equation constr1 ,
         constr2 ,
         constr3 ,
         constr4 ,
         constr5 ,
         constr6 ,
         Def_obj  ;

constr1..   x['i1'] + 2*x['i2'] =l=  8 ;
constr2.. 4*x['i1'] +   x['i2'] =l= 12 ;
constr3.. 3*x['i1'] + 4*x['i2'] =l= 12 ;
constr4.. 2*x['i3'] +   x['i4'] =l=  8 ;
constr5..   x['i3'] + 2*x['i4'] =l=  8 ;
constr6..   x['i3'] +   x['i4'] =l=  5 ;

Def_obj..
        obj=e= x['i1']        - x['i2']       - x['i3']       -
               x['i1']*x['i3']+x['i1']*x['i4']+x['i2']*x['i3']-x['i2']*x['i4'];
x.l['i1'] = 0;
x.l['i2'] = 0;
x.l['i3'] = 0;
x.l['i4'] = 0;

*printf "optimal solution as starting point \n";
*x.l['i1'] = 0;
*x.l['i2'] = 3;
*x.l['i3'] = 0;
*x.l['i4'] = 4;

Model hs044  /all/;

Solve hs044 using nlp minimize obj;

display   x.l               ;

obj.l = obj.l + 15          ;
display obj.l               ;
