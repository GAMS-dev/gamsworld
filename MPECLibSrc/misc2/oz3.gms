$inlinecom /* */

/* oz3.gms
 * Example 3 from J. Outrata, J. Zowe, "A numerical approach to
 * optimization problems with variational inequality constraints", Math
 * Programming 68, No. 1, p. 119.
 * Also solved in as Problem 7 in Facchinei, Jiang & Qi,
 * "A Smoothing Method for Mathematical Programs with Equilibrium Constraints",
 * manuscript, 1996,
 * ftp://disparcs.dis.uniroma1.it/pub/OR/facchinei/papers96/R03_96.ps.Z
 *
 *  Let Y(x) := { y | -10 <= y_i <= 20, 2y_i - x_i + 10 <= 0, y_i = 1..2 },
 *  f(x,y) := 2x_1 + 2x_2 - 3y_1 - 3y_2 - 60
 *
 *  x_1 + x_2 + y_1 - 2y_2 <= 40
 *  0 <= x <= 50
 *
 *  F(x,y) := 2 *  | y_1 - x_1 + 20
 *                 | y_2 - x_2 + 20
 *
 *  We incorporate the dependence of Y(x) upon x into F.
 */

variables
  theta			'objective value',
  x1,
  x2,
  y1,
  y2,
  u1			'dual to Y(x) constraint',
  u2			'dual to Y(x) constraint';

equations
  objeq,
  F1,
  F2,
  side,
  C1,
  C2;

objeq .. theta =e= 2*x1 + 2*x2 - 3*y1 - 3*y2 - 60;

F1    .. 2 * (y1 - x1 + 20) + 2*u1 =g= 0;
F2    .. 2 * (y2 - x2 + 20) + 2*u2 =g= 0;
side  .. 40 =g= x1 + x2 + y1 - 2*y2;
C1    .. x1 - 2*y1 - 10 =g= 0;
C2    .. x2 - 2*y2 - 10 =g= 0;

model penalty / F1.y1, F2.y2,
		side,
		C1.u1, C2.u2,
		objeq /;

x1.lo = 0;
x1.up = 50;
x2.lo = 0;
x2.up = 50;

x1.l = 50;
x2.l = 50;

y1.lo = -10;
y1.up = 20;
y2.lo = -10;
y2.up = 20;

u1.lo = 0;
u2.lo = 0;

solve penalty minimizing theta using mpec;
