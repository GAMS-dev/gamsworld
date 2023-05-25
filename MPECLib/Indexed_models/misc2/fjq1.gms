$inlinecom /* */
* -------------------------------------------------------
*
* MPEC example taken from Facchinei, Jiang & Qi, "A Smoothing Method
* for Mathematical Programs with Equilibrium Constraints", manuscript,
* 1996,
* ftp://disparcs.dis.uniroma1.it/pub/OR/facchinei/papers96/R03_96.ps.Z
* Problems 1, 2, 3, 4:
*  Let Y := { y | 0 <= y_i, i=3..6 },
*
*            | (1 + .2x)y_1 - (3 + 1.333x) - .333y_3 + 2 y_1 y_4 - y_5
*            |     (1 + .1x)y_2 - x + y_3 + 2 y_2 y_4 - y_6
*  F(x,y) := |               .333y_1 - y_2 + 1 - .1x
*            |             9 + .1x - (y_1)^2 - (y_2)^2
*            |                         y_1
*            |                         y_2
*
* the objective functions are
* f_1(x,y) := 1/2 (y_1 - 3)^2 + 1/2 (y_2 - 4)^2
* f_2(x,y) := 1/2 (y_1 - 3)^2 + 1/2 (y_2 - 4)^2 + 1/2 (y_3 - 1)^2
* f_3(x,y) := 1/2 (y_1 - 3)^2 + 1/2 (y_2 - 4)^2 + 5 (y_4)^2
* f_4(x,y) := 1/2 x^2 + 1/2 (y_1 - 3)^2 + 1/2 (y_2 - 4)^2
*           + 1/2 (y_3 - 1)^2 + 1/2 (y_4 - 1)^2
*
* -------------------------------------------------------

variables
  theta			'objective var',
  x,
  y1,
  y2,
  y3,
  y4,
  y5,
  y6;

equations
  objeq1,
  objeq2,
  objeq3,
  objeq4,
  F1,
  F2,
  F3,
  F4,
  F5,
  F6;

objeq1 .. theta =e= .5 * sqr(y1 - 3) + .5 * sqr(y2 - 4);
objeq2 .. theta =e= .5 * sqr(y1 - 3) + .5 * sqr(y2 - 4) + .5 * sqr(y3 - 1);
objeq3 .. theta =e= .5 * sqr(y1 - 3) + .5 * sqr(y2 - 4) +  5 * sqr(y4);
objeq4 .. theta =e= .5 * sqr(x)      + .5 * sqr(y1 - 3) + .5 * sqr(y2 - 4)
                  + .5 * sqr(y3 - 1) + .5 * sqr(y4 - 1);

F1    .. (1 + .2*x)*y1 - (3 + 1.333*x) - .333*y3 + 2*y1*y4 - y5 =e= 0;
F2    .. (1 + .1*x)*y2 - x + y3 +2*y2*y4 - y6 =e= 0;
F3    .. .333*y1 - y2 + 1 - .1*x =g= 0;
F4    .. 9 + .1*x - sqr(y1) - sqr(y2) =g= 0;
F5    .. y1 =g= 0;
F6    .. y2 =g= 0;

model bilev1 /  objeq1,
		F1.y1, F2.y2, F3.y3, F4.y4, F5.y5, F6.y6 /;
model bilev2 /  objeq2,
		F1.y1, F2.y2, F3.y3, F4.y4, F5.y5, F6.y6 /;
model bilev3 /  objeq3,
		F1.y1, F2.y2, F3.y3, F4.y4, F5.y5, F6.y6 /;
model bilev4 /  objeq4,
		F1.y1, F2.y2, F3.y3, F4.y4, F5.y5, F6.y6 /;


x.lo = 0;
x.up = 10;

y3.lo = 0;
y4.lo = 0;
y5.lo = 0;
y6.lo = 0;

x.l = 0;
y1.l = 1; y2.l = 1; y3.l = 1; y4.l = 1; y5.l = 1; y6.l = 1;
solve bilev1 using mpec minimizing theta;

x.l = 10;
y1.l = 1; y2.l = 1; y3.l = 1; y4.l = 1; y5.l = 1; y6.l = 1;
solve bilev1 using mpec minimizing theta;

x.l = 0;
y1.l = 1; y2.l = 1; y3.l = 1; y4.l = 1; y5.l = 1; y6.l = 1;
solve bilev2 using mpec minimizing theta;

x.l = 10;
y1.l = 1; y2.l = 1; y3.l = 1; y4.l = 1; y5.l = 1; y6.l = 1;
solve bilev2 using mpec minimizing theta;

x.l = 0;
y1.l = 1; y2.l = 1; y3.l = 1; y4.l = 1; y5.l = 1; y6.l = 1;
solve bilev3 using mpec minimizing theta;

x.l = 10;
y1.l = 1; y2.l = 1; y3.l = 1; y4.l = 1; y5.l = 1; y6.l = 1;
solve bilev3 using mpec minimizing theta;

x.l = 0;
y1.l = 1; y2.l = 1; y3.l = 1; y4.l = 1; y5.l = 1; y6.l = 1;
solve bilev4 using mpec minimizing theta;

x.l = 10;
y1.l = 1; y2.l = 1; y3.l = 1; y4.l = 1; y5.l = 1; y6.l = 1;
solve bilev4 using mpec minimizing theta;


