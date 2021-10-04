$Set N 10
Set i/i1*i%N%/;
Alias(i,k);
Parameter c(i) / i1  -6.089 , i2 -17.164 , i3 -34.054 , i4  -5.914 ,  i5 -24.721 ,
                 i6 -14.986 , i7 -24.100 , i8 -10.708 , i9 -26.662 , i10 -22.179 / ;

Variable x(i) , obj ;
Equation  cons1 , cons2 , cons3 , Def_obj ;

cons1.. exp(x['i1']) +2*exp(x['i2']) +2*exp(x['i3']) +  exp(x['i6']) +exp(x['i10']) =e= 2;
cons2.. exp(x['i4']) +2*exp(x['i5']) +  exp(x['i6']) +  exp(x['i7'])                =e= 1;
cons3.. exp(x['i3']) +  exp(x['i7']) +  exp(x['i8']) +2*exp(x['i9']) +exp(x['i10']) =e= 1;

Def_obj..  obj =e= sum{i,(exp(x[i])*(c[i]+x[i]-log(sum{k,exp(x[k])})))};

x.lo[i] = -100.0 ;
x.up[i] =  100.0 ;
x.l[i]  =   -2.3 ;

Model hs111 /all/ ;

Solve hs111 using nlp minimazing obj ;

obj.l = obj.l + 47.76109026;

display obj.l;
