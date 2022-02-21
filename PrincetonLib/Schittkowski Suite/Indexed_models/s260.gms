* Shitkovski AMPL model  (translation to GAMS)
$Set N 4
Set I /1*%N%/;

Variable     X[I], f      ;

Equation Def_obj;

Def_obj..
    f=e=100  *sqr( x['2']               -     sqr(x['1']) )+sqr(1-x['1'])
        +90  *sqr( x['4']               -     sqr(x['3']) )+sqr(1-x['3'])
        + 9.9*sqr((x['2']-1)+(x['4']-1))+0.2*(sqr(x['2']-1)+sqr(x['4']-1));


x.l['1']  = -3 ;
x.l['2']  = -1 ;
x.l['3']  = -3 ;
x.l['4']  = -1 ;

Model s260 /all/;

Solve s260 using nlp minimize f;

display x.l;
display f.l;
