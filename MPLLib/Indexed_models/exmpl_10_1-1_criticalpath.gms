*MPL Model Library MPL Model Library
*Critical Path, Example 10.1-1, Hillier and Lieberman
*   {  Exmpl10.1-1_CriticalPath.mpl  }
*   {  Hillier and Lieberman, Introduction to Operations Research, 7th ed.  }
*   {  Example Chapter 10.1,  PERT/CPM,  Size: 18x15,  Page 469  }

*TITLE   CriticalPath;

Set act / A , B , C , D , E , F , G , H , I , J , K , L , M , N , Finish / ;

Alias(act,act2) ;

Set Path(act,act2) / A.B , B.C , C.D , C.E ,
                     C.I , D.G , E.F , E.H ,
                     F.J , G.H , H.M , I.J ,
                     J.K , J.L , K.N , L.N ,
                     M.Finish , N.Finish    / ;

Parameter Duration[act]  / A 2 , B 4 , C 10 ,
                           D 6 , E 4 , F  5 ,
                           G 7 , H 9 , I  7 ,
                           J 8 , K 4 , L  5 ,
                           M 2 , N 6 , Finish 0 / ;

Variables StartTime[act] , FinishTime ;

Equation SeqRelation(act,act2) , Def_obj ;

SeqRelation(act,act2)$Path(act,act2)..
           StartTime[act] + Duration[act] =l=  StartTime[act2] ;

Def_obj..  FinishTime =e= StartTime['Finish'];

StartTime.lo[act] = 0.0 ;

* MPL solutions:
*StartTime.fx['A']         =      0.0000 ;
*StartTime.fx['B']         =      2.0000 ;
*StartTime.fx['C']         =      6.0000 ;
*StartTime.fx['D']         =     16.0000 ;
*StartTime.fx['E']         =     16.0000 ;
*StartTime.fx['F']         =     20.0000 ;
*StartTime.fx['G']         =     22.0000 ;
*StartTime.fx['H']         =     29.0000 ;
*StartTime.fx['I']         =     18.0000 ;
*StartTime.fx['J']         =     25.0000 ;
*StartTime.fx['K']         =     34.0000 ;
*StartTime.fx['L']         =     33.0000 ;
*StartTime.fx['M']         =     38.0000 ;
*StartTime.fx['N']         =     38.0000 ;
*StartTime.fx['Finish']    =     44.0000 ;

Model m10_1_1_CriticalPath / all / ;

Solve m10_1_1_CriticalPath using lp minimazing FinishTime ;

Display FinishTime.l ;