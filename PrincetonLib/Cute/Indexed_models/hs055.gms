* Cute AMPL model  (translation to GAMS)
*
$Set N 6
Set i /i1*i%N%/;
parameter u(i); u(i) = 1.0e+18; u('i1') = 1.0; u('i4') = 1.0;

Positive Variable  x[i] ;
         Variable  obj  ;

Equation constr1 ,
         constr2 ,
         constr3 ,
         constr4 ,
         constr5 ,
         constr6 ,
         Def_obj  ;

constr1..            x['i1'] + 2*x['i2'] + 5*x['i5']   =e= 6                ;
constr2..            x['i1'] +   x['i2'] +   x['i3']   =e= 3                ;
constr3..            x['i4'] +   x['i5'] +   x['i6']   =e= 2                ;
constr4..            x['i1'] +   x['i4']               =e= 1                ;
constr5..            x['i2'] +   x['i5']               =e= 2                ;
constr6..            x['i3'] +   x['i6']               =e= 2                ;
Def_obj..    obj =e= x['i1'] + 2*x['i2'] + 4*x['i5'] + exp(x['i1']*x['i4']) ;

*x.up['i1'] = 1;
*x.up['i4'] = 1;

x.up(i) = u(i) ;

x.l['i1'] = 1  ;
x.l['i2'] = 2  ;
x.l['i3'] = 0  ;
x.l['i4'] = 0  ;
x.l['i5'] = 0  ;
x.l['i6'] = 2  ;

*printf "optimal solution as starting point \n";
*x.l['i1'] = 0   ;
*x.l['i2'] = 4/3 ;
*x.l['i3'] = 5/3 ;
*x.l['i4'] = 1   ;
*x.l['i5'] = 2/3 ;
*x.l['i6'] = 1/3 ;

Model hs055  /all/;

Solve hs055 using nlp minimize obj;

display   x.l               ;

obj.l = obj.l  - 19/3;

display obj.l               ;
