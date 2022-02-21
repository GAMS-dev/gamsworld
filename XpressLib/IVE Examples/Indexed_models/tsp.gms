*******************************************************
*  Mosel Example Problems
*   ======================
*
* Origin file tsp.mos
*   ````````````
*   TYPE:         Symmetric traveling salesman problem
*   DIFFICULTY:   5
*   FEATURES:     MIP problem, loop over problem solving, TSP subtour
*                 elimination algorithm;
*                 procedure for generating additional constraints, recursive
*                 subroutine calls, working with sets, `forall-do',
*                 `repeat-until', `getsize', `not', graphical representation
*                 of solutions
*   DESCRIPTION:  A flight tour starts from airport 1, visits all
*                 the other airports and then comes back to the starting point.
*                 The distances between the airports are symmetric. In which
*                 order should the airports be visited to minimize the total
*                 distance covered?
*   FURTHER INFO: `Applications of optimization with Xpress-MP',
*                 Section 11.5 `Planning a flight tour',
*                 Section 7.5 `Paint production'
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke
********************************************************

* model "Tour planning"

$Set NCITIES  7
Set CITIES / c1*c%NCITIES% / ;
* Cities
Alias(CITIES,CITIES1);

* Distance between cities
Table DIST[CITIES,CITIES1]
                             c1   c2   c3   c4   c5   c6   c7
                        c1  000  786  549  657  331  559  250
                        c2  786  000  668  979  593  224  905
                        c3  549  668  000  316  607  472  467
                        c4  657  979  316  000  890  769  400
                        c5  331  593  607  890  000  386  559
                        c6  559  224  472  769  386  000  681
                        c7  250  905  467  400  559  681  000 ;

Binary Variable fly[CITIES,CITIES1] ;
* 1 if flight from i to j

Variable TotalDist ;

Equation OneVisitI(CITIES) ,
         OneVisitJ(CITIES) ,
         Def_Obj           ;


* Visit every city once
OneVisitI(CITIES)..
    Sum{CITIES1$(ord(CITIES) ne ord(CITIES1)),  fly[CITIES1,CITIES]} =e= 1 ;
OneVisitJ(CITIES)..
    Sum{CITIES1$(ord(CITIES) ne ord(CITIES1)),  fly[CITIES,CITIES1]} =e= 1 ;
* Objective: total distance
Def_Obj..
    TotalDist =e= Sum{(CITIES,CITIES1)$(ord(CITIES) ne ord(CITIES1)),
                                      DIST[CITIES,CITIES1]*fly[CITIES,CITIES1]};
* Solve the problem
Model Tour_planning / all / ;

Solve Tour_planning using MIP minimazing TotalDist ;

Display TotalDist.l ;
