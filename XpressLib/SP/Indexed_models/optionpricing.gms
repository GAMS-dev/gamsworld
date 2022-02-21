*******************************************************
*   Xpress-SP Example
*   ======================
*   ``````````````````
*   FILE: OptionPricing.mos
*
*   DESCRIPTION: Stochastic multi-stage linear model
*
*   TYPE: Finance: Option pricing in presence of transaction costs
*
*        The goal of this model is to evaluate the pay off of an option in dynamically
*   complete market by trading stock and bonds. The option value is simply the cost
*   of replicating the portfolio. Further we assume no cost of trading at the initial
*   and the final stage, but there is a bid-ask spread on stocks in the intermediate
*   stages.
*
*   In the Black-Scholes option pricing model, we discretize the time period for re-
*   investment. The interest rate is fixed, and so is the volatility of stocks.
*
*   MODEL:
*
*        Parameters:
*                T= Number of stages (indexed by t)
*                Assets= {Stocks,Bonds} (indexed by i)
*                r= Fixed annualized rate of return of bonds
*                ó= Volatility of returns of stocks
*                del= Time span for re-investment
*                è= Transaction cost
*                X= Strike price of option Stochasticity:
*                ä(t)= Movement (1/-1 corresponding to up/down) of stock at stage t
*                P(i,t)= Price of Asset i at stage t:
*                        P(Bonds,t)=P(Bonds,t-1).exp(r.del)
*                        P(Stocks,t)=P(Stocks,t-1).exp(ä(t).ó.sqrt(del))
*                O = Option payoff on maturity:
*                        for call option= max(P(Stocks,T)-X,0)
*                        for put option= max(X-P(Stocks,T),0)
*        Decision variables:
*                q(i,t) = Quantity of Asset i at stage t
*                x(t),y(t)= Quantity of stocks bought and sold respectively at stage t
*        Model formulation:
*                min sum(i) P(i,1).q(i,1)
*                s.t
*                q(Stocks,t) - q(Stocks,t-1) = x(t) - y(t), t>1
*                P(Stocks,t).[x(t).{1+del} - y(t).{1-del}] + P(Bonds,t).[q(Bonds,t) - q(Bonds,t-1)] <= 0, 1<t<T
*                sum(i) P(i,T).q(i,T-1) >= O
*                x(t), y(t)>= 0, t>1
*
*   FURTHER INFO: see Xpress-SP guide
*   see 'Option Pricing with Transaction Costs', Optimization Methods in Finance',
*   Gerard Cornuejols
*
*   DATE: Oct 2006
*
*   (c) 2006 Dash Associates
*       Author: Nitin Verma
*       Dash Optimization Inc, NJ
*
*******************************************************!)

*model OptionPricing
*uses 'mmsp'

*parameters
* #stages
$Set T 5
*set of stages
Set Stages /t1*t%T% / ;

*set of all the assets
Set Assets / Stocks , Bonds / ;
Parameter price[Assets,Stages]  ;

*up/down (1/-1 resp) movement of stocks
Parameter movement[Stages] ; movement[Stages] = 1 ;

*strike price
Scalar X_big / 100.0 / ;
*fraction of cost of trading
Scalar theta / 0.02 / ;
*volatility
Scalar sigma / 0.35 / ;
*time-span for re-invetment, Maturity date for option=T*delta
Scalar delta / 1.0 / ;
*fixed rate of return for bonds
Scalar r / 0.07 / ;
*stock's price initially
Scalar InitStkPrice / 95 / ;
*bond's price initially
Scalar InitBndPrice / 100 / ;

 price['Stocks','t1'] = InitStkPrice ;
 price['Bonds','t1']  = InitBndPrice ;

Loop{Stages$(ord(Stages) gt 1),
                price['Stocks',Stages] =price('Stocks',Stages-1)*exp(movement(Stages)*sigma*sqrt(delta)) ;
                price['Bonds',Stages]  =price('Bonds',Stages-1)*exp(r*delta) ;
     } ;

Scalar OptPayOff ;
Scalar Temp_OptPayOff ;
Temp_OptPayOff = 0 ;

Loop{Stages,
if(Temp_OptPayOff lt (-X_big+price['Stocks',Stages]),
                     Temp_OptPayOff =(-X_big+price['Stocks',Stages]) );
     };
OptPayOff = Temp_OptPayOff ;

Positive Variable
*quantity of stocks bought, sold resp in each stage
        x[Stages]        ,
        y[Stages]        ;
Variable
*quantity of assets in each stage
        q[Assets,Stages] ,
        InitInv   ;


Equation BalanceStocks(Stages)     ,
         BalancePosition_1(Stages) ,
         BalancePosition_2(Stages) ,
         Def_Obj                   ;


BalanceStocks(Stages)$((ord(Stages) lt card(Stages))and(ord(Stages) gt 1))..
    q['Stocks',Stages]-q['Stocks',Stages-1]=e= x[Stages]-y[Stages] ;

BalancePosition_1(Stages)$(ord(Stages) eq card(Stages))..
    Sum{Assets, q[Assets,Stages-1] * price[Assets,Stages]} =g= OptPayOff ;

BalancePosition_2(Stages)$((ord(Stages) lt card(Stages))and(ord(Stages) gt 1))..
     (x[Stages]*(1+theta)    -
      y[Stages]*(1-theta))   *
      price['Stocks',Stages] +
     (q['Bonds',Stages]-q['Bonds',Stages-1]) *
      price['Bonds',Stages] =l= 0 ;

Def_Obj..
    InitInv =e= Sum{Assets, q(Assets,'t1')*price(Assets,'t1') } ;

q.lo[Assets,Stages] =  0.0 ;

*q.fx['Bonds','t1'] = -0.3556 ;
*q.fx['Stocks','t1']  =  0.7373 ;

Model OptionPricing /all / ;
Solve OptionPricing using LP minimazing InitInv ;
Display InitInv.l ;