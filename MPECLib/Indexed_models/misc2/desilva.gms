$inlinecom /* */

/* desilva.gms
 * Example 1 from J. Outrata, J. Zowe, "A numerical approach to
 * optimization problems with variational inequality constraints", Math
 * Programming 68, No. 1, p. 119.
 * Goes back to A.H. DeSilva's 1978 thesis at George Washington
 * University.
 *
 *  min  f(x1, x2) := x1**2 - 2x1 + x2**2 - 2x2 + y1**2 + y2**2
 *
 *  s.t.  0 <= x_i <= 2,
 *  F(x,y,u)= -2x1        2y1              2(y1-1)u1
 *                -2x2             2y2             2(y2-1)u2
 *                     -(y1-1)**2                              + .25
 *                               (y2-1)**2                     + .25
 *
 *  y free, 0 <= u, F(x,y,u) perp to (y,u).
 *
 *  The Outrate/Zowe formulation determines y as the solution to a
 *  more general VI than our rectangular one, so the dual variables
 *  u in our formulation are not required, and their contraint set
 *  for the y vars looks like
 *
 *    (y_i - 1)**2 <= .25, i = 1, 2
 */

set J	design vars	/ 1 * 2 /;
set I	state vars	/ 1 * 2 /;
alias (I,K);		/* duals to state var constraints */

variables
obj,			/* will be factored out in this formulation */
x(J),			/* design variables */
y(I),			/* state variables */
u(K);			/* duals in MCP to determine state vars */

equations
objeq,
Fy(I),
Fu(K);

objeq .. obj =e=
	 sum(J, sqr(x(J))) - 2 * sum (J, x(J)) + sum(I, sqr(y(I)));

Fy(I) .. (-2)*sum(J$(ord(I) eq ord(J)), x(J)) + 2*y(I)
	 + 2*(y(I)-1)*u(I)
	 =e= 0;

Fu(K) .. (.25) =g= sqr(y(K)-1);


model oz1 / objeq, Fy.y, Fu.u /;
x.lo(J) = 0;
x.up(J) = 2;
u.lo(K) = 0;

x.l(J) = .6;
y.lo(I) = 0;
y.l(I) = 2;
u.l(K) = 0;

solve oz1 using mpec minimizing obj;
