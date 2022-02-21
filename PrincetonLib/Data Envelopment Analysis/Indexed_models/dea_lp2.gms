$Set  m  5
* number of inputs
$Set  n  5
* number of outputs
$Set  d  125
* number of DMU's
Set I /i1*i%m%/;
Set J /j1*j%n%/;
Set K /k1*k%d%/;
Parameter i_k;
Parameter a(k,j) ; a[k,j]= Uniform(0,1) ;
Parameter b(k,i) ; b[k,i]= Uniform(0,1) ;
Parameter b1(k) ;



Alias(k0,k);
Set exist(k) /k1/;
Positive Variable y(i) , x(j) ;
         Variable  eff ;
Equation one_sided(k) , eq_one , def_obj ;

one_sided(k)..    sum{j,(a[k,j]*x[j]) } =l= sum{i, (b[k,i]*y[i]) };
eq_one..          sum(k0$exist(k0),sum{i,(b[k0,i]*y[i])}) =e= 1;
def_obj..         eff =e= -sum(k0$exist(k0),sum{j,(a[k0,j]*x[j])});

Model dea_lp2 /all/ ;

Parameter eff_k;
Parameter eff_flag[k]  ;
Parameter drop_flag[k] ;

for (i_k = 1 to %d% ,
eff_flag[k]  = 0;
drop_flag[k] = 0;
Exist(k0) = No;
Exist(k0) = YES$( i_k = ORD(k0));
solve dea_lp2 using nlp minimaze eff;
eff.l=-eff.l;
b1(k)$(ord(k)=i_k) = eff.l;
display eff.l;
);
display b1;