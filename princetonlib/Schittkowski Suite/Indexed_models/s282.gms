* Shitkovski AMPL model  (translation to GAMS)
$Set N 10
Set I /1*%N%/;

Variable     X[I], f      ;

Equation Def_obj;

Def_obj..
f =e=    sqr(x['1']-1) + sqr(x['10']-1)
     +10*sum{i$(ord(I) ne card(i)),((10-ord(i))*sqr(sqr(x[i])-x[i+1]))};

x.l['1']   = -1.2;
x.l['2']   =  0  ;
x.l['3']   =  0  ;
x.l['4']   =  0  ;
x.l['5']   =  0  ;
x.l['6']   =  0  ;
x.l['7']   =  0  ;
x.l['8']   =  0  ;
x.l['9']   =  0  ;
x.l['10']  =  0  ;

Model s282 /all/;

Solve s282 using nlp minimize f;

display x.l;
display f.l;
