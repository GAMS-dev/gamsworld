* Cute AMPL model  (translation to GAMS)
*
$Set N 7
Set i /i1*i%N%/;

Variable x[i] ,
          obj ;

Equation constr1    ,
         constr2    ,
         constr3    ,
         constr4    ,
         Def_obj     ;

constr1..  2*sqr(x['i1']) + 3*power(x['i2'],4) +        x['i3']  + 4*sqr(x['i4']) +
                                                     5*x['i5']          =l= 127 ;
constr2..  7*    x['i1']  + 3*      x['i2']    + 10*sqr(x['i3']) +       x['i4']  -
                                                     x['i5']            =l= 282 ;
constr3.. 23*    x['i1']  +     sqr(x['i2'])   +  6*sqr(x['i6']) -     8*x['i7']
                                                                      =l= 196 ;
constr4.. -4*sqr(x['i1']) -     sqr(x['i2'])   + 3*x['i1']*x['i2'] - 2*sqr(x['i3']) -
                                                     5*x['i6']+11*x['i7'] =g=   0 ;

Def_obj.. obj =e=   sqr(x['i1']-10) +    5*sqr(x['i2']-12) + power(x['i3'],4) +
                  3*sqr(x['i4']-11) + 10*power(x['i5'],6)  + 7*sqr(x['i6'])   +
                  power(x['i7'],4)  -  4*x['i6']*x['i7']     - 10*x['i6'] -8*x['i7'] ;

x.l['i1'] = 1 ;
x.l['i2'] = 2 ;
x.l['i3'] = 0 ;
x.l['i4'] = 4 ;
x.l['i5'] = 0 ;
x.l['i6'] = 1 ;
x.l['i7'] = 1 ;

*printf "optimal solution as starting point \n";
*x.l['i1'] = 2.330499   ;
*x.l['i2'] = 1.951372   ;
*x.l['i3'] = -0.4775414 ;
*x.l['i4'] = 4.365726   ;
*x.l['i5'] = -0.6244870 ;
*x.l['i6'] = 1.038131   ;
*x.l['i7'] = 1.594227   ;


Model hs100  /all/;

Solve hs100 using nlp minimize obj;

display   x.l               ;

obj.l = obj.l - 680.6300573 ;
display obj.l               ;
