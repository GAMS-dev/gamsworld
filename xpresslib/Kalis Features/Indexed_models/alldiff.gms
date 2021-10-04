*****************************************************************
*   CP example problems
*   ===================
*
*   file alldiff.mos
*   ````````````````
*   all_different constraints.
*
*   (c) 2005 Artelys SA and Dash Associates
*
******************************************************************
* model "all_different example"
*  uses "kalis"

* Set of speakers
Set PEOPLE / Sebastian , Frederic , Jan-Georg ,
             Krzysztof , Maarten  , Luca       / ;

Set Time_Slot / t1*t6 / ;

Integer Variable
* Time slot per person
         x[PEOPLE,Time_Slot]   ;

* A different time slot for every person
* all_different(x)

Variable
         Obj ;

Equation
         Eq_1(Time_Slot) ,
         Eq_2(PEOPLE)    ,
         Def_Obj         ;


Eq_1(Time_Slot)..
    Sum{PEOPLE,x[PEOPLE,Time_Slot]}    =e= 1 ;

Eq_2(PEOPLE)..
    Sum{Time_Slot,x[PEOPLE,Time_Slot]} =e= 1 ;

Def_Obj..
    Obj =e= 1 ;

x.lo['Luca',Time_Slot] = 0 ;
x.up['Luca',Time_Slot] = 1 ;

x.fx['Sebastian',Time_Slot]$(ord(Time_Slot) lt 3 ) = 0 ;
x.fx['Sebastian',Time_Slot]$(ord(Time_Slot) gt 6 ) = 0 ;
x.fx['Frederic',Time_Slot]$(ord(Time_Slot)  lt 3 ) = 0 ;
x.fx['Frederic',Time_Slot]$(ord(Time_Slot)  gt 4 ) = 0 ;
x.fx['Jan-Georg',Time_Slot]$(ord(Time_Slot) lt 2 ) = 0 ;
x.fx['Jan-Georg',Time_Slot]$(ord(Time_Slot) gt 5 ) = 0 ;
x.fx['Krzysztof',Time_Slot]$(ord(Time_Slot) lt 2 ) = 0 ;
x.fx['Krzysztof',Time_Slot]$(ord(Time_Slot) gt 4 ) = 0 ;
x.fx['Maarten',Time_Slot]$(ord(Time_Slot)   lt 3 ) = 0 ;
x.fx['Maarten',Time_Slot]$(ord(Time_Slot)   gt 4 ) = 0 ;
x.fx['Luca',Time_Slot]$(ord(Time_Slot)      lt 1 ) = 0 ;
x.fx['Luca',Time_Slot]$(ord(Time_Slot)      gt 6 ) = 0 ;

Model all_different / all / ;
Solve all_different using MIP maximazing Obj ;

Display x.l ;