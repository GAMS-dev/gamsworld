* Shitkovski AMPL model  (translation to GAMS)
*

$Set N 30
Set i /1*%N%/;
Alias(i,j);

Variable   x[i]
           v[i,j]
           alpha[i]
           f
;

Equation   Eq_1[i]
           Eq_2[i,j]
           Eq_3[i]
           Def_obj
;

Eq_1[i].. x[i]=e= -2.8742711*( power((ord(i)-15),3) +
                   sum{j,sqrt(ord(i)/ord(j))*(power((sin(log(sqrt(ord(i)/ord(j))))),5) +
                                    power((cos(log(sqrt(ord(i)/ord(j))))),5)
                   )               }   ) ;

Eq_2[i,j]..  v[i,j] =e= sqrt(sqr(x[i])+ord(i)/ord(j)) ;

Eq_3[i]..  alpha[i] =e= 420*x[i]+power((ord(i)-15),3)+
sum{j,(v[i,j]*(power((sin(log(v[i,j]))),5)+
               power((cos(log(v[i,j]))),5)
               ))};

Def_obj.. f=e= sum{i,alpha[i]};

v.L[i,j]=1;

Model s391 /all/;

Solve s391 using nlp minimize f;

display x.l;
display f.l;
