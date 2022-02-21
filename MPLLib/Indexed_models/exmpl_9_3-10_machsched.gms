* MPL Model Library MPL Model Library
* MachSched, Example 10, Winston
*   {  Exmpl9.3-10_MachSched.mpl  }
*   {  Winston, Operations Research, Applications and Algorithms, 4th ed.  }
*   {  Chapter 9.3,  Example 10,  Machine Scheduling (MIP),  Size: 5x6,  Page 528  }

* TITLE    MachSched;

Set job   / j1*j4 /;
Set order / o1*o4 /;

Alias(job,job2);
Alias(order,order2);

Parameter Duration[job] / j1 6 , j2 4 , j3  5 , j4  8 / ;
Parameter  DueDate[job] / j1 8 , j2 4 , j3 12 , j4 16 / ;
Parameter Differ[job] ;  Differ[job] = Duration[job] - DueDate[job] ;

Binary Variables Assign[job,order];
       Variables Delay[job] ,
                 TotalDelay  ;

Equation  DoJobs[order]        ,
          DoJobsA[job]         ,
          CalcDelay[job,order] ,
          Def_obj               ;



DoJobs[order]..
*-> DJB:
   Sum{job, Assign[job,order]  } =e= 1 ;

DoJobsA[job]..
*-> DJBO:
   Sum{order, Assign[job,order]} =e= 1 ;

CalcDelay[job,order]..
*-> CDL:
   Sum{order2$(ord(order2) le ord(order)), Assign[job,order2] * Differ[job]  }
                                                                =e= Delay[job] ;
Def_obj..
     TotalDelay =e= Sum{job, Delay[job] };

*Delay.lo[job] = 0 ;
Assign.lo[job,order] = 0 ;

Model m9_3_10_MachSched / all / ;

Solve m9_3_10_MachSched using mip minimazing TotalDelay ;

Display TotalDelay.l ;