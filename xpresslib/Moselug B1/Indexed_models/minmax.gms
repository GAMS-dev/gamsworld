******************************************************
*   Mosel User Guide Example Problems
*   =================================
*
* origin file minmax.mos
*   ```````````````
*   The 'if-then-elif-then' selection statement.
*
*   (c) 2001 Dash Associates
*       author: S. Heipcke
********************************************************

* model Minmax                   ! Start a new model

Set I / i1 * i50 / ;
* Generate a set of 50 randomly chosen numbers
Scalar UB /  1000 / ;
Scalar LB / -1000 / ;

Parameter P , SNumbers[I];
Parameter minval , maxval ;

Loop(I,SNumbers[I] = {round(Uniform(0,1)*200)-100} );

minval=UB ;
maxval=LB ;

Loop(I, P = SNumbers[I] ;
if( P lt minval, minval = p ; );
if( P gt maxval, maxval = p ; );
    );

Display SNumbers ;
Display minval ;
Display maxval ;