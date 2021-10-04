* Objective: linear
* Constraints: convex quadratic
* Feasible set: convex

*---------------------------------------------------------------
* This is the linear array beam pattern problem described in:
*     H. Lebret and S. Boyd, "Antenna Array Pattern Synthesis via
*     Convex Optimization", IEEE Trans on Signal Processing, 45,
*     526-532, 1997.
*---------------------------------------------------------------

*let theta0 := 6.5;
*let {theta in DEGS0 union DEGS3} up_bnd[theta] := 10^(-27.3/20);
*let n := 24;


parameter  pi    ; pi      = 4*arctan(1) ;
parameter rpd    ; rpd     = 2*pi/360    ;

*                  lambda IS wavelength
parameter lambda ; lambda  = 2           ;
parameter spacing; spacing = 0.56*lambda ;

Set I        /0*160/;
Set k        /1*24 /;
Set DEGS(I)  /0*160/;

Set DEGS0(I)      - sidelobe      /0*32   /      ;
Set DEGS1(I)      - min lobe      /33*40     /      ;
Set DEGS2(I)      - mainlobe      /41*95     /      ;
Set DEGS3(I)      - sidelobe   := /96*160   /      ;
Set DEGS023(I);  DEGS023(I) = DEGS0(I) + DEGS2(I) + DEGS3(I);
Set DEGS_QUAL(I) /60,70,80,92/;

Set theta0(I) /53/;

parameter y[k]; y[k] = (ord(k)-1)*spacing;

parameter w0_real[k] / 1 -0.0238  , 2 -0.0894  , 3 -0.148   , 4 -0.1     ,
                       5 -0.0943  , 6 -0.219   , 7 -0.3589  , 8 -0.205   ,
                       9  0.307   ,10  0.831   ,11  0.952   ,12  0.660   ,
                      13  0.276   ,14  0.0815  ,15  0.0356  ,16 -0.0442  ,
                      17 -0.163   ,18 -0.202   ,19 -0.148   ,20 -0.0885  ,
                      21 -0.075   ,22 -0.0911  ,23 -0.0518  ,24 -0.0191   /;

parameter w0_imag[k] / 1  -0.0275 , 2  -0.0251 , 3   0.039  , 4   0.092  ,
                       5   0.0643 , 6   0.0671 , 7   0.0299 , 8   0.685  ,
                       9   0.86   ,10   0.556  ,11  -0.341  ,12  -0.459  ,
                      13  -0.524  ,14  -0.406  ,15  -0.339  ,16  -0.332  ,
                      17  -0.27   ,18  -0.132  ,19  -0.0294 ,20  -0.0197 ,
                      21  -0.0314 ,22  -0.0027 ,23   0.0256 ,24   0.0303  /;

parameter new[i]; new[i] = (ord(i)-41)/2 ;

parameter G0_real[i];
G0_real[i]
     = sum{k, (
        w0_real[k] * cos(2*pi*y[k]*sin(rpd*new[i])/lambda)
        -
        w0_imag[k] * sin(2*pi*y[k]*sin(rpd*new[i])/lambda)
      )
      };

parameter G0_imag[i];
G0_imag[i]
    = sum{k,(
        w0_real[k] * sin(2*pi*y[k]*sin(rpd*new[i])/lambda)
        +
        w0_imag[k] * cos(2*pi*y[k]*sin(rpd*new[i])/lambda)
      )
      };

parameter maxG0;
parameter up_bnd(I);

up_bnd[i]$((DEGS0(I))or(DEGS3(I))) =  exp{(-27.3/20)*log(10)} ;
up_bnd[i]$DEGS2(I) = sqrt(sqr(G0_real[i]) + sqr(G0_imag[i]))  ;

maxG0=1;
Loop{i$DEGS2(I), maxG0 = max(up_bnd[i],maxG0);};

up_bnd[i]$DEGS2(I) = 1.01*up_bnd[i]/maxG0;

G0_real[i] = G0_real[i]/maxG0;
G0_imag[i] = G0_imag[i]/maxG0;

maxG0=0.00;

Loop{i$DEGS2(I), maxG0 = max(up_bnd[i],maxG0);};
w0_real[k] = w0_real[k]/maxG0;
w0_imag[k] = w0_imag[k]/maxG0;

Variable
    w_real[k] ,
    w_imag[k] ,
    G_real[i] ,
    G_imag[i] ,
    t         ,
    b_pattern ;
Equation
    eq_G_real[i],
    eq_G_imag[i],
    qual_real[i],
    qual_imag[i],
    t_bnds(i)   ,
    G_bnds(i)   ,
    defobj      ;

*---------------------------------------------------------------
* Note: sin(theta) is used instead of cos(theta) because antenna
* is taken to lie on the imaginary axis
*---------------------------------------------------------------
eq_G_real[i]..

    G_real[i] =e=
      SUM{k,(
        w_real[k] * cos(2*pi*y[k]*sin(rpd*new[i])/lambda)
        -
        w_imag[k] * sin(2*pi*y[k]*sin(rpd*new[i])/lambda)
            )
      };
eq_G_imag[i]..

    G_imag[i] =e=
      SUM{k, (
        w_real[k] * sin(2*pi*y[k]*sin(rpd*new[i])/lambda)
        +
        w_imag[k] * cos(2*pi*y[k]*sin(rpd*new[i])/lambda)
             )
         };

defobj.. b_pattern =e=  100*t ;

t_bnds(i)$DEGS1(i)..
    sqrt(0.0001+sqr(G_real[i]) + sqr(G_imag[i])) =l= t;

G_bnds(i)$({DEGS023(i)}and{not DEGS_QUAL(i)})..

 ( sqr(G_real[i])+sqr(G_imag[i]))/sqr(up_bnd[i]) =l= 1;

qual_real[i]$DEGS_QUAL(I)..     G_real[i] =e=  G0_real[i]        ;
qual_imag[i]$DEGS_QUAL(I)..     G_imag[i] =e=  G0_imag[i]        ;


G_real.fx[i]$theta0(I) = G0_real[i];
G_imag.fx[i]$theta0(I) = G0_imag[i];

G_real.l[i]=1;
G_imag.l[i]=1;
w_real.l[k] = w0_real[k]/2;
w_imag.l[k] = w0_imag[k]/2;
t.l=1;

Model antenna2 /all/;
Solve antenna2 using nlp minimaze b_pattern;

display b_pattern.l ;