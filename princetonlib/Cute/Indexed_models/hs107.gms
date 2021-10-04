* Cute AMPL model  (translation to GAMS)
*
$Set N 9
Set i /i1*i%N%/;

parameter c; c = (48.4/50.176)*sin(0.25);
parameter d; d = (48.4/50.176)*cos(0.25);


Variable x[i]  , y1 , y2 , y3 , y4 , y5 , y6  ,  obj ;

Equation constr1 , constr2 , constr3 , constr4 , constr5 , constr6 ,
              c1 ,      c2 ,     c3  ,      c4 ,      c5 ,      c6 ,
              Def_obj ;

constr1..  y1 =e= sin(x['i8'])         ;
constr2..  y2 =e= cos(x['i8'])         ;
constr3..  y3 =e= sin(x['i9'])         ;
constr4..  y4 =e= cos(x['i9'])         ;
constr5..  y5 =e= sin(x['i8']-x['i9']) ;
constr6..  y6 =e= cos(x['i8']-x['i9']) ;

     c1..   0.4  - x['i1']         + 2*c*sqr(x['i5'])           - x['i5']*x['i6']*(d*y1+c*y2) -
                                                                          x['i5']*x['i7']*(d*y3+c*y4) =e= 0;

     c2..   0.4  - x['i2']         + 2*c*sqr(x['i6'])           + x['i5']*x['i6']*(d*y1-c*y2) +
                                                                          x['i6']*x['i7']*(d*y5-c*y6) =e= 0;

     c3..   0.8  + 2*c*sqr(x['i7'])+ x['i5']*x['i7']*(d*y3-c*y4)- x['i6']*x['i7']*(d*y5+c*y6)         =e= 0;

     c4..   0.2  - x['i3']         + 2*d*sqr(x['i5'])           + x['i5']*x['i6']*(c*y1-d*y2) +
                                                                          x['i5']*x['i7']*(c*y3-d*y4) =e= 0;

     c5..   0.2  - x['i4']         + 2*d*sqr(x['i6'])           - x['i5']*x['i6']*(c*y1+d*y2) -
                                                                          x['i6']*x['i7']*(c*y5+d*y6) =e=0;

     c6..  -0.337+ 2*d*sqr(x['i7'])- x['i5']*x['i7']*(c*y3+d*y4)+ x['i6']*x['i7']*(c*y5-d*y6)         =e= 0;

Def_obj..  obj =e= 3000*x['i1']+1000*power(x['i1'],3)+2000*x['i2']+666.667*power(x['i2'],3);

x.lo['i1'] = 0.0     ;
x.lo['i2'] = 0.0     ;
x.lo['i5'] = 0.90909 ;
x.lo['i6'] = 0.90909 ;
x.lo['i7'] = 0.90909 ;
x.up['i5'] = 1.0909  ;
x.up['i6'] = 1.0909  ;
x.up['i7'] = 1.0909  ;

x.l['i1']  = 0.8    ;
x.l['i2']  = 0.8    ;
x.l['i3']  = 0.2    ;
x.l['i4']  = 0.2    ;
x.l['i5']  = 1.0454 ;
x.l['i6']  = 1.0454 ;
x.l['i7']  = 0.0    ;
x.l['i8']  = 0.0    ;

Model hs107  /all/;

Solve hs107 using nlp minimize obj;

display   x.l                ;

obj.l = obj.l -  5055.011803 ;
display obj.l                ;
