*   A problem from economics.
*   Maximize a 2-D integral representing consumer surplus subject to
*   linear and quadratic constraints representing incentive compatibility

*   Let v( . , . ) : R^2 -> R, Omega = [a,a+1] x [a,a+1], and
*   the corners A, B, C, D be as follows:

*           (a+1,a+1)
*       A *-----* B
*         |     |
*         |     |
*       D *-----* C
*       (a,a)

*   The problem is to maximize

*      (a+1) line integral_{AB U BC} v(w)dw
*       - a line integral_{CD U DA} v(w)dw
*       - 3 volume integral_{Omega} v(w)dw

*   subject to v being symmetric (i.e., v(x,y) = v(y,x))
*              v(a,a) = 0
*              nabla_w v(w) >= 0
*              < e, nabla_w v(w) > <= 1
*        and   nabla_ww v(w) positive definite

*   this last constraint is guaranteed by ensuring that

*              d^2 v/dx^2 >= 0
*              d^2 v/dy^2 >= 0
*              ( d^2 v/dx^2 )( d^2 v/dy^2 ) >= ( d^2 v/dxdy )^2

*   Symmetry is ensured by only considering v(x,y) for x <= y

*   Here v(x,y) is the consumer surplus. that is if the consumer values good
*   1 at x pounds and good 2 at y pounds then they will have a utility
*   equivalent to v(x,y) pounds after being faced with the optimal monopoly
*   pricing strategy. (Apparently, from this we can infer what the optimal
*   pricing strategy was... ).

*   More background is available from

*   "Optimal Selling Strategies: When to haggle, when to hold firm",
*     Riley and Zeckhauser. The Quarterly Journal of Economics, 1983, and

*   "Multidimensional Incentive Compatibility and Mechanism Design",
*     McAfee and McMillan. The Journal of Economic Theory, 1988.

*   Source: John Thanassoulis <john.thanassoulis@nuffield.oxford.ac.uk>

*   AMPL model: Nick Gould

*   Standard finite-differences are used to ap[proximate derivatives, and
*   1- and 2-D trapezoidal rules to approximate integrals

$Set N  40
$Set N1 39
* N the number of grid points along the bottom row (starting from 0)

Set i / i0*i%N% /;
Alias(i,j);

Set Left_i(i)  / i0*i%N1% /;
Set Left_j(j)  / i0*i%N1% /;
Set inside_i(i)  / i1*i%N1% /;
Set inside_j(j)  / i1*i%N1% /;

Parameter a;  a = 5;
*                     the bottom left hand point of the grid
Parameter h;  h = 1/%N%;
*                     the distance between grid points


Variable d2vdxdy[i,j] , d2vdy2[i,j] , d2vdx2[i,j] , dvdx[i,j] , dvdy[i,j] , v(i,j) ,integral ;

Equation Eq_1(i,j) , Eq_2(i,j) , Eq_3(i,j) , Eq_4(i,j) ,  Eq_5(i,j) ,
         Eq_12(i,j), Eq_22(i,j),
*conv(i,j) ,
 prob(i,j) , Def_obj ;

Eq_1(i,j)$Left_i(i)..
    (dvdx[i,j]+dvdx[i+1,j])/2 =e= (v[i+1,j]-v[i,j])/h;
Eq_2(i,j)$Left_j(j)..
    (dvdy[i,j]+dvdy[i,j+1])/2 =e= (v[i,j+1]-v[i,j])/h;
Eq_3(i,j)$Left_i(i)..
    (d2vdx2[i,j]+d2vdx2[i+1,j])/2 =e= (dvdx[i+1,j]-dvdx[i,j])/h;
Eq_4(i,j)$Left_j(j)..
    (d2vdy2[i,j]+d2vdy2[i,j+1])/2 =e= (dvdy[i,j+1]-dvdy[i,j])/h;
Eq_5(i,j)$Left_j(j)..
    (d2vdxdy[i,j]+d2vdxdy[i,j+1])/2 =e= (dvdx[i,j+1]-dvdx[i,j])/h;
prob(i,j)..
     dvdx[i,j] + dvdy[i,j] =l= 1;
*conv(i,j)..
*     d2vdy2[i,j]*d2vdx2[i,j]-sqr(d2vdxdy[i,j]) =g= -10000;
Eq_12(i,j)..
     v[i,j] =e= v[j,i] ;
Eq_22(i,j)..
     dvdx[i,j]+dvdy[i,j] =l= 1 ;

Def_obj..  integral =e=-(
    (a+1)*h*(sum{j$inside_j(j), (v['i%N%',j]+v[j,'i%N%'])} +
            (1/2)*(v['i%N%','i0']+2*v['i%N%','i%N%']+v['i0','i%N%'])) -
    a*h*    (sum{j$inside_j(j), (v['i0',j]+v[j,'i0'])} +
                (h/2)*(v['i%N%','i0']+2*v['i0','i0']+v['i0','i%N%'])) -
      3*h*h*(
       sum{(i,j)$( (inside_j(j))and (inside_i(i)) ), (v[i,j]) }         +
       sum{j$inside_j(j),(v[j,'i0']+v[j,'i%N%']+v['i0',j]+v['i%N%',j])/2} +
       (v['i0','i0']   + v['i%N%','i0']   +
        v['i0','i%N%'] + v['i%N%','i%N%']) /4
            ) )  ;
dvdx.lo[i,j] = 0.000002 ;
dvdy.lo[i,j] = 0.000002 ;

v.lo[i,j]=0;

v.l[i,j]=ord(i)*0.001;

v.fx['i0','i0']=0;
option reslim = 26000;
Model n_f_trap /all/ ;

Solve n_f_trap  using nlp minimazing integral ;

integral.l= -integral.l;
display integral.l  ;
display v.l  ;
