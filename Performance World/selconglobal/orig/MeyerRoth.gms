
Set j /0*2/;
Set i /i1*i5/;


Scalar PI / 3.14159265359 / ;

Parameter t[i] / i1 1.0   , i2  2.0   , i3 1.0  , i4 2.0   , i5 0.1   / ;
Parameter v[i] / i1 1.0   , i2  1.0   , i3 2.0  , i4 2.0   , i5 0.0   / ;
Parameter y[i] / i1 0.126 , i2  0.219 , i3 0.076, i4 0.126 , i5 0.186 / ;



Variable x(j), z;

x.lo['0'] = -10 ;
x.up['0'] =  10 ;
x.lo['1'] = -10 ;
x.up['1'] =  10 ;
x.lo['2'] = -10 ;
x.up['2'] =  10 ;

$macro objdef Sum{i,Sqr((x['0']*x['2']*t[i])/(1.0+x['0']*t[i]+x['1']*v[i])-y[i])}

Equation
         Def_obj;
Def_obj..
    z =e= objdef ;
Model m /all/;

Solve m min z using nlp;

$onDotL
File fx / MeyerRoth.txt /; fx.nd=12; fx.nw=22; put fx;
Scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));

z.l = objdef  ;

loop(j, put x.l(j)); put z.l /);
