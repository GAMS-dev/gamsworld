* Objective: linear
* Constraints: nonconvex quadratic equality
* Feasible set: nonconvex

$Set n 100
*    n - number of intervals in which time is discretized into ;
set i     discrete times for position      /0*%n%/          ;

parameter pi            ;   pi= 4*arctan(1) ;
parameter  T total time ;   T = 1           ;

set D /1*2/;
Alias(d,dd);

parameter G;                   G          =  1 ;
parameter  m_earth   ;         m_earth    = 10 ;
parameter  m_moon    ;         m_moon     =  1 ;
parameter  r_earth   ;         r_earth    =  2 ;
parameter  r_moon    ;         r_moon     =  1 ;
parameter  x_earth(D);         x_earth['1'] =  0 ;  x_earth['2'] = 0;
parameter  x_moon(D) ;         x_moon['1']  = 20 ;  x_moon['2']  = 0;


parameter  alpha0;
parameter  alphan;
parameter  x0(D) initial position ;
parameter  xn(D) final   position ;
parameter  v0(D) initial velocity ;
parameter  vn(D) final   velocity ;

           alpha0 = 1.5*pi ;
           alphan = pi/2   ;
           x0('1')  = x_earth['1']+r_earth*cos(alpha0) ;
           x0('2')  = x_earth['2']+r_earth*sin(alpha0) ;
           xn('1')  = x_moon['1'] +r_moon *cos(alphan) ;
           xn('2')  = x_moon['2'] +r_moon *sin(alphan) ;
           v0('1')  =  5*cos(alpha0) ;
           v0('2')  =  5*sin(alpha0) ;
           vn('1')  = -5*cos(alphan) ;
           vn('2')  = -5*sin(alphan) ;

Variable
    x(d,i)     position      ,
    v(d,i)     velocity      ,
    a(d,i)     acceleration  ,
    theta(d,i) thrust        ,
    fuelcost    fuel_cost    ;
Equation
vel_def(d,i)
force_bal(d,i)
defobj;

force_bal(d,i)$((ord(i) ne card(i)))..
%n%*(v[d,i+1] - v[d,i])/t =e=
           - G*m_earth*(x(d,i)-x_earth(d))
             /sqrt{ sum{dd,sqr[x(dd,i)-x_earth(dd)]}*
                    sum{dd,sqr[x(dd,i)-x_earth(dd)]}*
                    sum{dd,sqr[x(dd,i)-x_earth(dd)]}
   }

           - G*m_moon*(x(d,i)-x_moon(d))
             /sqrt{ sum{DD,sqr[x(dd,i) -x_moon(dd) ]}*
                    sum{DD,sqr[x(dd,i) -x_moon(dd) ]}*
                    sum{DD,sqr[x(dd,i) -x_moon(dd) ]}
  }

           + theta[d,i];

vel_def(d,i)$((ord(i) ne card(i)))..   %n%*(x[d,i+1] - x[d,i]) =e= T*v[d,i+1];
defobj..    fuelcost=e= sum{(D,I), sqr(theta[d,i])};

x.fx[d,'0']      = x0[d];
x.fx[d,'%n%']    = xn[d];

v.fx[d,'1']    = v0[d];
v.fx[d,'%n%']  = vn[d];

x.l[d,i]       = (1-(ord(i)-1)/%n%)*x0[d] + ((ord(i)-1)/%n%)*xn[d];

model moonshot2 /all/;
solve moonshot2 using nlp minimaze fuelcost;

a.l[d,i] =   %n%*(v.l[d,i+1] - v.l[d,i])/T;
file dem /output/;  put dem;
Put "fuelcost = ", fuelcost.l:20:10;  Put /;
Loop(d,
Put "points        x          v          a      theta  "; Put /;
Put "d  time     coord.     velosity   accel.   thrust "; Put /;
Put " ------------------------------------------------ "; Put /;
Loop(i,put d.tl:3 put i.tl:4
Put x.l[d,i]:11:5 Put v.l[d,i]:11:5
Put a.l[d,i]:11:5
Put theta.l[d,i]:11:5
Put /;);
Put /;);