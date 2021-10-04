* Cute AMPL model  (translation to GAMS)
*
$Set N 3
Set i /i1*i%N%/;

Positive Variable x[i] ;
         Variable  obj ;

Equation  constr1 ,
          constr2 ,
         Def_obj  ;


constr1.. x['i2'] - exp(x['i1'])      =g= 0   ;
constr2.. x['i3'] - exp(x['i2'])      =g= 0   ;
Def_obj..  obj=e= 0.2*  x['i3'] - 0.8*x['i1'] ;

x.up['i1'] = 100 ;
x.up['i2'] = 100 ;
x.up['i3'] =  10 ;

x.l['i1'] = 0    ;
x.l['i2'] = 1.05 ;
x.l['i3'] = 2.9  ;

*printf "optimal solution as starting point \n";
*x.l['i1'] = 0.1841264879 ;
*x.l['i2'] = 1.202167873  ;
*x.l['i3'] = 3.327322322  ;

Model hs066  /all/;

Solve hs066 using nlp minimize obj;

display   x.l               ;

obj.l = obj.l - 0.5181632741;
display obj.l               ;
