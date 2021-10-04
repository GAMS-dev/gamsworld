*model "Polygon2"
* uses "mmxslp"

$Set N 5

Set I / i1*i%N% / ;
Alias(I,J);
Scalar M_PI /3.14 /;

Variable  rho[I]     ,
          theta[I]   ,
          area       ;

Equation Eq_1(I)   ,
         Eq_2(I,J) ,
         Def_Obj   ;

* Vertices in increasing order
Eq_1(I)$((ord(I) gt 1) and (ord(I) lt card(I)))..
       theta[I] =g= theta[I-1] +0.01 ;

* Third side of all triangles <= 1
Eq_2(I,J)$((ord(I) lt card(I)-2) and
           (ord(J) gt ord(I)+1 ) and (ord(J) lt card(I)))..
           rho[I]*rho[I] + rho[J]*rho[J] -
           rho[I]*rho[J]*2*cos(theta[J]  -
                               theta[I])   =l= 1 ;

* Objective - sum of areas
Def_Obj..
       area =e=  0.5*rho['i1']*rho['i2']*sin(theta['i2']-theta['i1']) +

                 0.5*rho['i2']*rho['i3']*sin(theta['i3']-theta['i2']) +

                 0.5*rho['i3']*rho['i4']*sin(theta['i4']-theta['i3'])

  ;

* Boundary conditions
theta.up[I]$(ord(I) eq card(I)-1) = M_PI ;
* Initialisation of SLP variables, plus bounds
rho.lo[I]$(ord(I) lt card(I)) = 0.1 ;
rho.up[I]$(ord(I) lt card(I)) = 1.0 ;

Model Polygon2 /all / ;
Solve Polygon2 using nlp maximazing area ;
Display area.l ;