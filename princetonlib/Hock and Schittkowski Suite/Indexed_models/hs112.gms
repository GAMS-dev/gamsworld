$Set N 10
Set i/i1*i%N%/;
Alias(i,k);
Parameter c(i) / i1  -6.089 ,i2 -17.164 ,i3 -34.054 ,i4  -5.914 , i5 -24.721 ,
                 i6 -14.986 ,i7 -24.100 ,i8 -10.708 ,i9 -26.662 ,i10 -22.179 /;

Variable x(i) , obj ;
Equation  cons1 , cons2 , cons3 , Def_obj ;


cons1.. x['i1'] + 2*x['i2'] + 2*x['i3'] +   x['i6'] + x['i10'] =e= 2 ;
cons2.. x['i4'] + 2*x['i5'] +   x['i6'] +   x['i7']            =e= 1 ;
cons3.. x['i3'] +   x['i7'] +   x['i8'] + 2*x['i9'] + x['i10'] =e= 1 ;

Def_obj..  obj =e=sum{i,(x[i]*(c[i]+ log(x[i]/sum{k,(x[k])})))};

x.lo[i] = 1.0e-6 ;
x.l[i]  = 0.1    ;

Model hs112 /all/ ;

Solve hs112 using nlp minimazing obj ;

obj.l = obj.l + 47.76109026;

display obj.l;
