* Cute AMPL model  (translation to GAMS)
*
* Objective: convex nonlinear
* Constraints: bounds
* Feasible set: convex
$Set n0   31
$Set n    32
Set x /x0*x%n%/;
Set y /y0*y%n%/;

Set Left_x(x) /x0*x%n0%/;
Set Left_y(y) /y0*y%n0%/;


Parameter xsize ;  xsize = 2 ;
Parameter ysize ;  ysize = 2 ;

Parameter    hx ;  hx = xsize/%n% ;
Parameter    hy ;  hy = ysize/%n% ;

Parameter gamma0(x); gamma0(x) = 1.5*(ord(x)-1)*(%n%-ord(x)+1)/sqr(%n%/2) ;
Parameter gamma1(y); gamma1(y) = 2.0*(ord(y)-1)*(%n%-ord(y)+1)/sqr(%n%/2) ;
Parameter gamma2(x); gamma2(x) = 4.0*(ord(x)-1)*(%n%-ord(x)+1)/sqr(%n%/2) ;
Parameter gamma3(y); gamma3(y) = 2.0*(ord(y)-1)*(%n%-ord(y)+1)/sqr(%n%/2) ;

Positive Variable  t1(x,y) , t2(x,y)   ;
         Variable   z(x,y) ,  area_bnd ;

Equation  t1_bound(x,y) , t2_bound(x,y) ,  Def_obj ;

t1_bound(x,y)$(Left_x(x) and Left_y(y))..
    (t1(x,y)) =g={sqr(hx*hy/2)*(1 + sqr((z[x+1,y]  - z[x,y])  /hx)+
                                    sqr((z[x,y+1]  - z[x,y])  /hy)) } ;


t2_bound(x,y)$(Left_x(x) and Left_y(y))..
    (t2(x,y)) =g={sqr(hx*hy/2)*(1+sqr((z[x+1,y+1] - z[x,y+1])/hx)+
                                  sqr((z[x+1,y+1] - z[x+1,y])/hy))  } ;

Def_obj..  area_bnd =e= sum{(x,y)$(Left_x(x) and Left_y(y)),(sqrt(t1(x,y))+sqrt(t2(x,y)))};

  z.fx[x,'y0']   = gamma0[x];
  z.fx['x%n%',y] = gamma1[y];
  z.fx[x,'y%n%'] = gamma2[x];
  z.fx['x0',y]   = gamma3[y];
  t1.up(x,y) = 4 ;
  t1.up(x,y) = 4 ;
Model ms_nonconvex /all/ ;

Solve ms_nonconvex using nlp minimazing area_bnd ;

display gamma0,gamma1,gamma2,gamma3 ;
display z.l ;
display area_bnd.l ;
