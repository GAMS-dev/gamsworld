*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem :
*   *********
*   Source: Test problem 1 (Synthesis of processing system) in
*   M. Duran & I.E. Grossmann,
*   "An outer approximation algorithm for a class of mixed integer nonlinear
*    programs", Mathematical Programming 36, pp. 307-339, 1986.
*   SIF input: S. Leyffer, October 1997
*   classification OOR2-AN-6-6

Positive Variable  x1,x2,x3,y1,y2,y3;
         Variable  obj ;
Equation n1 , n2 , l3 , l4 , l5 , l6 , Def_obj ;


n1.. 0 =l=  0.8*log ( x2 + 1.0 )  + 0.96*log ( x1 - x2 + 1.0 )  - 0.8*x3 ;
n2.. 0 =l= log ( x2 + 1.0 )  + 1.2*log ( x1 - x2 + 1.0 )  - x3 - 2.0*y3 + 2.0 ;
l3.. 0 =g=  x2 - x1 ;
l4.. 0 =g=  x2 - 2.0*y1 ;
l5.. 0 =g= -x2 + x1 - 2.0*y2 ;
l6.. 0 =g=  y1 + y2 - 1.0 ;

Def_obj..
obj =e=   -18.0*log ( x2 + 1.0 )  -
           19.2*log ( x1 - x2 + 1.0 )  +
              5.0*y1 + 6.0*y2 + 8.0*y3 + 10.0*x1 - 7.0*x3 + 10.0 ;

x1.up = 2.0;
x2.up = 2.0;
x3.up = 1.0;
y1.up = 1.0;
y2.up = 1.0;
y3.up = 1.0;

Model synthes1 /all/;

Solve synthes1 using nlp  minimazing obj ;

display x1.l ; display x2.l ; display x3.l ;

display y1.l ; display y2.l ; display y3.l ;

display obj.l ;
