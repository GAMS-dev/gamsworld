* Objective: nonconvex nonlinear
* Constraints: convex quadratic
$Set n 15
Set i /1*%n%/;
Alias(i,j);
*parameter pi;  pi = 3.14159;

Positive variable
         theta[i]  ,
         phi[i]    ;

Variable separation;

equation defobj    ;

defobj..     separation =e= - sum(i,sum(j$(ord(j)>ord(i)),

log(0.00001+sqr(cos(theta[i])*sin(phi[i]) - cos(theta[j])*sin(phi[j])) +
            sqr(sin(theta[i])*sin(phi[i]) - sin(theta[j])*sin(phi[j])) +
            sqr(              cos(phi[i]) -               cos(phi[j])))));

theta.up[i]=2*pi;
phi.up[i]  =  pi;

theta.l[i]=2*pi*uniform(0,1);
phi.l[i]  =  pi*uniform(0,1);

model fekete3 /all/;

solve fekete3 using nlp min separation;

parameter  x[i];
parameter  y[i];
parameter  z[i];
x[i] = cos(theta.l[i])*sin(phi.l[i]);
y[i] = sin(theta.l[i])*sin(phi.l[i]);
z[i] =               cos(phi.l[i]);

file dem /output/;  put dem;
Put "separation = ", separation.l:20:10;  Put /;
Put "point         X           Y             Z       "; Put /;
Loop(j,put j.tl:8 Put x[j]:12:7 Put y[j]:12:7 Put z[j]:16:7 Put /;);