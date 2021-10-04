* Translation from AMPL to GAMS
* task ex3_4_1.mod

$Set  N   800
$Set  N1  799
Set I         /i0*i%N%/   ;
Set Left(I)   /i1*i%N%/  ;
Set Inside(I) /i1*i%N1%/  ;

parameter  T  ; T  =  10 ;
parameter  q  ; q  =   1 ;
parameter  r  ; r  = 100 ;
parameter  xf ; xf = 100 ;

Variable x[i] , v[i] , a[i] , trade_off ;

Equation v_def(i) , a_def(i) , Def_obj ;

v_def(i)$Left(I)..    %N%*(x[i]-x[i-1]) =e= T*v[i] ;
a_def(i)$Inside(I)..  %N%*(v[i+1]-v[i]) =e= T*a[i] ;
Def_obj.. trade_off =e= q*sqr(x['i%N%']-xf)+r*sum{i$left(I),sqr(a[i])}*T/%N%;

v.lo[i] =-1000 ;
a.lo[i] =-1000 ;
v.up[i] = 1000 ;
a.up[i] = 1000 ;
v.fx['i0'] = 0 ;
a.fx['i0'] = 0 ;

Model ex3_4_1 /all /;

Solve ex3_4_1 using nlp minimazing trade_off ;

display a.l;
display x.l;
display v.l;
display trade_off.l;
