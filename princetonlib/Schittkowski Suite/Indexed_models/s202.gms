* Shitkovski AMPL model  (translation to GAMS)
$Set N 2
Set I /1,%N%/;

Variable X[I] ,
         f    ;

Equation Def_obj;
Def_obj.. f =e= sqr(-13+x['1']- 2*x['2']+5*sqr(x['2'])-power(x['2'],3))
               +sqr(-29+x['1']-14*x['2']+  sqr(x['2'])+power(x['2'],3));

x.l['1'] =     15;
x.l['2'] =     -2;

Model s202 /all/;

Solve s202 using nlp minimaze f;

display x.l;
display f.l;

*There is only one optimum(min) in points (X['1']=5,X['2']=6)
