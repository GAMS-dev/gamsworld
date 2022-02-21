* Cute AMPL model  (translation to GAMS)
*
$Set N 5
Set i /i1*i%N%/;

Variable x[i]  ,  obj ;

Equation constr1 ,
         constr2 ,
         constr3 ,
         Def_obj  ;

constr1..            x['i1'] + 3*x['i2']              =e=  0  ;
constr2..            x['i3'] +   x['i4'] - 2*x['i5']  =e=  0  ;
constr3..            x['i2'] -   x['i5']              =e=  0  ;
Def_obj..  obj =e=  sqr(x['i1'] -   x['i2'] ) + sqr( x['i2'] + x['i3'] - 2 ) +
                    sqr(x['i4'] -         1 ) + sqr( x['i5']           - 1 )  ;
x.lo[i] = -10 ;
x.up[i] =  10 ;

x.l['i1'] = 2;
x.l['i2'] = 2;
x.l['i3'] = 2;
x.l['i4'] = 2;
x.l['i5'] = 2;


Model hs053  /all/;

Solve hs053 using nlp minimize obj;

display   x.l               ;

obj.l = obj.l - 176/43;     ;
display obj.l               ;
