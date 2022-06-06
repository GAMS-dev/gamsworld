$ontext
# outrata34.mod QOR2-MN-n-m
# Original AMPL coding by Sven Leyffer, University of Dundee
# An MPEC from S. Scholtes, Research Papers in Management Studies, 26/1997,
# The Judge Institute, University of Cambridge, England.
# See also Outrata, SIAM J. Optim. 4(2), pp.340ff, 1994.

# Number of variables:   5
# Number of constraints: 4
# Nonlinear complementarity constraint
$offtext

VARIABLE
    objVar;
POSITIVE VARIABLES
    x1, x2, x3, x4,
    y;
y.up = 10;

EQUATIONS
    objEqu,
    f1, f2, f3, f4;

objEqu..	objVar =e= 0.5 * [
		  power(x1 - 3,2) + power(x2 - 4,2)
		+ power(x3 - 1,2) + power(x4 - 1,2) + power(y,2)
		];

f1..	(1 + 0.2*y)*x1 - (1 + 1.333*y) - 0.333*x3 + 2*x1*x4 =G= 0;
f2..	(1 + 0.1*y)*x2 - y + x3 + 2*x2*x4 =G= 0;
f3..	0.333*x1  - x2 + 1 - 0.1*y =G= 0;
f4..	9 + 0.1*y - power(x1,2) - power(x2,2) =G= 0;

model outrata34 / objEqu, f1.x1, f2.x2, f3.x3, f4.x4 /;
solve outrata34 using MPEC min objVar;
