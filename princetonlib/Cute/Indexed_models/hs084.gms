* Cute AMPL model  (translation to GAMS)
*
$Set N 5
Set i /i1*i%N%/;
$Set M 21
Set j /j1*j%M%/;

parameter l(i) /i1   0   ,i2   1.2 , i3  20   , i4   9   , i5   6.5 /;
parameter u(i) /i1  1000 ,i2   2.4 , i3  60   , i4   9.3 , i5   7   /;

parameter a(j) /j1  -24345         , j2 -8720288.849     , j3  150512.5253   ,
                j4    -156.6950325 , j5   476470.3222    , j6  729482.8271   ,
                j7 -145421.402     , j8     2931.1506    , j9     -40.427932 ,
               j10    5106.192     ,j11    15711.36      ,j12 -155011.1084   ,
               j13    4360.53352   ,j14       12.9492344 ,j15   10236.884    ,
               j16   13176.786     ,j17  -326669.5104    ,j18    7390.68412  ,
               j19     -27.8986976 ,j20    16643.076     ,j21   30988.146    /;

Variable x[i]  ,  obj ;

Equation constr1a ,
         constr1b ,
         constr2a ,
         constr2b ,
         constr3a ,
         constr3b ,
         Def_obj   ;


constr1a.. 0 =l= a['j7'] *x['i1'] + a['j8'] *x['i1']*x['i2'] +
                 a['j9'] *x['i1']*x['i3'] + a['j10']*x['i1']*x['i4']+
                 a['j11']*x['i1']*x['i5'];

constr1b..       a['j7'] *x['i1'] + a['j8'] *x['i1']*x['i2'] +
                 a['j9'] *x['i1']*x['i3'] + a['j10']*x['i1']*x['i4']+
                 a['j11']*x['i1']*x['i5']    =l= 294000;

constr2a.. 0 =l= a['j12']*x['i1'] + a['j13']*x['i1']*x['i2'] +
                 a['j14']*x['i1']*x['i3'] + a['j15']*x['i1']*x['i4']+
                 a['j16']*x['i1']*x['i5'];

constr2b..       a['j12']*x['i1'] + a['j13']*x['i1']*x['i2'] +
                 a['j14']*x['i1']*x['i3'] + a['j15']*x['i1']*x['i4']+
                 a['j16']*x['i1']*x['i5'] =l= 294000;

constr3a.. 0 =l= a['j17']*x['i1'] + a['j18']*x['i1']*x['i2'] +
                 a['j19']*x['i1']*x['i3'] + a['j20']*x['i1']*x['i4']+
                 a['j21']*x['i1']*x['i5'];

constr3b..       a['j17']*x['i1'] + a['j18']*x['i1']*x['i2'] +
                 a['j19']*x['i1']*x['i3'] + a['j20']*x['i1']*x['i4']+
                 a['j21']*x['i1']*x['i5'] =l= 277200;

Def_obj..  obj =e= -a['j1'] - a['j2']*x['i1']         -
                              a['j3']*x['i1']*x['i2'] -
                              a['j4']*x['i1']*x['i3'] -
                              a['j5']*x['i1']*x['i4'] -
                              a['j6']*x['i1']*x['i5']  ;

x.lo[i]   = l(i);  x.up[i] = u(i);

x.l['i1'] = 2.52;
x.l['i2'] = 2;
x.l['i3'] = 37.5;
x.l['i4'] = 9.25;
x.l['i5'] = 6.8;

*printf "optimal solution as starting point \n";
*x.l['i1'] = 4.53743097;
*x.l['i2'] = 2.4;
*x.l['i3'] = 37.5;
*x.l['i4'] = 9.25;
*x.l['i5'] = 6.8;


Model hs084  /all/;

Solve hs084 using nlp minimize obj;

display   x.l               ;

obj.l = obj.l  + 5280335.133;
display obj.l               ;
