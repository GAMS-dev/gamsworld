*******************************************************
*   Mosel User Guide Example Problems
*   =================================
*
* orogin file shsort.mos
*   ```````````````
*   Combining the 'repeat-until', 'while-do', and
*   'forall-do' loops.
*
*   (c) 2001 Dash Associates
*       author: S. Heipcke
********************************************************

* model "Shell sort"


* Unsorted array of numbers


$Set N 50
* Size of array ANum

Set I /i1*i%N%/;
Alias (I,J);
Parameter ANum[I] , OrderNum[I] ;  OrderNum[I] = -1 ;

Loop(I, ANum[I] = round(100*Uniform(0,1)) ; ) ;

Parameter Amin ,inc ;
* Determine the starting increment

Loop(J,
Amin = 1000 ;
Loop(I,
if (((ANum[I] lt Amin) and (ANum[I] > 0)) , Amin = ANum[I] ; inc = ord(I);  ) ;
     ) ;

OrderNum[J] = Amin ;
ANum[I]$(ord(i) eq inc) = -ANum[I] ;
     );




Parameter A  ;
A = %N% ;
Loop(I,ANum[I] = -ANum[I] ;);


Display "Given list of numbers size ", A ;
Display "UnOrdered list after  Ordered list ";

Display ANum , OrderNum ;