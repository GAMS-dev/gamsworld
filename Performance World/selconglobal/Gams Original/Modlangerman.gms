Set j /  0* 9 / ;
Set i / i1*i5 / ;

Scalar PI / 3.14159265359 / ;

Table a[i,j]
         0      1      2      3      4      5      6      7      8      9
      i1 9.681  0.667  4.783  9.095  3.517  9.325  6.544  0.211  5.122  2.020
      i2 9.400  2.041  3.788  7.931  2.882  2.672  3.568  1.284  7.033  7.374
      i3 8.025  9.152  5.114  7.621  4.564  4.711  2.996  6.126  0.734  4.982
      i4 2.196  0.415  5.649  6.979  9.510  9.166  6.304  6.054  9.377  1.426
      i5 8.074  8.777  3.467  1.867  6.708  6.349  4.534  0.276  7.633  1.567  ;

Parameter  c[i] / i1 0.806 , i2 0.517 , i3 0.1 , i4 0.908 , i5 0.965 / ;

Variable x(j), z;

x.lo['0'] =  0 ;
x.up['0'] = 10 ;
x.lo['1'] =  0 ;
x.up['1'] = 10 ;
x.lo['2'] =  0 ;
x.up['2'] = 10 ;
x.lo['3'] =  0 ;
x.up['3'] = 10 ;
x.lo['4'] =  0 ;
x.up['4'] = 10 ;
x.lo['5'] =  0 ;
x.up['5'] = 10 ;
x.lo['6'] =  0 ;
x.up['6'] = 10 ;
x.lo['7'] =  0 ;
x.up['7'] = 10 ;
x.lo['8'] =  0 ;
x.up['8'] = 10 ;
x.lo['9'] =  0 ;
x.up['9'] = 10 ;

$macro objdef -Sum{i,(c[i]*(exp(-(Sum{j,Sqr(x[j]-a[i,j])})/PI)*cos[PI*(Sum{j,Sqr(x[j]-a[i,j])}) ]))}

Equation
         Def_Obj;
Def_Obj..
    z =e= objdef ;

Model m /all/;

Solve m min z using nlp;

$onDotL

File fx / Modlangerman.txt /; fx.nd=10; fx.nw=14; Put fx;
Scalar cnt; For (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));

z.l = objdef ;


Loop(j, Put x.l(j)); Put z.l /);
