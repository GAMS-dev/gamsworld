* This version is correct!
* length 19 (-9,...,9) linear phase FIR filter

$Set N_big 300
$Set n_small 9

parameter pi        ;  pi        = 4*arctan(1);
parameter step      ;  step      = 1/%N_big%  ;
parameter epsilon   ;  epsilon   = 1.37e-6    ;

Set k /0*%n_small%/;
Set k_inside(k) /1*%n_small%/;
Set NU /0*%N_big%/;
Set NU_all(NU) /0*%N_big%/;



Set NU_S(NU) ;
parameter lo_lim,up_lim       ;
lo_lim=ceil(card(nu)*0.30)-1  ;
up_lim=ceil(card(nu)*0.70)+1  ;
loop(nu$((ord(nu)>lo_lim) and (ord(nu)<up_lim)),NU_S(nu)=YES);

Set NU_P(NU) ;
lo_lim=ceil(card(nu)*0.20)+1  ;
up_lim=ceil(card(nu)*0.80)-1  ;
loop(nu$(ord(nu)<lo_lim),NU_P(nu)=YES);
loop(nu$(ord(nu)>up_lim),NU_P(nu)=YES);


positive variable
 rho;

variable
    h_real[k],
    h_imag[k],
    power_bnd,
    h(nu);

Equation         pass_band, stop_band,
                 defobj,
                 additional[nu];

                 additional[nu]..


 h[nu] =e=
    h_real['0']+2*sum{k$(k_inside(k)),(
     h_real[k]*cos(-2*pi*(ord(k)-1)*
     (ord(nu)-1)*step)
   -h_imag[k]*sin(-2*pi*(ord(k)-1)*
    (ord(nu)-1)*step)
    )  } ;

defobj..  power_bnd =e= rho;

pass_band.. sqrt(sum{nu$NU_P(nu),sqr(H[nu]-1)}) =l= sqrt(0.4*%n_big%)*rho;
stop_band.. sqrt(sum{nu$NU_S(nu),sqr(H[nu])})   =l= sqrt(0.4*%n_big%*epsilon);

h_real.l['0'] = 2;

model coleman_2 /all/;
solve coleman_2 using nlp minimize power_bnd;
display power_bnd.l;
