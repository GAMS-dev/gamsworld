*MPL Model Library MPL Model Library
*Union Airways, Example 3.4-5, Hillier and Lieberman
*   {  Exmpl_3.4-5_UnionAirways.mpl  }
*   {  Hillier and Lieberman, Introduction to Operations Research, 7th ed.  }
*   {  Chapter 3.4,  Example 5,  Personnel Scheduling,  Size: 10x5,  Page 57  }

*TITLE UnionAirwaysPersonnel;

Set shift / s1*s5 / ;

Set period / AM_6_8  , AM_8_10 , AM_10_12 ,
             PM_12_2 , PM_2_4  , PM_4_6   ,
             PM_6_8  , PM_8_10 , PM_10_12 ,
             AM_12_6 / ;

Set ShiftSchedule(shift, period) / s1.AM_6_8  , s1.AM_8_10 , s1.AM_10_12 ,
                                   s1.PM_12_2 , s2.AM_8_10 , s2.AM_10_12 ,
                                   s2.PM_12_2 , s2.PM_2_4  , s3.PM_12_2  ,
                                   s3.PM_2_4  , s3.PM_4_6  , s3.PM_6_8   ,
                                   s4.PM_4_6  , s4.PM_6_8  , s4.PM_8_10  ,
                                   s4.PM_10_12, s5.PM_10_12, s5.AM_12_6 / ;

Parameter MinAgentsNeeded[period]  /AM_6_8  48 , AM_8_10 79 , AM_10_12 65 ,
                                    PM_12_2 87 , PM_2_4  64 , PM_4_6   73 ,
                                    PM_6_8  82 , PM_8_10 43 , PM_10_12 52 ,
                                    AM_12_6 15 / ;

Parameter DailyCostPerAgent[shift] / s1 170 , s2 160 ,
                                     s3 175 , s4 180 ,
                                     s5 195           / ;

Variables AssignAgents[shift] , TotalCost ;
*-> Agents;

Equation MeetRequirements(period) , Def_Obj ;

MeetRequirements(period)..
*-> MeetReq:
    SUM{shift$ShiftSchedule(shift,period),AssignAgents[shift]} =g=
                                                       MinAgentsNeeded[period];
Def_Obj..
    TotalCost  =e=  SUM{shift, DailyCostPerAgent[shift] * AssignAgents[shift]};

Model m3_4_5_UnionAirways / all / ;

Solve m3_4_5_UnionAirways using nlp minimazing TotalCost ;

Display TotalCost.l ;




