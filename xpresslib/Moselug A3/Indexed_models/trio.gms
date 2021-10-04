******************************************************
*
*   Mosel User Guide Example Problems
*
*   =================================
*
*
*
* origin file trio.mos
*
*   `````````````
*
*   Three ways of reading sparse data tables from file.
*
*
*
*   (c) 2001 Dash Associates
*
*       author: Y.Colombani, rev. May 2005
*
*******************************************************!)
*
* model "Trio input"


Set I / i1*i10 /;
Set J / j1*j10 /;

Parameter A1[i,j] ;


* First method: use an initializations block
         A1['i1','j1']  = 12.5 ;
         A1['i2','j3']  =  5.6 ;
         A1['i10','j9'] = -7.1 ;
         A1['i3','j2']  =  1.0 ;

* Second method: use the built-in readln function

Parameter A2[i,j] /'i1'.'j1'  12.5 ,
                   'i2'.'j3'   5.6 ,
                   'i10'.'j9' -7.1 ,
                   'i3'.'j2'   1.0 / ;

* Third method: use diskdata driver
Table A3[i,j]
          j1    j2    j3    j4   j5    j6    j7    j8    j9    j10
      i1 12.5
      i2             5.6
      i3       1.0
      i4
      i5
      i6
      i7
      i8
      i9
     i10                                                -7.1            ;

* Now let us see what we have

Display A1 ;
Display A2 ;
Display A3 ;


