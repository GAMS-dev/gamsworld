* This is the problem whose solution is shown in Figure 10
* of
* "FIR Filter Design via Spectral Factorization and Convex Optimization"
* S.P. Wu, S. Boyd, and L. Vandenberghe

* In this variant we fix delta and minimize alpha
* The problem is formulated as an SOCP in the original
* complex variables w[0],...w[n-1].

$Set n_small 12
Set i /I0*I%n_small%/;
Set inside(i) /I1*I%n_small%/;

$Set n_big   601
Set j /0*%n_big%/;

parameter pi      ;        pi = 4*arctan(1) ;
parameter delta   ;  delta    = 0.11        ;
parameter d_lambda;  d_lambda = 0.45        ;

parameter omega_a; omega_a = -2*pi*d_lambda*cos(0);
parameter omega_b; omega_b = -2*pi*d_lambda*cos(pi/6);
parameter omega_c; omega_c = -2*pi*d_lambda*cos(pi/4);

parameter omega_pi; omega_pi = -2*pi*d_lambda*cos(pi);
parameter step; step = omega_pi/%N_big%;

set OMEGA_P(j) /0*41    /;
set OMEGA_S(j) /88*601  /;

Parameter new[j]; new[j]=(ord(j)-1)*step;

Positive variable
    alpha
Variable
    signal_bnd
    w_real[i]
    w_imag[i]
    H_real[j]
    H_imag[j]
         R[j]
    band_sgnl

Equation
    eq_H_real[j]
    eq_H_imag[j]
    eq_R[j]
 up_bnds[J]
 lo_bnds[J]
    defobj;

eq_H_real[j]..
             H_real[j] =e= sum{i$inside(i),( w_real[i]*cos((ord(i)-1)*new[j])
                                            +w_imag[i]*sin((ord(i)-1)*new[j]))};

eq_H_imag[j]..
             H_imag[j] =e= sum{i$inside(i),(-w_real[i]*sin((ord(i)-1)*new[j])
                                            +w_imag[i]*cos((ord(i)-1)*new[j]))};

eq_R[j]..    R[j] =e= sqr(H_real[j]) + sqr(H_imag[j]);

up_bnds[J]$OMEGA_P(j)..  R[j] =l=   sqr(alpha) ;
lo_bnds[J]$OMEGA_P(j)..  R[j] =g= 1/sqr(alpha) ;

defobj..     band_sgnl =e= alpha;


alpha.lo  =  1.0 ;
w_real.lo[i]=-1;
w_imag.lo[i]=-1;
w_real.up[i]= 1;
w_imag.up[i]= 1;
w_real.l[i]=  0.1;
w_imag.l[i]=  0.1;


R.lo[j]   =  0.0 ;
R.up[j]   =  1.1 ;
R.up[j]$omega_s(j) =  sqr(delta);

model antn2_socp /all/;
solve antn2_socp using nlp minimize band_sgnl;
