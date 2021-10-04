* Objective:   nonconvex nonlinear
* Constraints: nonconvex nonlinear

set i      /0,1,2,3,4/;
Set Ni1(i) /1,2,3,4/;

$Set  nre  2
$Set  nde  2
$Set  nte  1
$Set  nie  4

set k  /1*%nre%/;
set Nd /1*%nde%/;
set j  /1*%nte%/;


parameter  cl[j] /1 10/;


parameter  cq[j] /1 1/;

parameter  P_lo[j] /1 100/;
parameter  P_hi[j] /1 250/;

parameter  h_hi[i] /1 75 , 2   75, 3   75, 4   75 / ;
parameter  RI[i]   /1 30 , 2   30, 3   30, 4   30 / ;
parameter  RD[i]   /1 35 , 2   35, 3   35, 4   35 / ;
parameter  L[i]    /1 280, 2  250, 3  275, 4  250 / ;

parameter  sb[k]    / 1  0.385835e+02  , 2  0.114e+02       /;
parameter  sl[k]    / 1  0.1914066e+00 , 2  0.1169998e+00   /;
parameter  sq[k]    / 1  -0.4302308e-03, 2  -0.1938173e-03  /;
parameter  sc[k]    / 1  0.4850604e-06 , 2  0.3095786e-06   /;
parameter  v0[k]    / 1  0.35e+03      , 2  0.158e+03       /;
parameter  vf[k]    / 1  0.35e+03      , 2 0.158e+03        /;
parameter  v_max[k] / 1  354           , 2  160             /;
parameter  d_max[k] / 1  5.184         , 2  3.456           /;

table  g[k,i]
                     1     2   3    4
                 1  0.2  0.2  0.2  0.2
                 2  0.2  0.2  0.2  0.2
                 ;

table  w[k,i]
                      1        2         3        4
                 1  1.296    1.296    1.296     1.296
                 2  0.0864   0.0864   0.0864   0.0864
                 ;

parameter  rI_max[j] /1 45/ ;
parameter  gI_max[j]; gI_max[j] = P_hi[j] - P_lo[j] - rI_max[j];
parameter  rD_max[j] /1 65/ ;
parameter  gD_max[j]; gD_max[j] = P_hi[j] - P_lo[j] - rD_max[j];



Positive variable  rI_small[j,i],
                   rD_small[j,i],
                   gI[j,i]      ,
                   gD[j,i]      ,
                   v[k,i]       ,
                   h[k,i]       ,
                   d[k,i]       ,
                   htot[i]      ;

Variable           t_power      ,
                   P[j,i]       ;

Equation           water_bal1[k,i],
                   water_bal2[k,i],
                   h_def[k,i]     ,
                   htot_def[i]    ,
                   therm_bal[i]   ,
                   Incr[j,i]      ,
                   Decr[j,i]      ,
                   RI_bnd[i]      ,
                   RD_bnd[i]      ,
                   defobj         ;

defobj.. t_power=e= sum(j,
                        sum{i$Ni1(i),
                             cl[j]*P[j,i]  + cq[j]*sqr(P[j,i]) -
                             cl[j]*P_lo[j] - cq[j]*sqr(P_lo[j])
                        } 
                    );

h_def[k,i]$(ord(i)>1).. h[k,i] 
                      - g[k,i]*(
                            sb[k] 
                          + sl[k]*(v[k,i-1]+v[k,i])/2 
                          + sq[k]*{(1/3)*(sqr(v[k,i]-v[k,i-1]) )} 
                          + sq[k]*v[k,i-1]*v[k,i] 
                          + sc[k]*(sqr(v[k,i-1]) 
                          + sqr(v[k,i]))*(v[k,i-1] + v[k,i])/4
                        )*d[k,i] =e=  0  ;

htot_def[i]$(ord(i)>1)..
                     htot[i] - sum{k,h[k,i]} =e=  0  ;

water_bal1[k,i]$((ord(k)=1) and (Ni1(i)))..
                     v[k,i-1]+w[k,i]-d[k,i]-v[k,i]=e= 0  ;
water_bal2[k,i]$((ord(k)=2) and (Ni1(i)))..
                     v[k,i-1]+w[k,i]-d[k,i]+d[k-1,i]-v[k,i]=e= 0  ;

Incr[j,i]$(ord(I)>1)..    
                     P_hi[j] - P[j,i] =e= rI_small[j,i] + gI[j,i];
Decr[j,i]$(ord(I)>1)..   
                    -P_lo[j] + P[j,i] =e= rD_small[j,i] + gD[j,i];

RI_bnd[i]$(ord(i)>1)..    
                     h_hi[i] - htot[i] + sum{j,(rI_small[j,i])} =g= RI[i] ;
therm_bal[i]..       htot[i] + sum{j,(P[j,i])} - L[i] =e=  0    ;
RD_bnd[i]$(ord(i)>1)..    
                     htot[i] + sum{j, (rD_small[j,i])} =g= RD[i] ;


* Boundary conditions and initial levels
d.up[k,i]            = d_max[k];
htot.up[i]           = h_hi[i] ;

P.lo[j,i]$(ord(I)>1) = P_lo[j];
P.up[j,i]$(ord(I)>1) = P_hi[j];

rI_small.up[j,i]$(ord(i)>1)= rI_max[j];
rD_small.up[j,i]$(ord(i)>1)= rD_max[j];

gI.up[j,i]  = gI_max[j];
gD.up[j,i]  = gD_max[j];

v.up[k,i]   = v_max[k];
v.fx[k,'4'] = vf[k];
v.fx[k,'0'] = v0[k];


model hydroterm /all/;
solve hydroterm using nlp minimizing t_power ;