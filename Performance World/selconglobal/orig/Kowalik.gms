Set j /0*3/;
Set i /i0 * i10 / ;

Parameter a[i] / i0 0.1957 , i1  0.1947 , i2 0.1735 ,
                 i3 0.16   , i4  0.0844 , i5 0.0627 ,
                 i6 0.0456 , i7  0.0342 , i8 0.0323 ,
                 i9 0.0235 , i10 0.0246                 / ;

Parameter b[i] / i0  0.25  , i1   0.5   ,  i2  1      ,
                 i3  2     , i4   4     ,  i5  6      ,
                 i6  8     , i7  10     ,  i8 12      ,
                 i9 14     , i10 16                      / ;

Scalar PI / 3.14159265359 / ;

Variable
         x[j]    ,
         z       ;

x.lo['0'] =  0    ;
x.up['0'] =  0.42 ;
x.lo['1'] =  0    ;
x.up['1'] =  0.42 ;
x.lo['2'] =  0    ;
x.up['2'] =  0.42 ;
x.lo['3'] =  0    ;
x.up['3'] =  0.42 ;

$macro defobj sum{i,power((a[i]-x['0']*(1+x['1']*b[i])/(1+x['2']*b[i]+x['3']*b[i]*b[i])),2)}

Equation Def_Obj ;
Def_Obj.. z =e= defobj ;

model m /all/;
Solve m min z using dnlp;

$onDotL
file fx / Kowalik.txt /; fx.nd=12; fx.nw=22; put fx;
scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));
z.l = defobj ;
loop(j, put x.l(j)); put z.l /);

