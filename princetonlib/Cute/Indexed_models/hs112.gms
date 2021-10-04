* Cute AMPL model  (translation to GAMS)
*

$Set N 10
Set i /i1*i%N%/;
Alias(k,i);

parameter c(i) /i1  -6.0892 ,i2 -17.1643,i3 -34.0544,i4  -5.914,  i5 -24.721 ,
                i6 -14.9867 ,i7 -24.1008,i8 -10.7089,i9 -26.662, i10 -22.179 /;


Variable x[i] ,  obj ;

Equation c1 , c2 , c3 , Def_obj     ;


c1.. x['i1'] + 2*x['i2'] + 2*x['i3'] +   x['i6'] + x['i10'] =e= 2 ;
c2.. x['i4'] + 2*x['i5'] +   x['i6'] +   x['i7']            =e= 1 ;
c3.. x['i3'] +   x['i7'] +   x['i8'] + 2*x['i9'] + x['i10'] =e= 1 ;

Def_obj..  obj=e=sum{i, x[i]*(c[i]+ log(x[i]/sum{k,x[k]} ))};

x.lo[i] =    1.0e-6  ;
x.l[i]  =    0.1     ;


Model hs112  /all/;

Solve hs112 using nlp minimize obj;

display   x.l               ;

obj.l = obj.l + 47.76109026 ;
display obj.l               ;
