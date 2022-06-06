* Analysis + Identification (penalty, 1-norm)
* 11 bar truss
* Nappi, Applied Mathematical Modelling, 6, 441-448, 1982
* Analysis u-solution different from Nappi's
* FTL - 27 Oct 97
* MCF - Updated to be an MPEC 11 Nov 97
* SPD - put in mpeclib 04 Jan 2002

$onlisting offsymxref offsymlist
option sysout=off, solprint=off;
option limrow = 0, limcol = 0;
option iterlim = 100000;
option reslim = 100000;
option decimals = 7;
* keep solver-specific stuff out of the model
* option mcp = path;
* option nlp = conopt;

sets
  dof      'No. structure dof'               / d1*d8 /
  members  'No. members'                     / m1*m11 /
  yield    'No. yield functions per member'  / y1*y2 /

  mdof     'No. member dof'                  / f1*f6 /
  proj     'Truss coord projections'         / dx,dy,dz /;

alias
  (yield,yield1);

* F varies case-by-case
parameter F(dof);
table Fcases (dof, *) 'data for all cases'
	casea	caseb	casec	cased
d1	500	500	500	600
d2	-600	-600	-500	-600
d4	-500	-500	-500	-600
d6		-550			;

$if not set case $error "you must $set the case"

* Case a : Activates [3,4], [8,10,11]
* Likely that both vertical/horizontals and diagonals can be identified
$if '%case%' == 'a' F(dof) = Fcases(dof,'casea');

* Case b : Activates [3], [8,9,10,11]
* Likely that diagonals can be identified well
$if '%case%' == 'b' F(dof) = Fcases(dof,'caseb');

* Case c : Activates [3], [8,11]
* Likely that diagonals can be identified
$if '%case%' == 'c' F(dof) = Fcases(dof,'casec');

* Case d : Activates [1,2,3,4], [8,10,11]
* Likely that both vertical/horizontals and diagonals can be identified
$if '%case%' == 'd' F(dof) = Fcases(dof,'cased');

$if not defined F $error "You must $set case properly"

parameter N(members,yield);
  N(members,"y1") = 1;
  N(members,"y2") = -1;

parameter S(members);
  S(members)$(ord(members) lt 8) = 900;
  S(members)$(ord(members) gt 7) = 400;

table truss(members,proj)   'x y z projections'
       dx       dy        dz
m1      1        0
m2      1        0
m3      0        1
m4      0        1
m5      0        1
m6      1        0
m7      1        0
m8      1        1
m9      1       -1
m10     1        1
m11     1       -1

table lv(members,mdof)      'location vectors'
       f1    f2    f3    f4    f5     f6
m1      0     0           1     2
m2      1     2           0     0
m3      0     0           3     4
m4      1     2           5     6
m5      0     0           7     8
m6      3     4           5     6
m7      5     6           7     8
m8      0     0           5     6
m9      3     4           1     2
m10     1     2           7     8
m11     5     6           0     0

* Generate C
parameter
  C(members,dof)      'Structure C',
  mC(members,mdof)    'Elements C',
  L(members)          'Lengths',
  ll(members), mm(members), nn(members);

  L(members) = sqrt(sqr(truss(members,"dx"))
    +sqr(truss(members,"dy"))+sqr(truss(members,"dz")));
  ll(members) = truss(members,"dx")/L(members);
  mm(members) = truss(members,"dy")/L(members);
  nn(members) = truss(members,"dz")/L(members);
  mC(members,"f1") = -ll(members);
  mC(members,"f2") = -mm(members);
  mC(members,"f3") = -nn(members);
  mC(members,"f4") = ll(members);
  mC(members,"f5") = mm(members);
  mC(members,"f6") = nn(members);

loop(members,
  loop(dof,
    loop(mdof$(ord(dof) eq lv(members,mdof)),
      C(members,dof) = mC(members,mdof);
    );
  );
);

* display C;

variables
  Q(members),
  u(dof),
  R(members,yield),
  H(members,yield,yield);

positive variables
  lambda(members,yield);

equations
  compat(members),
  equil(dof),
  constit(members,yield);

compat(members) ..
  - Q(members) + S(members)*sum(dof,C(members,dof)*u(dof))
  - S(members)*sum(yield,N(members,yield)*lambda(members,yield))
  =e= 0;

equil(dof) ..
  sum(members,C(members,dof)*Q(members)) - F(dof) =e= 0;

constit(members,yield) ..
  - N(members,yield)*Q(members)
  + sum(yield1,H(members,yield,yield1)*lambda(members,yield1))
  + R(members,yield) =g= 0;

***
*** Analysis phase
***

R.fx(members,yield)$(ord(members) lt 8) = 309;
R.fx(members,yield)$(ord(members) gt 7) = 180;

H.fx(members,yield,yield1) = 0;
H.fx(members,"y1","y1")$(ord(members) lt 8) = 90;
H.fx(members,"y2","y2")$(ord(members) lt 8) = 90;
H.fx(members,"y1","y1")$(ord(members) gt 7) = 40;
H.fx(members,"y2","y2")$(ord(members) gt 7) = 40;

model analysis / compat.Q, equil.u, constit.lambda /;
solve analysis using mcp;

display u.l,lambda.l;

***
*** Identification phase
***

parameter pertu(dof);
  pertu(dof) = u.l(dof);

* Analysis: R1 = 309, R2 = 180
R.lo(members,yield) = 10;
R.up(members,yield) = 500;

* Analysis: H1 = 90, H2 = 40
H.lo(members,yield,yield1)$(ord(yield) eq ord(yield1)) = 0;
H.up(members,yield,yield1)$(ord(yield) eq ord(yield1)) = 300;

variables
  mu,
  uerr(dof);

positive variables
  uerr;

equations
  lower(dof),upper(dof),uerrdef,
  R1_7(members,yield),R8_11(members,yield),
  H1_7(members,yield),H8_11(members,yield);

lower(dof) ..  u(dof) =g= pertu(dof) - uerr(dof);
upper(dof) ..  u(dof) =l= pertu(dof) + uerr(dof);
uerrdef    ..  mu =e= sum(dof,uerr(dof));

R1_7(members,yield)$(ord(members) lt 8) ..
  R(members,yield) =e= R("m1","y1");
R8_11(members,yield)$(ord(members) gt 7) ..
  R(members,yield) =e= R("m8","y1");

H1_7(members,yield)$(ord(members) lt 8) ..
  H(members,yield,yield) =e= H("m1","y1","y1");

H8_11(members,yield)$(ord(members) gt 7) ..
  H(members,yield,yield) =e= H("m8","y1","y1");

R.l(members,yield) = 10;
H.l(members,"y1","y1") = 10;
H.l(members,"y2","y2") = 10;
lambda.l(members,yield) = 1;
Q.l(members) = 1;
u.l(dof) = pertu(dof);
uerr.l(dof) = 1;

model identify / compat.Q,equil.u,constit.lambda,lower,upper,uerrdef,
                 R1_7,R8_11,H1_7,H8_11 /;

solve identify using mpec minimizing mu;
