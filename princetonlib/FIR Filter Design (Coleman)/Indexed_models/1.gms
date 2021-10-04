$Set N_big 3000
$Set n_small  3

parameter pi     ;  pi      = 4*arctan(1);
parameter step   ;  step    = 1/%n_big%    ;

Set k /0*%n_small%/;
Set k_inside(k) /1*%n_small%/ ;
Set NU         /0*%n_big%/    ;
Set NU_all(NU) /0*%n_big%/    ;
Set NU_S(NU)                  ;
parameter lo_lim,up_lim       ;
lo_lim=ceil(card(nu)*0.25)-1  ;
up_lim=ceil(card(nu)*0.75)+1  ;

loop(nu$((ord(nu)>lo_lim) and (ord(nu)<up_lim)),NU_S(nu)=YES);

positive variable
    rho       ;
variable
    h_real[k] ,
    h_imag[k] ,
    power_bnd ,
    h(nu)     ;

Equation         bnd_def       ,
                 defobj        ,
                 additional[nu];

additional[nu]..  h[nu] =e=
     h_real['0']+2*sum{k$(k_inside(k)),(
     h_real[k]*cos(-2*pi*(ord(k)-1)*(ord(nu)-1)*step)
    -h_imag[k]*sin(-2*pi*(ord(k)-1)*(ord(nu)-1)*step)
                       )};

defobj..  power_bnd =e= rho;

bnd_def.. sqrt(sum{nu$NU_S(nu),sqr(H[nu])}) =l= sqrt(%n_big%)*rho;

h.fx['0'] = 1;

model coleman_1 /all/;
solve coleman_1 using nlp minimize power_bnd;

display power_bnd.l;
