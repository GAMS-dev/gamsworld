Set j /0*5/;
Set i /i1*i4/;

Scalar PI / 3.14159265359 / ;

Table a[i,j]
                 0       1      2      3     4       5
            i1  10       3     17      3.5   1.7     8
            i2   0.05   10     17      0.1   8      14
            i3   3       3.5    1.7   10    17       8
            i4   17      8      0.05  10     0.1    14  ;

Parameter c[i] /i1 1 , i2 1.2 , i3 3 , i4 3.2 / ;

Table  p[i,j]
                 0       1       2       3       4       5
            i1   0.1312  0.1696  0.5569  0.0124  0.8283  0.5886
            i2   0.2329  0.4135  0.8307  0.3736  0.1004  0.9991
            i3   0.2348  0.1451  0.3522  0.2883  0.3047  0.6650
            i4   0.4047  0.8828  0.8732  0.5743  0.1091  0.0381  ;


Variable x(j), z;

x.lo['0'] =  0 ;
x.up['0'] =  1 ;
x.lo['1'] =  0 ;
x.up['1'] =  1 ;
x.lo['2'] =  0 ;
x.up['2'] =  1 ;
x.lo['3'] =  0 ;
x.up['3'] =  1 ;
x.lo['4'] =  0 ;
x.up['4'] =  1 ;
x.lo['5'] =  0 ;
x.up['5'] =  1 ;


$macro objdef -Sum{i,c[i]*exp(-Sum{j,a[i,j]*Sqr(x[j]-p[i,j])})}

Equation
         Def_obj;
Def_obj..
    z =e= objdef ;

Model m /all/;

Solve m min z using nlp;

$onDotL

File fx / Hartman3.txt /; fx.nd=4; fx.nw=10; put fx;
Scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));

z.l = objdef  ;

loop(j, put x.l(j)); put z.l /);
