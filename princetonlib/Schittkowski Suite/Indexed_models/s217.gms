* Shitkovski AMPL model  (translation to GAMS)
$Set N 2
Set I /1,%N%/;

Variable X[I] ,
         f    ;

Equation Eq_1,Eq_2,Def_obj;

Eq_1..    1+x['1']-2*x['2']         =g=  0        ;
Eq_2..    sqr(x['1'])+sqr(x['2'])-1 =e=  0        ;
Def_obj..                         f =e= -x['2']   ;

x.lo['1'] =  0  ;
x.l['1']  =  10 ;
x.l['2']  =  10 ;

Model s217 /all/;

Solve s217 using nlp minimize f;

display x.l;
display f.l;
