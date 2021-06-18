Set j / 0 * 8 /;
Set i / i0 * i4 / ;
Set k / k0 * k3 / ;

Scalar PI / 3.14159265359 / ;

Table g[i,k]
                  k0        k1        k2         k3
          i0      0.485     0.752     0.869      0.982
          i1      0.369     1.254     0.703      1.455
          i2      5.2095   10.0677   22.9274    20.2153
          i3     23.3037  101.779   111.461    191.267
          i4     28.5132  111.8467  134.3884   211.4823  ;

Variable
         x[j]    ,
         z       ;

Loop{j, x.lo[j] =  0 ;
        x.up[j] = 10 ; } ;

$macro alpha  ((1.0-x['0']*x['1'])*x['2']*(exp(x['4']*(g['i0',k]-0.001*g['i2',k]*x['6']-0.001*x['7']*g['i4',k]))-1.0) - g['i4',k] + g['i3',k]*x['1'])
$macro beta   ((1.0-x['0']*x['1'])*x['3']*(exp(x['5']*(g['i0',k]-g['i1',k]-0.001*g['i2',k]*x['6']+g['i3',k]*0.001*x['8']))-1.0)- g['i4',k]*x['0'] + g['i3',k])
$macro sumsqr sum{k,(alpha*alpha + beta*beta) } ;
$macro defobj power(x['0']*x['2'] - x['1']*x['3'],2) + sumsqr

Equation Def_Obj ;
Def_Obj.. z =e= defobj ;

model m /all/;
Solve m min z using dnlp;

$onDotL
file fx / PriceTransistor.txt /; fx.nd=12; fx.nw=22; put fx;
scalar cnt; for (cnt=1 to 100,
x.l(j) = uniform(x.lo(j), x.up(j));
z.l = defobj ;
loop(j, put x.l(j)); put z.l /);
