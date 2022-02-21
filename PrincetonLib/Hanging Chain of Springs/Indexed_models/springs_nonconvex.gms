* Objective: convex quadratic
* Constraints: convex second-order cone
* Feasible set: convex
*
* This model finds the shape of a hanging chain where each
* link is a spring that buckles under compression and each
* node has a weight hanging from it.  The springs are assumed weightless.
*
* Reference: "Applications of Second-Order Cone Programming",
* M.S. Lobo, L. Vandenberghe, S. Boyd, and H. Lebret, 1998

$Set n 10
Set j  number of chainlinks  /0*%n%/;
Set j1(j)  "subset of j : 1,...,N-1";
Set j2(j)  "subset of j : 1,...,N";

j1(j)$[ ord(j)>1 and ord(j)<card(j) ] = yes;
j2(j)$[ ord(j)>1] = yes;


* a = (a_x, a_y) and b = (b_x, b_y) are positions of end nodes.
parameter a_x; a_x = 0;
parameter a_y; a_y = 0;
parameter b_x; b_x = 2;
parameter b_y; b_y = -1;

parameter lo   rest length of each spring  ;
          lo  = 2*sqrt( sqr(a_x-b_x) + sqr(a_y-b_y))/%n%  ;
parameter g    acceleration due to gravity ;     g   = 9.8;
parameter m[j] mass of each hanging node   ;     m[j]= 1  ;
Parameter k    stiffness of springs        ;     k   = 100;

Positive variable
          t[j] extension of each spring      ;
Variable
          x[j]        x-coordinates of nodes ,
          y[j]        y-coordinates of nodes ,
          pot_energy;
Equation
           link_up(j)
           defobj;

defobj..   pot_energy =e=
                      sum(j1,{m[j1]*g*y[j1]})+
                      k/2*sum(j2,sqr(t[j2]))  ;
link_up(j)$(ord(j)>1)..
                      sqr(x[j]-x[j-1])+sqr(y[j]-y[j-1]) =l= sqr(lo+ t[j]);
x.fx['0']  = a_x;
y.fx['0']  = a_y;
x.fx['%n%'] = b_x;
y.fx['%n%'] = b_y;
x.l[j]= ((ord(j)-1)/%n%)*b_x + (1-(ord(j)-1)/%n%)*a_x;
y.l[j]= ((ord(j)-1)/%n%)*b_y + (1-(ord(j)-1)/%n%)*a_y;

Model springs /all/;
Solve springs using NLP minimize pot_energy;

Display x.l,y.l,t.l;
*****************************************
file dem /output/;  put dem;
Put "pot_energy = ", pot_energy.l:20:10; Put /;
Put "point         X           Y             t       "; Put /;
Loop(j,put j.tl:8 Put x.l[j]:12:7 Put y.l[j]:12:7 Put t.l[j]:16:7 Put /;);