$inlinecom /* */

/* hq1.gms
 * Example 2 from J. Outrata, J. Zowe, "A numerical approach to
 * optimization problems with variational inequality constraints",
 * Math Programming 68, No. 1, p. 119.
 * Taken from
 * Henderson & Quandt's Microeconomic Theory, 1980, McGraw-Hill, New York
 * Also solved in as Problem 6 in Facchinei, Jiang & Qi,
 * "A Smoothing Method for Mathematical Programs with Equilibrium Constraints",
 * manuscript, 1996,
 * ftp://disparcs.dis.uniroma1.it/pub/OR/facchinei/papers96/R03_96.ps.Z
 *
 *  min f(x,y) = 1/2 x**2 + 1/2 xy - 95x
 *
 *  s.t. 0 <= x <= 200,
 *       F(x,y) := 2 y + 1/2 x - 100    perp to y \in [0, inf)
 *
 */

variables
x,
y,
obj;

equations
objeq,
F;

objeq .. obj =e= .5 * sqr(x) + .5 * x * y - 95*x;
F ..	 2*y + 0.5*x =g= 100;

model oz2 / objeq, F.y /;
x.lo = 0;
x.up = 200;
y.lo = 0;

x.l = 0;
y.l = 0;
solve oz2 using mpec minimizing obj;

* x.l = 100;
* y.l = 0;
* solve oz2 using mpec minimizing obj;
