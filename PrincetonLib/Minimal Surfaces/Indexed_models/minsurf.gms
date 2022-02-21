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

Variable z(x,y) , area ;

Equation  Def_obj ;

Def_obj..  area =e= (hx*hy/2)*sum{(x,y)$(Left_x(x) and Left_y(y)),
   (sqrt(1 + sqr((z[x+1,y]   - z[x,y])  /hy) + sqr((z[x,y+1]   -z[x,y])  /hy))+
    sqrt(1 + sqr((z[x+1,y+1] - z[x,y+1])/hx) + sqr((z[x+1,y+1] -z[x+1,y])/hx)))
                                 }                ;

  z.fx[x,'y0']   = gamma0[x];
  z.fx['x%n%',y] = gamma1[y];
  z.fx[x,'y%n%'] = gamma2[x];
  z.fx['x0',y]   = gamma3[y];

Model minsurf /all/;

Solve minsurf using nlp minimazing area ;

display gamma0,gamma1,gamma2,gamma3 ;
display z.l ;
display area.l ;
