* Shitkovski AMPL model  (translation to GAMS)
$Set N 4
Set I /1*%N%/;

Variable X[I] ,
         f    ;

Equation Eq_1,Eq_2,Def_obj;

Eq_1..    x['2']-power(x['1'],3)-sqr(x['3']) =e= 0      ;
Eq_2..    sqr(x['1'])-x['2']-sqr(x['4'])     =e= 0      ;
Def_obj..                              f     =e=-x['1'] ;

x.l['1']  =  10 ;
x.l['2']  =  10 ;
x.l['3']  =  10 ;
x.l['4']  =  10 ;

Model s219 /all/;

Solve s219 using nlp minimize f;

display x.l;
display f.l;
