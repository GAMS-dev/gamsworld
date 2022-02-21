*******************************************************
*   Xpress-SP Example
*   ======================
*   ``````````````````
*   FILE: ATO.mos
*
*   DESCRIPTION: Stochastic 2-stage linear model
*
*   TYPE: Supply Chain: Assemble to order (ATO) system
*
*        We study a simple yet well-known ATO system which is comprised
*   of a set of components and products. Each product is manufactured
*   by assembling a subset of available components.
*
*        The demand of products is random, and the inventory level of the
*   components must be such that the expected total cost is minimized.
*   The total cost consists of inventory holding costs and penalties
*   for lost sales of products.
*
*   MODEL:
*        Parameters:
*                m: total number of components (indexed by i )
*                n: total number of products (indexed by j )
*                A(i,j): number of units of component i required to make one unit of product j
*                x0: vector of initial inventory of components
*                c: vector of unit cost of procurement of components
*                h: vector of unit cost of components
*                p: vector of unit costs for shortage of products
*        Uncertainty:
*                d(j): random demand for product j
*        Variables:
*                y: vector of inventory position of components
*                z: vector of amount of product produced from the components
*                x: vector of excess of components left in the inventory after the demands are met
*                w: vector of lost sales of products
*        Model:
*                minimize {c(y-x0) + E { min hx+pw : Az+x=y, z+w=d,x,z,w>=0} : y>=x0}
*
*
*   FURTHER INFO:
*   see Xpress-SP guide
*
*   see A. Dormer, A. Vazacopoulos, N. Verma, H. Tipi – “Modeling & Solving
*   Stochastic Programming Problems in Supply Chain Management using Xpress-SP”,
*   “Supply Chain Optimization”, Editors: Joseph Geunes and Panos Pardalos
*
*   see Jing-Sheng Song, Paul Zipkin, “Supply Chain Operations:
*   Assemble-to-Order Systems”, Forthcoming in Handbooks in Operations Research
*   and Management Science, Vol. XXX: Supply Chain Management,
*   T. de Kok and S. Graves (eds.), North-Holland.
*
*   DATE: Oct 2006
*
*   (c) 2006 Dash Associates
*       Author: Nitin Verma
*       Dash Optimization Inc, NJ
*
*******************************************************!)

* model "Assemble to order" !model name
* uses 'mmsp' !mosel model library for stochastic programming

$Set m 3
$Set n 5
$Set t 2

*set of components
Set Components /com1*com%m%/;
*set of products
Set Products   /pr1*pr%n%/;
*2-stage stochastic problem
Set Stages     /s1*s%t%/;

*procurement, holding cost
Parameter c[Components] / com1 5 , com2 5 , com3 5 / ;
Parameter h[Components] / com1 1 , com2 1 , com3 1 / ;

*penalty cost
Parameter p[Products] / pr1 20 , pr2  20 , pr3 20 , pr4 20 , pr5 20 / ;
Table A[Components,Products]
                         pr1  pr2  pr3  pr4  pr5
                 com1     1    0    1    0    0
                 com2     1    0    0    3    2
                 com3     1    3    2    1    0   ;

*random demand
Parameter d[Products] ; d[Products] = 15 ;

Positive Variable
*excess inventory, inventory position
         x[Components],
         y[Components],
*lost sales, amount produced
         w[Products],
         z[Products];
Variable
*total cost incurred
         TotCost    ;

Equation SupBal(Components) ,
         DemBal(Products)   ,
         Def_Obj            ;

*--------------------------Model formulation------------------------------
*supply balance
SupBal(Components)..
    Sum{Products, A[Components,Products]*z[Products] } +
    x[Components] =e=                                      y[Components] ;

*demand balance
DemBal(Products)..
    z[Products] + w[Products] =e= d[Products] ;

Def_Obj..
    TotCost =e= Sum{Components, (c[Components]* y[Components] +
                                 h[Components]* x[Components])  } +
                Sum{Products,    p[Products]  * w[Products]     }   ;
* XPress MP solution
* y.fx['Com1'] = 20 ;
* y.fx['Com2'] = 40 ;
* y.fx['Com3'] = 53.333333 ;

*Optimization
Model ATO /all / ;
Solve ATO using LP minimazing TotCost ;
Display TotCost.l ;

