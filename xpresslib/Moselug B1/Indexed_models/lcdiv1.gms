******************************************************
*   Mosel User Guide Example Problems
*   =================================
*
* origin  file lcdiv1.mos
*   ```````````````
*   Using the `while` loop.
*
*   (c) 2001 Dash Associates
*       author: S. Heipcke
*******************************************************!)

* model Lcdiv1
Parameter A , B ;
A = 124 ;
B =   8 ;

 while(A ne B,
  if(A gt B ,
   A=A-B ;
  else B=B-A
   );
    );
Display A ;
Display B ;