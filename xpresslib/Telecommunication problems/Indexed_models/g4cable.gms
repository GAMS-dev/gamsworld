*******************************************************
*   Mosel Example Problems
*   ======================
*
*   file g4cable.mos
*   ````````````````
*   Connecting terminals through cables
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Apr. 2002
*******************************************************

* model "G-4 Cabled network"

$Set NTERM  6
Set TERMINALS / t1*t%NTERM% / ;
* Set of terminals to connect
Alias(TERMINALS,TERMINALS1);

Table DIST[TERMINALS,TERMINALS1]
                                  t1  t2  t3  t4  t5  t6
                       t1          0 120  92 265 149 194
                       t2        120   0 141 170  93 164
                       t3         92 141   0 218 103 116
                       t4        265 170 218   0 110 126
                       t5        149  93 103 110   0  72
                       t6        194 164 116 126  72   0  ;

* Distance between terminals

Binary Variable connect[TERMINALS,TERMINALS1] ;
* 1 if direct connection
* between terminals, 0 otherwise
Variable  level[TERMINALS]                    ,
* level value of nodes
          Length                              ;

Equation Eq_1                       ,
         Eq_2(TERMINALS,TERMINALS1) ,
         Eq_3(TERMINALS)            ,
         Def_obj ;
* Number of connections
Eq_1..
 Sum{(TERMINALS,TERMINALS1)$(ord(TERMINALS) ne ord(TERMINALS1)),
                              connect[TERMINALS,TERMINALS1] } =e= %NTERM% - 1  ;
* Avoid subcycle
Eq_2(TERMINALS,TERMINALS1)$(ord(TERMINALS) ne ord(TERMINALS1))..
  level[TERMINALS1] =g= level[TERMINALS] + 1 - %NTERM% +
                         %NTERM%*connect[TERMINALS,TERMINALS1] ;

* Direct all connections towards the root (node 1)
Eq_3(TERMINALS)$(ord(TERMINALS) gt 1)..
  sum{TERMINALS1$(ord(TERMINALS) ne ord(TERMINALS1)),
                 connect[TERMINALS,TERMINALS1] } =e= 1 ;

* Objective: length of cable used
Def_obj..
 Length =e= Sum{(TERMINALS,TERMINALS1)$(ord(TERMINALS) ne ord(TERMINALS1)),
                    DIST[TERMINALS,TERMINALS1]*connect[TERMINALS,TERMINALS1] } ;

* Solve the problem
Model G_4_Cabled_network / All / ;

Solve G_4_Cabled_network using MIP minimazing Length ;

Display Length.l ;