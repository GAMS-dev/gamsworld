$Set N_big 300
$Set n_small  6
parameter pi     ;      pi = 4*arctan(1);
parameter step   ;    step =     1/%n_big%;

Set k           /0*%n_small%/    ;
Set k_inside(k) /1*%n_small%/    ;
Set NU          /0*%N_big%/      ;
Set NU_S(NU)                     ;

parameter lo_lim,up_lim       ;
lo_lim=ceil(card(nu)*0.25)-1  ;
up_lim=ceil(card(nu)*0.75)+1  ;
loop(nu$((ord(nu)>lo_lim) and (ord(nu)<up_lim)),NU_S(nu)=YES);

positive variable
    rho2;

variable
    g_real[k],
*   g_imag[k],
    power_bnd,
    G(nu);

Equation         bnd_def,
                 defobj,
                 additional[nu];

                 additional[nu]..
 G[nu] =e= g_real['0']+2*sum{k$(k_inside(k)),(
       g_real[k]*cos(2*pi*(ord(k)-1)*(ord(nu)-1)*step)
*     -g_imag[k]*sin(2*pi*(ord(k)-1)*(ord(nu)-1)*step)
                            )};

defobj..  power_bnd =e= rho2;
bnd_def.. sum{nu$NU_S(nu),G[nu]} =l= rho2;

G.lo[nu]=0;
g.fx['0'] = 1;

model coleman1lp /all/;
solve coleman1lp using lp minimize power_bnd;
display power_bnd.l;
