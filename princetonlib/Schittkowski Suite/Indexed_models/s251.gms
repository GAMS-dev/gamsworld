* Shitkovski AMPL model  (translation to GAMS)
$Set N 3
Set I /1*%N%/;

Variable     X[I], f      ;

Equation Eq_1,Def_obj;

Eq_1..          72-x['1']-2*x['2']-2*x['3']=g=0;
Def_obj..       f =e= -x['1']*x['2']*x['3']    ;

x.lo[I]  =   0 ;
x.up[I]  =  42 ;

x.l['1'] =  10 ;
x.l['2'] =  10 ;
x.l['3'] =  10 ;

Model s251 /all/;

Solve s251 using nlp minimize f;

display x.l;
display f.l;
