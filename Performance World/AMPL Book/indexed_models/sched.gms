$ontext
GAMS - General Algebraic Modeling System AMPL Book Model Library

Copyright (c) 2019 GAMS Software GmbH <support@gams.com>
Copyright (c) 2019 GAMS Development Corp. <support@gams.com>
Copyright (c) 2019 Andre Savitsky <andresavit@yandex.ru>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
$offtext

set SHIFTS  / Mon1 , Tue1 , Wed1 , Thu1 , Fri1 , Sat1 ,
              Mon2 , Tue2 , Wed2 , Thu2 , Fri2 , Sat2 ,
              Mon3 , Tue3 , Wed3 , Thu3 , Fri3 / ;
* shifts

$Set Nsched  126
* number of schedules;
set SCHEDS / S1*S%Nsched% /;
* set of schedules

Alias(SHIFTS,SHIFTS_1);
Alias(SHIFTS,SHIFTS_2);
Alias(SHIFTS,SHIFTS_3);
Alias(SHIFTS,SHIFTS_4);
Alias(SHIFTS,SHIFTS_5);

set SHIFT_LIST(SHIFTS,SHIFTS_1,SHIFTS_2,SHIFTS_3,SHIFTS_4) ;

SHIFT_LIST('Mon1','Tue1','Wed1','Thu1','Fri1')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Wed1','Thu1','Fri2')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Wed1','Thu1','Fri3')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Wed1','Thu1','Sat1')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Wed1','Thu1','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Wed1','Thu2','Fri2')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Wed1','Thu2','Fri3')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Wed1','Thu2','Sat1')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Wed1','Thu2','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Wed1','Thu3','Fri3')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Wed1','Thu3','Sat1')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Wed1','Thu3','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Wed1','Fri1','Sat1')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Wed1','Fri1','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Wed1','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Wed2','Thu2','Fri2')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Wed2','Thu2','Fri3')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Wed2','Thu2','Sat1')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Wed2','Thu2','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Wed2','Thu3','Fri3')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Wed2','Thu3','Sat1')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Wed2','Thu3','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Wed2','Fri1','Sat1')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Wed2','Fri1','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Wed2','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Wed3','Thu3','Fri3')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Wed3','Thu3','Sat1')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Wed3','Thu3','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Wed3','Fri1','Sat1')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Wed3','Fri1','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Wed3','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Thu1','Fri1','Sat1')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Thu1','Fri1','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Thu1','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Tue1','Thu2','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Tue2','Wed2','Thu2','Fri2')  = Yes ;
SHIFT_LIST('Mon1','Tue2','Wed2','Thu2','Fri3')  = Yes ;
SHIFT_LIST('Mon1','Tue2','Wed2','Thu2','Sat1')  = Yes ;
SHIFT_LIST('Mon1','Tue2','Wed2','Thu2','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Tue2','Wed2','Thu3','Fri3')  = Yes ;
SHIFT_LIST('Mon1','Tue2','Wed2','Thu3','Sat1')  = Yes ;
SHIFT_LIST('Mon1','Tue2','Wed2','Thu3','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Tue2','Wed2','Fri1','Sat1')  = Yes ;
SHIFT_LIST('Mon1','Tue2','Wed2','Fri1','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Tue2','Wed2','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Tue2','Wed3','Thu3','Fri3')  = Yes ;
SHIFT_LIST('Mon1','Tue2','Wed3','Thu3','Sat1')  = Yes ;
SHIFT_LIST('Mon1','Tue2','Wed3','Thu3','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Tue2','Wed3','Fri1','Sat1')  = Yes ;
SHIFT_LIST('Mon1','Tue2','Wed3','Fri1','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Tue2','Wed3','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Tue2','Thu1','Fri1','Sat1')  = Yes ;
SHIFT_LIST('Mon1','Tue2','Thu1','Fri1','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Tue2','Thu1','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Tue2','Thu2','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Tue3','Wed3','Thu3','Fri3')  = Yes ;
SHIFT_LIST('Mon1','Tue3','Wed3','Thu3','Sat1')  = Yes ;
SHIFT_LIST('Mon1','Tue3','Wed3','Thu3','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Tue3','Wed3','Fri1','Sat1')  = Yes ;
SHIFT_LIST('Mon1','Tue3','Wed3','Fri1','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Tue3','Wed3','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Tue3','Thu1','Fri1','Sat1')  = Yes ;
SHIFT_LIST('Mon1','Tue3','Thu1','Fri1','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Tue3','Thu1','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Tue3','Thu2','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Wed1','Thu1','Fri1','Sat1')  = Yes ;
SHIFT_LIST('Mon1','Wed1','Thu1','Fri1','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Wed1','Thu1','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Wed1','Thu2','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Mon1','Wed2','Thu2','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Mon2','Tue2','Wed2','Thu2','Fri2')  = Yes ;
SHIFT_LIST('Mon2','Tue2','Wed2','Thu2','Fri3')  = Yes ;
SHIFT_LIST('Mon2','Tue2','Wed2','Thu2','Sat1')  = Yes ;
SHIFT_LIST('Mon2','Tue2','Wed2','Thu2','Sat2')  = Yes ;
SHIFT_LIST('Mon2','Tue2','Wed2','Thu3','Fri3')  = Yes ;
SHIFT_LIST('Mon2','Tue2','Wed2','Thu3','Sat1')  = Yes ;
SHIFT_LIST('Mon2','Tue2','Wed2','Thu3','Sat2')  = Yes ;
SHIFT_LIST('Mon2','Tue2','Wed2','Fri1','Sat1')  = Yes ;
SHIFT_LIST('Mon2','Tue2','Wed2','Fri1','Sat2')  = Yes ;
SHIFT_LIST('Mon2','Tue2','Wed2','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Mon2','Tue2','Wed3','Thu3','Fri3')  = Yes ;
SHIFT_LIST('Mon2','Tue2','Wed3','Thu3','Sat1')  = Yes ;
SHIFT_LIST('Mon2','Tue2','Wed3','Thu3','Sat2')  = Yes ;
SHIFT_LIST('Mon2','Tue2','Wed3','Fri1','Sat1')  = Yes ;
SHIFT_LIST('Mon2','Tue2','Wed3','Fri1','Sat2')  = Yes ;
SHIFT_LIST('Mon2','Tue2','Wed3','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Mon2','Tue2','Thu1','Fri1','Sat1')  = Yes ;
SHIFT_LIST('Mon2','Tue2','Thu1','Fri1','Sat2')  = Yes ;
SHIFT_LIST('Mon2','Tue2','Thu1','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Mon2','Tue2','Thu2','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Mon2','Tue3','Wed3','Thu3','Fri3')  = Yes ;
SHIFT_LIST('Mon2','Tue3','Wed3','Thu3','Sat1')  = Yes ;
SHIFT_LIST('Mon2','Tue3','Wed3','Thu3','Sat2')  = Yes ;
SHIFT_LIST('Mon2','Tue3','Wed3','Fri1','Sat1')  = Yes ;
SHIFT_LIST('Mon2','Tue3','Wed3','Fri1','Sat2')  = Yes ;
SHIFT_LIST('Mon2','Tue3','Wed3','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Mon2','Tue3','Thu1','Fri1','Sat1')  = Yes ;
SHIFT_LIST('Mon2','Tue3','Thu1','Fri1','Sat2')  = Yes ;
SHIFT_LIST('Mon2','Tue3','Thu1','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Mon2','Tue3','Thu2','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Mon2','Wed1','Thu1','Fri1','Sat1')  = Yes ;
SHIFT_LIST('Mon2','Wed1','Thu1','Fri1','Sat2')  = Yes ;
SHIFT_LIST('Mon2','Wed1','Thu1','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Mon2','Wed1','Thu2','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Mon2','Wed2','Thu2','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Mon3','Tue3','Wed3','Thu3','Fri3')  = Yes ;
SHIFT_LIST('Mon3','Tue3','Wed3','Thu3','Sat1')  = Yes ;
SHIFT_LIST('Mon3','Tue3','Wed3','Thu3','Sat2')  = Yes ;
SHIFT_LIST('Mon3','Tue3','Wed3','Fri1','Sat1')  = Yes ;
SHIFT_LIST('Mon3','Tue3','Wed3','Fri1','Sat2')  = Yes ;
SHIFT_LIST('Mon3','Tue3','Wed3','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Mon3','Tue3','Thu1','Fri1','Sat1')  = Yes ;
SHIFT_LIST('Mon3','Tue3','Thu1','Fri1','Sat2')  = Yes ;
SHIFT_LIST('Mon3','Tue3','Thu1','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Mon3','Tue3','Thu2','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Mon3','Wed1','Thu1','Fri1','Sat1')  = Yes ;
SHIFT_LIST('Mon3','Wed1','Thu1','Fri1','Sat2')  = Yes ;
SHIFT_LIST('Mon3','Wed1','Thu1','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Mon3','Wed1','Thu2','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Mon3','Wed2','Thu2','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Tue1','Wed1','Thu1','Fri1','Sat1')  = Yes ;
SHIFT_LIST('Tue1','Wed1','Thu1','Fri1','Sat2')  = Yes ;
SHIFT_LIST('Tue1','Wed1','Thu1','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Tue1','Wed1','Thu2','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Tue1','Wed2','Thu2','Fri2','Sat2')  = Yes ;
SHIFT_LIST('Tue2','Wed2','Thu2','Fri2','Sat2')  = Yes ;

Parameter required[SHIFTS] / Mon1 100 , Mon2 78 , Mon3 52 ,
                             Tue1 100 , Tue2 78 , Tue3 52 ,
                             Wed1 100 , Wed2 78 , Wed3 52 ,
                             Thu1 100 , Thu2 78 , Thu3 52 ,
                             Fri1 100 , Fri2 78 , Fri3 52 ,
                             Sat1 100 , Sat2 78 / ;

Variable Work[SHIFTS,SHIFTS_1,SHIFTS_2,SHIFTS_3,SHIFTS_4], Total_Cost;

Equation Eq_up_constrain(SHIFTS) , Def_obj ;

Eq_up_constrain(SHIFTS)..
sum((SHIFTS_1,SHIFTS_2,SHIFTS_3,SHIFTS_4,SHIFTS_5)${
                         ((ord(SHIFTS) eq ord(SHIFTS_1)) or
                          (ord(SHIFTS) eq ord(SHIFTS_2)) or
                          (ord(SHIFTS) eq ord(SHIFTS_3)) or
                          (ord(SHIFTS) eq ord(SHIFTS_4)) or
                          (ord(SHIFTS) eq ord(SHIFTS_5)) and
                 SHIFT_LIST(SHIFTS_1,SHIFTS_2,SHIFTS_3,SHIFTS_4,SHIFTS_5)
                         )

                                          },
(Work[SHIFTS_1,SHIFTS_2,SHIFTS_3,SHIFTS_4,SHIFTS_5])
   ) =e=  required[SHIFTS] ;

Def_obj.. Total_Cost =e= Sum((SHIFTS_1,SHIFTS_2,
                              SHIFTS_3,SHIFTS_4,
                              SHIFTS_5)$SHIFT_LIST(SHIFTS_1,SHIFTS_2,
                                                   SHIFTS_3,SHIFTS_4,
                                                            SHIFTS_5),
                              Work[SHIFTS_1,SHIFTS_2,SHIFTS_3,SHIFTS_4,SHIFTS_5]
                             );

Work.lo[SHIFTS,SHIFTS_1,SHIFTS_2,SHIFTS_3,SHIFTS_4] = 0 ;

Work.fx[SHIFTS,
        SHIFTS_1,
        SHIFTS_2,
        SHIFTS_3,
        SHIFTS_4]$(not SHIFT_LIST(SHIFTS,
                                  SHIFTS_1,
                                  SHIFTS_2,
                                  SHIFTS_3,
                                  SHIFTS_4))=0;

Model sched /all/;

Solve sched using nlp minimazing total_cost ;

Display total_cost.l ;