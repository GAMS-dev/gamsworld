* Cute AMPL model  (translation to GAMS)
*
$Set N 5
Set i /i1*i%N%/;

Positive Variable x[i]  ;
         Variable   obj ;

Equation
*        constr1 ,
         Def_obj  ;

Def_obj..  obj =e= 2 -  prod{i,x[i]}/120;

*constr1.. x['i1'] + 2*x['i2'] =l= 8 ;

x.up[i] = ord(i) ;
x.l[i]  =      0 ;

Model hs045  /all/;

Solve hs045 using nlp minimize obj;

display   x.l               ;

obj.l = obj.l -1            ;
display obj.l               ;
