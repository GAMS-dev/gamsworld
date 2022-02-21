* Cute AMPL model  (translation to GAMS)
*
$Set N 7
Set i /i1*i%N%/;
parameter pi_2;  pi_2 = 2*arctan(1);
parameter a1;   a1=  sqrt( 1/4.2 ) ;
parameter b1;   b1=  sqrt( 5/7.2 ) ;
parameter c1;   c1=  sqrt( 4/7   ) ;
parameter d1;   d1=  sqrt( 2/7   ) ;

parameter a; a =pi_2-(pi_2- arctan(a1/(1-a1*a1)) ) ;
parameter b; b =pi_2-(pi_2- arctan(b1/(1-b1*b1)) ) ;
parameter c; c =pi_2-(pi_2- arctan(c1/(1-c1*c1)) ) ;
parameter d; d =pi_2-(pi_2- arctan(d1/(1-d1*d1)) ) ;

Positive Variable x[i] ;
         Variable obj  ;

Equation constr1 ,
         constr2 ,
         constr3 ,
         constr4 ,
         Def_obj  ;

constr1.. x['i1'] -4.2*sqr(sin(x['i4']))                                 =e= 0;
constr2.. x['i2'] -4.2*sqr(sin(x['i5']))                                 =e= 0;
constr3.. x['i3'] -4.2*sqr(sin(x['i6']))                                 =e= 0;
constr4.. x['i1'] +2.0*        x['i2']  +2*x['i3'] -7.2*sqr(sin(x['i7'])) =e=0;
Def_obj.. obj=e=-x['i1']*x['i2']*x['i3'] ;

x.l['i1'] = 1 ;
x.l['i2'] = 1 ;
x.l['i3'] = 1 ;
x.l['i4'] = a ;
x.l['i5'] = a ;
x.l['i6'] = a ;
x.l['i7'] = b ;

*printf "optimal solution as starting point \n";
*x.l['i1'] = 2.4       ;
*x.l['i2'] = 1.2       ;
*x.l['i3'] = 1.2       ;
*x.l['i4'] = c         ;
*x.l['i5'] = d         ;
*x.l['i6'] = d         ;
*x.l['i7'] = 3.14159/2 ;

Model hs056  /all/;

Solve hs056 using nlp minimize obj;

display   x.l         ;

obj.l = obj.l + 3.456 ;
display obj.l         ;
