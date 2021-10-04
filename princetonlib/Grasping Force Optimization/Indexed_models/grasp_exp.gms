* Objective: linear
* Constraints: convex epsilon-second-order cone
* Feasible set: convex

* This model finds the smallest amount of normal force required
* to "grasp" an object given a set of possible grasping points.
*
* Reference: "Applications of Second-Order Cone Programming",
* M.S. Lobo, L. Vandenberghe, S. Boyd, and H. Lebret, 1998

* n- number of lifting points
$Set n 5

parameter pi; pi = 4*arctan(1);

* mu coeff. of friction
parameter mu; mu= 0.3;

Set j /1*%n%/;


* p = (p1,p2,p3) is a contact point on a parabolic "nose cone" to be lifted
parameter p1[j];p1[j]= 0.3 + cos(2*pi*ord(j)/%n%);
parameter p2[j];p2[j]=       sin(2*pi*ord(j)/%n%);
parameter p3[j];p3[j]= sqr(p1[j]) + sqr(p2[j]);

* v = (v1,v2,v3) is the unit normal vector at contact point p = (p1,p2,p3)
parameter grad_norm[j]; grad_norm[j]=sqrt( sqr(2*p1[j]) + sqr(2*p2[j]) + 1);
parameter v1[j]; v1[j]= -2*p1[j]/grad_norm[j];
parameter v2[j]; v2[j]= -2*p2[j]/grad_norm[j];
parameter v3[j]; v3[j]=        1/grad_norm[j];

* external applied force
parameter f1_ext; f1_ext=  0;
parameter f2_ext; f2_ext=  0;
parameter f3_ext; f3_ext= -1;

* external applied torque
parameter torq1_ext; torq1_ext= 0;
parameter torq2_ext; torq2_ext= 0;
parameter torq3_ext; torq3_ext= 0;

Variable
*          nf is the normal force at point p = (p1,p2,p3)
    nf[j]
*      tf = (tf1,tf2,tf3) is the tangential force at point p = (p1,p2,p3)
    tf1[j],
    tf2[j],
    tf3[j],
*      torq=(torq1,torq2,torq3) is the torq about (0,0,0) at point p=(p1,p2,p3)
    torq1[j],
    torq2[j],
    torq3[j],
*      f = (f1,f2,f3) is the contact force at point p = (p1,p2,p3)
    f1[j],
    f2[j],
    f3[j],
*       an upper bound on the normal contact force
    t;



Equation

equation_1[j],
equation_2[j],
equation_3[j],
equation_4[j],
equation_5[j],
equation_6[j],
equation_7[j],

t_bnds[j],
friction[j],
f_balance1,
f_balance2,
f_balance3,
t_balance1,
t_balance2,
t_balance3;


t_bnds[j]..   t =g=  nf[j];
friction[j].. exp( sqr(tf1[j]) + sqr(tf2[j]) + sqr(tf3[j])-sqr(mu*nf[j]))
              =l=1;

f_balance1..  sum{j,f1[j]} =e= -f1_ext;
f_balance2..  sum{j,f2[j]} =e= -f2_ext;
f_balance3..  sum{j,f3[j]} =e= -f3_ext;

t_balance1..  sum{j,torq1[j]} =e= -torq1_ext;
t_balance2..  sum{j,torq2[j]} =e= -torq2_ext;
t_balance3..  sum{j,torq3[j]} =e= -torq3_ext;

equation_1[j].. nf[j]    =e= v1[j]*f1[j] + v2[j]*f2[j] + v3[j]*f3[j];
equation_2[j].. tf1[j]   =e= f1[j]       - v1[j]*nf[j]              ;
equation_3[j].. tf2[j]   =e= f2[j]       - v2[j]*nf[j]              ;
equation_4[j].. tf3[j]   =e= f3[j]       - v3[j]*nf[j]              ;
equation_5[j].. torq1[j] =e= p2[j]*f3[j] - f2[j]*p3[j]              ;
equation_6[j].. torq2[j] =e= f1[j]*p3[j] - p1[j]*f3[j]              ;
equation_7[j].. torq3[j] =e= p1[j]*f2[j] - f1[j]*p2[j]              ;

f1.l[j] = 1;
f2.l[j] = 1;
f3.l[j] = 1;

f1.up[j]=   1.0;
f1.lo[j]=  -1.0;
f2.up[j]=   1.0;
f2.lo[j]=  -1.0;
f3.up[j]=   1.0;
f3.lo[j]=  -1.0;
nf.lo[j]=0.00001;


model grasp_exp /all/;

solve grasp_exp using nlp minimize t;

file demo /output/;  put demo;
Put "pressure = ", t.l:20:10;  Put /;
Put "point         F1          F2            F3         nf "; Put /;
Loop(j,put j.tl:8 Put f1.l[j]:12:7 Put f2.l[j]:12:7 Put f3.l[j]:16:7
Put nf.l[j]:16:7
Put /;);

Put "point        tf1         tf2           tf3            "; Put /;
Loop(j,put j.tl:8 Put tf1.l[j]:12:7 Put tf2.l[j]:12:7 Put tf3.l[j]:16:7
Put /;);

Put "point        torq1        torq2          torq3            "; Put /;
Loop(j,put j.tl:8 Put torq1.l[j]:12:7 Put torq2.l[j]:12:7 Put torq3.l[j]:16:7
Put /;);