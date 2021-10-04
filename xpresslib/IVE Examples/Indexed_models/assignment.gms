**********************************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file assignment.mos
*   ```````````````````
*   TYPE:         Assignment problem
*   DIFFICULTY:   1
*   FEATURES:     simple LP problem, graphical representation of results
*   DESCRIPTION:  A set of projects is assigned to persons with the
*                 objective to maximize the overall satisfaction.
*                 A preference rating per person and project is given.
*                 In this model formulation the solution to the LP problem
*                 is integer, there is no need to define the decision
*                 variables explicitly as binaries.
*   FURTHER INFO: Similar problems:
*                 `Applications of optimization with Xpress-MP',
*                 Section 11.1 `Flight connections at a hub',
*                 Section 14.1 `Assigning personnel to machines'
*                 Section 8.6 `Assignment of production batches to machines'
*
*   (c) 2004 Dash Associates
*       author: S. Heipcke
***********************************************************************

* model Assignment

$Set NP 5
* Number of persons/projects
Set RP / r1*r%NP% / ;
* Set (range) of persons/projects
Alias(RP,RP1);

Table PREF[RP,RP1]
          r1 r2 r3 r4 r5
     r1    1  2  3  5  4
     r2    3  2  5  4  1
     r3    3  4  1  5  2
     r4    4  3  2  5  1
     r5    2  3  5  4  1  ;
* Preference values
* Assignment person-project

Equation OnePersProj(RP) ,
         OneProjPers(RP) ,
         Def_Obj   ;

Variable assign[RP1,RP] ,
         Satisfaction   ;

* One person per project
OnePersProj(RP)..
    Sum{RP1, assign[RP1,RP] } =e= 1 ;

* One project per person
OneProjPers(RP)..
    Sum{RP1, assign[RP,RP1] } =e= 1 ;

* Objective function: maximize satisfaction
Def_Obj..
    Satisfaction =e= Sum{(RP,RP1) , PREF[RP,RP1]*assign[RP1,RP] } ;

 assign.lo[RP,RP1] = 0 ;
* Solve the problem
Model Assignment / all / ;

Solve Assignment using LP maximazing Satisfaction ;

Display Satisfaction.l ;
