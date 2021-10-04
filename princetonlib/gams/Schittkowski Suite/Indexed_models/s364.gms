$Set N 6
Set J /j1*j%N%/;
$Set M 31
Set I /i1*i%M%/;

Parameter   xmu1 ;  xmu1 = 0.7853981633 ;
Parameter   xmu2 ;  xmu2 = 2.356194491  ;
Parameter     pi ;    pi = 3.141592654  ;
Parameter   xinc ;  xinc = 2*pi/30;
Parameter  phi[i]; phi[i]= xinc*(ord(i)-1);
Parameter  x1[i] ; x1[i] = 0.4 + sin((2*pi)*((pi-phi[i])/(2*pi)-0.16));
Parameter  y1[i] ; y1[i] = 2 + 0.9*sin(pi-phi[i]);



Variable x[j] ,    m[i] ,    l[i] ,    k[i] ,    a[i] ,
                   b[i] ,    c[i] , term[i] , coss[i] ,
                sins[i] , cosy[i] , siny[i] ,  x1a[i] ,
                 y1a[i] , f ;

Equation Eq_01[i] , Eq_02[i] , Eq_03[i] , Eq_04[i] ,
         Eq_05[i] , Eq_06[i] , Eq_07a[i], Eq_07b[i],
         Eq_08[i] , Eq_09[i] , Eq_10[i] , Eq_11[i] ,
         Eq_12[i] , Eq_13[i] , cons1    , cons2    ,
         cons3    , cons4    , Def_obj  ;

Eq_01[i]..    m[i] =e= 2*x['j1']*x['j3']*sin(phi[i]);
Eq_02[i]..    l[i] =e= 2*x['j3']*x['j4']-2*x['j1']*x['j3']*cos(phi[i]);
Eq_03[i]..    k[i] =e= x['j1']*x['j1'] - x['j2']*x['j2'] + x['j3']*x['j3'] + x['j4']*x['j4']- 2*x['j4']*x['j1']*cos(phi[i]);
Eq_04[i]..    a[i] =e= l[i]*l[i] + m[i]*m[i];
Eq_05[i]..    b[i] =e= 2*k[i]*l[i];
Eq_06[i]..    c[i] =e= k[i]*k[i] - m[i]*m[i];
Eq_07a[i]$(ord(i) le 15).. term[i] =e=     sqrt(abs(b[i]*b[i]-4*a[i]*c[i])) ;
Eq_07b[i]$(ord(i) gt 15).. term[i] =e=  -1*sqrt(abs(b[i]*b[i]-4*a[i]*c[i])) ;
Eq_08[i].. coss[i]*(2*a[i]) =e= (-b[i]+term[i]) ;
Eq_09[i].. sins[i] =e= sqrt(abs(1-coss[i]*coss[i]));
Eq_10[i].. cosy[i] =e= (x['j4']+x['j3']*coss[i]-x['j1']*cos(phi[i]))/x['j2'];
Eq_11[i].. siny[i] =e= (x['j3']*sins[i]-x['j1']*sin(phi[i]))/x['j2'];
Eq_12[i]..  x1a[i] =e= x['j1']*cos(phi[i]) + x['j5']*cosy[i] -x['j6']*siny[i];
Eq_13[i]..  y1a[i] =e= x['j1']*sin(phi[i]) + x['j5']*siny[i] +x['j6']*cosy[i];

cons1..    -x['j1'] + x['j2'] + x['j3'] - x['j4'] =g= 0;
cons2..    -x['j1'] - x['j2'] + x['j3'] + x['j4'] =g= 0;
cons3..    -x['j2']*x['j2'] - x['j3']*x['j3'] + (x['j4']-x['j1'])*(x['j4']-x['j1']) +2*x['j2']*x['j2']*cos(xmu1) =g= 0;
cons4..     x['j2']*x['j2'] + x['j3']*x['j3'] - (x['j4']+x['j1'])*(x['j4']+x['j1']) -2*x['j2']*x['j2']*cos(xmu2) =g= 0;

Def_obj..  f =e= sqrt( (sum{i,(sqr(x1a[i]-x1[i]) +sqr(y1a[i]-y1[i]))} )/31.0);


x.lo['j1'] = 0.5 ; x.up['j1'] =  3 ;
x.lo['j2'] = 1.0 ;
x.lo['j3'] = 1.0 ;
x.lo['j4'] = 2.0 ; x.up['j4'] = 10 ;




x.l['j1'] =       1.0 ;
x.l['j2'] =       4.5 ;
x.l['j3'] =       0.4 ;
x.l['j4'] =       4.5 ;
x.l['j5'] =       0.3 ;
x.l['j6'] =       0.3 ;

* AMPL solution
*x.fx['j1'] =  0.993696 ;
*x.fx['j2'] =  4.97499   ;
*x.fx['j3'] =  4.33246   ;
*x.fx['j4'] =  3.91421   ;
*x.fx['j5'] =  1.91631   ;
*x.fx['j6'] =  0.796976  ;

*         0.1
*2        4.5
*3        0.4
*4        4.5
*5        0.3
*6        0.3;






Model s364 /all/;

Solve s364 using dnlp minimazing f ;

display f.l;
display x.l;
