*****************************************************************
*   CP example problems
*   ===================
*
*   file freqas_ive.mos
*   ```````````````````
*   Frequency assignment problem from telecommunications.
*   - Solution graph drawing with IVE. -
*
*   We are given a network of cells (nodes) with requirements of
*   discrete frequency bands. Each cell has a demand of a number of
*   frequencies (bands).
*   The objective is to minimize the number of frequencies used in
*   the network so that
*   (1) Neighboring nodes all use different frequencies (interference).
*   (2) If a cell uses several frequencies they must all be different
*       by at least 2.
*
*   (c) 2005 Artelys S.A. and Dash Associates
*
******************************************************************!)
*
* model "Frequency assignment"
*  uses "kalis", "mmive"

* Range of nodes
Set NODES / N1*N10 / ;
Alias(NODES,NODES1)  ;

* Demand of nodes
Parameter DEM[NODES] / N1 4 , N2 5 , N3 2 , N4 3 , N5  2 ,
                       N6 4 , N7 3 , N8 4 , N9 3 , N10 2 / ;


Set Exist(NODES,NODES1) ;
                 Exist('N1','N3')  = Yes ;
                 Exist('N1','N4')  = Yes ;
                 Exist('N1','N6')  = Yes ;
                 Exist('N2','N4')  = Yes ;
                 Exist('N2','N7')  = Yes ;
                 Exist('N3','N4')  = Yes ;
                 Exist('N3','N6')  = Yes ;
                 Exist('N3','N8')  = Yes ;
                 Exist('N3','N9')  = Yes ;
                 Exist('N4','N7')  = Yes ;
                 Exist('N4','N9')  = Yes ;
                 Exist('N4','N10') = Yes ;
                 Exist('N5','N7')  = Yes ;
                 Exist('N5','N8')  = Yes ;
                 Exist('N5','N9')  = Yes ;
                 Exist('N6','N9')  = Yes ;
                 Exist('N7','N8')  = Yes ;
                 Exist('N8','N10') = Yes ;


* Upper bound on no. of freq.
Scalar NUMDEM  ;  NUMDEM = Sum{NODES, DEM[NODES] } ;
* Because NUMDEM = 32

Set DEMANDS / d1*d32 / ;
Alias(DEMANDS,DEMANDS1) ;
* Start index in 'use'
Parameter INDEX[NODES] ;
 INDEX['n1'] = 1 ;

Loop{NODES$(ord(NODES) gt 1),
     INDEX[NODES] = INDEX[NODES-1] + DEM[NODES-1] ;
    } ;


Integer Variable
         Position(NODES,DEMANDS)    ,
         use[DEMANDS]               ;

Variable
         numfreq      ;

Equation
         Eq_1(NODES,DEMANDS)          ,
         Eq_2(DEMANDS,DEMANDS1,NODES,NODES1)   ,
         Eq_3(NODES,DEMANDS)          ,
         Def_Obj(DEMANDS)             ;

Eq_1(NODES,DEMANDS)$((ORD(DEMANDS) gt 1)and(ord(DEMANDS) le DEM[NODES]))..
     Position[NODES,DEMANDS]    -
     Position[NODES,DEMANDS-1] =g= 2 ;

Eq_2(DEMANDS,DEMANDS1,NODES,NODES1)$(Exist(NODES,NODES1)  and
                            (ord(DEMANDS)  le DEM[NODES]) and
                            (ord(DEMANDS1) le DEM[NODES1])    )..

     (Position[NODES,DEMANDS] - Position[NODES1,DEMANDS1])*
     (Position[NODES,DEMANDS] - Position[NODES1,DEMANDS1])   =g= 1 ;

Eq_3(NODES,DEMANDS)..
    use[DEMANDS] =g= Position[NODES,DEMANDS] ;

Def_Obj(DEMANDS)..
    numfreq =g= use[DEMANDS] ;


Position.lo[NODES,DEMANDS] = 1 ;
Position.fx[NODES,DEMANDS]$(ord(DEMANDS) gt DEM[NODES] ) = 0 ;

* solver coinbonmin
Model Frequency_assignment / all / ;

Solve Frequency_assignment using MIQCP minimazing Numfreq ;

Display Numfreq.l ;