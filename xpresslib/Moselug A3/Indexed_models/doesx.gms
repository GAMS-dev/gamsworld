******************************************************
*
*   Mosel User Guide Example Problems
*
*   =================================
*
*
*
*   file doesx.mos
*
*   ``````````````
*
*   Working with dynamic arrays of variables.
*
*   (c) 2001 Dash Associates
*
*       author: Bob Daniel
*
*******************************************************!)
*
* model doesx



Set IR / i1*i15 / ;
Set I_all(IR) /i1 , i4 , i7 , i11 , i14 / ;
Parameter Volume[IR] /i1 1 , i4 4 , i7 7 , i11 11 , i14 14 / ;



Variable x[IR] ,
* Here the array is _not_ dynamic
          Obj ;

Equation  C          ,
          Def_obj    ;

C..        Sum{IR$(I_all(IR)), (Volume[IR] * x[IR]) } =g= 5  ;

Def_obj..  Obj =e= Sum{IR$I_all(IR) , x[IR] } ;



x.lo[IR]= 0

Model doesx / all / ;

Solve doesx using lp minimazing Obj ;


Display Obj.l ;