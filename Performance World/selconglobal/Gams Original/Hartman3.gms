Set j /0*2/;
Set i /i1*i4/;

Scalar PI / 3.14159265359 / ;

Table a[i,j]
                 0     1   2
            i1   3    10  30
            i2   0.1  10  35
            i3   3    10  30
            i4   0.1  10  35  ;

Parameter c[i] /i1 1 , i2 1.2 , i3 3 , i4 3.2 / ;

Table  p[i,j]
                0         1        2
            i1  0.36890   0.1170   0.2673
            i2  0.46990   0.4387   0.7470
            i3  0.10910   0.8732   0.5547
            i4  0.03815   0.5743   0.8828   ;

Variable x(j), z;

x.lo['0'] =  0 ;
x.up['0'] =  1 ;
x.lo['1'] =  0 ;
x.up['1'] =  1 ;
x.lo['2'] =  0 ;
x.up['2'] =  1 ;

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

z.l = objdef ;

loop(j, put x.l(j)); put z.l /);
