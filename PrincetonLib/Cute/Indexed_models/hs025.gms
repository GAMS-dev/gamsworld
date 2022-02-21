* Cute AMPL model  (translation to GAMS)
*
$Set N 3
Set i /i1*i%N%/;
$Set M 99
Set j /i1*i%M%/;

parameter u(j) ; u(j) = 25 + exp(log(-50*log(ord(j)/100))*(2/3));


Variable  x[i] , obj ;
Equation  Def_obj ;

Def_obj.. 
          obj=e= sum{j,
  sqr(-ord(j)/100+exp(-exp(log((u[j] - x['i2'])) *x['i3'])/x['i1']
     )               )
                    } ;

x.lo['i1'] =  0.1 ; x.up['i1'] =100.0 ;
x.lo['i2'] =  0.0 ; x.up['i2'] = 25.6 ;
x.lo['i3'] =  0.0 ; x.up['i3'] =  5.0 ;

x.l['i1'] = 100;
x.l['i2'] = 12.5;
x.l['i3'] =  3;

*printf "optimal solution as starting point \n";
*x.l['i1'] = ?
*x.l['i2'] = ?
*x.l['i3'] = ?

Model hs025  /all/;

Solve hs025 using nlp minimize obj;

display   x.l         ;

display obj.l         ;
