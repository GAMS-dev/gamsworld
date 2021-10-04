* Optimal putting of a golf ball on a putting green
* MKS system of units

$Set n 50
$Set n1 49
Set i /i0*i%n%/;
Set Left(i)   / i0*i%n1% /;
Set Right(i) / i1*i%n1% /;

parameter   g ;   g  = 9.8;
* acc due to gravity
parameter   m ;   m  = 0.01;
* mass of a golf ball (in kilograms)
parameter  x0 ;  x0  =  1;
* coords of starting point
parameter  y0 ;  y0  =  2;
parameter  xn ;  xn  =  1;
* coords of ending point
parameter  yn ;  yn  = -2;
* number of time discretizations
parameter   mu;   mu = 0.2;

Positive Variable T ;
* total time for the putt
         Variable x(i) , y(i) , z(i) ,
                 vx(i) ,vy(i) ,vz(i) ,
                 dzdx(i)  , dzdy(i)  ,
                 ax(i) ,ay(i) ,az(i) ,
                 Nx(i) ,Ny(i) ,Nz(i) ,
                 Nmag(i)  , speed(i) ,
                 Frx(i),Fry(i),Frz(i),
                 newt_x(i),newt_y(i),
                 vx_def(i),vy_def(i),vz_def(i),
                 ax_def(i),ay_def(i),az_def(i),
                 finalspd ;

Equation
Eq_01(i) ,
Eq_02(i) ,
Eq_03(i) ,
Eq_04(i) , Eq_05(i) ,
           Eq_06(i) ,
Eq_07(i) ,
Eq_08(i) ,
Eq_09(i) ,
Eq_10(i) ,
         Eq_11(i) , Eq_12(i) , Eq_13(i) , Eq_14(i) , Eq_15(i) ,

         Eq_16(i) , Eq_17(i) , Eq_18(i) ,

Def_obj ;

Eq_01(i)..     z(i) =e= (-0.2)*arctan( x[i]) ;
Eq_02(i)..  dzdx(i) =e=  -0.2/(1+sqr(x[i]));
Eq_03(i)..    Nz(i) =e=  m*(
               g - ax[i]*dzdx[i] - ay[i]*dzdy[i] + az[i]
               )
                     /(sqr(dzdx[i]) + sqr(dzdy[i]) + 1);

Eq_04(i)..    Nx(i) =e=  -dzdx[i]*Nz[i];
Eq_05(i)..    Ny(i) =e=  -dzdy[i]*Nz[i];
Eq_06(i)..  Nmag(i) =e=  m*(
                 g - ax[i]*dzdx[i] - ay[i]*dzdy[i] + az[i]
                 )
               /sqrt(sqr(dzdx[i]) + sqr(dzdy[i]) + 1);

Eq_07(i)..         speed(i) =e=  sqrt(0.000001+sqr(vx[i]) + sqr(vy[i]) + sqr(vz[i]));
Eq_08(i)..         Frx(i)*speed[i]   =e=  -mu*Nmag[i]*vx[i];
Eq_09(i)..         Fry(i)*speed[i]   =e=  -mu*Nmag[i]*vy[i];
Eq_10(i)..         Frz(i)*speed[i]   =e=  -mu*Nmag[i]*vz[i];
Eq_11(i)..         ax(i)    =e=  (Nx[i] + Frx[i])/m;
Eq_12(i)..         ay(i)    =e=  (Ny[i] + Fry[i])/m;
Eq_13(i)$left(i)..    (vx[i+1]+vx[i])/2 =e=  (x[i+1]-x[i])*%n%/T;
Eq_14(i)$left(i)..    (vy[i+1]+vy[i])/2 =e=  (y[i+1]-y[i])*%n%/T;
Eq_15(i)$left(i)..    (vz[i+1]+vz[i])/2 =e=  (z[i+1]-z[i])*%n%/T;
Eq_16(i)$right(i)..    (ax[i]+ax[i-1])/2 =e=  (vx[i]-vx[i-1])*%n%/T;
Eq_17(i)$right(i)..    (ay[i]+ay[i-1])/2 =e=  (vy[i]-vy[i-1])*%n%/T;
Eq_18(i)$right(i)..    (az[i]+az[i-1])/2 =e=  (vz[i]-vz[i-1])*%n%/T;

Def_obj..   finalspd =e= sqr(sqr(vx['i%n%']) + sqr(vy['i%n%']) - 0.025) ;

speed.up(i) =  10.0 ;


x.lo[i]     = -0.99999 ;
x.up[i]     =  0.99999 ;
y.lo[i]     = -2.0 ;
y.up[i]     =  2.0 ;

T.lo        =  1.0 ;
T.up        =  5.0 ;
T.l         =  3.23329 ;

x.fx['i0'] = x0   ;
y.fx['i0'] = y0   ;
x.fx['i%n%'] = xn ;
y.fx['i%n%'] = yn ;
dzdy.fx(i) =0  ;



 x.l(i) = ((ord(i)-1)/%n%)*xn + (1-(ord(i)-1)/%n%)*x0 ;
 y.l(i) = ((ord(i)-1)/%n%)*yn + (1-(ord(i)-1)/%n%)*y0 ;
vx.l(i) = (xn-x0)/T.l;
vy.l(i) = (yn-y0)/T.l;

$ontext
* Solutions from AMPL task
x.fx('i1') =     0.848338  ; y.fx('i1') =   1.76398     ; z.fx('i1') =    -0.140706   ;
x.fx('i2') =     0.706268  ; y.fx('i2') =   1.53525     ; z.fx('i2') =    -0.122984   ;
x.fx('i3') =     0.574327  ; y.fx('i3') =   1.31384     ; z.fx('i3') =    -0.104266   ;
x.fx('i4') =     0.452964  ; y.fx('i4') =   1.09976     ; z.fx('i4') =    -0.0850631  ;
x.fx('i5') =     0.342503  ; y.fx('i5') =   0.893038    ; z.fx('i5') =    -0.065996   ;
x.fx('i6') =     0.24312   ; y.fx('i6') =   0.693669    ; z.fx('i6') =    -0.0476986  ;
x.fx('i7') =     0.154845  ; y.fx('i7') =   0.501674    ; z.fx('i7') =    -0.030725   ;
x.fx('i8') =     0.0775811 ; y.fx('i8') =   0.317095    ; z.fx('i8') =    -0.0154852  ;
x.fx('i9') =     0.0111285 ; y.fx('i9') =   0.139997    ; z.fx('i9') =    -0.00222561 ;
x.fx('i10') =    -0.0447928; y.fx('i10') =  -0.0295344  ; z.fx('i10') =    0.00895258 ;
x.fx('i11') =   -0.0905242 ; y.fx('i11') = -0.191403    ; z.fx('i11') =    0.0180556  ;
x.fx('i12') =    -0.126454 ; y.fx('i12') =  -0.34551    ; z.fx('i12') =    0.0251572  ;
x.fx('i13') =    -0.153004 ; y.fx('i13') =  -0.491762   ; z.fx('i13') =    0.0303653  ;
x.fx('i14') =    -0.170624 ; y.fx('i14') =  -0.630077   ; z.fx('i14') =    0.0337994  ;
x.fx('i15') =    -0.179786 ; y.fx('i15') =  -0.760396   ; z.fx('i15') =    0.0355771  ;
x.fx('i16') =    -0.180978 ; y.fx('i16') =  -0.882683   ; z.fx('i16') =    0.0358079  ;
x.fx('i17') =    -0.174706 ; y.fx('i17') =  -0.996934   ; z.fx('i17') =    0.034592   ;
x.fx('i18') =    -0.161491 ; y.fx('i18') =  -1.10319    ; z.fx('i18') =    0.0320218  ;
x.fx('i19') =    -0.141873 ; y.fx('i19') =  -1.20151    ; z.fx('i19') =    0.0281865  ;
x.fx('i20') =    -0.116402 ; y.fx('i20') =  -1.29205    ; z.fx('i20') =    0.0231761  ;
x.fx('i21') =    -0.0856423; y.fx('i21') =  -1.37498    ; z.fx('i21') =    0.0170868  ;
x.fx('i22') =    -0.050164 ; y.fx('i22') =  -1.45054    ; z.fx('i22') =    0.0100244  ;
x.fx('i23') =    -0.0105394; y.fx('i23') =  -1.51903    ; z.fx('i23') =    0.0021078  ;
x.fx('i24') =     0.0326648; y.fx('i24') =  -1.58079    ; z.fx('i24') =   -0.00653065 ;
x.fx('i25') =     0.0788937; y.fx('i25') =  -1.63623    ; z.fx('i25') =   -0.0157461  ;
x.fx('i26') =     0.127609 ; y.fx('i26') =  -1.68577    ; z.fx('i26') =   -0.0253845  ;
x.fx('i27') =     0.17829  ; y.fx('i27') =  -1.72985    ; z.fx('i27') =   -0.0352873  ;
x.fx('i28') =     0.230441 ; y.fx('i28') =  -1.76892    ; z.fx('i28') =   -0.0452974  ;
x.fx('i29') =     0.28358  ; y.fx('i29') =  -1.80342    ; z.fx('i29') =   -0.0552651  ;
x.fx('i30') =     0.337249 ; y.fx('i30') =  -1.83377    ; z.fx('i30') =   -0.065054   ;
x.fx('i31') =     0.391004 ; y.fx('i31') =  -1.86036    ; z.fx('i31') =   -0.0745454  ;
x.fx('i32') =     0.444422 ; y.fx('i32') =  -1.88358    ; z.fx('i32') =   -0.083641   ;
x.fx('i33') =     0.497096 ; y.fx('i33') =  -1.90375    ; z.fx('i33') =   -0.0922643  ;
x.fx('i34') =     0.548641 ; y.fx('i34') =  -1.92119    ; z.fx('i34') =   -0.10036    ;
x.fx('i35') =     0.598695 ; y.fx('i35') =  -1.93618    ; z.fx('i35') =   -0.107892   ;
x.fx('i36') =     0.646917 ; y.fx('i36') =  -1.94897    ; z.fx('i36') =   -0.114841   ;
x.fx('i37') =     0.692993 ; y.fx('i37') =  -1.9598     ; z.fx('i37') =   -0.121202   ;
x.fx('i38') =     0.736635 ; y.fx('i38') =  -1.96888    ; z.fx('i38') =   -0.126979   ;
x.fx('i39') =     0.77758  ; y.fx('i39') =  -1.97641    ; z.fx('i39') =   -0.132184   ;
x.fx('i40') =     0.815591 ; y.fx('i40') =  -1.98256    ; z.fx('i40') =   -0.136835   ;
x.fx('i41') =     0.850459 ; y.fx('i41') =  -1.9875     ; z.fx('i41') =   -0.140952   ;
x.fx('i42') =     0.881996 ; y.fx('i42') =  -1.99138    ; z.fx('i42') =   -0.144556   ;
x.fx('i43') =     0.910039 ; y.fx('i43') =  -1.99434    ; z.fx('i43') =   -0.147667   ;
x.fx('i44') =     0.93445  ; y.fx('i44') =  -1.99652    ; z.fx('i44') =   -0.150305   ;
x.fx('i45') =     0.955109 ; y.fx('i45') =  -1.99804    ; z.fx('i45') =   -0.152488   ;
x.fx('i46') =     0.971919 ; y.fx('i46') =  -1.99903    ; z.fx('i46') =   -0.154232   ;
x.fx('i47') =     0.984802 ; y.fx('i47') =  -1.99961    ; z.fx('i47') =   -0.155548   ;
x.fx('i48') =     0.9937   ; y.fx('i48') =  -1.99989    ; z.fx('i48') =   -0.156448   ;
x.fx('i49') =     0.998573 ; y.fx('i49') =  -1.99999    ; z.fx('i49') =   -0.156937   ;

$offtext

Model putt_trap /all/;

Solve putt_trap using nlp minimazing finalspd ;

display x.l,y.l,z.l,speed.l;

display T.l;