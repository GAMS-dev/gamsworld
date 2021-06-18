
$Set N 10
Set j /0*9/;

Parameter center_point[j] /  0 1.0 ,  1  1.3 ,  2  0.8 ,  3 -0.4 ,  4 -1.3 
                             5 1.6 ,  6   -2 ,  7  -6  ,  8  0.5 ,  9  1.4 
*                           10 1   , 11  1.3 , 12  0.8 , 13  -4  , 14 -1.3 
*                           15 1.6 , 16 -0.2 , 17 -0.6 , 18  0.5 , 19  1.4
/ ;


Scalar PI / 3.14159265359 / ;

Variable
         x[j]    ,
         z       ;

x.lo[j] = -15 ;
x.up[j] =  15 ;

$macro dist     sqrt(sum{j,SQR(x[j]-center_point[j])})
$macro max_dist smax(j,abs(x[j]-center_point[j]))

$macro D        sqrt(%N%)*max_dist
$macro defobj -{(exp(-D/(2.0*PI))*cos(PI*D))*(1.0+0.2*dist/(D+0.01))}

Equation Def_Obj ;
Def_Obj.. z =e= defobj ;

model m /all/;

x.l(j) = center_point(j);
Solve m min z using dnlp;

$onDotL
file fx / Oddsquare.txt /; fx.nd=12; fx.nw=22; put fx;
scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));
z.l = defobj ;
loop(j, put x.l(j)); put z.l /);
