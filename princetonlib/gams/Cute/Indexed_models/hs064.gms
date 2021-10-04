* Cute AMPL model  (translation to GAMS)
*
$Set N 3
Set i /i1*i%N%/;

Variable x[i]  ,  obj ;

Equation constr1 ,
         Def_obj  ;

constr1..    4/x['i1'] + 32/x['i2'] + 120/x['i3']                  =l= 1 ;
Def_obj..    obj =e=      5*x['i1'] + 50000/x['i1'] +    20*x['i2'] +
                      72000/x['i2'] +    10*x['i3'] +144000/x['i3']      ;

x.lo[i]    = 1.0e-5;

x.l['i1']  = 1 ;
x.l['i2']  = 1 ;
x.l['i3']  = 1 ;

*printf "optimal solution as starting point \n";
*x.l['i1']  = 108.7347175;
*x.l['i2']  =  85.12613942;
*x.l['i3']  = 204.3247078;


Model hs064  /all/;

Solve hs064 using nlp minimize obj;

display   x.l               ;

obj.l = obj.l  - 6299.842428;
display obj.l               ;
