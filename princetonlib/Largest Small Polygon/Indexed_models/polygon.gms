* Objective: nonconvex nonlinear
* Constraints: bounds
Set  N /0*20/;
parameter pi;       pi = 4 * arctan(1);

Variable   theta[N]  ,
            area     ;

Equation
          order(N),
          max_area;

          order(N)$(ord(N) > 1 ).. theta[N] =g= theta[N-1]      ;

          max_area..                area    =e=
                                  0.5 * sum{N$(ord(N)<card(N)),
                                               sin(theta[N+1]-theta[N])  };

theta.l[n]     =     0.5   ;
theta.lo[n]    =     0     ;
theta.up[n]    =  2*pi     ;

theta.fx['0']  =     0     ;
theta.fx['20'] =  2*pi     ;


model polygon1 /all/;

solve polygon1 maximazing area using nlp;

display theta.l;
display area.l;

* simple computation of maximun area of inscribed regularity poligon
parameter square;
                  square = [card(N)-1]* sin(2*pi/[card(N)-1])/2;
display square;