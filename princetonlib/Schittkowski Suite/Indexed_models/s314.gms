* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 2
Set I /1*%N%/;

Variable g,h,X[I],f;

Equation Eq_1,Eq_2,Def_obj;

Eq_1..     g =e= -sqr(x['1'])/4 - sqr(x['2']) +1;
Eq_2..     h =e=      x['1']    - 2*  x['2']  +1;
*Def_obj..  f =e= sqr(x['1']-2)+sqr(x['2']-1)+0.04/g+sqr(h)/0.2;
Def_obj..   f =e= sqr(x['1']-2)+sqr(x['2']-1)+0.04/(g+0.0001)+sqr(h)/0.2;


x.l['1']  =   2  ;
x.l['2']  =   2  ;
g.up      =-0.5  ;

Model s314 /all/;

Solve s314 using nlp minimize f;

display x.l;
display f.l;
