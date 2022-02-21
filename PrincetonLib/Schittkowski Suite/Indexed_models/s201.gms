* Shitkovski AMPL model  (translation to GAMS)
$Set N 2
Set I /1,%N%/;

Variable X[I] ,
         f    ;

Equation Def_obj;
Def_obj.. f =e= 4*sqr(x['1']-5)+sqr(x['2']-6);

x.l['1'] =       8;
x.l['2'] =       9;

Model s201 /all/;

Solve s201 using nlp minimaze f;

display x.l;
display f.l;

*There is only one optimum(min) in points (X['1']=5,X['2']=6)
