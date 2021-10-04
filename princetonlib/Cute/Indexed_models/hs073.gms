* Cute AMPL model  (translation to GAMS)
*
$Set N 4
Set i /i1*i%N%/;

Positive Variable x[i] ;
         Variable obj  ;

Equation constr1 ,
         constr2 ,
         constr3 ,
         Def_obj  ;


constr1.. 2.3*x['i1'] + 5.6*x['i2'] + 11.1*x['i3'] + 1.3*x['i4']  =g= 5 ;
constr2..     12.0*x['i1'] +
              11.9*x['i2'] +
              41.8*x['i3'] +
              52.1*x['i4']   =g=  21+1.645*sqrt( 0.28*sqr(x['i1']) +
                                                 0.19*sqr(x['i2']) +
                                                20.50*sqr(x['i3']) +
                                                 0.62*sqr(x['i4'])  ) ;
constr3..  sum{i,x[i]} =e= 1;

Def_obj..  obj=e=24.55*x['i1'] + 26.75*x['i2'] + 39*x['i3'] + 40.50*x['i4'];

x.l['i1']  =  1         ;
x.l['i2']  =  1         ;
x.l['i3']  =  1         ;
x.l['i4']  =  1         ;

*printf "optimal solution as starting point \n";
*x.l['i1'] =  0.6355216 ;
*x.l['i2'] = -0.12e-11  ;
*x.l['i3'] =  0.3127019 ;
*x.l['i4'] =  0.5177655 ;

Model hs073  /all/;

Solve hs073 using nlp minimize obj;

display   x.l               ;

obj.l = obj.l  - 29.894378;
display obj.l               ;
