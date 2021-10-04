
* Objective: linear
* Constraints: convex exponential
* Feasible set: convex

* This model finds the filter weights for a finite impulse response (FIR)
* filter.
*
* Reference: "Applications of Second-Order Cone Programming",
* M.S. Lobo, L. Vandenberghe, S. Boyd, and H. Lebret, 1998

$Set n2 9
Set k /0*%n2%/;

* parameter pi;      pi = 4*arctan(1);
parameter beta;  beta = 0.01;

parameter omega_stop;  omega_stop = 2*pi/3;
parameter omega_pass;  omega_pass =   pi/2;
parameter step;        step       = pi/180;

Set omega_set /0*180/;

Set omega_set1(omega_set) /120*180/ ;
Set omega_set2(omega_set) /0*90/    ;

* must be even
parameter n; n = (%n2%+1)*2;
parameter omega(omega_set);

parameter func(omega_set);
 func(omega_set)=(ord(omega_set)-1)*pi/180;

positive variable
          u  ;

variable
          h[k],
           t  ;
equation
    so,
    additional,
    p_up_bnds[omega_set],
    p_lo_bnds[omega_set],
    s_bnds_1[omega_set] ,
    s_bnds_2[omega_set] ;

so.. exp(1 - u*t) =l= 1;

additional..   t=g=1;

p_up_bnds[omega_set]$omega_set2[omega_set]..
              2*sum{k, (h[k]*cos((ord(k)-1-(n-1)/2)*func(omega_set)))}=l=t;

p_lo_bnds[omega_set]$omega_set2[omega_set]..
              2*sum{k,(h[k]*cos((ord(k)-1-(n-1)/2)*func(omega_set)))}=g=u;

s_bnds_1[omega_set]$omega_set1[omega_set]..
              2*sum{k,(h[k]*cos((ord(k)-1-(n-1)/2)*func(omega_set)))}=g=-beta;

s_bnds_2[omega_set]$omega_set1[omega_set]..
              2*sum(k, (h[k]*cos((ord(k)-1-(n-1)/2)*func(omega_set))))=l=beta;



t.l=1;

model fir_exp /all/;
solve fir_exp using nlp minimaze t;


file demo /output/;  put demo;
Put "spread =  ";     Put t.l:11:8;  Put /;
Put "     u =  ";     Put u.l:11:8;  Put /;
Loop(k,put k.tl:3; Put h.l[k]:11:5;  Put /;);