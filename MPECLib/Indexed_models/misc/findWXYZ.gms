$Title BASE ANALYSIS AND IDENTIFICATION MODELS (findWXYZ.gms)
$STitle BASE ANALYSIS MODEL
* Elastoplastic beam on elastoplastic foundation
* Maier et al. (Eng. Struct. 4, 1982, 86-98)
* Grierson, Chapter 14, Waterloo Workshop
* Material data same as Nappi
* Hardening in tension .ne. hardening in compression
* Last modified FTL - 17 Feb 97
* Modified by MCF: Nov 11 97
* Last modified SPD - 04 Jan 02

* This file requires 4 parameters to be set:
*
* %dof%: measured dof
*   a =   all dof
*   b =   1,3, ..., 25
*   c =   17,19, ..., 25
* %alpha%: alpha
*   1 =   alpha is 1
*   3 =   alpha is 3
* %perturb%: perturbation
*   0 =   exact measurement
*   5 =   1.05 * u
* %bounds%: bounds
*   T =   tight
*   S =   semitight
*   L =   loose

$offsymxref offsymlist
option sysout=off, solprint=off;
option limrow = 0, limcol = 0;
option decimals = 7;

sets dof            /d1*d26/
     members        /m1*m50/
     be(members)    /m1*m24/
     sp(members)    /m25*m50/
     plastic        /plus,minus/
     plus(plastic)  /plus/
     minus(plastic) /minus/
     material       /beam,spring/;

scalar alpha / %alpha% /;

parameter F(dof);
  F(dof) = 0;
  F("d6") = 3*2.13*alpha;
  F("d11") = 3*2.13*alpha;
  F("d21") = 4*2.13*alpha;

parameter SMAT(material)
  / beam   3.43e3
    spring 1.6    /;

parameter S(members);
  S(be) = SMAT("beam");
  S(sp) = SMAT("spring");

* Input problem geometry to determine C

parameter L;
  L = 32;

parameter C(members,dof);
  C(members,dof) = 1$(ord(members)-24 eq ord(dof))
                   + (-1/L)$(ord(members) eq ord(dof) and be(members))
                   + (2/L)$(ord(members) + 1 eq ord(dof) and be(members))
                   + (-1/L)$(ord(members) + 2 eq ord(dof) and be(members));

variables u(dof),
	QF(members),
	lambda(plastic,members),
	q0(plastic,material),
	h(plastic,material);

equations equil(dof),
	constit(members),
	yield(plastic,members);

equil(dof)..
    sum(members,C(members,dof)*QF(members)) =e= F(dof);

constit(members)..
    QF(members)/S(members) =e= sum(dof,C(members,dof)*u(dof))
    - lambda("plus",members) + lambda("minus",members);

yield(plastic,members)..
    - QF(members)$plus(plastic) + QF(members)$minus(plastic) 
    + q0(plastic,"beam")$be(members)
    + q0(plastic,"spring")$sp(members)
    + (h(plastic,"beam")*lambda(plastic,members))$be(members)
    + (h(plastic,"spring")*lambda(plastic,members))$sp(members)
    =g= 0;

model base /equil.u,constit.QF,yield.lambda /;

q0.fx(plastic,"beam") = 125;
q0.fx("plus","spring") = 1.6;
q0.fx("minus","spring") = 0.0;
h.fx(plastic,"beam") = SMAT("beam")/20;
h.fx("plus","spring") = SMAT("spring")/20;
h.fx("minus","spring") = 0.0;

lambda.lo(plastic,members) = 0;

solve base using mcp;
abort$[base.modelstat ne 1] "did not solve MCP"; 
display F, QF.l, lambda.l;

$STitle IDENTIFICATION MODEL (find.gms)

* Set of dof1 where measurements made
$if '%dof%' == 'a' set dof1(dof) /d1*d26/;
$if '%dof%' == 'b' set dof1(dof) /d1,d3,d5,d7,d9,d11,d13,d15,d17,d19,d21,d23,d25/;
$if '%dof%' == 'c' set dof1(dof) /d17,d19,d21,d23,d25/;

* Set measured u (exact or perturbed)
parameter pertu(dof);
$if '%perturb%' == '0'   pertu(dof)=u.l(dof);
$if '%perturb%' == '5'   pertu(dof)=1.05*u.l(dof);

* Bounds on parameters q0 and h
* Bnd = 1 (L); 2(S); 3(T)
scalar Bnd;
$ifi '%bounds%' == 'L' Bnd = 1;
$ifi '%bounds%' == 'S' Bnd = 2;
$ifi '%bounds%' == 'T' Bnd = 3;

if ((Bnd eq 1),
* Loose
  q0.lo(plastic,material) = 0.0;
  q0.up(plastic,material) = 1.0e3;
  h.lo(plastic,material) = 0.0;
  h.up(plastic,material) = 1.0e3;
);

if ((Bnd eq 2),
* Semitight
  q0.lo(plastic,"beam") = 30;
  q0.up(plastic,"beam") = 300;
  q0.lo("plus","spring") = 0;
  q0.up("plus","spring") = 5;
  q0.lo("minus","spring") = 0;
  q0.up("minus","spring") = 0;
  h.lo(plastic,"beam") = 0;
  h.up(plastic,"beam") = 300;
  h.lo("plus","spring") = 0;
  h.up("plus","spring") = 5;
  h.lo("minus","spring") = 0;
  h.up("minus","spring") = 0;
);

if ((Bnd eq 3),
* Tight (is this same as Nappi?)
  q0.lo(plastic,"beam") = 100.0;
  q0.up(plastic,"beam") = 150.0;
  q0.lo("plus","spring") = 1.3;
  q0.up("plus","spring") = 2.0;
  q0.lo("minus","spring") = 0;
  q0.up("minus","spring") = 0;
  h.lo(plastic,"beam") = 150;
  h.up(plastic,"beam") = 200;
  h.lo("plus","spring") = 0;
  h.up("plus","spring") = 0.1;
  h.lo("minus","spring") = 0;
  h.up("minus","spring") = 0;
);

variables mu;

positive variables
  uerr(dof1);

equations
  lower(dof1),upper(dof1),uerrdef;

lower(dof1)..
  u(dof1) =g= pertu(dof1) - uerr(dof1);

upper(dof1)..
  u(dof1) =l= pertu(dof1) + uerr(dof1);

uerrdef.. mu =e= sum(dof1,uerr(dof1));

model identify /equil.u,constit.QF,yield.lambda,lower,upper,uerrdef/;

q0.l(plastic,"beam") = 1;
q0.l(plastic,"spring") = 1;
h.l(plastic,"beam") = 1;
h.l(plastic,"spring") = 1;
lambda.l(plastic,members) = 1;
QF.l(members) = 1;
u.l(dof1) = pertu(dof1);
uerr.l(dof1) = 0.1;

display dof1;
display alpha;
display pertu;
display bnd;

solve identify using mpec minimizing mu;
