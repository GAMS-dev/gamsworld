*#!/gams/20.0/gams dempe2.gms mpec mpecdump
$ontext
* Model taken from MacMPEC (dempe.mod     QQR2-MN-4-3)
* We rewrite the problem slightly: In Luo, Ralph, & Pang,
* the slack variable is implicitly added to the constraint
* of the lower-level problem, but we don't add it here

# Original AMPL coding by Sven Leyffer

# An MPEC from S. Dempe, "A necessary and sufficient optimality
# condition for bilevel programming problems", Optimization 25,
# pp. 341-354, 1992. From book Math. Progr. with Equil. Constr,
# by Luo, Pang & Ralph, CUP, 1997, p. 354.
$offtext

VARIABLES
    objVar,
    x	'upper-level var',
    z	'lower-level var';
POSITIVE VARIABLES
    w	'dual var to lower-level constraint f';

EQUATIONS
    objEqu,
    dLdz,
    f;

objEqu..	objVar =e= power(x - 3.5,2) + power(z + 4,2);

dLdz..	   2*(z-3)   + 2*z * w =E= 0;
f..	x - z*z                =G= 0;

model dempe2 / objEqu, dLdz.z, f.w /;

x.l = 1;
z.l = 1;
w.l = 1;

solve dempe2 using mpec min objVar;
