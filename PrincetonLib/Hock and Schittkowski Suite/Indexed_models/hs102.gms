$Set N 7
Set i/i1*i%N%/;

Parameter a; a=0.125 ;

Parameter  l(i) / i1     0.1  ,i2     0.1  ,i3     0.1  ,
                  i4     0.1  ,i5     0.1  ,i6     0.1  ,
                  i7     0.01 / ;

Variable x(i) , obj  ;
Equation c1 , c2 , c3 , c4 , c5 , c6 , Def_obj ;

c1.. 1-0.5*sqrt(x['i1'])*x['i7']/(x['i3']*sqr(x['i6']))-
       0.7*power(x['i1'],3)*x['i2']*x['i6']*sqrt(x['i7'])/sqr(x['i3'])-
       0.2*x['i3']*exp(log(x['i6'])*(2/3))*sqr(sqr(x['i7']))/
       (x['i2']*sqrt(x['i4']))=g= 0;

c2.. 1-1.3*x['i2']*x['i6']/(sqrt(x['i1'])*x['i3']*x['i5'])-
       0.8*x['i3']*sqr(x['i6'])/(x['i4']*x['i5'])-
       3.1*sqrt(x['i2'])*exp(log(x['i6'])*(1/3))/
       (x['i1']*sqr(x['i4'])*x['i5'])=g= 0;

c3.. 1 - 2.0*x['i1']*x['i5']*exp(log(x['i7'])*(1/3))/
         (exp(log(x['i3'])*1.5)*x['i6'])-
         0.1*x['i2']*x['i5']/(sqrt(x['i3'])*x['i6']*sqrt(x['i7']))-
             x['i2']*sqrt(x['i3'])*x['i5']/x['i1']-
        0.65*x['i3']*x['i5']*x['i7']/(sqr(x['i2'])*x['i6']) =g= 0;

c4.. 1-0.2*x['i2']*sqrt(x['i5'])*exp(log(x['i7'])*(1/3))/
        (sqr(x['i1'])*x['i4'])-0.3*sqrt(x['i1'])*sqr(x['i2'])*x['i3']*
         exp(log(x['i4'])*(1/3))*sqr(sqr(x['i7']))/
         exp(log(x['i5'])*(2/3))-
         0.4*x['i3']*x['i5']*exp(log(x['i7'])*0.75)/
         (power(x['i1'],3)*sqr(x['i2']))-
        0.5*x['i4']*sqrt(x['i7'])/sqr(x['i3']) =g= 0;

c5..   10*x['i1']*sqr(x['i4'])*exp(log(x['i7'])*a)/(x['i2']*power(x['i6'],3))+
       15*x['i3']*x['i4']/(x['i1']*sqr(x['i2'])*x['i5']*sqrt(x['i7']))+
       20*x['i2']*x['i6']/(sqr(x['i1'])*x['i4']*sqr(x['i5']))+
       25*sqr(x['i1'])*sqr(x['i2'])*sqrt(x['i5'])*x['i7']/
         (x['i3']*sqr(x['i6'])) =g= 100;

c6..  10*x['i1']*sqr(x['i4'])*exp(log(x['i7']*a))/
        (x['i2']*power(x['i6'],3))+15*x['i3']*x['i4']/
        (x['i1']*sqr(x['i2'])*x['i5']*sqrt(x['i7']))+
      20*x['i2']*x['i6']/(sqr(x['i1'])*x['i4']*sqr(x['i5']))+
      25*sqr(x['i1'])*sqr(x['i2'])*sqrt(x['i5'])*x['i7']/
        (x['i3']*sqr(x['i6'])) =l= 3000;

Def_obj..  obj =e=  10*x['i1']*sqr(x['i4'])*exp(log(x['i7'])*a)/
                    (x['i2']*power(x['i6'],3))+15*x['i3']*x['i4']/
                    (x['i1']*sqr(x['i2'])*x['i5']*sqrt(x['i7']))+
                    20*x['i2']*x['i6']/
                    (sqr(x['i1'])*x['i4']*sqr(x['i5']))+
                    25*sqr(x['i1'])*sqr(x['i2'])*sqrt(x['i5'])*x['i7']/
                    (x['i3']*sqr(x['i6']));

x.lo(i) = l(i) ;
x.up(i) = 10  ;

x.l['i1'] = 6;
x.l['i2'] = 6;
x.l['i3'] = 6;
x.l['i4'] = 6;
x.l['i5'] = 6;
x.l['i6'] = 6;
x.l['i7'] = 6;

Model hs102 /all/ ;
Solve hs102 using nlp minimazing obj ;
obj.l = obj.l - 911.880571;
display obj.l;
