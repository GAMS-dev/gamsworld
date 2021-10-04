* This is the problem whose solution is shown in Figure 2
* of
* "FIR Filter Design via Spectral Factorization and Convex Optimization"
* S.P. Wu, S. Boyd, and L. Vandenberghe

* In this variant we fix delta and minimize alpha
* Here, the problem is formulated as an SOCP in the
* original variables h[0],...,h[n-1].

$Set n_small 30
$Set n_big   99
Set i /I0*I%n_small%/;
Set inside(i) /I1*I29/;

Set j /0*%n_big%/;

parameter pi      ;         pi      =  4*arctan(1) ;
parameter step    ;         step    =  pi/(%n_big%+1);
parameter delta   ;         delta   =  0.0024        ;

Set  omega_p(j) /0*11 /    ;
Set  omega_s(j) /24*99/    ;

Parameter new[j]; new[j]=(ord(j)-1)*step;

Positive variable alpha ;

Variable            h[i],
                    R[j],
               H_real[j],
               H_imag[j],
              signal_bnd;

Equation
     equ_H_real[j],
     equ_H_imag[j],
     equ_R[j]     ,
     lo_bnds[j]   ,
     up_bnds[j]   ,
     defobj       ;

equ_H_real[j].. H_real[j] =e=h['I0'] +sum{i$inside(i),h[i]*cos(-(ord(i)-1)*new[j])};
equ_H_imag[j].. H_imag[j] =e=         sum{i$inside(i),h[i]*sin(-(ord(i)-1)*new[j])};

equ_R[j]..                R[j] =e=  (sqr(H_real[j])+sqr(H_imag[j]));
lo_bnds[j]$omega_p(j)..   R[j] =g=  1/sqr(alpha);
up_bnds[j]$omega_p(j)..   R[j] =l=    sqr(alpha);

defobj..                  signal_bnd =e= alpha;

alpha.lo  =  1.0;
R.lo[j]= 0.0;
R.up[j]$omega_s(j) =  sqr(delta);


h.l[i]      = 0.1 ;
R.l[j]      = 1   ;
H_real.l[j] = 1   ;
H_imag.l[j] = 1   ;
alpha.l     = 1   ;

model lowpass_sp /all/;
solve lowpass_sp using nlp minimize signal_bnd;
