*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file h6expand.mos
*   `````````````````
*   Planning the expansion of a company
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
*******************************************************

* model "H-6 Expansion"


Set PROJECTS / p1*p5 / ;
* Set of possible projects
Set DESCR / Expand_assembly_line  ,
            Reorganize_shop       ,
            New_painting_facility ,
            Concept_car           ,
            Reorganize_logistics  / ;
* Description of projects

Parameter Answer_1 , Answer_2 , Answer_3 ;
Set TIME / t1*t5 / ;
* Planning period

Table COST[PROJECTS,TIME]
                    t1    t2    t3    t4    t5
              p1   1.80  2.40  2.40  1.80  1.50
              p2   1.20  1.80  2.40  0.60  0.50
              p3   1.20  1.00  0.00  0.48  0.00
              p4   1.40  1.40  1.20  1.20  1.20
              p5   1.60  2.10  2.50  2.00  1.80  ;
* Annual costs of projects

Parameter   CAP[TIME]     /t1 4.8 , t2 6.0 , t3 4.8 , t4 4.2 , t5 3.5 / ;
* Annually available capital
Parameter   RET[PROJECTS] / p1 10.8 , p2 4.8 , p3 3.2 , p4 4.44 , p5 12.25 / ;
* Estimated profits

Binary Variable choose[PROJECTS] ;
* 1 if project is chosen, 0 otherwise

Variable Profit ;

Equation Eq_1(TIME) ,
         Def_Obj     ;

* Limit on capital availability
Eq_1(TIME)..
 Sum{PROJECTS, COST(PROJECTS,TIME)*choose(PROJECTS) } =l= CAP(TIME) ;

* Objective: Total profit
Def_obj..
 Profit =e= Sum{PROJECTS,RET[PROJECTS]*choose[PROJECTS]} ;

* Solve the problem
Model H_6_Expansion / All / ;
Solve H_6_Expansion using RMIP maximazing Profit ;
Answer_1 = Profit.l ;
Solve H_6_Expansion using MIP maximazing Profit ;
Answer_2 = Profit.l ;
choose.fx['p1'] = 1 ;
Solve H_6_Expansion using MIP maximazing Profit ;
Answer_3 = Profit.l ;

Display Answer_1 ;
Display Answer_2 ;
Display Answer_3 ;
