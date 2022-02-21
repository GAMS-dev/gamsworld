* Shitkovski AMPL model  (translation to GAMS)
$Set N 3
$Set M 5
Set I /1*%N%/;
Set J /1*%M%/;

Variable     x[I], f[J], F_large ;

Equation Eq_1,Eq_2,Eq_3,Eq_4,Eq_5,Def_obj;

Eq_1..    f['1'] =e= sqr(x['1']) + sqr(x['2']) + sqr(x['3']) - 1             ;
Eq_2..    f['2'] =e= sqr(x['1']) + sqr(x['2']) + sqr(x['3']  - 2) - 1        ;
Eq_3..    f['3'] =e=     x['1']  +     x['2']  +     x['3']  - 1             ;
Eq_4..    f['4'] =e=     x['1']  +     x['2']  -     x['3']  + 1             ;
Eq_5..    f['5'] =e= power(x['1'],3)+3*sqr(x['2'])+sqr(5*x['3']-x['1']+1)-36 ;

Def_obj..  F_large =e= Sum(J,sqr(f[J]));

x.l['1'] = 0   ;
x.l['2'] = 2   ;
x.l['3'] = 0   ;

Model s241 /all/;

Solve s241 using nlp minimize F_large;

display x.l      ;
display f.l      ;
display F_large.l;
