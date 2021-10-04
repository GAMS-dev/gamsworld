$Set N 800
Set J /0*%N%/;

parameter  T  ;  T  =  10 ;
parameter  q  ;  Q  =   1 ;
parameter  r  ;  r  = 100 ;
parameter  xf ;  xf = 100 ;

Variable    x[J],
            v[J],
            a   ,
       trade_off;

Equation
    v_def(j)  ,
    a_def(j)  ,
    defobj    ;

v_def(j)$(ord(J)>1)..                       %N%*(x[j] - x[j-1]) =e= T*v[j];
a_def(j)$((ord(J)>1)and(ord(J)<card(J)))..  (v[j+1]-v[j])*%N%   =e= T*a   ;

defobj..    trade_off =e= q*sqr(x['%N%']-xf)+r*sqr(a)*T;

v.lo[J]   = -1000;  v.up[J]   =  1000;
a.lo      = -1000;  a.up      =  1000;

x.fx['0'] =     0;
v.fx['1'] =     0;

Model ex3_3_1a /all/;
Solve ex3_3_1a using nlp minimize trade_off;
