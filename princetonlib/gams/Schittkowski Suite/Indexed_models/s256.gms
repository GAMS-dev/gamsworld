* Shitkovski AMPL model  (translation to GAMS)
$Set N 4
Set I /1*%N%/;

Variable     X[I], f      ;

Equation Def_obj;

Def_obj..  f =e=      sqr( x['1']+10*x['2'])    + 5*  sqr( x['3']- x['4'])
                +   power((x['2']- 2*x['3']),4) +10*power((x['1']- x['4']),4);

x.l['1'] =   3 ;
x.l['2'] =  -1 ;
x.l['3'] =   0 ;
x.l['4'] =   1 ;

Model s256 /all/;

Solve s256 using nlp minimize f;

display x.l;
display f.l;
