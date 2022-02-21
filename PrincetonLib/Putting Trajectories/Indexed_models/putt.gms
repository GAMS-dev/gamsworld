* Optimal putting of a golf ball on a putting green
* MKS system of units

$Set n 52
$Set n1 51
Set i /i0*i%n%/;
Set Left(i)   / i0*i%n1% /;
Set Inside(i) / i1*i%n1% /;

parameter  n ; n = 52   ;
* number of time discretizations
parameter   g; g = 9.8  ;
* acc due to gravity             //
parameter   m; m = 0.01 ;
* mass of a golf ball (in kilograms) //
parameter  x0; x0 =  1  ;
* coords of starting point           //
parameter  y0; y0 =  2  ;
parameter xn ; xn =  1  ;
* coords of ending point            //
parameter yn ; yn = -2  ;
parameter flatness ; flatness = 0.07 ;
* flatness of green
parameter       mu ;       mu = 0.1  ;
* coeff of friction


Positive Variable T ;
* total time for the putt

Variable x(i) , y(i) , z(i) ,
* coordinates of the trajectory
        vx(i) ,vy(i) ,vz(i) ,
        ax(i) ,ay(i) ,az(i) ,
        Nx(i) ,Ny(i) ,Nz(i) ,
        Frx(i),Fry(i),Frz(i),
        vx_avg(i),vy_avg(i),vz_avg(i)
        dzdx(i)   , dzdy(i)   ,
        d2zdx2(i) , d2zdy2(i) ,
        Nmag(i)   , speed(i)  ,
        finalspd ;
Equation Eq_01(i) , Eq_02(i) , Eq_03(i) , Eq_04(i) , Eq_05(i) ,
         Eq_06(i) , Eq_07(i) , Eq_08(i) , Eq_09(i) , Eq_10(i) ,
         Eq_11(i) , Eq_12(i) , Eq_13(i) , Eq_14(i) , Eq_15(i) ,
         Eq_16(i) , Eq_17(i) , Eq_18(i) , Eq_19(i) , Eq_20(i) ,
         Eq_21(i) , Eq_22(i) , Def_obj ;

* Here is a parabolic elevation function for the green.
* Choose either this function or the one above by uncommenting appropriately
Eq_01(i)..  z(i) =e= flatness*(sqr(x[i]) + sqr(y[i])) / 2 ;
Eq_02(i)..  dzdx(i) =e= flatness*x[i];
Eq_03(i)..  dzdy(i) =e= flatness*y[i];

* The velocity vector.  v[i] denotes the derivative at the midpoint of
* the interval i(T/n) to (i+1)(T/n).

Eq_04(i)$left(i).. vx(i) =e= (x[i+1]-x[i])*%n%/T;
Eq_05(i)$left(i).. vy(i) =e= (y[i+1]-y[i])*%n%/T;
Eq_06(i)$left(i).. vz(i) =e= (z[i+1]-z[i])*%n%/T;

* The acceleration vector.  a[i] denotes the accel at the midpoint of
* the interval (i-0.5)(T/n) to (i+0.5)(T/n), i.e. at i(T/n).

Eq_07(i)$inside(i).. ax(i) =e=  (vx[i]-vx[i-1])*%n%/T;
Eq_08(i)$inside(i).. ay(i) =e=  (vy[i]-vy[i-1])*%n%/T;
Eq_09(i)$inside(i).. az(i) =e=  (vz[i]-vz[i-1])*%n%/T;

Eq_22(i)$inside(i)..     Nz(i) =e= m*(
               g - ax[i]*dzdx[i] - ay[i]*dzdy[i] + az[i]
               )
                     /(sqr(dzdx[i]) + sqr(dzdy[i]) + 1);

Eq_10(i)$inside(i).. Nx(i)   =e= -dzdx[i]*Nz[i];
Eq_11(i)$inside(i).. Ny(i)   =e= -dzdy[i]*Nz[i];

Eq_12(i)$inside(i).. Nmag(i) =e= m*(
                 g - ax[i]*dzdx[i] - ay[i]*dzdy[i] + az[i]
                 )
                /sqrt(sqr(dzdx[i]) + sqr(dzdy[i]) + 1);

Eq_13(i)$inside(i).. vx_avg(i) =e= (vx[i]+vx[i-1])/2;
Eq_14(i)$inside(i).. vy_avg(i) =e= (vy[i]+vy[i-1])/2;
Eq_15(i)$inside(i).. vz_avg(i) =e= (vz[i]+vz[i-1])/2;
Eq_16(i)$inside(i)..speed(i)=e=sqrt(sqr(vx_avg[i])+
                                 sqr(vy_avg[i])+
                                 sqr(vz_avg[i])) ;

Eq_17(i)$inside(i).. Frx(i)*speed[i] =e= -mu*Nmag[i]*vx_avg[i];
Eq_18(i)$inside(i).. Fry(i)*speed[i] =e= -mu*Nmag[i]*vy_avg[i];
Eq_19(i)$inside(i).. Frz(i)*speed[i] =e= -mu*Nmag[i]*vz_avg[i];

Eq_20(i)$inside(i).. ax[i] =e= (Nx[i] + Frx[i])/m;
Eq_21(i)$inside(i).. ay[i] =e= (Ny[i] + Fry[i])/m;

Def_obj..  finalspd =e=  sqr(vx['i%n1%']) + sqr(vy['i%n1%']);


x.fx['i0'] = x0;
y.fx['i0'] = y0;

x.fx['i%n%'] = xn;
y.fx['i%n%'] = yn;

T.l = 5 ;

x.l[i] = ((ord(i)-1)/%n%)*xn + (1-(ord(i)-1)/%n%)*x0 ;
y.l[i] = ((ord(i)-1)/%n%)*yn + (1-(ord(i)-1)/%n%)*y0 ;

Model putt /all/;
Solve putt using nlp minimazing finalspd ;

display x.l,y.l;

display T.l;