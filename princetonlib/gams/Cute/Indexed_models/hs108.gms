* Cute AMPL model  (translation to GAMS)
*

$Set N 9
Set i /i1*i%N%/;

Variable x[i]  , obj ;

Equation c1 ,c2 , c3 , c4 , c5 , c6 , c7 ,
         c8 ,c9 ,c10 ,c11 ,c12 ,c13 , Def_obj     ;

 c1..  1 -  sqr(x['i3']        )- sqr(x['i4']        ) =g= 0 ;
 c2..  1 -  sqr(x['i5']        )- sqr(x['i6']        ) =g= 0 ;
 c3..  1 -  sqr(x['i9']        )                       =g= 0 ;
 c4..  1 -  sqr(x['i1']        )- sqr(x['i2']-x['i9']) =g= 0 ;
 c5..  1 -  sqr(x['i1']-x['i5'])- sqr(x['i2']-x['i6']) =g= 0 ;
 c6..  1 -  sqr(x['i1']-x['i7'])- sqr(x['i2']-x['i8']) =g= 0 ;
 c7..  1 -  sqr(x['i3']-x['i7'])- sqr(x['i4']-x['i8']) =g= 0 ;
 c8..  1 -  sqr(x['i3']-x['i5'])- sqr(x['i4']-x['i6']) =g= 0 ;
 c9..  1 -  sqr(x['i7']        )- sqr(x['i8']-x['i9']) =g= 0 ;
c10..           x['i1']*x['i4'] -     x['i2']*x['i3']  =g= 0 ;
c11..           x['i3']*x['i9']                        =g= 0 ;
c12..          -x['i5']*x['i9']                        =g= 0 ;
c13..           x['i5']*x['i8'] -     x['i6']*x['i7']  =g= 0 ;



Def_obj..  obj =e= -0.5*(x['i1']*x['i4']-x['i2']*x['i3']+x['i3']*x['i9']-
                         x['i5']*x['i9']+x['i5']*x['i8']-x['i6']*x['i7']) ;
x.lo['i9'] = 0 ;

x.l['i1'] = 1 ;
x.l['i2'] = 1 ;
x.l['i3'] = 1 ;
x.l['i4'] = 1 ;
x.l['i5'] = 1 ;
x.l['i6'] = 1 ;
x.l['i7'] = 1 ;
x.l['i8'] = 1 ;
x.l['i9'] = 1 ;

*x.l['i1'] = 0.8841292  ;
*x.l['i2'] = 0.4672425  ;
*x.l['i3'] = 0.03742076 ;
*x.l['i4'] = 0.9992996  ;
*x.l['i5'] = 0.8841292  ;
*x.l['i6'] = 0.4672425  ;
*x.l['i7'] = 0.03742076 ;
*x.l['i8'] = 0.9992996  ;
*x.l['i9'] = 0          ;


Model hs108  /all/;

Solve hs108 using nlp minimize obj;

display   x.l               ;

obj.l = obj.l +0.8660254038 ;
display obj.l               ;
