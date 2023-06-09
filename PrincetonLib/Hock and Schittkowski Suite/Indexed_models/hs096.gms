$Set N 6
Set i/i1*i%N%/;
Parameter u(i) / i1   0.31   ,i2   0.046  ,i3   0.068  ,
                 i4   0.042  ,i5   0.028  ,i6   0.0134 /;

Positive Variable x(i) ;
         Variable obj  ;
Equation cr1 , cr2 , cr3 , cr4 , Def_obj ;

cr1..    17.1*x['i1'] +    38.2*x['i2'] + 204.2*x['i3'] + 212.3*x['i4'] +
        623.4*x['i5'] +  1495.5*x['i6'] - 169*x['i1']*x['i3']    - 3580*x['i3']*x['i5'] -
         3810*x['i4']*x['i5'] -18500*x['i4']*x['i6']- 24300*x['i5']*x['i6'] =g=4.97;
cr2..    17.9*x['i1'] +  36.8*x['i2'] + 113.9*x['i3'] + 169.7*x['i4'] +
        337.8*x['i5'] +  1385.2*x['i6']- 139*x['i1']*x['i3']    - 2450*x['i4']*x['i5'] -
        16600*x['i4']*x['i6'] -17200*x['i5']*x['i6']=g= -1.88;
cr3..  -273.0*x['i2']                           -  70.0*x['i4'] -
        819.0*x['i5']                               + 26000.0*x['i4']*x['i5'] =g= -69.08;
cr4..   159.9*x['i1'] -   311.0*x['i2'] +   587.0*x['i4']              +
        391.0*x['i5'] +  2198.0*x['i6'] - 14000.0*x['i1']*x['i6'] =g= -118.02;

Def_obj..  obj=e=4.3*x['i1'] + 31.8*x['i2'] + 63.3*x['i3'] +
                15.8*x['i4'] + 68.5*x['i5'] +  4.7*x['i6']  ;

x.up[i] = u[i];

x.l['i1'] =    0 ;
x.l['i2'] =    0 ;
x.l['i3'] =    0 ;
x.l['i4'] =    0 ;
x.l['i5'] =    0 ;
x.l['i6'] =    0 ;

*"optimal solution as starting point ";
*x.l['i1'] = 0;
*x.l['i2'] = 0;
*x.l['i3'] = 0;
*x.l['i4'] = 0;
*x.l['i5'] = 0;
*x.l['i6'] = 0.0033233033;

Model hs096 /all/ ;
Solve hs096 using nlp minimazing obj ;
obj.l = obj.l - 0.015619514;
display obj.l;
