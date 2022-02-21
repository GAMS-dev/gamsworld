* Shitkovski AMPL model  (translation to GAMS)
$Set N 4
Set I /1*%N%/;

Variable     X[I], f      ;

Equation Def_obj;

Def_obj..       f =e=  100  *sqr(sqr(x['1'])-x['2'])+ sqr(x['1']-1)
                      + 90  *sqr(sqr(x['3'])-x['4'])+ sqr(x['3']-1)
                      + 10.1*(   sqr(x['2'] -1     )+ sqr(x['4']-1)   )
                      + 19.8*(       x['1'] -1     )*(x['4']-1)          ;

x.lo['1'] =  0 ;
x.lo['3'] =  0 ;

x.l['1']  = -3 ;
x.l['2']  = -1 ;
x.l['3']  = -3 ;
x.l['4']  = -1 ;

Model s257 /all/;

Solve s257 using nlp minimize f;

display x.l;
display f.l;
