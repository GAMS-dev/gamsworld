* Objective: nonconvex nonlinear
* Constraints: convex quadratic
$Set n 50
Set i /1*%n%/;
Alias(i,j);
*parameter pi;  pi = 3.14159;

parameter theta[i];  theta[i] = 2*pi*Uniform(0,1);
parameter phi[i]  ;    phi[i] = pi*Uniform(0,1)  ;

variable  x[i],
          y[i],
          z[i],
          potential;

equation in_a_ball(i),
         defobj;

defobj.. potential =e= sum(i,sum(j$(ord(j)>ord(i)),
                  (1/(sqrt(sqr(x[i]-x[j])+sqr(y[i]-y[j])+sqr(z[i]-z[j]))))));

in_a_ball(i).. sqr(x[i]) + sqr(y[i]) + sqr(z[i]) =l= 1.00 ;

x.l[i] = cos(theta[i])*sin(phi[i]);
y.l[i] = sin(theta[i])*sin(phi[i]);
z.l[i] =               cos(phi[i]);

 x.lo[i]=-1;
 y.lo[i]=-1;
 z.lo[i]=-1;
 x.up[i]=1;
 y.up[i]=1;
 z.up[i]=1;

*  Minos solver can not solve this task.

model fekete2 /all/;

solve fekete2 using nlp minimaze potential;

file dem /output/;  put dem;
Put "potential = ", potential.l:20:10;  Put /;
Put "point         X           Y             Z       "; Put /;
Loop(j,put j.tl:8 Put x.l[j]:12:7 Put y.l[j]:12:7 Put z.l[j]:16:7 Put /;);