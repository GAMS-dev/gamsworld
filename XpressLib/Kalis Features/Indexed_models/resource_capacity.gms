*****************************************************************
*   CP example problems
*   ===================
*
*   file resource_capacity.mos
*   ``````````````````````````
*   Setting capacity of a resource over time
*
*   (c) 2007 Artelys SA and Dash Associates
*
******************************************************************
* model "Resource capacity"
*  uses "kalis"

* Declaration of tasks
Set Task / A , B , C / ;

Alias(Task,Task1) ;

Set Order / o1 , o2 , o3 / ;

Parameter Next[Task,Task1] ;

Parameter Resources[Order] / o1 3 , o2 2 , o3 1 / ;

Parameter Demand[Task] ;
 Demand['A'] = 1 ;
 Demand['B'] = 2 ;
 Demand['C'] = 3 ;

Parameter Duration[Task] ;
* Setting the task durations
 Duration['A'] = 1 ;
 Duration['B'] = 2 ;
 Duration['C'] = 3 ;



Binary Variable
         Task_Order[Task,Order]  ;
Integer Variable
         Start[Task] , End[Task] ;
Variable
         Obj  ;

Equation
         Eq_1(Task)  ,
         Eq_2(Order) ,
         Eq_3(Order) ,
         Eq_4(Task)  ,
         Eq_5(Task,Task1)  ,
         Def_Obj           ;

Eq_1(Task)..
    Sum{Order,Task_Order[Task,Order]} =e= 1 ;

Eq_2(Order)..
    Sum{Task,Task_Order[Task,Order] } =e= 1 ;

Eq_3(Order)..
    Sum{Task,Task_Order[Task,Order]*Demand[Task] } =e= Resources[Order] ;

Eq_4(Task)..
    End[Task] - Start[Task] =e= Duration[Task] ;

Eq_5(Task,Task1)$(Next[Task,Task1] gt 0 )..
    End[Task] =e= Start[Task1] ;

Def_Obj..
    Obj =e= 1 ;

Model Resource_capacity_1 / Eq_1 , Eq_2 , Eq_3 , Def_Obj / ;
Solve Resource_capacity_1 using MIP maximazing Obj ;

Parameter Additional[Task] ;
     Loop{Task,
 Additional[Task] =Sum{Order,ord(Order)*Task_Order.l[Task,Order]};
     } ;

Start.fx[Task]$(Additional[Task] eq 1) = 1 ;


Next[Task,Task1]$((Additional[Task] eq 1)and(Additional[Task1] eq 2)) = 1 ;

Next[Task,Task1]$((Additional[Task] eq 2)and(Additional[Task1] eq 3)) = 1 ;

Model Resource_capacity_2 /  Eq_4 , Eq_5 , Def_Obj / ;
Solve Resource_capacity_2 using MIP maximazing Obj ;


