* This is the problem whose solution is shown in Figure 2
* of
* "FIR Filter Design via Spectral Factorization and Convex Optimization"
* S.P. Wu, S. Boyd, and L. Vandenberghe

$Set n_small 30
$Set n_big   300
*Set i /0*%n_small%/;
Set i /I0*I%n_small%/;
Set inside(i) /I1*I29/;

Set j /0*%n_big%/;

parameter pi      ;         pi      = 4*arctan(1) ;
parameter step    ;         step    =  pi/%n_big%   ;

parameter alpha;  alpha = 1.1;

Set  omega_p(j) /0*36 /    ;
Set  omega_s(j) /72*300/   ;

Parameter new[j]; new[j]=(ord(j)-1)*step;

Positive Variable
          delta       ,
          R_big[j]    ;

Variable  r_small[i]  ,
          band_sgnl   ;

Equation  main[j]     ,
          stop_bnd(j) ,
          defobj      ;

stop_bnd(j)$(omega_s(j))..     delta -1000000*R_big[j] =g= 0 ;

main[j]..
R_big[j] =e=  r_small['I0']
             +sum{i$inside(i),2*r_small[i]*cos((ord(i)-1)*new[j])};

defobj.. band_sgnl=e= delta/1000000;

R_big.lo[j]$omega_p(j) =  1/sqr(alpha);
R_big.up[j]$omega_p(j) =    sqr(alpha);

R_big.l[j] =  0.0;

model lowpass /all/;
solve lowpass using nlp minimaze band_sgnl;

file demo /lowpass.txt/;
put demo;
put "lowpass.gms/fir_filter_design  model  output ";                    put /;
put "obj function band_sgnl  =     ";   put band_sgnl.l:20:10,   put /;
put "   variable     delta   =     ";   put delta.l:20:10,   put /;
put "--------------------------------"; put /;
put " Item i     r_small[i]                   ";  put /;
put "--------------------------------"; put /;
loop(i , put "  ", put i.tl:5 put  r_small.l[i]:15:8 put /; );
put "---------------------------------"; put /;
put " number    Item j    R_big[j]          ";  put /;
put "---------------------------------"; put /;
loop(j , put "   ",put j.tl:5 , put new[j]:9:7, put "  ", put  R_big.l[j]:10:8
         put   OMEGA_S(j) put /; );
