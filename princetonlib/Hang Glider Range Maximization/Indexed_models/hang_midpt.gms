* Hang Glider (hang)
* Objective is to maximize the final horizontal distance a glider flies.

* Ref: "Combining Direct and Indirect Methods in Optimal Control: Range
* Maximization of a Hang Glider", R. Bulirsch, E. Nerz, H.J. Pesch,
* and O. von Stryk, in "Optimal Control: Calculus of Variations, Optimal
* Control Theory and Numerical Methods", ed. by R. Bulirsch, A. Miele, J.
* Stoer, and K.H. Well (1993) Birkhauser

* An incorrect formulation of this problem appears, with the same name,
* in Jorge More's COPS suite of problems.

* NOTES:
*    Midpoint Discretization
*    Uniform time step;
*    Solvers ability to converge seems highly dependent upon the intial
*         guess.

$Set N 150
$Set MM 149
Set I              /i0*i%N%/;
Set VEL_NODES(I)   /i0*i%MM%/;
Set ACC_NODES(I)  /i1*i%MM%/;

Parameter      pi ;     pi = 4*arctan(1) ;
Parameter     x_0 ;    x_0 = 0           ;
Parameter     y_0 ;    y_0 = 1000        ;
Parameter    vx_0 ;   vx_0 = 13.2275675  ;
Parameter    vy_0 ;   vy_0 = -1.28750052 ;
Parameter     y_n ;    y_n = 900         ;
Parameter    vx_n ;   vx_n = 13.2275675  ;
Parameter    vy_n ;   vy_n = -1.28750052 ;
Parameter      uM ;     uM = 2.5         ;
Parameter       R ;      R = 100         ;
Parameter      c0 ;     c0 = 0.034       ;
Parameter       k ;      k = 0.069662    ;
Parameter       m ;      m = 100         ;
Parameter       S ;      S = 14          ;
Parameter     rho ;    rho = 1.13        ;
Parameter       g ;      g = 9.80665     ;
Parameter      t0 ;     t0 = 0           ;
Parameter  cL_min ; cL_min = 0           ;
Parameter  cL_max ; cL_max = 1.4         ;

Parameter       W ;      W = m*g         ;

*Parameter  step := 100/N;

Positive Variable T ;

         Variable final_x ,

* State Variables
                    x(i) , y(i) , vx(i) , vy(i) , vx_dot(i) , vy_dot(i) ,
* Control variable
                    cL(i) ,
* Dummy Variables
                    vr(i)     ;

Equation    eq_1(i)   ,
            eq_2(i)   ,
            eq_3(i)   ,
            eq_4(i)   ,

            newt_x(i) ,
            newt_y(i) ,
            Def_obj   ;


eq_1(i)$VEL_NODES(I).. vx[i]       =e= %N%*(x[i+1]-x[i])/T;
eq_2(i)$VEL_NODES(I).. vy[i]       =e= %N%*(y[i+1]-y[i])/T;
eq_3(i)$ACC_NODES(I).. vx_dot[i]   =e= %N%*(vx[i] - vx[i-1])/T;
eq_4(i)$ACC_NODES(I).. vy_dot[i]   =e= %N%*(vy[i] - vy[i-1])/T;




newt_x(i)$ACC_NODES(I).. vx_dot[i] =e= (-(0.5*cL[i]*rho*S*(sqrt{sqr((vx[i]+vx[i-1])/2)+sqr({(vy[i]+vy[i-1])/2 - (uM*(1-(sqr(x[i]/R - 2.5)))*exp(-(sqr(x[i]/R - 2.5))))})}))*({(vy[i]+vy[i-1])/2 - (uM*(1-(sqr(x[i]/R - 2.5)))*exp(-(sqr(x[i]/R - 2.5))))}) - (0.5*{c0+k*sqr(cL[i])}*rho*S*(sqrt{sqr((vx[i]+vx[i-1])/2)+sqr({(vy[i]+vy[i-1])/2 - (uM*(1-(sqr(x[i]/R - 2.5)))*exp(-(sqr(x[i]/R - 2.5))))})}))*((vx[i]+vx[i-1])/2)   ) / m ;
newt_y(i)$ACC_NODES(I).. vy_dot[i] =e= ( (0.5*cL[i]*rho*S*(sqrt{sqr((vx[i]+vx[i-1])/2)+sqr({(vy[i]+vy[i-1])/2 - (uM*(1-(sqr(x[i]/R - 2.5)))*exp(-(sqr(x[i]/R - 2.5))))})}))*((vx[i]+vx[i-1])/2) - (0.5*{c0+k*sqr(cL[i])}*rho*S*(vr[i]))*({(vy[i]+vy[i-1])/2 - (uM*(1-(sqr(x[i]/R - 2.5)))*exp(-(sqr(x[i]/R - 2.5))))}       ) -W) / m ;

Def_obj..   final_x =e= x['i%N%'];

 x.lo[i]     =  0 ;
vx_dot.lo[i] = -3 ;
vx_dot.up[i] =  3 ;
vy_dot.lo[i] = -3 ;
vy_dot.up[i] =  3 ;
cL.lo(i) = cL_min ;
cL.up(i) = cL_max ;

* Boundary Conditions
 x.fx['i0'] =  x_0 ;
 y.fx['i0'] =  y_0 ;

vx.fx['i0'] = vx_0 ;
vy.fx['i0'] = vy_0 ;

 y.fx['i%N%']  =  y_n ;
vx.fx['i%MM%'] = vx_n ;
vy.fx['i%MM%'] = vy_n ;


* Hang Glider Problem (hang)
* Data which needs to be reinitialized

* initial guess
 x.l[i] = 5000*(ord(i)-1)/%N%;
 y.l[i] = -100*(ord(i)-1)/%N%+1000;
cL.l[i]$ACC_NODES(I) = 0.7;
 T.l     = 30;
 T.up    = 200;


Model hang_midpt  /all/;

solve hang_midpt  using nlp minimazing final_x;

display x.l, y.l, vx.l, vy.l;
display T.l;