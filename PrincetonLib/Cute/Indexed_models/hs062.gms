* Cute AMPL model  (translation to GAMS)
*
Set i /i1*i3/;

Positive Variable x[i] ;
         Variable  obj ;

Equation constr1 ,
         Def_obj  ;

constr1.. x['i1'] + x['i2'] + x['i3'] =e= 1;
Def_obj..
obj=e= -32.174*(255*log((x['i1']+x['i2']+x['i3']+0.03)/
                                 (0.09*x['i1'] + x['i2'] +x['i3'] + 0.03)
                                                                       )+
                280*log((x['i2']+x['i3']        +0.03)/
                                 (0.07*x['i2'] + x['i3']          + 0.03)
                                                                       )+
                290*log((x['i3']                +0.03)/
                                 (0.13*x['i3']                    + 0.03)
                                                                    ) ) ;

x.up[i] = 1;

x.l['i1']  = 0.7 ;
x.l['i2']  = 0.2 ;
x.l['i3']  = 0.1 ;

*printf "optimal solution as starting point \n";
*x.l['i1']  = 0.6178126908    ;
*x.l['i2']  = 0.328202223     ;
*x.l['i3']  = 0.5398508606e-1 ;


Model hs062  /all/;

Solve hs062 using nlp minimize obj;

display   x.l               ;

obj.l = obj.l  + 26272.51448;
display obj.l               ;
