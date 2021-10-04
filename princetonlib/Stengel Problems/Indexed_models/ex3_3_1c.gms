$Set N 800
Set I /I1,I2/;
Set J /0*%N%/;

parameter  T    ;  T    =  10 ;
parameter  q[I] ;  Q[I] =   1 ;
parameter  r    ;  r    = 100 ;
parameter  xf   ;  xf   = 100 ;

Variable    x[J],
            v[J],
            a[J],
            k[I],
       trade_off;

Equation
    v_def(j)  ,
    a_def(j)  ,
    control(j),
*   a_symmetr ,
    defobj    ;


v_def(j)$(ord(J)>1)..  %N%*(x[J]-x[J-1]) =e= T*v[J];

a_def(j)$((ord(J)>1)and(ord(J)<card(J)))..
                       %N%*(v[J+1]-v[J]) =e= T*a[J];

control(j)$((ord(J)>1)and(ord(J)<card(J)))..
                       a[j] =e= k['I1'] + k['I2']*(ord(J)-1)*T/%N%;

defobj.. trade_off =e= q['I1']*sqr(x['%N%']-xf)+q['I2']*sqr(v['%N%'])
                      +r*sum{J$((ord(J)>1)and(ord(J)<card(J))),(sqr(a[J])*T/%N%)};

*a_symmetr.. k['I1'] =e= -5*k['I2'];

v.lo[J]   = -1000;  v.up[J]   =  1000;
a.lo[J]   = -1000;  a.up[J]   =  1000;

x.fx['0'] =     0;
v.fx['1'] =     0;

Model ex3_3_1c /all/;
Solve ex3_3_1c using nlp minimize trade_off;
