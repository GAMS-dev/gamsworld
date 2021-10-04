*******************************************************
*   Xpress-SP Example
*   ======================
*   ``````````````````
*   FILE: OptionContract.mos
*
*   DESCRIPTION: Stochastic multi-stage linear model
*
*   TYPE: Supply Chain: Option contracts
*
*        We consider the problem of a buyer who is engaged with a supplier
*   in a contract having periodical commitment with options, for a given
*   number of stages. At the beginning of the horizon, both the parties
*   agree to a fixed amount of product that would be delivered at each
*   stage to the buyer at a specified price. The supplier has a limited
*   amount of options available for each stage, with each unit of an option
*   giving the buyer a right to purchase a unit of product. Whenever this
*   option is exercised, the product is delivered at the next stage.
*   Initially, the buyer may also buy these options for each of the stages
*   at a specified price. At each stage, the buyer creates finished goods
*   from the total amount of product available, and sells them in the market.
*   The demand of finished goods at each stage is uncertain. Hence, at each
*   stage and at a specified exercise price, the buyer may buy additional
*   product (by exercising one or more of the options bought for that stage),
*   in order to meet the demands in the following stages. The unmet demand
*   in each stage is penalized and carried over to the next stage, whereas
*   excess quantity is stored in an inventory. If there is excess inventory
*   of products left at the end of the horizon, they are sold at a salvage
*   value, otherwise the unmet demand is lost.
*
*   MODEL:
*        Decision variables:
*                Q(t): Fixed order of products decided at stage 1, and delivered at stage t in {2,..,T}
*                M(t): Number of options bought at stage 1, which may be exercised at stage t in {2,..,T-1}
*                m(t): Number of options exercised at stage t, and delivered at stage t+1, for all t in {2,..,T-1}
*        State variables:
*                I(t): Finished goods inventory at stage t in {2,..,T}
*                I(t)+: Physical finished goods inventory at stage t in {2,..,T}
*                I(t)-: Backorder of finished goods inventory at stage t in{2,..,T}
*        Uncertainty:
*                D(t): Demand of finished goods at stage t in {2,..,T}
*                It is assumed that the demand at a stage is correlated with the demand in its previous stage, therefore they:
*                • form a conditionally heteroskedastic Gaussian process
*                • are normally distributed
*                E[D(t+1) | D(t)=d(t)]= mu +sigma.eps(t+1), t=1
*                                                = mu +rho.(d(t)-mu)+sigma.sqrt(1-rho^2).eps(t+1), 1<t<=T
*                where mu and sigma are the unconditional mean and the variance of D(t) respectively,
*                and rho is the correlation coefficient between D(t) and D(t+1).
*                eps(t) is assumed to be distributed Normally with mean 0 and varinace 1.
*
*                In order to create scenario tree eps(t) is discretized into Neps(t) sample points.
*                The n-th point will have a
*                        value: x = -3+(n-0.5)*6/Neps(t) and
*                        probability: p(x)= (1/sqrt(2*PI))*exp(-1/2.x^2)*6/Neps(t)
*        Data:
*                v: Unit salvage value of finished goods (in $)
*                M: Bound on number of options that can be bought at each stage
*                o: Unit price for buying an option (in $)
*                e: Unit price of exercising an already bought option (in $)
*                r: Unit selling price of finished goods (in $)
*                p: Unit purchasing cost of a product from the supplier (in $)
*                s: Unit shortage cost for finished goods (in $)
*                h: Unit holding cost for finished goods (in $)
*        Optimization:
*                R(I+,I-): revenue= r[D(2)-(I(2)-)]+r.sum(t in 3..T) [D(t)+(I(t-1)-)-(I(t)-)]+v.(I(T)+)
*                E(I+,I-,m,Q,M) : expenses=sum(t in 1..T-1) [e.m(t)+o.M(t)]+sum(t in 1..T) [h.(I(t)+)+s.(I(t)-)+p.Q(t)]
*                max R(I+,I-) - E(I+,I-,m,Q,M)
*                s.t
*                I(t)=(I(t)+) - (I(t)-), 1<t<=T
*                I(t)=Q(t)-D(t) t=2
*                I(t)=I(t-1)+Q(t)+m(t-1)-D(t)} 2<t<=T
*                0<=m(t)<=M(t)<=M,  1<t<T
*                Q(t), I(t)+,I(t)->=0, 1<t<=T
*
*        The scenario tree may be symmetrix and exhaustive based on all Neps(t) realizations of eps(t), or
*        assymetric, that is if the probability of visiting a node in a given stage is much smaller as
*        compared to other nodes in that stage, one may curtail the number of branches emerging from
*        that node because the detailed future information collected on that node by having many branches
*        will neither be fruitful nor affect the optimality of the solution.     Therefore one may SWITCH from
*        'fine' branching to 'coarse' branching.
*
*                #branches from a node (t,n) = Nfine(t)                 if Pr{visiting node(t,n)>=SwitchLevel(t)/#Nodes(t)
*                                                                        = Ncoarse(t)    otherwise
*
*
*        We may also model the chance constraint: Pr(net inventory in last stage >=0} > 1-beta by modeling
*        z<=beta as a 'global' constraint, where z=1     if I(T)- < 0
*                                                                                        =0      otherwise
*        which is expanded as sum(s in Sceanrios) Pr(s).z(s)<=beta internally in SP
*
*
*        Finally, we may calculate CVar(alpha) for a given alpha by solving:
*                CVar(alpha)=min {S + E[max(L-S,0)]/alpha : -inf<S<+inf}
*                        where L is Loss = E(I+,I-,m,Q,M) - R(I+,I-)
*
*        Hence, in the stochastic programming context, CVaR can be calculated by introducing variables CVaR,
*        and S belonging to stage 1, and a non-negative variable z belonging to stage T.
*        z represents max(L-S,0) therefore a constraint z>=L-S must also be introduced.
*        Next, a bound c is introduced on CVaR. During minimization the term thata.CVaR
*        is added to the objective function where theta is sufficiently small, so that it does not perturb
*        the optimal solution to the original problem. The constraint S+z/apha<=CVar is added and set as ‘global’
*        implying S+1/aplha sum(s in Sceanrios) Pr(s).z(s)<=CVar
*
*
*   FURTHER INFO:
*   see Xpress-SP guide
*
*   see A. Dormer, A. Vazacopoulos, N. Verma, H. Tipi – “Modeling & Solving
*   Stochastic Programming Problems in Supply Chain Management using Xpress-SP”,
*   “Supply Chain Optimization”, Editors: Joseph Geunes and Panos Pardalos
*
*   see Ch. van Delft and J.-Ph.Vial, “A practical implementation of stochastic
*   programming: an application to the evaluation of option contracts in supply
*   chains”(http://www.unige.ch/hec/logilab/templeet/template/papiers/papier1ScVvDRev3.pdf)
*
*   DATE: Oct 2006
*
*   (c) 2006 Dash Associates
*       Author: Nitin Verma
*       Dash Optimization Inc, NJ
*
*******************************************************!)
* model 'SCM Option Contract' !model name
* uses 'mmsp' !mosel library for stochastic programming


*number of stages
$Set T 3
*set of stages
Set Stages / s1 * s%T% / ;

*selling price of the finished goods
Scalar r     /12    /;
*inventory holding cost
Scalar h     /0.5   /;
*shortage cost
Scalar s     /6     /;
*salvage value of finished goods
Scalar v     /2     /;
*unit cost of an option
Scalar o     /1.5   /;
*unit cost of exercising the option
Scalar e     /8     /;
*unit purchase cost of product
Scalar p     /8     /;
*upper bounds on the number of option
Scalar Mmax  /10000 /;
*mean demand
Scalar mu    /1500  /;
*deviation in demand
Scalar sigma /330   /;
*correlation coefficient
Scalar rho   /0.5   /;

*eps~Normal(0,1)
Parameter epsi[Stages] ; epsi[Stages] = -2.9268  ;
* demand in stage t
Parameter D[Stages] /s1 0, s2 534.146, s3 187.365 /;
*size of discrete state space of eps(t)
Parameter Neps[Stages] ;
* coarse and fine grid from each node in each stage
Parameter Nfine[Stages] ;
Parameter Ncoarse [Stages] ;
*swithcing level from fine to coarse level
Parameter GridSwitchLevel[Stages] ;

Variable
* of options bought in 1,to exercise in t
         M_big[Stages]   ,
*option exercised in t, effective in t+1
         m_small[Stages] ,
*fixed quantities ordered in 1 and delivered in t
         Q[Stages] ,
*net inventory at stage t
         I[Stages] ,
*physical inventory at stage t
         I_p[Stages] ,
*backorder at stage t
         I_m[Stages] ,
*        R -> total revenue
*        E -> total expenses
*        P -> total profit
         P_big , R_big , E_big   ;

Equation
        Eq_1                 ,
        Eq_2                 ,
*net inventory balance
        NetInv(Stages)       ,
*inventory balance across stages
        InvBal_1(Stages)     ,
        InvBal_2(Stages)     ,
*bound on # of options bought
        MaxNumOpt(Stages)    ,
*bound on # of options exercised
        MaxNumExOpt(Stages)  ,
        Def_Obj              ;

*---------------Define demand process & generate tree ------------------------

*Eq_1(Stages)$(ord(Stages) eq 3)..
*D[Stages] =e= mu+rho*(D[Stages-1]-mu)+epsi[Stages]*sigma*sqrt(1-rho*rho) ;

*Eq_2(Stages)$(ord(Stages) eq 2)..
*D[Stages] =e= mu+epsi[Stages]*sigma ;


*----------------------------Model formulation -------------------------------

Eq_1..
    R_big =e= r*(D['s2']-I_m['s2']) +
          Sum{Stages$(ord(Stages) gt 2),r*(D[Stages]+I_m[Stages-1]-I_m[Stages])}+
          v*I_p['s%T%'] ;


Eq_2..
    E_big =e= Sum{Stages$((ord(Stages) gt 1)and(ord(Stages) lt card(Stages))),
                    (e*m_small[Stages]+o*M_big[Stages]) } +
              Sum{Stages$(ord(Stages) gt 1 ),
                    (h*I_p[Stages]+s*I_m[Stages]+p*Q[Stages])}   ;


NetInv(Stages)$(ord(Stages) gt 1 )..
       I[Stages]=e=I_p(Stages)-I_m[Stages] ;

InvBal_1(Stages)$(ord(Stages) gt 2)..
       I[Stages]=e=I[Stages-1]+Q[Stages]+m_small[Stages-1]-D[Stages];

InvBal_2(Stages)$(ord(Stages) le 2)..
       I[Stages]=e=Q(Stages)-D[Stages] ;

MaxNumExOpt(Stages)$((ord(Stages) gt 1)and(ord(Stages) lt card(Stages)))..
       m_small[Stages] =l= M_big[Stages] ;

MaxNumOpt(Stages)$((ord(Stages) gt 1)and(ord(Stages) lt card(Stages)))..
       M_big[Stages]   =l= Mmax          ;

Def_Obj..
       P_big =e=R_big-E_big ;

E_big.lo = 0 ;
*R_big.fx =13001.7 ;
*E_big.fx =25660.1 ;
I_p.lo[Stages] = 0 ;
I_m.lo[Stages] = 0 ;
M_big.lo[Stages] = 0 ;
*Optimization
*maximize the expected profit
Model SCM_Option_Contract_2 /all / ;
Solve SCM_Option_Contract_2 using NLP maximazing P_big ;
Display P_big.l ;
