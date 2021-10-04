* Cute AMPL model  (translation to GAMS)
*
$Set N 6
Set i /i1*i%N%/;

parameter u(i) / i1   0.31   ,i2   0.046  ,i3   0.068  ,
                 i4   0.042  ,i5   0.028  ,i6   0.0134 /;

Positive Variable x[i];
         Variable obj ;

Equation constr1 ,
         constr2 ,
         constr3 ,
         constr4 ,
         Def_obj  ;



constr1..  17.1*x['i1']         +  38.2*x['i2']  +  204.2*x['i3'] +
          212.3*x['i4']         + 623.4*x['i5']  + 1495.5*x['i6'] -
            169*x['i1']*x['i3'] -  3580*x['i3']*x['i5'] -
           3810*x['i4']*x['i5'] - 18500*x['i4']*x['i6']-
          24300*x['i5']*x['i6'] =g= 4.97;

constr2..  17.9*x['i1'] +  36.8*x['i2'] +  113.9*x['i3'] +
          169.7*x['i4'] + 337.8*x['i5'] + 1385.2*x['i6'] -
            139*x['i1']*x['i3']  - 2450*x['i4']*x['i5']  -
          16600*x['i4']*x['i6'] - 17200*x['i5']*x['i6'] =g= -1.88;

constr3..  -273 * x['i2'] - 70  *x['i4'] -   819*x['i5'] +
            26000*x['i4']*x['i5'] =g= -29.08;

constr4.. 159.9*x['i1'] - 311 *x['i2'] +   587*x['i4'] +
          391  *x['i5'] + 2198*x['i6'] - 14000*x['i1']*x['i6'] =g= -78.02;

Def_obj..  obj=e=  4.3*x['i1'] + 31.8*x['i2'] + 63.3*x['i3'] +
                  15.8*x['i4'] + 68.5*x['i5'] +  4.7*x['i6']  ;

x.up[i]   = u[i];

x.l['i1'] = 0   ;
x.l['i2'] = 0   ;
x.l['i3'] = 0   ;
x.l['i4'] = 0   ;
x.l['i5'] = 0   ;
x.l['i6'] = 0   ;

*printf "optimal solution as starting point \n";
*x.l['i1'] = 0;
*x.l['i2'] = 0;
*x.l['i3'] = 0;
*x.l['i4'] = 0;
*x.l['i5'] = 0;
*x.l['i6'] = 0.0033233033;


Model hs095  /all/;

Solve hs095 using nlp minimize obj;

display   x.l               ;

obj.l = obj.l  - 0.015619514;
display obj.l               ;
