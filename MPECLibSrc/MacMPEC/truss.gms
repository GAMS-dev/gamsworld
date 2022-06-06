*  Optimal design of 3-bar truss (kN,cm) : penalty method

sets   d    'No. of structure dof'              / d1*d2 / 
       m    'No. of members'                    / m1*m3 /
       y    'No. of yield functions per member' / y1*y2 /;

alias  (y,y1);

scalar ro       Penalty factor  / 1e-2 /
       E        Young's modulus / 20e3 /
       stress   Yield limit     / 50   /;

parameter L(m) / m1=500, m2=400, m3=500 /;
parameter F(d) / d1=400, d2=600 /;
table  C(m,d)	'compatibility matrix'
	 d1	 d2
m1	 0.6	 0.8
m2		 1.0
m3	-0.6	 0.8 ;
parameter N(m,y);  N(m,"y1") = 1; N(m,"y2") = -1;

variables
    obj,
    S(m)	'stiffness',
    r(m,y)	'yield limit',
    H(m,y,y)	'hardening coeffients',
    Q(m)	'stresses',
    u(d)	'nodal displacements';
positive variables
    a(m)	'elemental area',
    z(m,y)	'plastic multipliers',
    w(m,y);

H.fx(m,"y1","y2") = 0; H.fx(m,"y2","y1") = 0;
u.lo(d) = -4; u.up(d) = 4;

equations
    cost,
    tech(m)		'members share a common area',
    stiffdef(m),
    limitdef(m,y),
    harddef(m,y,y),
    compat(m),
    equil(d),
    yield(m,y) ;

cost          ..  obj  =E= sum(m,L(m)*a(m));
tech(m)       ..  a(m) =E= a("m1");
stiffdef(m)   ..  S(m) =E= E*a(m)/L(m);
limitdef(m,y) ..  r(m,y) =E= stress*a(m);
harddef(m,y,y)..  H(m,y,y) =E= 0.125*E*a(m)/L(m);
compat(m)     ..  - Q(m) + S(m)*sum(d,C(m,d)*u(d))
		         - S(m)*sum(y,N(m,y)*z(m,y)) =E= 0;
equil(d)      ..  sum {m, C(m,d)*Q(m)} - F(d) =E= 0;
yield(m,y)    ..  - N(m,y)*Q(m) + sum(y1,H(m,y,y1)*z(m,y1)) + r(m,y)
		=G= 0;

* now we make new equations, using that
* the member structures' have the same area
equations
    cost2,
*    tech(m)		'enforced by construction'
    stiffdef2(m),
    limitdef2(m,y),
    harddef2(m,y,y);

cost2           ..  obj  =E= sum {m, L(m)*a('m1')};
stiffdef2(m)    ..  S(m) =E= E*a('m1')/L(m);
limitdef2(m,y)  ..  r(m,y) =E= stress*a('m1');
harddef2(m,y,y) ..  H(m,y,y) =E= 0.125*E*a('m1')/L(m);

* model _0 pushs parameter-defining equations into the EC
* model _1 keeps the EC identical to the analysis problem
* model _2 puts only the bounded vars into the EC
* next three models are like the first three,
* but since the areas are identical, we only use one area var, a('m1')

model Truss3_0 /cost, tech,
		stiffdef.S, limitdef.r, harddef.H,
		compat.Q, equil.u, yield.z  /;

model Truss3_1 /cost, tech,
		stiffdef, limitdef, harddef,
		compat.Q, equil.u, yield.z  /;

model Truss3_2 /cost, tech,
		stiffdef, limitdef, harddef,
		compat, equil, yield.z  /;

model Truss3_3 /cost2,
		stiffdef2.S, limitdef2.r, harddef2.H,
		compat.Q, equil.u, yield.z  /;

model Truss3_4 /cost2,
		stiffdef2, limitdef2, harddef2,
		compat.Q, equil.u, yield.z  /;

model Truss3_5 /cost2,
		stiffdef2, limitdef2, harddef2,
		compat, equil, yield.z  /;



$ontext
* method of solution using NLP
model truss / all /;
option nlp = conopt;

a.l(m) = 1; S.l(m) = 1; r.l(m,y) = 1; H.l(m,y,y) = 1;

scalar wz / 100 /;
set iter / iter1*iter50 /;
loop(iter$(wz gt 1e-8),
   solve truss using nlp minimizing obj;
   wz = sum((m,y),w.l(m,y)*z.l(m,y));
   ro = 10*ro;
);
display wz, obj.l, a.l;
$offtext
