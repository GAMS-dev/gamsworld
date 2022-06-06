
* -------------------------------------------------------
*
* MPEC example taken from Gauvin and Savard, "Working Paper G9037",
*  GERAD, Ecole Polytechnique de Montreal (1992) (first version).
*
*  Let Y(x) := { y | 0 <= y <= 20 - x }.
*  min  f(x,y) := x**2 + (y-10)**2
*  s.t.      0 <= x <= 15
*            y solves MCP((F(y) := 4(x + 2y - 30)), Y(x))
*
* We have modified the problem by adding a dual variable and
* incorporating the constraint y <= 20 - x into the MCP function F.
*
* -------------------------------------------------------

variables
  theta			'objective var',
  x			'design variable',
  y			'state variables',
  u			'duals in MCP to determine state vars';

equations
  objeq,
  Fy			'F(x,y) from original problem',
  Fu			'constraint on state vars';

objeq .. theta =e= sqr(x) + sqr(y-10);

Fy .. 4 * (x + 2*y - 30) + u =g= 0;
Fu .. 20 -x -y =g= 0;

model gauvin    / objeq, Fy.y, Fu.u /;

x.lo = 0;
x.up = 15;
x.l  = (x.up + x.lo) * .5;

y.lo = 0;

u.lo = 0;
u.l  = 1;

solve gauvin using mpec minimizing theta;
