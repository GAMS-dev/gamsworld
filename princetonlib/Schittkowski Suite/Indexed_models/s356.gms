$Set N  4
Set I /i1*i%N%/;
Variable x[i] , J , E , G , t1 , t2 , f ;

Equation  Eq_1 , Eq_2  , Eq_3  , Eq_4 , Eq_5  ,
         cons1 , cons2 , cons3 ,cons4 , cons5 , Def_obj ;

Eq_1..  J =e= 0.707*x['i1']*x['i2']*(sqr(x['i2'])/6+sqr(x['i1']+x['i3'])/2);
Eq_2..  E =e= x['i3']*power(x['i4'],3)*10000000/4;
Eq_3..  G =e= 4*x['i3']*power(x['i4'],3)*1000000;
Eq_4.. t1 =e= 6000/(1.414*x['i1']*x['i2']);
Eq_5.. t2 =e= 3000*(14+x['i2']/2)*(sqrt(sqr(x['i2'])+sqr(x['i1']+x['i3'])))/J;

cons1.. (x['i4']-x['i1']) =g= 0;
cons2.. 0.000001*(13600-sqrt(t1*t1+2*t1*t2*x['i2']/sqrt(sqr(x['i2'])+sqr(x['i1']+x['i3']))+t2*t2)) =g= 0;
cons3.. 3 - 5.04/(x['i4']*sqr(x['i3'])) =g= 0;
cons4.. 0.000001*(4.013*sqrt(E*G)*(1-x['i3']*sqrt(E/G)/28)/196 - 6000) =g=0;
cons5.. 0.25 - 2.1952/(x['i4']*power(x['i3'],3)) =g= 0;

Def_obj.. f =e= 1.10471*sqr(x['i1'])*x['i2']+
                        0.04811*x['i3']*x['i4']*(14+x['i2']);





x.lo['i1'] = 0.125;
x.lo['i2'] = 7.00;
x.lo['i3'] = 0.00;


G.lo = 0.00000001;
J.lo = 0.00000001;
x.l['i1'] =    1 ;
x.l['i2'] =    7 ;
x.l['i3'] =    8 ;
x.l['i4'] =    1 ;

* AMPL solution
*x.fx['i1'] =   0.153362  ;
*x.fx['i2'] =  16.9241    ;
*x.fx['i3'] =   3.00706   ;
*x.fx['i4'] =   0.322931  ;

Model s356 / all /;

Solve s356 using nlp minimazing f ;

display x.l;
display f.l;
