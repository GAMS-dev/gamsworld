* Objective: linear
* Constraints: convex quadratic
* Feasible set: convex

* This model finds the shape of a hanging chain
* The solution is known to be y = cosh(a*x) + b
* for appropriate a and b.

* number of chainlinks
$Set N 100
Set  j /0*%N%/;

* difference in x-coords of endlinks
parameter  L; L=1;

* length of each link
parameter h; h= 2*L/(card(j)-1);

* x[*]-coordinates of endpoints of chainlinks
* y[*]-coordinates of endpoints of chainlinks
variable
          x[j],
          y[j],
          pot_energy;

equations
          link_up,
          defobj;

link_up(j)..  sqr(x[j] - x[j-1]) + sqr(y[j] - y[j-1]) =l= sqr(h);
defobj..      pot_energy=e= sum{j, ((y[j-1] + y[j])/2) };

*x.lo[j] :=  0;
*x.up[j] :=  L;

*y.up[j] := 0;
*y.lo[j] := -100*h;

x.fx['0']   = 0;
y.fx['0']   = 0;

x.fx['%N%'] = L;
y.fx['%N%'] = 0;

x.l[j] := (ord(j)-1)*L/%N%;
y.l[j] := 0;

model chain /all/;
solve chain using nlp minimize pot_energy;

display pot_energy.l,x.l,y.l;