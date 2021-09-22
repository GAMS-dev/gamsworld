
$Set M 60
$Set N 8


Set j /j0*j%N%/;
Set i /0*%M%/;


Scalar d / 72.661 / ;

Variable
         x[j]    ,
         z       ;

x.lo[j] =  -129      ;
x.up[j] =   129      ;

$macro uvw(a) sum{j,power(a,%N%-ord(j)+1)*x[j]}
$macro p1     sqr(min(uvw(1.2)-d,0))
$macro p2     sqr(min(uvw(-1.2)-d,0))
$macro p3     sum(i, ifthen(uvw(2/%M%*(ord(i)-1))>1, sqr(uvw(2/%M%*(ord(i)-1))-1), 0) + ifthen(uvw(2/%M%*(ord(i)-1))<-1, sqr(uvw(2/%M%*(ord(i)-1))+1), 0))
$macro defobj p1+p2+p3

Equation Def_Obj ;

Def_Obj.. z =e= defobj ;

model m /all/;
Solve m min z using dnlp;

$onDotL
file fx / STChebychev9.txt /; fx.pw=4096; fx.nd=12; fx.nw=22; put fx;
alias (j,jj); 
scalar cnt, u, v, w, pp1, pp2, ppj, pp3; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));
display x.lo, x.up, x.l;
z.l = defobj ;
pp1 = p1;
pp2 = p2;
u = uvw(1.2);
v = uvw(-1.2);
loop(i, w = uvw(2/%M%*(ord(i)-1));
ppj = ifthen(uvw(2/%M%*(ord(i)-1))>1, sqr(uvw(2/%M%*(ord(i)-1))-1), 0) + ifthen(uvw(2/%M%*(ord(i)-1))<-1, sqr(uvw(2/%M%*(ord(i)-1))+1), 0); 
*put i.tl:0 ' ' w ppj /
);
pp3 = p3;
* put u pp1 v pp2 pp3; 
loop(jj, put x.l(jj)); put z.l /);