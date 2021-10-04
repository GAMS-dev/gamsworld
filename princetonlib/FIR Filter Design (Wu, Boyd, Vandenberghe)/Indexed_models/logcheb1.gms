* This is the problem described in Section 5
* of
* "FIR Filter Design via Spectral Factorization and Convex Optimization"
* S.P. Wu, S. Boyd, and L. Vandenberghe

$Set n_small 50
$Set n_big   300

Set i /0*%n_small%/;
Set j /0*%n_big%/;
Set inside(i) /1*49/;
parameter pi      ;         pi      = 4*arctan(1) ;
parameter step    ;           step  =pi/%n_big%   ;

Set  omega_a(j) /0*3      /;
Set  omega_p(j) /4*%n_big%/;
Set  omega_1(j) /%n_big%  /;
Set  omega(j)  ;             omega(j) = omega_a(j)+omega_p(j)+omega_1(j);

Parameter new[j];  new[j]=(ord(j)-1)*step ;
                   new['4']=new['3']      ;

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


R_big.lo[j]$omega_p(j) =  1/(new[j])-0.001  ;
alpha.l = 1;

model logcheb /all/;
solve logcheb using nlp minimaze ripple;

parameter a(j),b(j);
a(j)$omega_p(j)=sqr(alpha.l)/((ord(j)-1)*step)  ;
b(j)$omega_p(j)=1/((ord(j)-1)*step)-0.000001  ;

file demo /logcheb.txt/;
put demo;
put "logcheb.gms/fir_filter_design  model  output ";       put /;
put "obj function ripple  =     ";   put ripple.l:20:10,   put /;
put "variable     alpha   =     ";   put alpha.l:20:10,    put /;
put "--------------------------------"; put /;
put " Item i     r_small[i]          "; put /;
put "--------------------------------"; put /;
loop(i , put "  ", put i.tl:5 put  r_small.l[i]:15:8 put /; );
put "--------------------------------------------------------------------"; put /;
put " Item j      R_big.lo_limit            R_big[j]      R_big.up_limit";  put /;
put "--------------------------------------------------------------------"; put /;
loop(j , put "  ", put j.tl:5
                               put  b[j]:20:8
                               put  R_big.l[j]:20:8
                               put  a[j]:20:8
         put /; );
