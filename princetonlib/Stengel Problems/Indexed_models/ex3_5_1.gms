$Set N 100
parameter  T        ; T        = 10  ;
parameter  g        ; g        = 9.8 ;
parameter  m_arm    ; m_arm    = 10  ;
parameter  m_object ; m_object = 1   ;
parameter  m_hand   ; m_hand   = 1   ;
parameter  m_fore   ; m_fore   = 5   ;
parameter  d        ; d        = 0.1 ;

Set I /I1*I3/;
Set J /0*%N%/;
parameter  k[I]     ; k[I]     = 1   ;

parameter  theta_0  ; theta_0  = 0   ;
parameter  l_0      ; l_0      = 1   ;
parameter  n_0      ; n_0      = 1   ;

parameter  theta_N  ; theta_N  = 1   ;
parameter  l_N      ; l_N      = 2   ;
parameter  n_N      ; n_N      = 1   ;

parameter  hs       ; hs       = 1   ;
parameter  hd       ; hd       = 1   ;
parameter  rd       ; rd       = 1   ;
parameter  dh_dr    ; dh_dr    = 1   ;

Variable
    theta[j]     ,
    thetadot[j]  ,
    thetadot2[j] ,
    l[j]         ,
    ldot[j]      ,
    ldot2[j]     ,
    n[j]         ,
    ndot[j]      ,
    ndot2[j]     ,
    u[i,j]       ,
    a            ,
    b            ,
    J_obj        ;

Equation def_a         ,
         def_b         ,
         thetadt_d(j)  ,
         thetadt2_d(j) ,
         ldot_def(j)   ,
         ldot2_def(j)  ,
         ndot_def(j)   ,
         ndot2_def(j)  ,
         t_dt2_cnst(j) ,
         l_dt2_cnst(j) ,
         n_dt2_cnst(j) ,
         defobj        ;

def_a..  a =e= sqrt( sqr(l['%N%']) + sqr(d) + 2*l['%N%']*d*cos(n['%N%']));
def_b..  b =e= d*sin(n['%N%'])/(a+0.001);

thetadt_d(j)$(ord(j)>1)..    %N%*(theta[j]-theta[j-1]) =e= T*thetadot[j];
thetadt2_d(j)$((ord(j)>1)and(ord(j)<card(j)))..
                             %N%*(thetadot[j+1]-thetadot[j])=e=T*thetadot2[j];

ldot_def(j)$(ord(j)>1).. %N%*(l[j]-l[j-1])      =e= T*ldot[j];
ldot2_def(j)$((ord(j)>1)and(ord(j)<card(j)))..
                         %N%*(ldot[j+1]-ldot[j])=e=T*ldot2[j];

ndot_def(j)$(ord(j)>1).. %N%*(n[j]-n[j-1])      =e= T*ndot[j];
ndot2_def(j)$((ord(j)>1)and(ord(j)<card(j)))..
                    %N%*(ndot[j+1]-ndot[j]) =e= T*ndot2[j];
t_dt2_cnst(j)$((ord(j)>1)and(ord(j)<card(j)))..
thetadot2[j]   =e=   (u['I1',j] + g*(m_arm*l[j]*cos(theta[j])/2
                    +m_object*sqrt(sqr(l[j]) + sqr(d) +2*l[j]*d*cos(n[j]))
                    *cos(theta[j] + d*sin(n[j]/sqrt(sqr(l[j]) + sqr(d) +
                                       2*l[j]*d*cos(n[j])) ) )))/
                                  (  sqr(m_arm*l[j])/12+m_object*(sqr(l[j])
                                   + sqr(d) + 2*l[j]*d*cos(n[j])))         ;

l_dt2_cnst(j)$((ord(j)>1)and(ord(j)<card(j)))..
     ldot2[j]  =e= u['I2',j]/(m_fore + m_object) + g*sin(theta[j])         ;

n_dt2_cnst(j)$((ord(j)>1)and(ord(j)<card(j)))..
     ndot2[j]  =e=
                    (u['I3',j] + g*(m_hand+m_object)*d*cos(theta[j]+n[j]))/
                                   (m_hand*sqr(d)/12 + m_object*sqr(d))    ;


defobj..  J_obj=e= sum {j$((ord(j)>1)and(ord(j)<card(j))),(
     k['I1']*sqr(thetadot2[j]) + k['I2']*sqr(ldot2[j]) + k['I3']*sqr(ndot2[j])
                       )                                  }*T/%N%          ;


*           Boundaries

thetadot.lo[j]  = -1000;     thetadot.up[j]  =  1000;
thetadot2.lo[j] = -1000;     thetadot2.up[j] =  1000;

ldot.lo[j]      = -1000;     ldot.up[j]      =  1000;
ldot2.lo[j]     = -1000;     ldot2.up[j]     =  1000;

ndot.lo[j]      = -1000;     ndot.up[j]      =  1000;
ndot2.lo[j]     = -1000;     ndot2.up[j]     =  1000;



*-------initials----
thetadot.l[j]  = 0 ;
thetadot2.l[j] = 0 ;
l.l[j]         = 1.5;
ldot.l[j]      = 0 ;
ldot2.l[j]     = 0 ;
ndot.l[j]      = 0 ;
ndot2.l[j]     = 0 ;


*----- points on Boundaries--
theta.fx['0']      = theta_0 ;
thetadot.fx['0']   = 0       ;
thetadot2.fx['0']  = 0       ;
l.fx['0']          = l_0     ;
ldot.fx['0']       = 0       ;
ldot2.fx['0']      = 0       ;
n.fx['0']          = n_0     ;
ndot.fx['0']       = 0       ;
ndot2.fx['0']      = 0       ;

thetadot.fx['1']   = 0       ;
ldot.fx['1']       = 0       ;
ndot.fx['1']       = 0       ;

theta.fx['%N%']     = theta_N;
thetadot2.fx['%N%'] = 0      ;
thetadot.fx['%N%']  = 0      ;

l.fx['%N%']         = l_N    ;
ldot.fx['%N%']      = 0      ;
ldot2.fx['%N%']     = 0      ;

n.fx['%N%']         = n_N    ;
ndot.fx['%N%']      = 0      ;
ndot2.fx['%N%']     = 0      ;


Model ex3_5_1 /all/;
Solve ex3_5_1 using nlp minimize J_obj ;
