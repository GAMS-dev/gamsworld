* Shitkovski AMPL model  (translation to GAMS)
$Set N 2
Set i /1*%N%/;
Set j /1*3/;

parameter  c[j] /1 1.5, 2  2.25, 3 2.625 /;


Variable u[j]   ,
         x[i]   ,
         f_small;

Equation  Eq_1[j]
          Def_obj;

Eq_1[j].. u[j]    =e=c[j]-x['1']*(1-power(x['2'],ord(j)))      ;
Def_obj.. f_small =e= sqr(u['1'])+sqr(u['2'])+sqr(u['3'])      ;

x.l['1'] = 2  ;
x.l['2'] = 0.1;

Model s203 /all/;
Solve s203 using nlp minimaze f_small;
display u.l      ;
display x.l      ;
display f_small.l;
