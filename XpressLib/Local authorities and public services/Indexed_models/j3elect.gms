*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file j3elect.mos
*   ````````````````
*   Grouping quarters to election districts
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Apr. 2002
*******************************************************

* model "J-3 Rigging elections"

Set QUARTERS / q1*q14 / ;
* Number of quarters
Set RDIST    / d1*d48 / ;
* Set of election districts
Set RN       / r1*r3  / ;

Parameter MAJ[RDIST] ;
* 1 if majority of votes, 0 otherwise

MAJ['d1']  =0 ; MAJ['d2']  =0 ; MAJ['d3']  =1 ; MAJ['d4']  =1 ; MAJ['d5']  =0 ;
MAJ['d6']  =0 ; MAJ['d7']  =0 ; MAJ['d8']  =1 ; MAJ['d9']  =0 ; MAJ['d10'] =1 ;
MAJ['d11'] =1 ; MAJ['d12'] =1 ; MAJ['d13'] =1 ; MAJ['d14'] =1 ; MAJ['d15'] =1 ;
MAJ['d16'] =0 ; MAJ['d17'] =0 ; MAJ['d18'] =0 ; MAJ['d19'] =0 ; MAJ['d20'] =1 ;
MAJ['d21'] =1 ; MAJ['d22'] =0 ; MAJ['d23'] =0 ; MAJ['d24'] =0 ; MAJ['d25'] =0 ;
MAJ['d26'] =0 ; MAJ['d27'] =0 ; MAJ['d28'] =0 ; MAJ['d29'] =1 ; MAJ['d30'] =1 ;
MAJ['d31'] =1 ; MAJ['d32'] =0 ; MAJ['d33'] =0 ; MAJ['d34'] =0 ; MAJ['d35'] =0 ;
MAJ['d36'] =0 ; MAJ['d37'] =1 ; MAJ['d38'] =1 ; MAJ['d39'] =1 ; MAJ['d40'] =1 ;
MAJ['d41'] =1 ; MAJ['d42'] =1 ; MAJ['d43'] =0 ; MAJ['d44'] =1 ; MAJ['d45'] =1 ;
MAJ['d46'] =0 ; MAJ['d47'] =0 ; MAJ['d48'] =1 ;




Parameter DISTR[RDIST,QUARTERS] ;  DISTR[RDIST,QUARTERS] = 1 ;
* 1 if quarter is in district,
* 0 otherwise
 Distr['d1','q1']  = 1 ; Distr['d1','q2']  = 1 ; Distr['d1','q3']  = 0 ; Distr['d1','q4']  = 0 ;
 Distr['d1','q5']  = 0 ; Distr['d1','q6']  = 0 ; Distr['d1','q7']  = 0 ; Distr['d1','q8']  = 0 ;
 Distr['d1','q9']  = 0 ; Distr['d1','q10'] = 0 ; Distr['d1','q11'] = 0 ; Distr['d1','q12'] = 0 ;
 Distr['d1','q13'] = 0 ; Distr['d1','q14'] = 0 ; Distr['d2','q1']  = 1 ; Distr['d2','q2']  = 1 ;
 Distr['d2','q3']  = 1 ; Distr['d2','q4']  = 0 ; Distr['d2','q5']  = 0 ; Distr['d2','q6']  = 0 ;
 Distr['d2','q7']  = 0 ; Distr['d2','q8']  = 0 ; Distr['d2','q9']  = 0 ; Distr['d2','q10'] = 0 ;
 Distr['d2','q11'] = 0 ; Distr['d2','q12'] = 0 ; Distr['d2','q13'] = 0 ; Distr['d2','q14'] = 0 ;
 Distr['d3','q1']  = 1 ; Distr['d3','q2']  = 1 ; Distr['d3','q3']  = 0 ; Distr['d3','q4']  = 0 ;
 Distr['d3','q5']  = 1 ; Distr['d3','q6']  = 0 ; Distr['d3','q7']  = 0 ; Distr['d3','q8']  = 0 ;
 Distr['d3','q9']  = 0 ; Distr['d3','q10'] = 0 ; Distr['d3','q11'] = 0 ; Distr['d3','q12'] = 0 ;
 Distr['d3','q13'] = 0 ; Distr['d3','q14'] = 0 ; Distr['d4','q1']  = 1 ; Distr['d4','q2']  = 0 ;
 Distr['d4','q3']  = 0 ; Distr['d4','q4']  = 0 ; Distr['d4','q5']  = 1 ; Distr['d4','q6']  = 0 ;
 Distr['d4','q7']  = 0 ; Distr['d4','q8']  = 0 ; Distr['d4','q9']  = 0 ; Distr['d4','q10'] = 0 ;
 Distr['d4','q11'] = 0 ; Distr['d4','q12'] = 0 ; Distr['d4','q13'] = 0 ; Distr['d4','q14'] = 0 ;
 Distr['d5','q1']  = 1 ; Distr['d5','q2']  = 0 ; Distr['d5','q3']  = 0 ; Distr['d5','q4']  = 0 ;
 Distr['d5','q5']  = 1 ; Distr['d5','q6']  = 1 ; Distr['d5','q7']  = 0 ; Distr['d5','q8']  = 0 ;
 Distr['d5','q9']  = 0 ; Distr['d5','q10'] = 0 ; Distr['d5','q11'] = 0 ; Distr['d5','q12'] = 0 ;
 Distr['d5','q13'] = 0 ; Distr['d5','q14'] = 0 ; Distr['d6','q1']  = 0 ; Distr['d6','q2']  = 1 ;
 Distr['d6','q3']  = 0 ; Distr['d6','q4']  = 0 ; Distr['d6','q5']  = 0 ; Distr['d6','q6']  = 0 ;
 Distr['d6','q7']  = 0 ; Distr['d6','q8']  = 0 ; Distr['d6','q9']  = 0 ; Distr['d6','q10'] = 0 ;
 Distr['d6','q11'] = 0 ; Distr['d6','q12'] = 0 ; Distr['d6','q13'] = 0 ; Distr['d6','q14'] = 0 ;
 Distr['d7','q1']  = 0 ; Distr['d7','q2']  = 1 ; Distr['d7','q3']  = 1 ; Distr['d7','q4']  = 0 ;
 Distr['d7','q5']  = 0 ; Distr['d7','q6']  = 0 ; Distr['d7','q7']  = 0 ; Distr['d7','q8']  = 0 ;
 Distr['d7','q9']  = 0 ; Distr['d7','q10'] = 0 ; Distr['d7','q11'] = 0 ; Distr['d7','q12'] = 0 ;
 Distr['d7','q13'] = 0 ; Distr['d7','q14'] = 0 ; Distr['d8','q1']  = 0 ; Distr['d8','q2']  = 1 ;
 Distr['d8','q3']  = 1 ; Distr['d8','q4']  = 0 ; Distr['d8','q5']  = 1 ; Distr['d8','q6']  = 0 ;
 Distr['d8','q7']  = 0 ; Distr['d8','q8']  = 0 ; Distr['d8','q9']  = 0 ; Distr['d8','q10'] = 0 ;
 Distr['d8','q11'] = 0 ; Distr['d8','q12'] = 0 ; Distr['d8','q13'] = 0 ; Distr['d8','q14'] = 0 ;
 Distr['d9','q1']  = 0 ; Distr['d9','q2']  = 1 ; Distr['d9','q3']  = 0 ; Distr['d9','q4']  = 0 ;
 Distr['d9','q5']  = 1 ; Distr['d9','q6']  = 0 ; Distr['d9','q7']  = 0 ; Distr['d9','q8']  = 0 ;
 Distr['d9','q9']  = 0 ; Distr['d9','q10'] = 0 ; Distr['d9','q11'] = 0 ; Distr['d9','q12'] = 0 ;
 Distr['d9','q13'] = 0 ; Distr['d9','q14'] = 0 ; Distr['d10','q1'] = 0 ; Distr['d10','q2'] = 0 ;
 Distr['d10','q3'] = 1 ; Distr['d10','q4'] = 1 ; Distr['d10','q5'] = 0 ; Distr['d10','q6'] = 0 ;
 Distr['d10','q7'] = 0 ; Distr['d10','q8'] = 0 ; Distr['d10','q9'] = 0 ; Distr['d10','q10']= 0 ;
 Distr['d10','q11']= 0 ; Distr['d10','q12']= 0 ; Distr['d10','q13']= 0 ; Distr['d10','q14']= 0 ;
 Distr['d11','q1'] = 0 ; Distr['d11','q2'] = 0 ; Distr['d11','q3'] = 1 ; Distr['d11','q4'] = 0 ;
 Distr['d11','q5'] = 1 ; Distr['d11','q6'] = 0 ; Distr['d11','q7'] = 0 ; Distr['d11','q8'] = 0 ;
 Distr['d11','q9'] = 0 ; Distr['d11','q10']= 0 ; Distr['d11','q11']= 0 ; Distr['d11','q12']= 0 ;
 Distr['d11','q13']= 0 ; Distr['d11','q14']= 0 ; Distr['d12','q1'] = 0 ; Distr['d12','q2'] = 0 ;
 Distr['d12','q3'] = 1 ; Distr['d12','q4'] = 0 ; Distr['d12','q5'] = 1 ; Distr['d12','q6'] = 1 ;
 Distr['d12','q7'] = 0 ; Distr['d12','q8'] = 0 ; Distr['d12','q9'] = 0 ; Distr['d12','q10']= 0 ;
 Distr['d12','q11']= 0 ; Distr['d12','q12']= 0 ; Distr['d12','q13']= 0 ; Distr['d12','q14']= 0 ;
 Distr['d13','q1'] = 0 ; Distr['d13','q2'] = 0 ; Distr['d13','q3'] = 1 ; Distr['d13','q4'] = 0 ;
 Distr['d13','q5'] = 1 ; Distr['d13','q6'] = 0 ; Distr['d13','q7'] = 0 ; Distr['d13','q8'] = 0 ;
 Distr['d13','q9'] = 0 ; Distr['d13','q10']= 1 ; Distr['d13','q11']= 0 ; Distr['d13','q12']= 0 ;
 Distr['d13','q13']= 0 ; Distr['d13','q14']= 0 ; Distr['d14','q1'] = 0 ; Distr['d14','q2'] = 0 ;
 Distr['d14','q3'] = 0 ; Distr['d14','q4'] = 1 ; Distr['d14','q5'] = 0 ; Distr['d14','q6'] = 0 ;
 Distr['d14','q7'] = 0 ; Distr['d14','q8'] = 0 ; Distr['d14','q9'] = 0 ; Distr['d14','q10']= 0 ;
 Distr['d14','q11']= 0 ; Distr['d14','q12']= 0 ; Distr['d14','q13']= 0 ; Distr['d14','q14']= 0 ;
 Distr['d15','q1'] = 0 ; Distr['d15','q2'] = 0 ; Distr['d15','q3'] = 0 ; Distr['d15','q4'] = 1 ;
 Distr['d15','q5'] = 1 ; Distr['d15','q6'] = 0 ; Distr['d15','q7'] = 0 ; Distr['d15','q8'] = 0 ;
 Distr['d15','q9'] = 0 ; Distr['d15','q10']= 0 ; Distr['d15','q11']= 0 ; Distr['d15','q12']= 0 ;
 Distr['d15','q13']= 0 ; Distr['d15','q14']= 0 ; Distr['d16','q1'] = 0 ; Distr['d16','q2'] = 0 ;
 Distr['d16','q3'] = 0 ; Distr['d16','q4'] = 0 ; Distr['d16','q5'] = 1 ; Distr['d16','q6'] = 1 ;
 Distr['d16','q7'] = 0 ; Distr['d16','q8'] = 0 ; Distr['d16','q9'] = 0 ; Distr['d16','q10']= 0 ;
 Distr['d16','q11']= 0 ; Distr['d16','q12']= 0 ; Distr['d16','q13']= 0 ; Distr['d16','q14']= 0 ;
 Distr['d17','q1'] = 0 ; Distr['d17','q2'] = 0 ; Distr['d17','q3'] = 0 ; Distr['d17','q4'] = 0 ;
 Distr['d17','q5'] = 1 ; Distr['d17','q6'] = 1 ; Distr['d17','q7'] = 1 ; Distr['d17','q8'] = 0 ;
 Distr['d17','q9'] = 0 ; Distr['d17','q10']= 0 ; Distr['d17','q11']= 0 ; Distr['d17','q12']= 0 ;
 Distr['d17','q13']= 0 ; Distr['d17','q14']= 0 ; Distr['d18','q1'] = 0 ; Distr['d18','q2'] = 0 ;
 Distr['d18','q3'] = 0 ; Distr['d18','q4'] = 0 ; Distr['d18','q5'] = 1 ; Distr['d18','q6'] = 1 ;
 Distr['d18','q7'] = 0 ; Distr['d18','q8'] = 1 ; Distr['d18','q9'] = 0 ; Distr['d18','q10']= 0 ;
 Distr['d18','q11']= 0 ; Distr['d18','q12']= 0 ; Distr['d18','q13']= 0 ; Distr['d18','q14']= 0 ;
 Distr['d19','q1'] = 0 ; Distr['d19','q2'] = 0 ; Distr['d19','q3'] = 0 ; Distr['d19','q4'] = 0 ;
 Distr['d19','q5'] = 1 ; Distr['d19','q6'] = 1 ; Distr['d19','q7'] = 0 ; Distr['d19','q8'] = 1 ;
 Distr['d19','q9'] = 0 ; Distr['d19','q10']= 0 ; Distr['d19','q11']= 1 ; Distr['d19','q12']= 0 ;
 Distr['d19','q13']= 0 ; Distr['d19','q14']= 0 ; Distr['d20','q1'] = 0 ; Distr['d20','q2'] = 0 ;
 Distr['d20','q3'] = 0 ; Distr['d20','q4'] = 0 ; Distr['d20','q5'] = 1 ; Distr['d20','q6'] = 0 ;
 Distr['d20','q7'] = 0 ; Distr['d20','q8'] = 0 ; Distr['d20','q9'] = 0 ; Distr['d20','q10']= 1 ;
 Distr['d20','q11']= 0 ; Distr['d20','q12']= 0 ; Distr['d20','q13']= 0 ; Distr['d20','q14']= 0 ;
 Distr['d21','q1'] = 0 ; Distr['d21','q2'] = 0 ; Distr['d21','q3'] = 0 ; Distr['d21','q4'] = 0 ;
 Distr['d21','q5'] = 1 ; Distr['d21','q6'] = 0 ; Distr['d21','q7'] = 0 ; Distr['d21','q8'] = 0 ;
 Distr['d21','q9'] = 0 ; Distr['d21','q10']= 1 ; Distr['d21','q11']= 1 ; Distr['d21','q12']= 0 ;
 Distr['d21','q13']= 0 ; Distr['d21','q14']= 0 ; Distr['d22','q1'] = 0 ; Distr['d22','q2'] = 0 ;
 Distr['d22','q3'] = 0 ; Distr['d22','q4'] = 0 ; Distr['d22','q5'] = 0 ; Distr['d22','q6'] = 1 ;
 Distr['d22','q7'] = 1 ; Distr['d22','q8'] = 0 ; Distr['d22','q9'] = 0 ; Distr['d22','q10']= 0 ;
 Distr['d22','q11']= 0 ; Distr['d22','q12']= 0 ; Distr['d22','q13']= 0 ; Distr['d22','q14']= 0 ;
 Distr['d23','q1'] = 0 ; Distr['d23','q2'] = 0 ; Distr['d23','q3'] = 0 ; Distr['d23','q4'] = 0 ;
 Distr['d23','q5'] = 0 ; Distr['d23','q6'] = 1 ; Distr['d23','q7'] = 1 ; Distr['d23','q8'] = 1 ;
 Distr['d23','q9'] = 0 ; Distr['d23','q10']= 0 ; Distr['d23','q11']= 0 ; Distr['d23','q12']= 0 ;
 Distr['d23','q13']= 0 ; Distr['d23','q14']= 0 ; Distr['d24','q1'] = 0 ; Distr['d24','q2'] = 0 ;
 Distr['d24','q3'] = 0 ; Distr['d24','q4'] = 0 ; Distr['d24','q5'] = 0 ; Distr['d24','q6'] = 1 ;
 Distr['d24','q7'] = 0 ; Distr['d24','q8'] = 1 ; Distr['d24','q9'] = 0 ; Distr['d24','q10']= 0 ;
 Distr['d24','q11']= 0 ; Distr['d24','q12']= 0 ; Distr['d24','q13']= 0 ; Distr['d24','q14']= 0 ;
 Distr['d25','q1'] = 0 ; Distr['d25','q2'] = 0 ; Distr['d25','q3'] = 0 ; Distr['d25','q4'] = 0 ;
 Distr['d25','q5'] = 0 ; Distr['d25','q6'] = 1 ; Distr['d25','q7'] = 0 ; Distr['d25','q8'] = 1 ;
 Distr['d25','q9'] = 0 ; Distr['d25','q10']= 0 ; Distr['d25','q11']= 1 ; Distr['d25','q12']= 0 ;
 Distr['d25','q13']= 0 ; Distr['d25','q14']= 0 ; Distr['d26','q1'] = 0 ; Distr['d26','q2'] = 0 ;
 Distr['d26','q3'] = 0 ; Distr['d26','q4'] = 0 ; Distr['d26','q5'] = 0 ; Distr['d26','q6'] = 0 ;
 Distr['d26','q7'] = 1 ; Distr['d26','q8'] = 1 ; Distr['d26','q9'] = 0 ; Distr['d26','q10']= 0 ;
 Distr['d26','q11']= 0 ; Distr['d26','q12']= 0 ; Distr['d26','q13']= 0 ; Distr['d26','q14']= 0 ;
 Distr['d27','q1'] = 0 ; Distr['d27','q2'] = 0 ; Distr['d27','q3'] = 0 ; Distr['d27','q4'] = 0 ;
 Distr['d27','q5'] = 0 ; Distr['d27','q6'] = 0 ; Distr['d27','q7'] = 1 ; Distr['d27','q8'] = 1 ;
 Distr['d27','q9'] = 1 ; Distr['d27','q10']= 0 ; Distr['d27','q11']= 0 ; Distr['d27','q12']= 0 ;
 Distr['d27','q13']= 0 ; Distr['d27','q14']= 0 ; Distr['d28','q1'] = 0 ; Distr['d28','q2'] = 0 ;
 Distr['d28','q3'] = 0 ; Distr['d28','q4'] = 0 ; Distr['d28','q5'] = 0 ; Distr['d28','q6'] = 0 ;
 Distr['d28','q7'] = 1 ; Distr['d28','q8'] = 1 ; Distr['d28','q9'] = 0 ; Distr['d28','q10']= 0 ;
 Distr['d28','q11']= 1 ; Distr['d28','q12']= 0 ; Distr['d28','q13']= 0 ; Distr['d28','q14']= 0 ;
 Distr['d29','q1'] = 0 ; Distr['d29','q2'] = 0 ; Distr['d29','q3'] = 0 ; Distr['d29','q4'] = 0 ;
 Distr['d29','q5'] = 0 ; Distr['d29','q6'] = 0 ; Distr['d29','q7'] = 1 ; Distr['d29','q8'] = 0 ;
 Distr['d29','q9'] = 1 ; Distr['d29','q10']= 0 ; Distr['d29','q11']= 0 ; Distr['d29','q12']= 0 ;
 Distr['d29','q13']= 0 ; Distr['d29','q14']= 0 ; Distr['d30','q1'] = 0 ; Distr['d30','q2'] = 0 ;
 Distr['d30','q3'] = 0 ; Distr['d30','q4'] = 0 ; Distr['d30','q5'] = 0 ; Distr['d30','q6'] = 0 ;
 Distr['d30','q7'] = 1 ; Distr['d30','q8'] = 0 ; Distr['d30','q9'] = 1 ; Distr['d30','q10']= 0 ;
 Distr['d30','q11']= 1 ; Distr['d30','q12']= 0 ; Distr['d30','q13']= 0 ; Distr['d30','q14']= 0 ;
 Distr['d31','q1'] = 0 ; Distr['d31','q2'] = 0 ; Distr['d31','q3'] = 0 ; Distr['d31','q4'] = 0 ;
 Distr['d31','q5'] = 0 ; Distr['d31','q6'] = 0 ; Distr['d31','q7'] = 0 ; Distr['d31','q8'] = 1 ;
 Distr['d31','q9'] = 1 ; Distr['d31','q10']= 0 ; Distr['d31','q11']= 0 ; Distr['d31','q12']= 0 ;
 Distr['d31','q13']= 0 ; Distr['d31','q14']= 0 ; Distr['d32','q1'] = 0 ; Distr['d32','q2'] = 0 ;
 Distr['d32','q3'] = 0 ; Distr['d32','q4'] = 0 ; Distr['d32','q5'] = 0 ; Distr['d32','q6'] = 0 ;
 Distr['d32','q7'] = 0 ; Distr['d32','q8'] = 1 ; Distr['d32','q9'] = 1 ; Distr['d32','q10']= 0 ;
 Distr['d32','q11']= 1 ; Distr['d32','q12']= 0 ; Distr['d32','q13']= 0 ; Distr['d32','q14']= 0 ;
 Distr['d33','q1'] = 0 ; Distr['d33','q2'] = 0 ; Distr['d33','q3'] = 0 ; Distr['d33','q4'] = 0 ;
 Distr['d33','q5'] = 0 ; Distr['d33','q6'] = 0 ; Distr['d33','q7'] = 0 ; Distr['d33','q8'] = 1 ;
 Distr['d33','q9'] = 0 ; Distr['d33','q10']= 1 ; Distr['d33','q11']= 0 ; Distr['d33','q12']= 0 ;
 Distr['d33','q13']= 0 ; Distr['d33','q14']= 0 ; Distr['d34','q1'] = 0 ; Distr['d34','q2'] = 0 ;
 Distr['d34','q3'] = 0 ; Distr['d34','q4'] = 0 ; Distr['d34','q5'] = 0 ; Distr['d34','q6'] = 0 ;
 Distr['d34','q7'] = 0 ; Distr['d34','q8'] = 1 ; Distr['d34','q9'] = 0 ; Distr['d34','q10']= 1 ;
 Distr['d34','q11']= 1 ; Distr['d34','q12']= 0 ; Distr['d34','q13']= 0 ; Distr['d34','q14']= 0 ;
 Distr['d35','q1'] = 0 ; Distr['d35','q2'] = 0 ; Distr['d35','q3'] = 0 ; Distr['d35','q4'] = 0 ;
 Distr['d35','q5'] = 0 ; Distr['d35','q6'] = 0 ; Distr['d35','q7'] = 0 ; Distr['d35','q8'] = 1 ;
 Distr['d35','q9'] = 0 ; Distr['d35','q10']= 0 ; Distr['d35','q11']= 1 ; Distr['d35','q12']= 0 ;
 Distr['d35','q13']= 0 ; Distr['d35','q14']= 0 ; Distr['d36','q1'] = 0 ; Distr['d36','q2'] = 0 ;
 Distr['d36','q3'] = 0 ; Distr['d36','q4'] = 0 ; Distr['d36','q5'] = 0 ; Distr['d36','q6'] = 0 ;
 Distr['d36','q7'] = 0 ; Distr['d36','q8'] = 1 ; Distr['d36','q9'] = 0 ; Distr['d36','q10']= 0 ;
 Distr['d36','q11']= 1 ; Distr['d36','q12']= 1 ; Distr['d36','q13']= 0 ; Distr['d36','q14']= 0 ;
 Distr['d37','q1'] = 0 ; Distr['d37','q2'] = 0 ; Distr['d37','q3'] = 0 ; Distr['d37','q4'] = 0 ;
 Distr['d37','q5'] = 0 ; Distr['d37','q6'] = 0 ; Distr['d37','q7'] = 0 ; Distr['d37','q8'] = 1 ;
 Distr['d37','q9'] = 0 ; Distr['d37','q10']= 0 ; Distr['d37','q11']= 1 ; Distr['d37','q12']= 0 ;
 Distr['d37','q13']= 1 ; Distr['d37','q14']= 0 ; Distr['d38','q1'] = 0 ; Distr['d38','q2'] = 0 ;
 Distr['d38','q3'] = 0 ; Distr['d38','q4'] = 0 ; Distr['d38','q5'] = 0 ; Distr['d38','q6'] = 0 ;
 Distr['d38','q7'] = 0 ; Distr['d38','q8'] = 0 ; Distr['d38','q9'] = 1 ; Distr['d38','q10']= 0 ;
 Distr['d38','q11']= 1 ; Distr['d38','q12']= 0 ; Distr['d38','q13']= 0 ; Distr['d38','q14']= 0 ;
 Distr['d39','q1'] = 0 ; Distr['d39','q2'] = 0 ; Distr['d39','q3'] = 0 ; Distr['d39','q4'] = 0 ;
 Distr['d39','q5'] = 0 ; Distr['d39','q6'] = 0 ; Distr['d39','q7'] = 0 ; Distr['d39','q8'] = 0 ;
 Distr['d39','q9'] = 1 ; Distr['d39','q10']= 0 ; Distr['d39','q11']= 1 ; Distr['d39','q12']= 0 ;
 Distr['d39','q13']= 1 ; Distr['d39','q14']= 0 ; Distr['d40','q1'] = 0 ; Distr['d40','q2'] = 0 ;
 Distr['d40','q3'] = 0 ; Distr['d40','q4'] = 0 ; Distr['d40','q5'] = 0 ; Distr['d40','q6'] = 0 ;
 Distr['d40','q7'] = 0 ; Distr['d40','q8'] = 0 ; Distr['d40','q9'] = 1 ; Distr['d40','q10']= 0 ;
 Distr['d40','q11']= 0 ; Distr['d40','q12']= 1 ; Distr['d40','q13']= 0 ; Distr['d40','q14']= 0 ;
 Distr['d41','q1'] = 0 ; Distr['d41','q2'] = 0 ; Distr['d41','q3'] = 0 ; Distr['d41','q4'] = 0 ;
 Distr['d41','q5'] = 0 ; Distr['d41','q6'] = 0 ; Distr['d41','q7'] = 0 ; Distr['d41','q8'] = 0 ;
 Distr['d41','q9'] = 0 ; Distr['d41','q10']= 1 ; Distr['d41','q11']= 1 ; Distr['d41','q12']= 0 ;
 Distr['d41','q13']= 0 ; Distr['d41','q14']= 0 ; Distr['d42','q1'] = 0 ; Distr['d42','q2'] = 0 ;
 Distr['d42','q3'] = 0 ; Distr['d42','q4'] = 0 ; Distr['d42','q5'] = 0 ; Distr['d42','q6'] = 0 ;
 Distr['d42','q7'] = 0 ; Distr['d42','q8'] = 0 ; Distr['d42','q9'] = 0 ; Distr['d42','q10']= 1 ;
 Distr['d42','q11']= 0 ; Distr['d42','q12']= 0 ; Distr['d42','q13']= 1 ; Distr['d42','q14']= 0 ;
 Distr['d43','q1'] = 0 ; Distr['d43','q2'] = 0 ; Distr['d43','q3'] = 0 ; Distr['d43','q4'] = 0 ;
 Distr['d43','q5'] = 0 ; Distr['d43','q6'] = 0 ; Distr['d43','q7'] = 0 ; Distr['d43','q8'] = 0 ;
 Distr['d43','q9'] = 0 ; Distr['d43','q10']= 0 ; Distr['d43','q11']= 1 ; Distr['d43','q12']= 1 ;
 Distr['d43','q13']= 0 ; Distr['d43','q14']= 0 ; Distr['d44','q1'] = 0 ; Distr['d44','q2'] = 0 ;
 Distr['d44','q3'] = 0 ; Distr['d44','q4'] = 0 ; Distr['d44','q5'] = 0 ; Distr['d44','q6'] = 0 ;
 Distr['d44','q7'] = 0 ; Distr['d44','q8'] = 0 ; Distr['d44','q9'] = 0 ; Distr['d44','q10']= 0 ;
 Distr['d44','q11']= 1 ; Distr['d44','q12']= 0 ; Distr['d44','q13']= 1 ; Distr['d44','q14']= 0 ;
 Distr['d45','q1'] = 0 ; Distr['d45','q2'] = 0 ; Distr['d45','q3'] = 0 ; Distr['d45','q4'] = 0 ;
 Distr['d45','q5'] = 0 ; Distr['d45','q6'] = 0 ; Distr['d45','q7'] = 0 ; Distr['d45','q8'] = 0 ;
 Distr['d45','q9'] = 0 ; Distr['d45','q10']= 0 ; Distr['d45','q11']= 1 ; Distr['d45','q12']= 0 ;
 Distr['d45','q13']= 1 ; Distr['d45','q14']= 1 ; Distr['d46','q1'] = 0 ; Distr['d46','q2'] = 0 ;
 Distr['d46','q3'] = 0 ; Distr['d46','q4'] = 0 ; Distr['d46','q5'] = 0 ; Distr['d46','q6'] = 0 ;
 Distr['d46','q7'] = 0 ; Distr['d46','q8'] = 0 ; Distr['d46','q9'] = 0 ; Distr['d46','q10']= 0 ;
 Distr['d46','q11']= 0 ; Distr['d46','q12']= 1 ; Distr['d46','q13']= 0 ; Distr['d46','q14']= 0 ;
 Distr['d47','q1'] = 0 ; Distr['d47','q2'] = 0 ; Distr['d47','q3'] = 0 ; Distr['d47','q4'] = 0 ;
 Distr['d47','q5'] = 0 ; Distr['d47','q6'] = 0 ; Distr['d47','q7'] = 0 ; Distr['d47','q8'] = 0 ;
 Distr['d47','q9'] = 0 ; Distr['d47','q10']= 0 ; Distr['d47','q11']= 0 ; Distr['d47','q12']= 1 ;
 Distr['d47','q13']= 0 ; Distr['d47','q14']= 1 ; Distr['d48','q1'] = 0 ; Distr['d48','q2'] = 0 ;
 Distr['d48','q3'] = 0 ; Distr['d48','q4'] = 0 ; Distr['d48','q5'] = 0 ; Distr['d48','q6'] = 0 ;
 Distr['d48','q7'] = 0 ; Distr['d48','q8'] = 0 ; Distr['d48','q9'] = 0 ; Distr['d48','q10']= 0 ;
 Distr['d48','q11']= 0 ; Distr['d48','q12']= 0 ; Distr['d48','q13']= 1 ; Distr['d48','q14']= 1 ;



* Required number of districts
Scalar REQD / 6 /
Scalar MINPOP    /  30 / ;
Scalar MAXPOP    / 100 / ;
Scalar MINSINGLE /  50 / ;
* Limits on electors per district


Parameter POP[QUARTERS]
          / q1 30 , q2 50 ,  q3 20 ,  q4 70 ,  q5 20 ,  q6 40 ,  q7 30 ,
            q8 30 , q9 40 , q10 60 , q11 10 , q12 60 , q13 40 , q14 40 / ;
* Number of electors (in 1000)

Parameter VOTES[QUARTERS]
          /q1 17.5 , q2 15 ,  q3 14.2 ,  q4 42   ,  q5 18 ,  q6  9 ,  q7 12 ,
           q8 10   , q9 26 , q10 34   , q11  2.5 , q12 27 , q13 29 , q14 15 /;
* Number of favorable votes (in 1000)

Parameter NEIGHB[QUARTERS,RN] ;  NEIGHB[QUARTERS,RN] = 0 ;
NEIGHB['q1','r1']  =  2 ;  NEIGHB['q1','r2']  =  5 ;
NEIGHB['q2','r1']  =  3 ;  NEIGHB['q2','r2']  =  5 ;
NEIGHB['q3','r1']  =  4 ;  NEIGHB['q3','r2']  =  5 ;
NEIGHB['q4','r1']  =  5 ;  NEIGHB['q4','r2']  = 10 ;
NEIGHB['q5','r1']  =  6 ;  NEIGHB['q5','r2']  = 10 ;
NEIGHB['q6','r1']  =  7 ;  NEIGHB['q6','r2']  =  8 ;
NEIGHB['q7','r1']  =  8 ;  NEIGHB['q7','r2']  =  9 ;
NEIGHB['q8','r1']  =  9 ;  NEIGHB['q8','r2']  = 10 ; NEIGHB['q8', 'r3'] = 11 ;
NEIGHB['q9','r1']  = 11 ;  NEIGHB['q9','r2']  = 12 ;
NEIGHB['q10','r1'] = 11 ;  NEIGHB['q10','r2'] = 13 ;
NEIGHB['q11','r1'] = 12 ;  NEIGHB['q11','r2'] = 13 ;
NEIGHB['q12','r1'] = 14 ;
NEIGHB['q13','r1'] = 14 ;
* Set of neighboring quarters


Binary Variable choose[RDIST] ;
* 1 if district chosen, 0 otherwise
Variable Total_Votes ;

Equation Eq_1(QUARTERS) ,
         Eq_2           ,
         Def_obj        ;

* Partitioning
Eq_1(QUARTERS)..
    Sum{RDIST, DISTR[RDIST,QUARTERS]*choose[RDIST] } =e= 1 ;

* Desired number of districts
Eq_2..
    Sum{RDIST, choose[RDIST] } =e= REQD ;

* Objective: number of votes
Def_obj..
    Total_Votes =e= Sum{RDIST, MAJ[RDIST]*choose[RDIST] } ;

* Solve the problem
Model J_3_Rigging_elections / all / ;
* Solve the MIP-problem
Solve J_3_Rigging_elections using MIP maximazing Total_Votes ;

Display Total_Votes.l ;

