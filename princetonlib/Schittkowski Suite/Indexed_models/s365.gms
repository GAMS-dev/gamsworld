* Cute AMPL model  (translation to GAMS)
*

$Set N 7
Set I /i1*i%N%/;

Variable x[i] , P , Q , f ;
Equation Eq_1 , Eq_2 , cons1 , cons2 , cons3 , cons4 , cons5 , Def_obj ;

Eq_1..  P =e= sqrt(sqr(x['i2'])) + sqr(x['i3']        ) ;
Eq_2..  Q =e= sqrt(sqr(x['i3'])) + sqr(x['i2']-x['i1']) ;
cons1.. sqr(x['i4']-x['i6']) + sqr(x['i5']-x['i7']) - 4 =g= 0;
cons2.. (x['i3']*x['i4']-x['i2']*x['i5'])  =g= P;
cons3.. (x['i3']*x['i6']-x['i2']*x['i7'])  =g= P;
cons4.. (x['i1']*x['i3']+(x['i2']-x['i1'])*x['i5']-x['i3']*x['i4']) =g= Q ;
cons5.. (x['i1']*x['i3']+(x['i2']-x['i1'])*x['i7']-x['i3']*x['i6']) =g= Q ;
Def_obj..  f=e= x['i1']*x['i3'];

x.lo['i1'] = 0;
x.lo['i3'] = 0;
x.lo['i5'] = 1;
x.lo['i7'] = 1;

x.l['i1']=     3   ;
x.l['i2']=     0.01;
x.l['i3']=     2   ;
x.l['i4']=    -1.5 ;
x.l['i5']=     1.5 ;
x.l['i6']=     5   ;
x.l['i7']=     0   ;

Model s365 /all/ ;
Solve s365 using nlp minimazing f ;

display x.l;
display f.l;
