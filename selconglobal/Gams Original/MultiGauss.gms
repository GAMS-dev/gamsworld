
Set j /0*1/;
Set i / i0 * i4 / ;

Parameter a[i] / i0 0.5 , i1 1.2 , i2  1.0 , i3  1.0 , i4 1.2 / ;
Parameter b[i] / i0 0.0 , i1 1.0 , i2  0.0 , i3 -0.5 , i4 0.0 / ;
Parameter c[i] / i0 0.0 , i1 0.0 , i2 -0.5 , i3  0.0 , i4 1.0 / ;
Parameter d[i] / i0 0.1 , i1 0.5 , i2  0.5 , i3  0.5 , i4 0.5 / ;

Scalar PI / 3.14159265359 / ;
Scalar epsi /0.000001/;

Variable
         x[j]    ,
         z       ;

x.lo['0'] = -2 ;
x.up['0'] =  2 ;
x.lo['1'] = -2 ;
x.up['1'] =  2 ;

$macro defobj -Sum{i,a[i]*exp(-(power(x['0']-b[i],2)+power((x['1']-c[i]),2))/power(d[i],2))}

Equation Def_Obj ;

Def_Obj.. z =e= defobj ;

model m /all/;
Solve m min z using nlp;

$onDotL
file fx / MultiGauss.txt /; fx.nd=12; fx.nw=22; put fx;
scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));
z.l = defobj ;
loop(j, put x.l(j)); put z.l /);
