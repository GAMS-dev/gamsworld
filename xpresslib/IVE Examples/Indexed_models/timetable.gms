*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file timetable.mos
*   ``````````````````
*   TYPE:         Timetabling problem
*   DIFFICULTY:   2
*   FEATURES:     MIP problem, many specific constraints, tricky (pseudo-)
*                 objective function, `finalize'
*   DESCRIPTION:  We want to establish the weekly timetable for two classes of
*                 a college. The two classes have the same teachers, except
*                 for mathematics and sport. All lessons have a duration of
*                 two hours. All students of the same class attend exactly
*                 the same courses. Every class may only have one two-hour
*                 lesson per subject on a single day. Some teachers are only
*                 available on certain days. Some time slots are reserved
*                 for certain subjects.
*   FURTHER INFO: `Applications of optimization with Xpress-MP',
*                 Section 14.3 `Establishing a college timetable'
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke
********************************************************

* model "School timetable"


* Number of time periods for courses
$Set NP 4
* Days per week
$Set ND 5
*  total = ND*NP
$Set total 20

Set DAY / d1*d%ND% / ;

Set NAMES / Mon , Tue , Wed , Thu , Fri / ;

* Set of teachers
Set TEACHERS / Mr_Cheese    ,
               Mrs_Insulin  ,
               Mr_Map       ,
               Mr_Effofecks ,
               Mrs_Derivate ,
               Mrs_Electron ,
               Mr_Wise      ,
               Mr_Muscle    ,
               Mrs_Biceps    / ;

* Set of classes
Set CLASS / c1*c2 / ;

* Set of time slots for the entire week
Set SLOTS / s1*s%total% / ;

* Lessons per teacher and class
Parameter COURSE[TEACHERS,CLASS] ;
         COURSE['Mr_Cheese','c1']    = 1 ; COURSE['Mr_Cheese','c2']    =  1 ;
         COURSE['Mrs_Insulin','c1']  = 3 ; COURSE['Mrs_Insulin','c2']  =  3 ;
         COURSE['Mr_Map','c1']       = 2 ; COURSE['Mr_Map','c2']       =  2 ;
         COURSE['Mr_Effofecks','c1'] = 0 ; COURSE['Mr_Effofecks','c2'] =  4 ;
         COURSE['Mrs_Derivate','c1'] = 4 ; COURSE['Mrs_Derivate','c2'] =  0 ;
         COURSE['Mrs_Electron','c1'] = 3 ; COURSE['Mrs_Electron','c2'] =  3 ;
         COURSE['Mr_Wise','c1']      = 1 ; COURSE['Mr_Wise','c2']      =  1 ;
         COURSE['Mr_Muscle','c1']    = 1 ; COURSE['Mr_Muscle','c2']    =  0 ;
         COURSE['Mrs_Biceps','c1']   = 0 ; COURSE['Mrs_Biceps','c2']   =  1 ;



Binary Variable teach[TEACHERS,CLASS,SLOTS]
* teach(t,c,l) = 1 if teacher t gives a
* lesson to class c during time period l

       Variable Hole ;

Equation PlanAll(TEACHERS,CLASS)          ,
         OneCourseClass(CLASS,SLOTS)      ,
         OneCourseTeacher(TEACHERS,SLOTS) ,
         OncePerDay(TEACHERS,CLASS,DAY) ,
         Def_Obj                           ;


* Plan all courses
PlanAll(TEACHERS,CLASS)..
     Sum{SLOTS, teach[TEACHERS,CLASS,SLOTS] } =e= COURSE[TEACHERS,CLASS] ;

* For every class, one course at a time
OneCourseClass(CLASS,SLOTS)..
     Sum{TEACHERS, teach[TEACHERS,CLASS,SLOTS]} =l= 1 ;

* Teacher teaches one course at a time
OneCourseTeacher(TEACHERS,SLOTS)..
     Sum{CLASS, teach[TEACHERS,CLASS,SLOTS]} =l= 1 ;

* Every subject only once per day
OncePerDay(TEACHERS,CLASS,DAY)..
     Sum{SLOTS$((ord(SLOTS) ge ( [ord(DAY)-1]*%NP%+1))   and
                (ord(SLOTS) le (([ord(DAY)-1]+1)*%NP%))     ),
                teach[TEACHERS,CLASS,SLOTS] } =l= 1 ;

* Objective: number of "holes" in the class timetables
Def_Obj..
    Hole =e= Sum{(TEACHERS,CLASS,DAY),
          (Sum{SLOTS,teach[TEACHERS,CLASS,SLOTS]$[ord(SLOTS) eq ( {ord(DAY)-1}*%NP%+1) ]} +
           Sum{SLOTS,teach[TEACHERS,CLASS,SLOTS]$[ord(SLOTS) eq (({ord(DAY)-1}+1)*%NP%)]} )};

* Sport Thursday afternoon (slot 15)
 teach.fx['Mr_Muscle','c1','s15']  = 1 ;
 teach.fx['Mrs_Biceps','c2','s15'] = 1 ;

* No course during first period of Monday morning
teach.fx[TEACHERS,CLASS,'s1'] = 0 ;
* No course by Mr Effofecks Monday morning
teach.fx['Mr_Effofecks','c2','s1'] = 0 ;
teach.fx['Mr_Effofecks','c2','s2'] = 0 ;
* No Biology on Wednesday
teach.fx['Mrs_Insulin',CLASS,SLOTS]$((ord(SLOTS) ge 2*%NP%+1) and
                                     (ord(SLOTS) le 3*%NP%  )) = 0 ;

* Solve the problem
Model School_timetable / all / ;

Solve School_timetable using MIP minimazing Hole ;

Display Hole.l ;

