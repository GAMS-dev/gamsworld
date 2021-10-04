*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file spanningtree.mos
*   `````````````````````
*   TYPE:         Minimum weight spanning tree problem
*   DIFFICULTY:   3
*   FEATURES:     MIP problem, formulation of constraints to exclude subcycles,
*                 graphical representation of results
*   DESCRIPTION:  Six terminals located in different buildings need to be
*                 connected. The cost of connecting two terminals is
*                 proportional to the distance between them. Determine the
*                 connections to install to minimize the total cost.
*   FURTHER INFO: `Applications of optimization with Xpress-MP',
*                 Section 12.4 `Construction of a cabled network'
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke
********************************************************

* model "Cabled network"

$Set NTERM 6
* Set of terminals to connect
Set TERMINALS /t1 * t%NTERM% / ;
Alias(TERMINALS,TERMINALS1);

* Distance between terminals
Table DIST[TERMINALS,TERMINALS1]
                                       t1    t2    t3    t4    t5    t6
                                t1      0   120    92   265   149   194
                                t2    120     0   141   170    93   164
                                t3     92   141     0   218   103   116
                                t4    265   170   218     0   110   126
                                t5    149    93   103   110     0    72
                                t6    194   164   116   126    72     0  ;



Binary Variable connect[TERMINALS,TERMINALS1]
* 1 if direct connection
* between terminals, 0 otherwise
       Variable
* level value of nodes
               level[TERMINALS] ,
               Length           ;

Equation NumConnect                  ,
         Cycle(TERMINALS,TERMINALS1) ,
         Direct(TERMINALS)           ,
         Def_Obj                     ;

* Number of connections
NumConnect..
     sum{(TERMINALS,TERMINALS1)$(ord(TERMINALS) ne ord(TERMINALS1)),
                                connect[TERMINALS,TERMINALS1] } =e= %NTERM% - 1 ;

* Avoid subcycle
Cycle(TERMINALS,TERMINALS1)$(ord(TERMINALS) ne ord(TERMINALS1))..
    level(TERMINALS1) =g= level[TERMINALS] +
                          1                -
                         %NTERM%           +
                         %NTERM%*connect[TERMINALS,TERMINALS1] ;

* Direct all connections towards the root (node 1)
Direct(TERMINALS)$(ord(TERMINALS) gt 1)..
    Sum{TERMINALS1$(ord(TERMINALS) ne ord(TERMINALS1)),
                   connect[TERMINALS,TERMINALS1] } =e= 1 ;

* Objective: length of cable used
Def_Obj..
    Length =e= Sum{(TERMINALS,TERMINALS1)$(ord(TERMINALS) ne ord(TERMINALS1)),
                                          DIST[TERMINALS,TERMINALS1]*
                                          connect[TERMINALS,TERMINALS1]       };

level.lo[TERMINALS] = 0 ;

* XPress solution
*level.fx['t1'] = 3 ;
*level.fx['t2'] = 0 ;
*level.fx['t3'] = 2 ;
*level.fx['t4'] = 0 ;
*level.fx['t5'] = 1 ;
*level.fx['t6'] = 0 ;

* Solve the problem
Model Cabled_network / all / ;

Solve Cabled_network using MIP minimazing Length ;

Display Length.l ;
