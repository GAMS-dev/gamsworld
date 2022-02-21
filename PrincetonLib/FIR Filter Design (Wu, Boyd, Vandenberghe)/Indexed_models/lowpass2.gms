* This is the problem whose solution is shown in Figure 2
* of
* "FIR Filter Design via Spectral Factorization and Convex Optimization"
* S.P. Wu, S. Boyd, and L. Vandenberghe

* In this variant we fix delta and minimize alpha


$Set n_small 30
$Set n_big   300
Set i /I0*I%n_small%/;
Set inside(i) /I1*I29/;

Set j /0*%n_big%/;

parameter pi      ;         pi      = 4*arctan(1)   ;
parameter step    ;         step    =  pi/%n_big%   ;

parameter delta;  delta = 0.0016;

Set  omega_p(j) /0*36 /    ;
Set  omega_s(j) /72*300/   ;

Parameter new[j]; new[j]=(ord(j)-1)*step;

Positive Variable
          alpha       ,
          R_big[j]    ;

Variable  r_small[i]  ,
          band_sgnl   ;

Equation  main[j]     ,
          ripple_00[j],
          ripple_up[j],
          ripple_lo[j],
          defobj      ;

main[j]..
R_big[j] =e= ( r_small['I0']
             +sum{i$inside(i),2*r_small[i]*cos((ord(i)-1)*new[j])} );

ripple_00[j]$omega_s(j)..  (R_big[j])             =g= 0 ;
ripple_lo[j]$omega_p(j)..  (R_big[j] - 1/alpha)   =g= 0 ;
ripple_up[j]$omega_p(j)..  (alpha -R_big[j]    )  =g= 0 ;

defobj.. band_sgnl=e= alpha;

alpha.lo = 1.00000                       ;
alpha.up = 1.20000                       ;
R_big.up[j]$omega_s(j) =    sqr(delta)+1 ;
R_big.lo[j]$omega_s(j) =    0.00000      ;
R_big.l[j] =  0.0;


model lowpass2 /all/;
solve lowpass2 using nlp minimaze band_sgnl;
