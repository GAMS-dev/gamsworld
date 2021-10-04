* Hang Glider (hang)
* Objective is to maximize the final horizotal distance a glider flies.

* Ref: "Combining Direct and Indirect Methods in Optimal Control: Range
* Maximization of a Hang Glider", R. Bulirsch, E. Nerz, H.J. Pesch,
* and O. von Stryk, in "Optimal Control: Calculus of Variations, Optimal
* Control Theory and Numerical Methods", ed. by R. Bulirsch, A. Miele, J.
* Stoer, and K.H. Well (1993) Birkhauser

* NOTES:
*    Trapezoidal Discretization
*    Uniform time step;
*    Solvers ability to converge seems highly dependent upon the intial
* guess.

$Set N 50
Set I              /i0*i%N%/;

Set INT_NODES(i) /i1*i%N%/ ;


Parameter     pi ;     pi = 4*arctan(1);
Parameter    x_0 ;    x_0 = 0;
Parameter    y_0 ;    y_0 = 1000;
Parameter   vx_0 ;   vx_0 = 13.2275675;
Parameter   vy_0 ;   vy_0 = -1.28750052;

Parameter    y_n ;    y_n = 900;
Parameter   vx_n ;   vx_n = 13.2275675;
Parameter   vy_n ;   vy_n = -1.28750052;

Parameter     uM ;     uM = 2.5;
Parameter      R ;      R = 100;
Parameter     c0 ;     c0 = 0.034;
Parameter      k ;      k = 0.069662;
Parameter      m ;      m = 100;
Parameter      S ;      S = 14;
Parameter    rho ;    rho = 1.13;
Parameter      g ;      g = 9.80665;
Parameter     t0 ;     t0 = 0;
Parameter cL_min ; cL_min = 0;
Parameter cL_max ; cL_max = 1.4;
Parameter W;  W = m*g;

Variable final_x ,
* State Variables
 x(i) ,
 y(i) ,
vx(i) ,
vy(i) ,
vx_dot[i] ,
vy_dot[i] ,
* Control and dummy time step variable
cL(i) ,
T     ;

Equation x_eqn(i)      , y_eqn(i)      , vx_eqn(i)    , vy_eqn(i) ,
         dofless1      , dofless2      ,monotone_x(i) ,
         Eq_1(i)       , Eq_2(i)       ,    Def_obj   ;

* Trapezoidal Discretization
x_eqn(i)$INT_NODES(i)..  x[i]  =e= x[i-1] +0.5*(T/%N%)*(vx[i]    +vx[i-1]);
y_eqn(i)$INT_NODES(i)..  y[i]  =e= y[i-1] +0.5*(T/%N%)*(vy[i]    +vy[i-1]);
vx_eqn(i)$INT_NODES(i).. vx[i] =e= vx[i-1]+0.5*(T/%N%)*(vx_dot[i]+vx_dot[i-1]);
vy_eqn(i)$INT_NODES(i).. vy[i] =e= vy[i-1]+0.5*(T/%N%)*(vy_dot[i]+vy_dot[i-1]);
monotone_x(i)$INT_NODES(i).. x[i] =g= x[i-1];

Eq_1(i).. vx_dot(i) =e= (-( 0.5*cL[i]*rho*S*sqrt(sqr(vx[i]) + sqr((vy[i] - (uM*(1-sqr(x[i]/R - 2.5))*exp(-sqr(x[i]/R - 2.5)))))) )*((vy[i] - (uM*(1-sqr(x[i]/R - 2.5))*exp(-sqr(x[i]/R - 2.5)))) ) -
                          ( 0.5*(c0+k*cL[i]*cL[i])*rho*S*sqrt(sqr(vx[i]) + sqr((vy[i] -(uM*(1-sqr(x[i]/R - 2.5))*exp(-sqr(x[i]/R - 2.5)))))) )*vx[i])/m;
Eq_2(i).. vy_dot(i) =e= ( ( 0.5*cL[i]*rho*S*sqrt(sqr(vx[i]) + sqr((vy[i] - (uM*(1-sqr(x[i]/R - 2.5))*exp(-sqr(x[i]/R - 2.5)))))) )*vx[i] -
                          ( 0.5*(c0+k*cL[i]*cL[i])*rho*S*sqrt(sqr(vx[i]) + sqr((vy[i] -(uM*(1-sqr(x[i]/R - 2.5))*exp(-sqr(x[i]/R - 2.5)))))) )*((vy[i] - (uM*(1-sqr(x[i]/R - 2.5))*exp(-sqr(x[i]/R - 2.5)))) ) -W)/m;

dofless1..  cL['i0'] =e= cL['i1'];
dofless2..  cL['i1'] =e= cL['i2'];

Def_obj..   final_x =e= x['i%N%'];

* Hang Glider Problem (hang)
* Data which needs to be reinitialized

cL.lo(i) = cL_min ;
cL.up(i) = cL_max ;
T.lo =  10;
T.up = 200;
vx.lo(i) = -100;
vy.lo(i) = -100;
vx.up(i) =  100;
vy.up(i) =  100;
vx_dot.lo[i] = -3 ;
vy_dot.lo[i] = -3 ;
vx_dot.up[i] =  3 ;
vy_dot.up[i] =  3 ;

* initial guess
 x.l[i] = 5000*(ord(i)-1)/%N%      ;
 y.l[i] = -100*(ord(i)-1)/%N%+1000 ;
vx.l[i] =   13.2275675             ;
vy.l[i] =   -1.28760052            ;
cL.l[i] =    0.7                   ;
T.l = 100;
* Boundary Conditions
x.fx['i0']  = x_0  ;
y.fx['i0']  = y_0  ;
vx.fx['i0'] = vx_0 ;
vy.fx['i0'] = vy_0 ;
 y.fx['i%N%'] =  y_n ;
vx.fx['i%N%'] = vx_n ;
vy.fx['i%N%'] = vy_n ;

Model hang_trap  /all/;

solve hang_trap  using nlp minimazing final_x;

display x.l, y.l, vx.l, vy.l;
display T.l;