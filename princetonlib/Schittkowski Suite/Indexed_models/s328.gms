* Shitkovski AMPL model  (translation to GAMS)
*
$Set N 2
Set i /1*%N%/;

Variable     X[I], f      ;

Equation Def_obj;

Def_obj.. f=e= 0.1*(12+sqr(x['1'])
              +(1+sqr(x['2']))/(sqr(x['1']))
              +(sqr(x['1'])*sqr(x['2'])+100)/(power(x['1'],4)*power(x['2'],4)));

x.lo[I] =   1.0   ;
x.up[I] =   3.0   ;
x.l[I]  =   0.5   ;
Model s328 /all/;

Solve s328 using nlp minimize f;

display x.l;
display f.l;
