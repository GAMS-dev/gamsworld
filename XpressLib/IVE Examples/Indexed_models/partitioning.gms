*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file partitioning.mos
*   `````````````````````
*   TYPE:         Partitioning problem
*   DIFFICULTY:   4
*   FEATURES:     MIP problem, algorithm for data preprocessing; file
*                 inclusion, 3 nested/recursive procedures, working with
*                 sets, `if-then', `forall-do', `exists', `finalize',
*                 graphical representation of results
*   DESCRIPTION:  In a country far away, the party of the duke Sark Mevo has
*                 finally beaten the ruling coalition headed by the princess
*                 Reguel Tekris. Mevo wishes to consolidate his position in
*                 the capital, the fourteen quarters of which need to be
*                 grouped to electoral districts. The forecast number of
*                 favorable votes for Mevo and the total number of electors
*                 per quarter are known. All electors must vote and the
*                 winner needs to have the absolute majority. A valid
*                 electoral district is formed by several adjacent quarters
*                 and must have between 30,000 and 100,000 voters. Electoral
*                 districts consisting of a single quarter are permitted if
*                 it has at least 50,000 voters. Nevertheless, Mevo may not
*                 decently define an electoral district solely with quarter
*                 10, since this contains his residence.
*                 Determine a partitioning into five electoral districts
*                 that maximizes the number of seats for Mevo. Should this
*                 cause any difficulties, try a partitioning into six
*                 districts.
*   FURTHER INFO: `Applications of optimization with Xpress-MP',
*                 Section 15.3 `Rigging elections'
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke
********************************************************

* model "Rigging elections"

* Required number of districts
Scalar REQD / 6 / ;

* Number of quarters
Set QUARTERS / q1*q14 / ;
* Set of election districts
Set RDIST /r1*r48/;

* 1 if majority of votes, 0 otherwise
Parameter MAJ[RDIST] ; MAJ[RDIST] = 0 ;
* 1 if quarter is in district,
* 0 otherwise

MAJ['r1']  = 0 ; MAJ['r2']  = 0 ; MAJ['r3']  = 1 ; MAJ['r4']  = 1 ;
MAJ['r5']  = 0 ; MAJ['r6']  = 0 ; MAJ['r7']  = 0 ; MAJ['r8']  = 1 ;
MAJ['r9']  = 0 ; MAJ['r10'] = 1 ; MAJ['r11'] = 1 ; MAJ['r12'] = 1 ;
MAJ['r13'] = 1 ; MAJ['r14'] = 1 ; MAJ['r15'] = 1 ; MAJ['r16'] = 0 ;
MAJ['r17'] = 0 ; MAJ['r18'] = 0 ; MAJ['r19'] = 0 ; MAJ['r20'] = 1 ;
MAJ['r21'] = 1 ; MAJ['r22'] = 0 ; MAJ['r23'] = 0 ; MAJ['r24'] = 0 ;
MAJ['r25'] = 0 ; MAJ['r26'] = 0 ; MAJ['r27'] = 0 ; MAJ['r28'] = 0 ;
MAJ['r29'] = 1 ; MAJ['r30'] = 1 ; MAJ['r31'] = 1 ; MAJ['r32'] = 0 ;
MAJ['r33'] = 0 ; MAJ['r34'] = 0 ; MAJ['r35'] = 0 ; MAJ['r36'] = 0 ;
MAJ['r37'] = 1 ; MAJ['r38'] = 1 ; MAJ['r39'] = 1 ; MAJ['r40'] = 1 ;
MAJ['r41'] = 1 ; MAJ['r42'] = 1 ; MAJ['r43'] = 0 ; MAJ['r44'] = 1 ;
MAJ['r45'] = 1 ; MAJ['r46'] = 0 ; MAJ['r47'] = 0 ; MAJ['r48'] = 1 ;


Parameter DISTR[RDIST,QUARTERS] ;  DISTR[RDIST,QUARTERS] = 0 ;
DISTR['r1','q1']  = 1 ;DISTR['r1','q2']   = 1 ;DISTR['r2','q1']   = 1 ;
DISTR['r2','q2']  = 1 ;DISTR['r2','q3']   = 1 ;DISTR['r3','q1']   = 1 ;
DISTR['r3','q2']  = 1 ;DISTR['r3','q5']   = 1 ;DISTR['r4','q1']   = 1 ;
DISTR['r4','q5']  = 1 ;DISTR['r5','q1']   = 1 ;DISTR['r5','q5']   = 1 ;
DISTR['r5','q6']  = 1 ;DISTR['r6','q2']   = 1 ;DISTR['r7','q2']   = 1 ;
DISTR['r7','q3']  = 1 ;DISTR['r8','q2']   = 1 ;DISTR['r8','q3']   = 1 ;
DISTR['r8','q5']  = 1 ;DISTR['r9','q2']   = 1 ;DISTR['r9','q5']   = 1 ;
DISTR['r10','q3'] = 1 ;DISTR['r10','q4']  = 1 ;DISTR['r11','q3']  = 1 ;
DISTR['r11','q5'] = 1 ;DISTR['r12','q3']  = 1 ;DISTR['r12','q5']  = 1 ;
DISTR['r12','q6'] = 1 ;DISTR['r13','q3']  = 1 ;DISTR['r13','q5']  = 1 ;
DISTR['r13','q10']= 1 ;DISTR['r14','q4']  = 1 ;DISTR['r15','q4']  = 1 ;
DISTR['r15','q5'] = 1 ;DISTR['r16','q5']  = 1 ;DISTR['r16','q6']  = 1 ;
DISTR['r17','q5'] = 1 ;DISTR['r17','q6']  = 1 ;DISTR['r17','q7']  = 1 ;
DISTR['r18','q5'] = 1 ;DISTR['r18','q6']  = 1 ;DISTR['r18','q8']  = 1 ;
DISTR['r19','q5'] = 1 ;DISTR['r19','q6']  = 1 ;DISTR['r19','q8']  = 1 ;
DISTR['r19','q11']= 1 ;DISTR['r20','q5']  = 1 ;DISTR['r20','q10'] = 1 ;
DISTR['r21','q5'] = 1 ;DISTR['r21','q10'] = 1 ;DISTR['r21','q11'] = 1 ;
DISTR['r22','q6'] = 1 ;DISTR['r22','q7']  = 1 ;DISTR['r23','q6']  = 1 ;
DISTR['r23','q7'] = 1 ;DISTR['r23','q8']  = 1 ;DISTR['r24','q6']  = 1 ;
DISTR['r24','q8'] = 1 ;DISTR['r25','q6']  = 1 ;DISTR['r25','q8']  = 1 ;
DISTR['r25','q11']= 1 ;DISTR['r26','q7']  = 1 ;DISTR['r26','q8']  = 1 ;
DISTR['r27','q7'] = 1 ;DISTR['r27','q8']  = 1 ;DISTR['r27','q9']  = 1 ;
DISTR['r28','q7'] = 1 ;DISTR['r28','q8']  = 1 ;DISTR['r28','q11'] = 1 ;
DISTR['r29','q7'] = 1 ;DISTR['r29','q9']  = 1 ;DISTR['r30','q7']  = 1 ;
DISTR['r30','q9'] = 1 ;DISTR['r30','q11'] = 1 ;DISTR['r31','q8']  = 1 ;
DISTR['r31','q9'] = 1 ;DISTR['r32','q8']  = 1 ;DISTR['r32','q9']  = 1 ;
DISTR['r32','q11']= 1 ;DISTR['r33','q8']  = 1 ;DISTR['r33','q10'] = 1 ;
DISTR['r34','q8'] = 1 ;DISTR['r34','q10'] = 1 ;DISTR['r34','q11'] = 1 ;
DISTR['r35','q8'] = 1 ;DISTR['r35','q11'] = 1 ;DISTR['r36','q8']  = 1 ;
DISTR['r36','q11']= 1 ;DISTR['r36','q12'] = 1 ;DISTR['r37','q8']  = 1 ;
DISTR['r37','q11']= 1 ;DISTR['r37','q13'] = 1 ;DISTR['r38','q9']  = 1 ;
DISTR['r38','q11']= 1 ;DISTR['r39','q9']  = 1 ;DISTR['r39','q11'] = 1 ;
DISTR['r39','q13']= 1 ;DISTR['r40','q9']  = 1 ;DISTR['r40','q12'] = 1 ;
DISTR['r41','q10']= 1 ;DISTR['r41','q11'] = 1 ;DISTR['r42','q10'] = 1 ;
DISTR['r42','q13']= 1 ;DISTR['r43','q11'] = 1 ;DISTR['r43','q12'] = 1 ;
DISTR['r44','q11']= 1 ;DISTR['r44','q13'] = 1 ;DISTR['r45','q11'] = 1 ;
DISTR['r45','q13']= 1 ;DISTR['r45','q14'] = 1 ;DISTR['r46','q12'] = 1 ;
DISTR['r47','q12']= 1 ;DISTR['r47','q14'] = 1 ;DISTR['r48','q13'] = 1 ;
DISTR['r48','q14']= 1 ;



Binary Variable choose[RDIST] ;
* 1 if district chosen, 0 otherwise
       Variable Votes ;

Equation Partition(QUARTERS) ,
         NumDist             ,
         Def_Obj             ;

* Partitioning
Partition(QUARTERS)..
    Sum{RDIST, DISTR[RDIST,QUARTERS]*choose[RDIST] } =e= 1 ;

* Desired number of districts
NumDist..
    Sum{RDIST, choose[RDIST] } =e= REQD ;

* Objective: number of votes
Def_Obj..
    Votes =e= Sum{RDIST, MAJ[RDIST]*choose[RDIST] } ;

* Solve the problem
Model Rigging_elections / all / ;

Solve Rigging_elections using MIP maximazing Votes ;

Display Votes.l ;