set vars /1*104/;
set design(vars) /1*4/;
set state(vars) /5*104/;
set side /1*8/;

parameter P(vars,vars);
parameter c(vars);
parameter M(state,vars);
parameter q(state);

$include tinloi.dat

alias (state,state1);
alias (design,design1);

variables
    obj,
    x(design),
    y(state);
equations
   objdef,
   F(state);

F(state)..
   sum(design,M(state,design)*x(design))
 + sum(state1,M(state,state1)*y(state1))
 + q(state)    =g= 0;

objdef..
  obj =e=
 0.5 * [sum(design,x(design)*sum(design1,P(design,design1)*x(design1)))
  + 2.0*sum(design,x(design)*sum(state,P(design,state)*y(state)))
      + sum(state,y(state)*sum(state1,P(state,state1)*y(state1)))
       ]
 + sum(design,c(design)*x(design))
 + sum(state, c(state) *y(state));

y.lo(state) = 0;
x.lo(design) = 0;
x.up(design) = 1000;

model foo /objdef,F.y/;

solve foo using mpec minimizing obj;
