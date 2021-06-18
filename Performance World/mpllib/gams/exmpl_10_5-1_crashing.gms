*MPL Model Library MPL Model Library
*Crashing, Example 10.5-1, Hillier and Lieberman
*   {  Exmpl10.5-1_Crashing.mpl  }
*   {  Hillier and Lieberman, Introduction to Operations Research, 7th ed.  }
*   {  Chapter 10.5,  Example 1, Crashing,  Size: 18x29,  Page 494  }

* TITLE CriticalPath;

Set act / A , B , C ,
          D , E , F ,
          G , H , I ,
          J , K , L ,
          M , N  / ;

Alias(act,act2)

Set Path(act,act2) / A.B , B.C , C.D ,
                     C.E , C.I , D.G ,
                     E.F , E.H , F.J ,
                     G.H , H.M , I.J ,
                     J.K , J.L , K.N , L.N / ;

Parameter NormalTime[act] / A 2 , B 4 , C 10 ,
                            D 6 , E 4 , F  5 ,
                            G 7 , H 9 , I  7 ,
                            J 8 , K 4 , L  5 ,
                            M 2 , N 6          / ;

Parameter CrashTime[act]  / A 1 , B 2 , C  7 ,
                            D 4 , E 3 , F  3 ,
                            G 4 , H 6 , I  5 ,
                            J 6 , K 3 , L  3 ,
                            M 1 , N 3         / ;

Parameter  NormalCost[act] / A  180 , B 320 , C 620 ,
                             D  260 , E 410 , F 180 ,
                             G  900 , H 200 , I 210 ,
                             J  430 , K 160 , L 250 ,
                             M  100 , N 330  / ;
           NormalCost[act] = NormalCost[act] * 1000 ;

Parameter  CrashCost[act]  / A  280 , B 420 , C 860 ,
                             D  340 , E 570 , F 260 ,
                             G 1020 , H 380 , I 270 ,
                             J  490 , K 200 , L 350 ,
                             M  200 , N 510  / ;
           CrashCost[act] = CrashCost[act] * 1000 ;

Parameter MaxReduce[act] ;
          MaxReduce[act] = NormalTime[act] - CrashTime[act];

Parameter CostWeekSaved[act] ;
          CostWeekSaved[act] = CrashCost[act]/MaxReduce[act] -
                               NormalCost[act]/MaxReduce[act] ;

Variables StartTime[act] , ReducedTime[act] , Finished , TotalCost ;

Equation SeqRelation(act,act2) , Eq_1 , Eq_2 , Def_obj ;

SeqRelation(act,act2)$Path(act,act2)..
      StartTime[act] + NormalTime[act] - ReducedTime[act]  =l= StartTime[act2] ;

Eq_1..
   StartTime['M'] + NormalTime['M'] - ReducedTime['M'] =l= Finished;

Eq_2..
   StartTime['N'] + NormalTime['N'] - ReducedTime['N'] =l= Finished;

Def_obj.. TotalCost =e= Sum{act,NormalCost[act]} +
                        Sum{act,CostWeekSaved[act]*ReducedTime[act] } ;

StartTime.lo[act]   = 0.0 ;
ReducedTime.lo[act] = 0.0 ;
ReducedTime.up[act] = MaxReduce[act] ;

   Finished.up = 40 ;

* MPL solutions:
*StartTime.fx['A']        =   0.0 ;
*StartTime.fx['B']        =   2.0 ;
*StartTime.fx['C']        =   6.0 ;
*StartTime.fx['D']        =  16.0 ;
*StartTime.fx['E']        =  16.0 ;
*StartTime.fx['F']        =  20.0 ;
*StartTime.fx['G']        =  22.0 ;
*StartTime.fx['H']        =  29.0 ;
*StartTime.fx['I']        =  16.0 ;
*StartTime.fx['J']        =  23.0 ;
*StartTime.fx['K']        =  30.0 ;
*StartTime.fx['L']        =  29.0 ;
*StartTime.fx['M']        =  38.0 ;
*StartTime.fx['N']        =  34.0 ;

*ReducedTime.fx[act]      =   0.0 ;
*ReducedTime.fx['F']      =   2.0 ;
*ReducedTime.fx['J']      =   2.0 ;

Model m10_5_1_Crashing / all / ;

Solve m10_5_1_Crashing using lp minimazing TotalCost ;

Display TotalCost.l ;

