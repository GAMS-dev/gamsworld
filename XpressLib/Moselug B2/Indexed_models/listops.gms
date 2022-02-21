*******************************************************
*   Mosel User Guide Example Problems
*   =================================
*
*   file listops.mos
*   ````````````````
*   List operations.
*
*   (c) 2006 Dash Associates
*       author: S. Heipcke, Nov. 2006
*******************************************************

* model "List operations"
Set I /i1*i10/;

Parameter L[I] , M[I] ;

Loop{I$(ord(I) le 3), L[I] = ord(I); }; Display L ;
Loop{I$((ord(I) gt 3) and (ord(I) le 5) ), L[I] = ord(I); }; Display L ;
Loop{I$((ord(I) gt 5) and (ord(I) lt 9) ), L[I] = ord(I); }; Display L ;

Loop{I, M[I] = L[I]*2; }; Display M ;



