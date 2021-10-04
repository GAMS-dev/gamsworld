* This is the problem whose solution is shown in Figure 10
* of
* "FIR Filter Design via Spectral Factorization and Convex Optimization"
* S.P. Wu, S. Boyd, and L. Vandenberghe

* In this variant we fix delta and minimize alpha

$Set n_small  12
$Set N_big   601
Set i /i0*I%n_small%/ ;
Set j /0*%n_big%/    ;
Set inside[i] /i1*i11/;
parameter pi;        pi       = 4*arctan(1) ;
parameter delta;     delta    = 0.11        ;
parameter d_over_l;  d_over_l = 0.45        ;

parameter omega_0 ; omega_0  = -2*pi*d_over_l*cos(0)    ;
parameter omega_b ; omega_b  = -2*pi*d_over_l*cos(pi/6) ;
parameter omega_e ; omega_e  = -2*pi*d_over_l*cos(pi/4) ;
parameter omega_pi; omega_pi = -2*pi*d_over_l*cos(pi)   ;
parameter step    ;  step    =    omega_pi/300.5        ;
Parameter new[j]  ;  new[j]  =  (ord(j)-1)*step - 2*pi*d_over_l ;

Set omega_P /0*41/;
Set omega_S /88*601/;

Positive Variable  R[j],
                   alpha2;

Variable
         r_real[i],
         r_imag[i],
         signal_bnd;

Equation main[j]   ,
         up_bnds[j],
         lo_bnds[j],
         defobj    ;

main[j]..   R[j]  =e= r_real['I0'] +

      2*sum{i$inside[i],(r_real[i]*cos((ord(i)-1)*new[j])
                       + r_imag[i]*sin((ord(i)-1)*new[j])  )};

up_bnds[j]$OMEGA_P[j]..  R[j]       =l= alpha2;
lo_bnds[j]$OMEGA_P[j]..  1/alpha2   =l= R[j]  ;
defobj..                 signal_bnd =e= alpha2;

R.up[j]$OMEGA_S[j] = sqr(delta)+0.001;
alpha2.l       = 0.1;
r_real.l['I0'] = 0.1;

R.lo[j] =0;

Model antenna2 /all/;
Solve antenna2 using nlp minimize signal_bnd;
