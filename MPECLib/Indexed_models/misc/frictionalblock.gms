set dof             /f1*f3/;
set datain          /typ,e1*e6/;
set resolve         /t,n,mw/;
set block;
set contact;
parameter data(block,datain);

$if set case $goto caseset

$error "you must $set the case"
$exit

$label caseset
$if '%case%' == '1' $include fr_block1.dat
$if '%case%' == '2' $include fr_block2.dat
$if '%case%' == '3' $include fr_block3.dat
$if '%case%' == '4' $include fr_block4.dat
$if '%case%' == '5' $include fr_block5.dat
$if '%case%' == '6' $include fr_block6.dat

$if defined block $goto alldefined

$error "you must $set the case to a valid value"
$exit

$label alldefined
$setglobal lx 4
$setglobal ly 1.75

parameter CT(block,dof,contact,resolve);
$include fr_genct.gms
* display CT;

parameter fL(block,dof);
fL(block,'f1') = 0.5$(data(block,'typ') eq 3)
    + 1$(data(block,'typ') ne 3);

parameter f0(block,dof);
f0(block,'f2') = -0.5$(data(block,'typ') eq 3)
    - 1$(data(block,'typ') ne 3);

scalar
  pi    Pi
  phi   Friction angle
  phi0  Normality         /0/
  psi   Toppling angle    /45/;

pi = 4*arctan(1);
phi  = arctan(0.65);
phi0 = phi0*pi/180;
* setting phi0 to phi gives an LP
* phi0 = phi;
psi  = psi*pi/180;

set contype contact type /sp,sm,rp,rm/;

parameter NT(contype,resolve);
  NT('sp','t') = cos(phi);
  NT('sp','n') = -sin(phi);
  NT('sm','t') = -cos(phi);
  NT('sm','n') = -sin(phi);
  NT('rp','n') = -sin(psi);
  NT('rp','mw') = cos(psi);
  NT('rm','n') = -sin(psi);
  NT('rm','mw') = -cos(psi);

parameter V(resolve,contype);
  V('t','sp') = cos(phi0);
  V('t','sm') = -cos(phi0);
  V('n','sp') = -sin(phi0);
  V('n','sm') = -sin(phi0);
  V('n','rp') = -sin(psi);
  V('n','rm') = -sin(psi);
  V('mw','rp') = cos(psi);
  V('mw','rm') = -cos(psi);

free variable obj;
variables
  alpha,u(block,dof),lambda(contact,contype),x(contact,resolve);

positive variables
  lambda;

equation cost;
equations
  eq1,eq2(contact,resolve),eq3(block,dof),eq4(contact,contype);


eq1 ..
  sum((block,dof),fL(block,dof)*u(block,dof)) - 1
  =e= 0;

eq2(contact,resolve) ..
  - sum((block,dof),CT(block,dof,contact,resolve)*u(block,dof))
  + sum(contype,V(resolve,contype)*lambda(contact,contype))
  =e= 0;

eq3(block,dof) ..
  - alpha*fL(block,dof)
  + sum((contact,resolve),CT(block,dof,contact,resolve)*x(contact,resolve))
  - f0(block,dof)
  =e= 0;

eq4(contact,contype) ..
  - sum(resolve,NT(contype,resolve)*x(contact,resolve))
  =g= 0;

cost..
  obj =e= alpha;

model mpecblock / cost, eq1.alpha, eq2.x, eq3.u, eq4.lambda /;

solve mpecblock using mpec minimizing obj;
