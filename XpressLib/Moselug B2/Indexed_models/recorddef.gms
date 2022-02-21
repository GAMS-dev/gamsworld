*******************************************************
*   Mosel User Guide Example Problems
*   =================================
*
*   file recorddef.mos
*   ``````````````````
*   Defining and initializing records.
*
*   (c) 2006 Dash Associates
*       author: S. Heipcke, Nov. 2006
*******************************************************

* model "Defining records"

Set R / r1*r10 / ;
Set T / t1*t4 / ;
Parameter T_int[T] ;
Loop{T, T_int[T] = ord(T); } ;
Parameter A[T,R];
      A['t1','r2'] = 2 ; A['t1','r3'] = 3 ; A['t1','r4'] = 4 ;
      A['t3','r3'] = 6 ; A['t3','r6'] = 9 ;
      A['t4','r1'] = 5 ; A['t4','r2'] = 6 ; A['t4','r3'] = 7 ; A['t4','r4'] =8 ;
Display A ;


