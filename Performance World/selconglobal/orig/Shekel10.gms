Set j /0*3/;
Set i /i0*i9/;

Scalar PI / 3.14159265359 / ;

Variable x(j), z;

x.lo['0'] =   0 ;
x.up['0'] =  10 ;
x.lo['1'] =   0 ;
x.up['1'] =  10 ;
x.lo['2'] =   0 ;
x.up['2'] =  10 ;
x.lo['3'] =   0 ;
x.up['3'] =  10 ;


Parameter c[i] / i0 0.1 , i1 0.2 , i2 0.2 , i3 0.4 , i4 0.4 , i5 0.6 ,
                 i6 0.3 , i7 0.7 , i8 0.5 , i9 0.5 / ;

Parameter a[j,i] ;

Table b[i,j]
               0   1    2   3
            i0 4   4    4   4
            i1 1   1    1   1
            i2 8   8    8   8
            i3 6   6    6   6
            i4 3   7    3   7
            i5 2   9    2   9
            i6 5   5    3   3
            i7 8   1    8   1
            i8 6   2    6   2
            i9 7   3.6  7   3.6  ;

  a[j,i] = b[i,j] ;


$macro defobj -Sum{i, 1.0/(Sum{j, Sqr(x[j]-a[j,i])} + c[i])}
Equation
         Def_obj;
Def_obj..
    z =e= defobj ;

Model m /all/;

Solve m min z using nlp;

$onDotL
File fx / Shekel10.txt /; fx.nd=12; fx.nw=22; Put fx;
Scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));

z.l = defobj ;

Loop(j, Put x.l(j)); Put z.l /);
