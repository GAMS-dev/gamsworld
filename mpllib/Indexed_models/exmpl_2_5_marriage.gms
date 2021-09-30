*MPL Model Library MPL Model Library
*Marriage Problem,  Example 2.5,  Murty
*   {  Exmpl2.5_Marriage.mpl  }
*   {  Murty, Operations Research, Determining Optimization Models  }
*   {  Chapter 2,  Example 2.5,  Assignment,  Size: 10x25,  Page 36  }

* TITLE    MarriageProblem;

Set man   / m1*m5 / ;
Set woman / w1*w5 / ;

Table Happyness[man,woman]
           w1   w2   w3   w4   w5
     m1    78  -16   19   25   83
     m2    99   98   87   16   92
     m3    86   19   39   88   17
     m4   -20   99   88   79   65
     m5    67   98   90   48   60    ;

Variables TimeTogether[man,woman] ,
          TotalHappyness          ;

Equation MenMonogamous(man)    ,
         WomenMonogamous(woman),
         Def_obj               ;

MenMonogamous(man)..
       Sum{woman, TimeTogether[man,woman]} =e= 1;

WomenMonogamous(woman)..
       Sum{man,   TimeTogether[man,woman]} =e= 1;

Def_obj..  TotalHappyness =e= Sum{(man,woman), Happyness[man,woman] *
                                               TimeTogether[man,woman] } ;

TimeTogether.lo[man,woman] = 0 ;
* MPL model solution
*TimeTogether.fx['m1','w1']     =    0.0000 ;
*TimeTogether.fx['m1','w2']     =    0.0000 ;
*TimeTogether.fx['m1','w3']     =    0.0000 ;
*TimeTogether.fx['m1','w4']     =    0.0000 ;
*TimeTogether.fx['m1','w5']     =    1.0000 ;
*TimeTogether.fx['m2','w1']     =    1.0000 ;
*TimeTogether.fx['m2','w2']     =    0.0000 ;
*TimeTogether.fx['m2','w3']     =    0.0000 ;
*TimeTogether.fx['m2','w4']     =    0.0000 ;
*TimeTogether.fx['m2','w5']     =    0.0000 ;
*TimeTogether.fx['m3','w1']     =    0.0000 ;
*TimeTogether.fx['m3','w2']     =    0.0000 ;
*TimeTogether.fx['m3','w3']     =    0.0000 ;
*TimeTogether.fx['m3','w4']     =    1.0000 ;
*TimeTogether.fx['m3','w5']     =    0.0000 ;
*TimeTogether.fx['m4','w1']     =    0.0000 ;
*TimeTogether.fx['m4','w2']     =    1.0000 ;
*TimeTogether.fx['m4','w3']     =    0.0000 ;
*TimeTogether.fx['m4','w4']     =    0.0000 ;
*TimeTogether.fx['m4','w5']     =    0.0000 ;
*TimeTogether.fx['m5','w1']     =    0.0000 ;
*TimeTogether.fx['m5','w2']     =    0.0000 ;
*TimeTogether.fx['m5','w3']     =    1.0000 ;
*TimeTogether.fx['m5','w4']     =    0.0000 ;
*TimeTogether.fx['m5','w5']     =    0.0000 ;



Model m2_5_Marriage / all / ;

Solve m2_5_Marriage using lp maximazing TotalHappyness ;

Display TotalHappyness.l ;