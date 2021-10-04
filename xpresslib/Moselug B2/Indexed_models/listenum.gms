*******************************************************
*   Mosel User Guide Example Problems
*   =================================
*
*   file listenum.mos
*   `````````````````
*   Enumerating a list in inverse order.
*
*   (c) 2006 Dash Associates
*       author: S. Heipcke, Oct. 2006
********************************************************!)

* model "Reversing lists"

* declarations
Set A    / q1 , w2 , e3 , r4 , t5 , y6 , u7 , i8 , o9 , p10 / ;
Set B(A) / q1 , w2 , e3 , r4 , t5 , y6 , u7 , i8 , o9 , p10 / ;

Set Order / a1 , a2 , a3 , a4 , a5 , a6 , a7 , a8 , a9 , a10 / ;

Alias(AA,A);
Set K(Order,AA);

Scalar Count / 1 / ;
Scalar Last / 1 / ;

Loop{Order,
Count = 1 ;
Last = 0
Loop{A$B(A),
     Last = Last + 1 ;
     } ;

Loop{A$(ord(A) eq Last),
     K(Order,A) = B(A) ;
     } ;


Loop{A$(ord(A) eq Last),
      B(A)  = NO ;
    };
     } ;

Display K ;
