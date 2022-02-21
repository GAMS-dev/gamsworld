*******************************************************
*   Mosel User Guide Example Problems
*   =================================
*
* Origin file data_out.mos
*   `````````````````
*   Mosel model defining a data array
*   (to be read from the calling application
*    after the model execution).
*
*   (c) 2006 Dash Associates
*       author: S. Heipcke
********************************************************

* model "Data output"

* declarations
Set I / i1,i2,i3 /;
Set J / j5,j6,j7 /;

Table A[I,J]
          j5  j6  j7
   i1      2   4   6
   i2     12  14  16
   i3     22  24  26  ;
* In GAMS is prohibited to use "-" in SET definitions!!!!!!

Display A ;



