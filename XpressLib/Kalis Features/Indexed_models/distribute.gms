*****************************************************************
*   CP example problems
*   ===================
*
*   file distribute.mos
*   ```````````````````
*   Distribute and occurrence constraints.
*   A movie theatre director has to decide in which location each
*   of his 8 employees should be posted. Each of the four locations
*   has a given personnel requirement.
*
*   (c) 2005 Artelys SA and Dash Associates, rev. 2007
*
******************************************************************

* model "Distribute example"
*  uses "kalis"

* Set of personnel
Set PERS / David , Andrew , Leslie  ,
           Jason , Oliver , Michael ,
           Jane  , Marilyn  / ;

* Set of locations
Set LOC / L1*L4 / ;

* No. of pers. req. per loc.
Parameter REQ[LOC] / L1 3 , L2 2 , L3 2 , L4 1/;

* Each variable has a lower bound of 1 (Ticket office) and
*  an upper bound of 4 (Cloakroom)

* Workplace for each peson
Binary Variable
                Position[PERS,LOC] ;
Variable
         Obj        ;
Equation
         Eq_1(PERS) ,
         Eq_2(LOC)  ,
         Def_Obj    ;

Eq_1(PERS)..
     Sum{LOC,Position[PERS,LOC]} =e= 1 ;

Eq_2(LOC)..
     Sum{PERS,Position[PERS,LOC]} =e= REQ[LOC] ;

Def_Obj..
     Obj =e= 1 ;

Model Distribute_example / all / ;
Solve Distribute_example using MIP minimazing Obj ;

Display Obj.l ;

Parameter Place[PERS] ;

Loop{PERS, Loop{LOC,
    Place[PERS]$(Position.l[PERS,LOC]>0) = ord(LOC)
    };         };