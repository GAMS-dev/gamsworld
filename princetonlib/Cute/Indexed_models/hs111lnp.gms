* Cute AMPL model  (translation to GAMS)
*
$Set N 10
Set i /i1*i%N%/;
Alias(i,k);
parameter c(i) / i1  -6.089 ,i2 -17.164 ,i3 -34.054 ,i4  -5.914 , i5 -24.721 ,
                 i6 -14.986 ,i7 -24.100 ,i8 -10.708 ,i9 -26.662 ,i10 -22.179 /;

Variable x[i] ,  obj ;

Equation c1 , c2 , c3 , Def_obj     ;

c1.. exp(x['i1'])+2*exp(x['i2'])+2*exp(x['i3'])+  exp(x['i6'])+exp(x['i10'])=e=2;

c2.. exp(x['i4'])+2*exp(x['i5'])+  exp(x['i6'])+  exp(x['i7'])              =e=1;

c3.. exp(x['i3'])+  exp(x['i7'])+  exp(x['i8'])+2*exp(x['i9'])+exp(x['i10'])=e=1;

Def_obj..  obj =e= sum{i, exp(x[i])*(c[i]+x[i]-log(sum{k,exp(x[k])})) };

x.l[i]  =   -2.300 ;

Model hs111lnp  /all/;

Solve hs111lnp using nlp minimize obj;

display   x.l               ;

obj.l = obj.l + 47.76109026 ;
display obj.l               ;
