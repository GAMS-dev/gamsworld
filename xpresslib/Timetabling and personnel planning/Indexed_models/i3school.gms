*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file i3school.mos
*   `````````````````
*   Determine a timetable for 2 classes
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "I-3 School timetable"

$Set NP 4
* Number of time periods for courses
Set SLOTS /S1*S20/;
* Set of time slots for the entire week

Set TEACHERS / Mr_Cheese   ,
               Mrs_Insulin ,
               Mr_Map      ,
               Mr_Effofecks,
               Mrs_Derivate,
               Mrs_Electron,
               Mr_Wise     ,
               Mr_Muscle   ,
               Mrs_Biceps   / ;
* Set of teachers
Set CLASS / c1*c2 / ;
* Set of classes
Set ND / Mon , Tue , Wed , Thu , Fri / ;
* Days per week
Set ND_N / n1*n5 / ;

Table COURSE[TEACHERS,CLASS]
                                          c1  c2
                         Mr_Cheese        1   1
                         Mrs_Insulin      3   3
                         Mr_Map           2   2
                         Mr_Effofecks     0   4
                         Mrs_Derivate     4   0
                         Mrs_Electron     3   3
                         Mr_Wise          1   1
                         Mr_Muscle        1   0
                         Mrs_Biceps       0   1  ;
* Lessons per teacher and class

Binary Variable teach[TEACHERS,CLASS,SLOTS] ;
* teach(t,c,l) = 1 if teacher t gives a
* lesson to class c during time period l

Variable Hole ;

Equation Eq_1(TEACHERS,CLASS)       ,
         Eq_2(CLASS,SLOTS)          ,
         Eq_3(TEACHERS,SLOTS)       ,
         Eq_4(TEACHERS,CLASS,ND_N) ,
         Def_Obj                    ;

* Plan all courses
Eq_1(TEACHERS,CLASS)..
 Sum{SLOTS, teach[TEACHERS,CLASS,SLOTS]} =e= COURSE[TEACHERS,CLASS] ;

* For every class, one course at a time
Eq_2(CLASS,SLOTS)..
Sum{TEACHERS, teach[TEACHERS,CLASS,SLOTS] } =l= 1 ;

* Teacher teaches one course at a time
Eq_3(TEACHERS,SLOTS)..
Sum{CLASS, teach[TEACHERS,CLASS,SLOTS] } =l= 1   ;

* Every subject only once per day
Eq_4(TEACHERS,CLASS,ND_N)..
  Sum{SLOTS$((ord(SLOTS) ge ((ord(ND_N)-1)*%NP%+1)) and
             (ord(SLOTS) le ((ord(ND_N)-1)+1)*%NP%)    ),
                             teach[TEACHERS,CLASS,SLOTS] } =l= 1 ;

* Objective: number of "holes" in the class timetables
Def_Obj..
 Hole =e=
Sum{(TEACHERS,CLASS,ND_N),(
  Sum{SLOTS$(ord(SLOTS) eq ((ord(ND_N)-1)*%NP%+1)),teach[TEACHERS,CLASS,SLOTS]} +
  Sum{SLOTS$(ord(SLOTS) eq ((ord(ND_N)-1)+1)*%NP%),teach[TEACHERS,CLASS,SLOTS]}
                                 )} ;
* Sport Thursday afternoon (slot 15)
teach.fx["Mr_Muscle",'c1','s15']  = 1 ;
teach.fx["Mrs_Biceps",'c2','s15'] = 1 ;

* No course during first period of Monday morning
teach.fx[TEACHERS,CLASS,'S1']  = 0 ;

* No course by Mr Effofecks Monday morning
Loop(SLOTS${(ord(SLOTS) eq 1) or (ord(SLOTS) eq 2)},
teach.fx['Mr_Effofecks','c2',SLOTS] = 0 ;               );

* No Biology on Wednesday
Loop(CLASS,
Loop(SLOTS${(ord(SLOTS) ge 9) and (ord(SLOTS) le 12)},
teach.fx['Mrs_Insulin','c1',SLOTS] = 0 ;                ););

* Solve the problem
Model I_3_School_timetable / All / ;

Solve I_3_School_timetable using MIP minimazing Hole ;

Display Hole.l ;





