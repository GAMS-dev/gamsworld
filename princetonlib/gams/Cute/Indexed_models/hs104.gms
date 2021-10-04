* Cute AMPL model  (translation to GAMS)
*
$Set N 8
Set i /i1*i%N%/;

Variable x[i] ,   obj ;
Equation   c1 ,c2 ,c3 ,c4 ,c5 ,c6 ,Def_obj ;


c1.. 1 -0.0588*x['i5']*x['i7']            - 0.1*x['i1']                =g= 0.0 ;
c2.. 1 -0.0588*x['i6']*x['i8']            - 0.1*x['i1']-0.1*x['i2']    =g= 0.0 ;

c3.. 1 -4.0   *x['i3']/x['i5']            - 2.0/(exp(log(x['i3'])*0.71)*x['i5'])-
                                 0.0588*x['i7']/exp(log(x['i3'])*1.3)  =g= 0.0 ;

c4.. 1 -4.0   *x['i4']/x['i6']            - 2.0/(exp(log(x['i4'])*0.71)*x['i6'])-
                                 0.0588*x['i8']/exp(log(x['i4'])*1.3)  =g= 0.0 ;

c5..    0.4   *exp(log(x['i1'])*0.67)*exp(log(x['i7'])*(-0.67)) +
                            0.4*exp(log(x['i2'])*0.67)*exp(log(x['i8'])*
                                        (-0.67))+10-x['i1']-x['i2']    =g= 0.1 ;
c6..    0.4   *exp(log(x['i1'])*0.67)*exp(log(x['i7'])*(-0.67)) +
                             0.4*exp(log(x['i2'])*0.67)*exp(log(x['i8'])*
                                        (-0.67))+10-x['i1']-x['i2']    =l= 4.2 ;

Def_obj.. obj =e= 0.4*exp(log(x['i1'])*0.67)*exp(log(x['i7'])*(-0.67)) +
                  0.4*exp(log(x['i2'])*0.67)*exp(log(x['i8'])*(-0.67)) +
                  10 - x['i1']-x['i2'] ;

x.lo[i] = 0.1 ; x.up[i] =10.0 ;

x.l['i2'] = 3   ;
x.l['i3'] = 0.4 ;
x.l['i4'] = 0.2 ;
x.l['i5'] = 6   ;
x.l['i6'] = 6   ;
x.l['i7'] = 1   ;
x.l['i8'] = 0.5 ;

Model hs104  /all/;

Solve hs104 using nlp minimize obj;

display   x.l               ;

obj.l = obj.l -3.9511634396 ;
display obj.l               ;
