
$Set m 4
Set I /i1*i%m%/;

$Set mm 101
Set j /j1*j%mm%/;
Alias(j,k);
Parameter pi ; pi = 4*arctan(1);
Parameter step ; step = 1;
Parameter t[j] ; t[j] = -sqr(step*(ord(j)-51))/2;

Parameter myerf[j];
Loop(j,
 myerf[j]= 1/sqrt(2*pi)* sum(k$(ord(k) le ord(j)),(exp(t[k]*step)))
     );
* myerf[j] ={1- { 1/sqrt(2 pi) int_-infty^x e^{-t^2/2} dt }}


Parameter l[i] /  i1    0.0001, i2    0   , i3    0   , i4  0   /  ;
Parameter u[i] /  i1  100     , i2  100   , i3    2   , i4  2   /  ;
Parameter a; a =  0.1 ;
Parameter b; b =  1000;
Parameter d; d =  1      ;
Parameter n; n =  4      ;

Variable a1, a2, a3, x[i] , obj ;

Equation
eee1 ,
eee2 ,
eee3 ,
constr1,
constr2 ,
 Def_obj ;


eee1..  a1 =e=1- {1/sqrt(2*pi)* sum(k,
                                  (exp(t[k]*step))*( max(( x['i2'] - (ord(k)-51)  ),0))
                                                   /(ABS(  x['i2'] - (ord(k)-51)  )+0.000001)
                                 )} ;


eee2..  a2 =e=1- {1/sqrt(2*pi)* sum(k,
                                  (exp(t[k]*step))*( max(( {-x['i2'] + d*sqrt(n)} - (ord(k)-51)  ),0))
                                                   /(ABS(  {-x['i2'] + d*sqrt(n)} - (ord(k)-51)  )+0.000001)
                                 )} ;


eee3..  a3 =e=1- {1/sqrt(2*pi)* sum(k,
                                  (exp(t[k]*step))*( max(( {-x['i2'] - d*sqrt(n)} - (ord(k)-51)  ),0))
                                                   /(ABS(  {-x['i2'] - d*sqrt(n)} - (ord(k)-51)  )+0.000001)
                                 )} ;

constr1..    x['i3'] - 2*a1 =e= 0;

constr2..    x['i4'] =e= a2 +    a3    ;


Def_obj.. obj =e=  ( a*n - (b*(exp(x['i1'])-1) - x['i3'])*
                      x['i4']/(exp(x['i1'])-1  + x['i4']) )/ x['i1'] ;

x.lo[i] = l[i] ;
x.up[i] = u[i] ;

x.l['i1'] = 1 ;
x.l['i2'] = 1 ;
x.l['i3'] = 1 ;
x.l['i4'] = 1 ;

*"optimal solution as starting point \n";
*x.fx['i1'] = 0.02937141;
*x.fx['i2'] = 1.1902534;
*x.fx['i3'] = 0.23394676;
*x.fx['i4'] = 0.7916678;

Model hs069 /all/ ;
Solve hs069 using dnlp minimazing obj;

display x.l;

display obj.l;
obj.l = obj.l + 956.71288 ;
display obj.l ;
