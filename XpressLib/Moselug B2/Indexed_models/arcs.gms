*******************************************************
*   Mosel User Guide Example Problems
*   =================================
*
*   file arcs.mos
*   `````````````
*   Working with records: definition of a network.
*
*   (c) 2006 Dash Associates
*       author: S. Heipcke, Nov. 2006
*******************************************************

* model "Arcs"

* Set of nodes
Set NODES /A , B , C , D , E , F / ;
Alias(NODES,NODES1) ;
Set Arc(NODES,NODES1)
* Data file for `arcs.mos'
    / 'A'.'B' , 'A'.'D' ,  'A'.'C' ,
      'B'.'F' , 'B'.'D' ,  'C'.'B' ,
      'C'.'D' , 'C'.'E' ,  'D'.'F' ,
      'D'.'E' , 'E'.'F' /;

Set Source(NODES);
Set Sink(NODES);
Scalar ARCSET ;  ARCSET = 0 ;
Scalar Total_Cost ;  Total_Cost = 0 ;


Parameter Flow(NODES,NODES1) ; Flow(NODES,NODES1) = 1 ;
Parameter Cost(NODES,NODES1) / 'A'.'B' 2 , 'A'.'D' 4 , 'A'.'C' 7 ,
                               'B'.'F' 4 , 'B'.'D' 3 , 'C'.'B' 5 ,
                               'C'.'D' 1 , 'C'.'E' 1 , 'D'.'F' 2 ,
                               'D'.'E' 5 , 'E'.'F' 8  /;

Loop{(NODES,NODES1)$Arc(NODES,NODES1),
      Source(NODES) = Arc(NODES,NODES1) ; } ;

Loop{(NODES,NODES1)$Arc(NODES,NODES1),
      Sink(NODES1) = Arc(NODES,NODES1) ; } ;

Loop{(NODES,NODES1)$Arc(NODES,NODES1),
      ARCSET = ARCSET + 1 ; } ;

Loop{(NODES,NODES1)$Arc(NODES,NODES1),
      Total_Cost = Total_Cost + Cost(NODES,NODES1) ; } ;

      Total_Cost = Total_Cost/ARCSET ;

Display Total_Cost;
