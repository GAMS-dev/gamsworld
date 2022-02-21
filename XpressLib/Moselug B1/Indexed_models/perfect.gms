*******************************************************
*   Mosel User Guide Example Problems
*   =================================
*
* origin file perfect.mos
*   ````````````````
*   Using the 'forall' loop.
*
*   (c) 2001 Dash Associates
*       author: S. Heipcke
********************************************************

* model Perfect

$Set LIMIT 100

Set I / i1*i%LIMIT% / ;
Alias (I,J) ;

* Perfect numbers between 1 and  LIMIT
Parameter sumd,p,d,z ;
Loop(I, sumd = 1 ;
        p = ord(I);

Loop(J$((ord(J) ge 2 ) and (ord(J) le p - 1 )  ) ,
d = ord(J);
z = mod(p,d) ;

if (z eq 0 , sumd = sumd + d ; );
  );

if ( p eq sumd,  display p );

  );