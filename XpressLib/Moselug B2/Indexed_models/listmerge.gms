*******************************************************
*   Mosel User Guide Example Problems
*   =================================
*
*   file listmerge.mos
*   ``````````````````
*   Merging two ordered lists into one ordered list.
*
*   (c) 2006 Dash Associates
*       author: S. Heipcke, Aug. 2006
********************************************************

* model "Merging lists"

Set I /i1*i7/;
Set J /j1*j10/;
Set M /m1*m17/;
Alias(M,MM);
Alias(M,MMM);
Parameter K[I] ;
          K['i1'] =  1 ;
          K['i2'] =  4 ;
          K['i3'] =  5 ;
          K['i4'] =  8 ;
          K['i5'] =  9 ;
          K['i6'] = 10 ;
          K['i7'] = 13 ;
Parameter L[J] ;
          L['j1'] = -1 ;
          L['j2'] =  0 ;
          L['j3'] =  4 ;
          L['j4'] =  6 ;
          L['j5'] =  7 ;
          L['j6'] =  8 ;
          L['j7'] =  9 ;
          L['j8'] =  9 ;
          L['j9'] = 11 ;
          L['j10']= 11 ;



Scalar Count ;
Scalar Epsi /0.000001/ ;

Parameter Result[M] ;
Parameter Main_Result[M] ; Main_Result[M] = EPSI ;

Loop{M, Result[M] =Sum{I$(ord(I) eq ord(M)), K[I] };  };
     Count = card(I) ;
Loop{M$(ord(M) gt Count), Result[M] = Sum{J$(ord(J) eq ord(M)-Count),L[J]};};

Main_Result['m1'] = Result['m1'] ;
Loop{M$(ord(M) lt card(M)),
Count = 0 ;
Loop{MM$((ord(MM) gt ord(M))and(Count eq 0)),
    IF (Main_Result[M] ne Result[MM] ,
                Main_Result[M+1] = Result[MM] ;
                Loop{MMM$((ord(MMM) ge ord(MM))and(Main_Result[M+1] eq Result[MMM])),
                Result[MMM] = EPSI ;
                    };
                 Count = 1;);
    } };
Parameter Final_Result[M] ;
Count = 1;
Loop(M,
IF (Main_Result[M] ne EPSI ,
    Loop(MM$(ord(MM) eq Count),
    Final_Result[MM] = Main_Result[M] ;
    );
    Count = Count + 1 ;
    );
    );

