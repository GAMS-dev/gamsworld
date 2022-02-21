* Objective: linear
* Constraints: nonconvex nonlinear

***********************************************************************
* A robot arm as depicted in Monika's thesis at IWR.
* Letting the pivot point of the robot be the origin of the coordinate
* system and using spherical coordinates, one of the rotational modes
* corresponds to changes in lat and the other corresponds to changes
* in lon (these are the two angles of spherical coordinates). Also, the
* length, rho, of the arm can change.  We assume that the arm is a rigid
* bar of length 2L that protrudes a distance L+rho from the origin to the
* gripping end and sticks out a distance L-rho in the other direction
* (see the pictures at Monika's web site).
*
* This model incorporates coriolis and centrifugal forces.
***********************************************************************

***********************************************************************
* Here is the model:

$Set n 8
* number of intervals in which time is discretized into
$Set n1 7
Set I /i0*i%n%/;
* discrete times for position
Set right(I) /i1*i%n%/;
* discrete times for velocity
Set left(I) /i0*i%n1%/;
* discrete times for velocity
Set inside(I) /i1*i%n1%/;
* discrete times for acceleration

Parameter pi ; pi = 3.14159;
Parameter  g ; g  = 9.81;
* acceleration due to gravity


Parameter  L;      L =  0.75 ;
* half-length of arm
Parameter  m_L;  m_L =  0    ;
* mass of load
Parameter  m_B;  m_B = 40    ;
* mass of bar (unloaded arm)
Parameter m_LB ; m_LB = m_L + m_B;
Parameter  I_1_23 ; I_1_23 = 18.5 ;
* moment of inertia of bar about bar axis
Parameter  I_2_23 ; I_2_23 = 0.12 ;
*
Parameter  I_3_23;  I_3_23 = 18.5 ;
*
Parameter  I_3_1;   I_3_1  = 0.0  ;
* moment of inertia of base about base axis

Parameter  max_F;     max_F = 5 ;
Parameter  max_T_lon; max_T_lon = 300 ;
Parameter  max_T_lat; max_T_lat = 300 ;

Parameter  rho_0 ;  rho_0 = 0.9*L ;
* initial position
Parameter  lon_0 ;  lon_0 = 0.0   ;
* initial position (theta)
Parameter  lat_0 ;  lat_0 = pi/4  ;
* initial position
Parameter  rho_n;  rho_n = 0.9*L  ;
* final   position
Parameter  lon_n;  lon_n = 2*pi/3 ;
* final   position
Parameter  lat_n;  lat_n = pi/4   ;
* final   position


Variable time, T , rho[i] , lon[i] , lat[i]      , rho_dot[i]  , lon_dot[i] ,
         lat_dot[i] , rho_dot2[i]  , lon_dot2[i] , lat_dot2[i] , s[i]       ,
               F[i] , T_lon[i]     , T_lat[i]    , a[i]        , a_1[i]     ,
             a_2[i] ;

Equation  rho_dot_def[i] ,lon_dot_def[i] ,lat_dot_def[i] ,
          rho_acc_def[i] ,lon_acc_def[i] ,lat_acc_def[i] ,
          s_def[i] ,a_def[i] ,a_1_def[i] ,a_2_def[i] ,
          F_def(i) , T_lon_def(i) , T_lat_def(i),
           Def_obj ;

* rho_dot[i] - velocity
* lon_dot[i] - velocity
* lat_dot[i] - velocity

* rho_dot2[i] - acceleration
* lon_dot2[i] - acceleration
* lat_dot2[i] - acceleration
* T           - total time




rho_dot_def[i]$right(i).. %n%*(rho[i] - rho[i-1])     =e= T*rho_dot[i];
lon_dot_def[i]$right(i).. %n%*(lon[i] - lon[i-1])     =e= T*lon_dot[i];
lat_dot_def[i]$right(i).. %n%*(lat[i] - lat[i-1])     =e= T*lat_dot[i];

rho_acc_def[i]$inside(i).. %n%*(rho_dot[i+1] - rho_dot[i]) =e= T*rho_dot2[i];
lon_acc_def[i]$inside(i).. %n%*(lon_dot[i+1] - lon_dot[i]) =e= T*lon_dot2[i];
lat_acc_def[i]$inside(i).. %n%*(lat_dot[i+1] - lat_dot[i]) =e= T*lat_dot2[i];

s_def[i]$inside(i)..    s[i] =e= rho[i] + m_L*L/m_LB;
a_def[i]$inside(i)..    a[i] =e= I_3_23 - I_2_23 + m_B*sqr(rho[i]) + m_L*sqr(rho[i] + L);
a_1_def[i]$inside(i)..  a_1[i] =e= I_3_1 + I_2_23 + a[i]*sqr(cos(lat[i]));
a_2_def[i]$inside(i)..  a_2[i] =e= I_1_23 + m_B*sqr(rho[i]) + m_L*sqr(rho[i] + L);


F_def(i)$left(i)..
    F[i] =e= m_LB *(rho_dot2[i]- s[i]*
            ( (sqr(lon_dot[i]+lon_dot[i+1]))/4 *sqr(cos(lat[i]))
            + (sqr(lat_dot[i]+lat_dot[i+1]))/4 )+ g * sin(lat[i]));

T_lon_def(i)$left(i)..
    T_lon[i] =e= a_1[i] * lon_dot2[i] - 2 * a[i] * sin(lat[i]) * cos(lat[i])
            * (lon_dot[i]+lon_dot[i+1])* (lat_dot[i]+lat_dot[i+1])/4
        + 2 * m_LB * s[i] * sqr(cos(lat[i]))
            * (rho_dot[i]+rho_dot[i+1])* (lon_dot[i]+lon_dot[i+1])/4
        ;

T_lat_def(i)$left(i)..
    T_lat[i] =e=a_2[i] * lat_dot2[i]+ a[i] * sin(lat[i]) * cos(lat[i])
               * (sqr(lon_dot[i]+lon_dot[i+1]))/4
        + 2 * m_LB * s[i]* (rho_dot[i]+rho_dot[i+1])
            * (lat_dot[i]+lat_dot[i+1])/4
        + m_LB * g * s[i] * cos(lat[i]);

Def_obj..  time =e= T ;

***********************************************************************
* In order to get convergence, it seems to be necessary to initialize
* to something sort of reasonable:

rho.l[i] = ((%n%-ord(i))*rho_0 + ord(i)*rho_n)/%n%;
lon.l[i] = ((%n%-ord(i))*lon_0 + ord(i)*lon_n)/%n%;
lat.l[i] = ((%n%-ord(i))*lat_0 + ord(i)*lat_n)/%n%;
T.l = 10000;
rho_dot.l[i] = %n%*(rho.l[i+1] - rho.l[i])/T.l;
lon_dot.l[i] = %n%*(lon.l[i+1] - lon.l[i])/T.l;
lat_dot.l[i] = %n%*(lat.l[i+1] - lat.l[i])/T.l;

rho_dot2.l[i]$right(i)  = %n%*(rho_dot.l[i+1] - rho_dot.l[i])/T.l;
lon_dot2.l[i]$right(i)  = %n%*(lon_dot.l[i+1] - lon_dot.l[i])/T.l;
lat_dot2.l[i]$right(i)  = %n%*(lat_dot.l[i+1] - lat_dot.l[i])/T.l;

s.l[i] = rho.l[i] + m_L*L/m_LB;
a.l[i] = I_3_23 - I_2_23 + m_B*sqr(rho.l[i]) + m_L*sqr(rho.l[i] + L);
a_1.l[i] = I_3_1 + I_2_23 + a.l[i]*sqr(cos(lat.l[i]));
a_2.l[i] = I_1_23 + m_B*sqr(rho.l[i]) + m_L*sqr(rho.l[i] + L);

    F.l[i] = m_LB *
        (
        rho_dot2.l[i]
        - s.l[i]*
            ( (sqr(lon_dot.l[i]+lon_dot.l[i+1]))/4 *
sqr(cos(lat.l[i]))
            + (sqr(lat_dot.l[i]+lat_dot.l[i+1]))/4 )
        + g * sin(lat.l[i])
        );

    T_lon.l[i] :=
        a_1.l[i] * lon_dot2.l[i]
        - 2 * a.l[i] * sin(lat.l[i]) * cos(lat.l[i])
            * (lon_dot.l[i]+lon_dot.l[i+1])
            * (lat_dot.l[i]+lat_dot.l[i+1])/4
        + 2 * m_LB * s.l[i] * sqr(cos(lat.l[i]))
            * (rho_dot.l[i]+rho_dot.l[i+1])
            * (lon_dot.l[i]+lon_dot.l[i+1])/4
        ;
    T_lat.l[i] =
        a_2.l[i] * lat_dot2.l[i]
        + a.l[i] * sin(lat.l[i]) * cos(lat.l[i])
               * (sqr(lon_dot.l[i-0.5]+lon_dot.l[i+0.5]))/4
        + 2 * m_LB * s.l[i]
            * (rho_dot.l[i]+rho_dot.l[i+1])
            * (lat_dot.l[i]+lat_dot.l[i+1])/4
        + m_LB * g * s.l[i] * cos(lat.l[i])
        ;
************************************************************************
rho.fx['i0']       = rho_0 ;
lon.fx['i0']       = lon_0 ;
lat.fx['i0']       = lat_0 ;

rho.fx['i%n%']     = rho_n ;
lon.fx['i%n%']     = lon_n ;
lat.fx['i%n%']     = lat_n ;

rho_dot.fx['i1']   = 0     ;
lon_dot.fx['i1']   = 0     ;
lat_dot.fx['i1']   = 0     ;

rho_dot.fx['i%n%'] = 0     ;
lon_dot.fx['i%n%'] = 0     ;
lat_dot.fx['i%n%'] = 0     ;

F.lo[i]     = -max_F     ;     F.up[i] = max_F;
T_lon.lo[i] = -max_T_lon ; T_lon.up[i] = max_T_lon;
T_lat.lo[i] = -max_T_lat ; T_lat.up[i] = max_T_lat;

T.lo = 0.1 ;
* total time

Model robotarm2 /all/;

Solve robotarm2 using nlp minimazing Time ;

display F.l, T_lon.l, T_lat.l;

display rho.l, lon.l, lat.l;
display rho_dot.l, lon_dot.l, lat_dot.l;
display rho_dot2.l, lon_dot2.l, lat_dot2.l;
