* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 10
Set i /1*%N%/;
$Set M 8
Set j /1*%M%/;
Parameter e[i,j],a[i];

Loop(i,  a[i]= 1 + (ord(i)-1)/3; );
Loop(i,  Loop(j, e[i,j]= 1$(ord(i) = ord(j)) + 1 ; ););


Variable   x[I],    f   ;

Equation Eq_1(j),Eq_2,Def_obj;
Eq_1(j)..   sum{i, (x[i]/e[i,j]   )} - 1 =e= 0;
Eq_2..      sum{i, (sqr(x[i])/a[i])} - 4 =e= 0;
Def_obj.. f=e=-sum{i,sqr(x[i])};

x.l[i]  =    1.0    ;

Model s375 /all/;

Solve s375 using nlp minimize f;

display x.l;
display f.l;
