******************************************************
*
*   Mosel User Guide Example Problems
*
*   =================================
*
*
*
*  origin file doesx2.mos
*
*   ```````````````
*
*   Using 'finalize' to turn a dynamic set into
*
*   a constant set.
*
*
*
*   (c) 2001 Dash Associates
*
*       author: Bob Daniel
*
*******************************************************!)
*
* model doesx2

Set I / i1*i14 / ;
Set I_all(i) /i1 , i4 , i7 , i11 , i14 / ;
Parameter Volume[I] /i1 1 , i4 4 , i7 7 , i11 11 , i14 14 / ;

Variable x[I] ,
* Here the array is _not_ dynamic
          Obj ;

Equation  C          ,
          Def_obj    ;

C..        Sum{I$(I_all(i)), (Volume[I] * x[I]) } =g= 5  ;

Def_obj..  Obj =e= Sum{I$I_all(i) , x[I] } ;

x.lo[I]= 0

Model doesx2 / all / ;

Solve doesx2 using lp minimazing Obj ;


Display Obj.l ;