*******************************************************
*   Mosel User Guide Example Problems
*   =================================
*
*   file listinit.mos
*   `````````````````
*   Initializing lists with values.
*
*   (c) 2006 Dash Associates
*       author: S. Heipcke, Nov. 2006
********************************************************

* model "Initializing lists"
Set II    / i1*i10 / ;
Set S(II) / i1*i5  / ;
Set Total /A , B , C , D , E , F , G , H , I , K , L/
Set M(Total) / A , B , C , D , E , F , G , H , I / ;

Parameter LL[II] / i1 1 , i2 2 , i3 3 , i4 4 ,  i5 5 ,
                  i6 6 , i7 7 , i8 8 , i9 9 , i10 10 / ;
Parameter KK[II] / i1 5 , i2 4 , i3 3 , i4 2 , i5  1 ,
                  i6 1 , i7 2 , i8 3 , i9 4 , i10 5 / ;

Set N(Total) /B,C,A,K,L,D,E,H,I,F,G/;

Set R(Total) ;R(Total) = N(Total) ;

Display II ;
Display S  ;
Display M  ;

