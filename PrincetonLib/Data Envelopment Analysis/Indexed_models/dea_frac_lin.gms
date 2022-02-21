$Set  m  3
* number of inputs
$Set  n  5
* number of outputs
$Set  d  10
* number of DMU's

Set I /i1*i%m%/;
Set J /j1*j%n%/;
Set K /k1*k%d%/;
Parameter i_k;
Parameter a(k,j) ; a[k,j]= Uniform(0,1) ;
Parameter b(k,i) ; b[k,i]= Uniform(0,1) ;
Parameter b1(i);

Alias(k0,k);
Set exist(k) /k1/;

Positive Variable y(i) , x(j) ;
         Variable ydist ;

Equation one_side(k) ,  Def_obj ;

one_side(k).. sum{j,(a[k,j]*x[j])} =l=  sum{i,(b[k,i]*y[i])};
Def_obj.. ydist =e= -sum(k0$exist(k0),sum{j,(a[k0,j]*x[j])} /
                                                  sum{i,(b[k0,i]*y[i])} );

Model dea_frac_lin /all/ ;

for (i_k = 1 to %d% ,

Exist(k0) = No;
Exist(k0) = YES$( i_k = ORD(k0));
x.l(j) = 100 ;
y.l(i) = 100 ;
solve dea_frac_lin using nlp minimaze ydist ;
ydist.l=-ydist.l;
b1(i)$(ord(i)=i_k) = ydist.l;
display ydist.l;
);
display b1;