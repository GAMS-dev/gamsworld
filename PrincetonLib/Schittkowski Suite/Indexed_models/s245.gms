* Shitkovski AMPL model  (translation to GAMS)
$Set N 3
Set I /1*%N%/;
$Set M 10
Set J /1*%M%/;
Parameter y[j]; y[j] = ord(j) ;

Variable     x[I], f    ;

Equation Def_obj;

Def_obj..  f =e=  (sum {j,(sqr(exp(-y[j]*x['1']/10)-exp(-y[j]*x['2']/10)
                               -x['3']*(exp(-y[j]/10)-exp(-y[j])))
                  )    }  ) ;
x.l['1'] =  0  ;
x.l['2'] = 10  ;
x.l['3'] = 20  ;
x.up[i]=20;
Model s245 /all/;

Solve s245 using nlp minimize f;

display x.l;
display f.l;
