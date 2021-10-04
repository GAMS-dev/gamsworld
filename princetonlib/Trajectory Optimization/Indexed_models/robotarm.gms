*
*
* Objective: linear
* Constraints: nonconvex nonlinear

*
* A robot arm as depicted in Monika's thesis at IWR.
* Letting the pivot point of the robot be the origin of the coordinate
* system and using spherical coordinates, one of the rotational modes
* corresponds to changes in theta and the other corresponds to changes
* in phi (these are the two angles of spherical coordinates).  Also, the
* length, rho, of the arm can change.  We assume that the arm is a rigid
* bar of length L that protrudes a distance rho from the origin to the
* gripping end and sticks out a distance L-rho in the other direction
* (see the pictures at Monika's web site).
*
* This model ignores the
* fact that the spherical coordinate reference-frame is a non-interial
* frame and therefore should have terms for coriolis and centrifugal
* forces.
*


$Set  n  50
*     n     is number of intervals in which time is discretized into;

set i  # discrete times for position         /0*%n%/    ;

* Here is the model:

parameter  pi;                       pi = 3.14159;
parameter  L # length of arm ;       L  = 5      ;

* Here is data corresponding to a specific rotation.

parameter  max_u_rho;                            max_u_rho = 1;
parameter  max_u_the;                            max_u_the = 1;
parameter  max_u_phi;                            max_u_phi = 1;

parameter  rho_0 # initial position         ;    rho_0 := 0.9*L;
parameter  the_0 # initial position (theta) ;    the_0 := 0;
parameter  phi_0 # initial position         ;    phi_0 := pi/4;

parameter  rho_n # final   position         ;    rho_n := 0.9*L;
parameter  the_n # final   position         ;    the_n := 2*pi/3;
parameter  phi_n # final   position         ;    phi_n := pi/4;

Positive Variable   I_the(i) # moment of inertia for rotations in theta   ,
                    I_phi(i) # moment of inertia for rotations in phi     ,
                    T        # total time                                 ,
                    rho(i)   # position                                   ,
                    phi(i)   # position                                   ;

Variable  the[i]      # position     ,
          rho_dot[i]  # velocity     ,
          the_dot[i]  # velocity     ,
          phi_dot[i]  # velocity     ,

          rho_dot2[i] # acceleration ,
          the_dot2[i] # acceleration ,
          phi_dot2[i] # acceleration ,
          Time                       ,
          T           # time         ;

Equation  I_the_def(i),
          I_phi_def(i),

          rho_dt_def(i),
          the_dt_def(i),
          phi_dt_def(i),

          rho_ac_def(i),
          the_ac_def(i),
          phi_ac_def(i),

          rho_lo_bnd(i),
          the_lo_bnd(i),
          phi_lo_bnd(i),

          rho_up_bnd(i),
          the_up_bnd(i),
          phi_up_bnd(i),
          defobj;

I_the_def(i)..
          I_the[i]=e=(power((L-rho[i]),3)+power(rho[i],3))*sqr(sin(phi[i]))/3;

I_phi_def(i)..
          I_phi[i] =e= (power((L-rho[i]),3)+power(rho[i],3))/3;

rho_dt_def(i)$(ord(i)>1).. %n%*(rho[i]-rho[i-1])=e=T*rho_dot[i];
the_dt_def(i)$(ord(i)>1).. %n%*(the[i]-the[i-1])=e=T*the_dot[i];
phi_dt_def(i)$(ord(i)>1).. %n%*(phi[i]-phi[i-1])=e=T*phi_dot[i];

rho_ac_def(i).. %n%*(rho_dot[i]-rho_dot[i-1])=e=T*rho_dot2[i-1];
the_ac_def(i).. %n%*(the_dot[i]-the_dot[i-1])=e=T*the_dot2[i-1];
phi_ac_def(i).. %n%*(phi_dot[i]-phi_dot[i-1])=e=T*phi_dot2[i-1];

rho_lo_bnd(i).. -max_u_rho-0.00001 =l= L*rho_dot2[i]       ;
the_lo_bnd(i).. -max_u_the-0.00001 =l= I_the[i]*the_dot2[i];
phi_lo_bnd(i).. -max_u_phi-0.00001 =l= I_phi[i]*phi_dot2[i];

rho_up_bnd(i).. L*rho_dot2[i]       -0.00001 =l= max_u_rho;
the_up_bnd(i).. I_the[i]*the_dot2[i]-0.00001 =l= max_u_the;
phi_up_bnd(i).. I_phi[i]*phi_dot2[i]-0.00001 =l= max_u_phi;

defobj.. time=e=T;

the.lo[i] = -pi; the.up[i] =  pi;
                 rho.up[i] =  L ;
                 phi.up[i] =  pi;


rho.fx['0']       = rho_0 ;
the.fx['0']       = the_0 ;
phi.fx['0']       = phi_0 ;

rho.fx['%n%']     = rho_n ;
the.fx['%n%']     = the_n ;
phi.fx['%n%']     = phi_n ;

rho_dot.fx['1']   = 0;
the_dot.fx['1']   = 0;
phi_dot.fx['1']   = 0;

rho_dot.fx['%n%'] = 0;
the_dot.fx['%n%'] = 0;
phi_dot.fx['%n%'] = 0;


T.lo=1.00;
T.up=50.0;
T.l =25.0;


model robotarm /all/;
solve robotarm using dnlp minimize Time;
