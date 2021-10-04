* Cute AMPL model  (translation to GAMS)
*
$Set N 48
$Set N24 24
Set I /i1*i%N%/;
Set middle(I) /i25*i30/;
Set Left(i)  /i1*i%N24%/;
Set part_1(i) /i1*i12/;
Set part_2(i) /i13*i24,i43*i48/;
Set part_3(i) /i25*i42/;

parameter a(i) / i1 0.9 ,  i2 0.8 ,  i3 1.1 ,  i4 1.0 ,  i5 0.7 ,  i6 1.1 ,
                 i7 1.0 ,  i8 1.0 ,  i9 1.1 , i10 0.9 , i11 0.8 , i12 1.2 ,
                i13 0.9 , i14 1.2 , i15 1.2 , i16 1.0 , i17 1.0 , i18 0.9 / ;

Variable x(i) , c(i) , e , alp(i) , u(i) , f ;

Equation Eq_1(i) , Eq_2(i) , Eq_3(i) , Eq_4    , Eq_5(i)  ,
         Eq_6(i) , Eq_7(i) , Eq_8(i) , Eq_9(i) , Eq_a(i)  ,
         Eq_b(i) , cons1   , cons2   , cons3   , cons4(i) , Def_obl ;


Eq_1(i)$part_1(i)..   c(i) =e= 1 - x(i) ;
Eq_2(i)$part_2(i)..   c(i) =e= 0        ;
Eq_3(i)$part_3(i)..   c(i) =e= x(i) - 1 ;

Eq_4.. e =e= sum{i$((ord(i) ge  1)and(ord(i) le 12)),
                   10*sqr(c[i])                               }+
             sum{i$((ord(i) ge 25)and(ord(i) le 36)),
                  250*(0.1+2*c[i]*(c[i]+sqrt(0.1+sqr(c[i])))) }+
             sum{i$((ord(i) ge 37)and(ord(i) le 42)),
                  500*(0.1+2*c[i]*(c[i]+sqrt(0.1+sqr(c[i])))) }+
             sum{i$((ord(i) ge 43)and(ord(i) le 48)),
                  100*x[i]                                    } ;

Eq_5(i)$((ord(i) ge  1)and(ord(i) le 12))..

alp(i) =e=  {sqr(x[i+24])}*a[i]*2*{x[i+42]$(ord(i) lT 6)+x[i+36]$(ord(i) ge 6)}/
            (1+{x[i+42]$(ord(i) lT 6)+x[i+36]$(ord(i) ge 6)})* {x[i+12]};

Eq_6(i)$((ord(i) ge 13)and(ord(i) le 15))..

alp(i) =e= {sqr(x[i+24])} *a[i] ;

Eq_7(i)$((ord(i) ge 16)and(ord(i)  le 18))..
            alp(i) =e= { sqr(x[i+24])  } * a[i]     ;


Eq_8(i)$((ord(i) ge  1)and(ord(i) le  6)).. u(i) =e= sqr(x[i])/(x[i]+alp[i])                                         ;
Eq_9(i)$((ord(i) ge  7)and(ord(i) le 12)).. u(i) =e= sqr(x[i]+u[i-6])/(x[i]+u[i-6]+alp[i])                           ;
Eq_a(i)$((ord(i) ge 13)and(ord(i) le 15)).. u(i) =e= sqr(
             u['i7']$(ord(i)  eq 13) +
             u['i9']$(ord(i)  eq 14) +
             u['i11']$(ord(i) eq 15) +
             u['i8']$(ord(i)  eq 13) +
             u['i10']$(ord(i) eq 14) +
             u['i12']$(ord(i) eq 15)                     )
         /(  u['i7']$(ord(i)  eq 13) +
             u['i9']$(ord(i)  eq 14) +
             u['i11']$(ord(i) eq 15) +
             u['i8']$(ord(i)  eq 13) +
             u['i10']$(ord(i) eq 14) +
             u['i12']$(ord(i) eq 15)
                        + alp[i] )    ;

Eq_b(i)$((ord(i) ge 16)and(ord(i) le 18)).. u(i) =e= sqr(u[i-3])/(u[i-3]+alp[i])                                     ;

cons1..               12.0 - sum{i$(ord(i) le 12), x[i]    }   =e= 0 ;
cons2..               12.0 - sum{i$(ord(i) le 12), x[i+12] }   =e= 0 ;
cons3..                1.5 - u['i16'] - u['i17'] - u['i18']    =g= 0 ;
cons4(i)$Left(i)..    x[i] =l= 2;

Def_obl..  f=e= e/1000 ;


U.LO(I)  = 0.001;

x.lo(i) = 0.002 ;
x.l(i)  = 1.00  ;
x.l(i)$middle(i)  = 1.3  ;

Model s393 /all/;
Solve s393 using nlp minimazing f ;
Display f.l ;
