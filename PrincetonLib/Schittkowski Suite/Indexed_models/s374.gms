* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 10
Set i /1*%N%/;
$Set M 35
Set j /1*%M%/;
Set J1(j) / 1*10/;
Set J2(j) /11*20/;
Set J3(j) /21*35/;

parameter pi; pi= 3.1415;

parameter theta[j];

theta[j] =  (pi*(ord(j)-1)*0.1/4)$J1(j)        +
            (pi*(ord(j)-11)*0.1/4)$J2(j)       +
            (pi*(1.2+(ord(j)-21)*0.2)/4)$J3(j)  ;

Variable    x[i],z[j],f   ;

Equation Eq_1[j],Eq_2[j],Eq_3[j],Eq_4[j],Def_obj;
Eq_1[j]$J1(j)..   z[j] - sqr(1-x['10'])        =g= 0;
Eq_2[j]$J2(j)..          sqr(1+x['10']) - z[j] =g= 0;
Eq_3[j]$J3(j)..          sqr(  x['10']) - z[j] =g= 0;
Eq_4[j]..
 z[j] =e= sqr(sum{i$(ord(i) ne card(i)), (x[i]*cos(ord(i)*theta[j])) })+
          sqr(sum{i$(ord(i) ne card(i)), (x[i]*sin(ord(i)*theta[j])) }) ;

Def_obj.. f=e=x['10'];

x.l[i]  = 0.1    ;

Model s374 /all/ ;
Solve s374 using nlp minimize f;

display x.l;
display f.l;
display theta;
