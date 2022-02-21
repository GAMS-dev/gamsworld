* This is the problem described in Section 5
* of
* "FIR Filter Design via Spectral Factorization and Convex Optimization"
* S.P. Wu, S. Boyd, and L. Vandenberghe

$Set n_small 50
$Set n_big   300

Set i /0*%n_small%/;
Set j /0*%n_big%/;
Set inside(i) /1*49/;
parameter pi      ;   pi   = 4*arctan(1) ;
parameter step    ;   step = pi/%n_big%   ;

Set  omega_a(j) /0*3      /;
Set  omega_p(j) /3*%n_big%/;
Set  omega_1(j) /%n_big%  /;
Set  omega(j);             
     omega(j) = omega_a(j)+omega_p(j)+omega_1(j);

Parameter new[j];  new[j]=(ord(j)-1)*step ;

Positive Variable   alpha      ,
                    r_small[i] ,
                    R_big[j]   ;
Variable            ripple     ;

Equation   main[j]       ,
           ripple_up(j)  ,
           Defobj        ;

main[j]..  R_big[j] =e=  r_small['0']
                        +sum{i$inside(i),2*r_small[i]*cos((ord(i)-1)*new[j])};

Defobj..   ripple   =e=  alpha;

ripple_up(j)$omega_p(j)..  R_big[j] =l= sqr(alpha)/(new[j])  ;


R_big.lo[j]$omega_p(j) =  1/(new[j]);
alpha.l = 1;

model logcheb /all/;
solve logcheb using nlp minimize ripple;
