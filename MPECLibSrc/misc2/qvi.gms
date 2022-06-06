$inlinecom /* */

/* qvi.gms
 * example from J. Outrata, J. Zowe, "A numerical approach to
 * optimization problems with variational inequality constraints", Math
 * Programming 68, No. 1, p. 119.
 * Also solved in as Problem 9 in Facchinei, Jiang & Qi,
 * "A Smoothing Method for Mathematical Programs with Equilibrium Constraints",
 * manuscript, 1996,
 * ftp://disparcs.dis.uniroma1.it/pub/OR/facchinei/papers96/R03_96.ps.Z
 *
 *  Let Y(x) := { y | y_i + x_(i++) <= 15, i = 1..2 },
 *  f(x,y) := 1/2 sum(I, sqr(x_i - y_i)),
 *  0 <= x <= 10
 *  F_i(x,y) := Ay - b,
 *  A = |  2  8/3 |,  b =  34
 *      | 5/4  2  |       24.25
 *
 */

set I	/ 1*2 /;
alias (I,J);

parameter
  b(I) /
1	34
2	24.25
/;

table A(I,J)
	1	2
1	2	2.666666666
2	1.25	2		;

variables
  theta			'objective var',
  x(I),
  y(I);

equations
  objeq,
  F(I);

objeq .. theta =e= sum(J, sqr(x(J)-y(J)) );

F(I)  .. sum(J, A(I,J)*y(J)) - b(I) =g= 0;

model penalty / objeq, F.y /;

x.lo(J) = 0;
x.up(J) = 10;


x.l('1') = 0;
x.l('2') = 1;
solve penalty using mpec minimizing theta;
