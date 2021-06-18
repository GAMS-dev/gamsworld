set PEOPLE / Hurter , Jones , Reder , Spearman , Zanison / ;
* hours each person is available
set PROJECTS / p1021 , p1049 , p1053 , p1055 , p1083  / ;
* hours each project requires

Parameter supply[PEOPLE]   / Hurter    3 , Jones     2 , Reder     2 ,
                             Spearman  1 , Zanison   1 /   ;

Parameter demand[PROJECTS] / p1021     1 , p1049     2 , p1053     2 ,
                             p1055     2 , p1083     2 /   ;

Table cost[PEOPLE,PROJECTS]
           p1021 p1049 p1053 p1055 p1083
Hurter       5     4     5     3      3
Jones        8     3     5     4      3
Reder        3     4     5     4      4
Spearman     7     5     6     5      5
Zanison      3     6     5     5      5   ;
* cost per hour of work

Table limit[PEOPLE,PROJECTS]
           p1021 p1049 p1053 p1055 p1083
Hurter       5     4     5     3      3
Jones        8     3     5     4      3
Reder        3     4     5     4      4
Spearman     7     5     6     5      5
Zanison      3     6     5     5      5   ;
* maximum contributions to projects

Variable M , max_cost , Assign[PEOPLE,PROJECTS] ;

Equation          Eq_check    ,
          Eq_M_def(PEOPLE)    ,
          Eq_Supply(PEOPLE)   ,
          Eq_Demand(PROJECTS) ,
          Def_obj             ;


Eq_check.. sum{PEOPLE, supply[PEOPLE] } =e= sum{PROJECTS, demand[PROJECTS]  } ;

Eq_M_def(PEOPLE)..
           M =g= sum{PROJECTS, cost[PEOPLE,PROJECTS]*Assign[PEOPLE,PROJECTS]} ;

Eq_Supply(PEOPLE)..
           sum{PROJECTS, Assign[PEOPLE,PROJECTS]} =e= supply[PEOPLE];

Eq_Demand(PROJECTS)..
   sum{PEOPLE, Assign[PEOPLE,PROJECTS]} =e= demand[PROJECTS];

Def_obj.. max_cost =e= M ;

Assign.lo[PEOPLE,PROJECTS] = 0 ;
Assign.up[PEOPLE,PROJECTS] = limit[PEOPLE,PROJECTS] ;

Model minmax /all/;

Solve minmax using nlp minimazing max_cost ;

Display max_cost.l ;





