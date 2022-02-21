* Objective: linear
* Constraints: nonconvex quadratic equality
* Feasible set: nonconvex

* number of intervals in which time is discretized into
$Set n 100

set i /0*%n%/;

parameter  x0 initial position ; x0 = 0  ;
parameter  xn final   position ; xn = 100;
parameter  v0 initial velocity ; v0 = 0  ;
parameter  vn final   velocity ; vn = 0  ;
parameter max_speed            ; max_speed = 5;
parameter max_force            ; max_force = 1;


Variable  x(i) position     ,
          v(i) velocity     ,
          a(i) acceleration ,
          time total time   ;

Equation  vel_def(i),
          acc_def(i);

vel_def(i)$((ord(i) ne card(i)))..   %n%*(x[i+1] - x[i]) =e= time*(v[i+1]);
acc_def(i)..                         %n%*(v[i+1] - v[i]) =e= time*(a[i+1]);

v.up[i]    =            max_speed;
a.up[i]    =            max_force;
v.lo[i]    =           -max_speed;
a.lo[i]    =           -max_force;

*time.lo = 0.001;
time.l = 1;

x.fx['0']     = x0;
x.fx['%n%']   = xn;
v.fx['1']     = v0;
v.fx['%n%']   = vn;

model rocket /all/;

solve rocket using nlp minimize Time;

file dem /output/;  put dem;
Put "time = ", time.l:20:10;  Put /;
Put "point         x           v             a       "; Put /;
Loop(i,put i.tl:8 Put x.l[i]:12:7 Put v.l[i]:12:7 Put a.l[i]:16:7 Put /;);