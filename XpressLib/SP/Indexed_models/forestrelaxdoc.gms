*******************************************************
*   Xpress-SP Example
*   ======================
*   ``````````````````
*   FILE: ForestRelax.mos
*
*   DESCRIPTION: Stochastic 2-stage linear model
*
*   TYPE: Forest Planning
*
*   MODEL:
*        The goal is to maximize the value of timber, both cut
*   and remaining, after the last period of planning. The constraints
*   in this model pertain to the amount of forest cut in a single period,
*   the age of trees, and the likelihood that trees remaining uncut are
*   destroyed by fire. Each tree belongs to one of K age classes of equal
*   length. The length that defines the age classes is also used to define
*   the length of stages of the planning period. Thus, trees belonging to
*   age class A in a given stage will belong to age class A+1 in the next
*   stage if they are not cut or destroyed by fire. Whenever any of these
*   events take place, new trees are planted and, the number of trees in
*   the first age class equals the sum of these two quantities.
*
*   The variables of the model are the total area of forest for each age class,
*   for each period, the amount of forest harvested for each age class in each
*   period, and penalty factors for not satisfying constraints on the amount
*   of harvested area in each period.
*
*   We show how scenario tree can be reduced by aggregation or deletion. Scnerios
*   that have small probabilities are aggregated. Similar scenarios that do not yield
*   objective value close to expected value of objective function may be deleted.
*
*   FURTHER INFO: see Xpress-SP guide
*   see K. A. Ariyawansa and A. J. Felt, “Test – Problem Collection for Stochastic
*   Linear Programming" (http://www.uwsp.edu/math/afelt/slptestset/doc.pdf).
*
*   DATE: Oct 2006
*
*   (c) 2006 Dash Associates
*       Author: Nitin Verma
*       Dash Optimization Inc, NJ
*
********************************************************

*model forest_relax_doc
*uses "mmsp"

Set T        / t1*t8 / ;
Set TT(T)    / t1*t7 / ;
Set TT_1(T)  / t2*t7 / ;

Scalar T_Max ; T_Max = card(T) -1 ;

Set K / k1*k8 / ;
Set MAXDISCRET  / m1*m3 / ;

Alias(MAXDISCRET,MAXDISCRET1);
Alias(K,KK);
Parameter yield[K] / k1   0 ,
                     k2   0 ,
                     k3  16 ,
                     k4 107 ,
                     k5 217 ,
                     k6 275 ,
                     k7 298 ,
                     k8 306 / ;


Parameter v[K] /k1  320.3417 ,
                k2  356.1874 ,
                k3  398.4370 ,
                k4  448.2349 ,
                k5  506.9294 ,
                k6  564.9294 ,
                k7  587.9294 ,
                k8  595.9294  / ;


Table ProbDiscret[MAXDISCRET,MAXDISCRET1]
                  m1      m2      m3
               m1 1.0000  0.0000  0.0000
               m2 0.4616  0.5384  0.0000
               m3 0.1847  0.2769  0.5384 ;
Table ValuesDiscret[MAXDISCRET,MAXDISCRET1]
                  m1      m2      m3
               m1 0.06258 0.00000 0.00000
               m2 0.08612 0.04240 0.00000
               m3 0.10499 0.07354 0.04240 ;

Parameter s1[K] / k1    241 ,
                  k2    125 ,
                  k3   1404 ,
                  k4   2004 ,
                  k5   9768 ,
                  k6  16385 ,
                  k7   2815 ,
                  k8  61995  / ;

Scalar alpha /  0.9   / ;
Scalar beta  /  1.1   / ;
Scalar delta /  0.905 / ;
Scalar gama  / 50     / ;



Positive Variable P[K,T]  ,
                  x[K,T]  ,
                  s[K,T]  ,
                  p1[T]   ,
                  p2[T]   ;
Variable ObjFnc  ;

Equation HarvestLimit(K,T) ,
         Fix(K)            ,
         TotalArea_1(K,T)  ,
         TotalArea_2(K,T)  ,
         TotalArea_3(K,T)  ,
         YLowerLimit(T)    ,
         YUpperLimit(T)    ,
         Def_Obj           ;

* Constraints
HarvestLimit(K,T)$TT(T)..
      x[K,T] =l= s[K,T] ;

Fix(K)..
      s[K,'t1'] =e= s1[K] ;

TotalArea_1(K,T)$((ord(K) eq 1)and (ord(T) gt 1 ))..
      s[K,T] =e= Sum{KK, (1 - P[KK,T])*x[KK,T-1]} +
                 Sum{KK,      P[KK,T] *s[KK,T-1]} ;


TotalArea_2(K,T)$((ord(K) eq card(K))and (ord(T) gt 1 ))..
      s[K,T] =e= -(1 - P[K-1,T]) * x[K-1,T-1] -
                  (1 - P[K,T]  ) * x[K,T-1]   +
                  (1 - P[K-1,T]) * s[K-1,T-1] +
                  (1 - P[K,T]  ) * s[K,T-1]    ;

TotalArea_3(K,T)$((ord(K) gt 1)and(ord(K) lt card(K))and (ord(T) gt 1 ))..
      s[K,T] =e= -(1 - P[K-1,T])*x[K-1,T-1] +
                  (1 - P[K-1,T])*s[K-1,T-1] ;

YUpperLimit(T)$TT_1(T)..
   -Sum{K,yield[K]*x[K,T]        } +
    alpha*sum{K, yield[K]*x[K,T-1]}   =l= p1[T] ;

YLowerLimit(t)$TT_1(T)..
    Sum{K,yield(K)*x[K,T]        } -
    beta*Sum{K, yield(K)*x(K,T-1)}    =l= p2[T] ;

* Objective function
Def_Obj..
    ObjFnc =e= Sum{(T,K)$TT(T),power(delta,(ord(t)-1)) * yield(K)*x(K,T)   }+
               Sum{K          ,power(delta,T_Max     ) * v(K)    *s(K,'t8')}-
          gama*Sum{T$TT_1(T)  ,power(delta,(ord(t)-1)) * (p1(T) + p2(T))   };

* Optimize
Model forest_relax_doc /all / ;
Solve forest_relax_doc using NLP maximazing ObjFnc ;
Display ObjFnc.l ;

