*MPL Model Library MPL Model Library
*WidgetCo, Example 6, Winston
*    {  Exmpl8.4_6WidgetCo.mpl  }
*    {  Winston, Operations Research, Applications and Algorithms, 4th ed.  }
*    {  Chapter 8.4,  Example 6, CPM/PERT,  Size: 9x8,  Page 432 }

* TITLE WidgetCo ;

Set task  / ST , A , B , C , D , E , F , FIN / ;

Alias(task,task2);


Parameter Duration[task] / ST 0 , A 6 , B 9 , C 8 , D 7 , E 10 , F 12 , FIN 0 / ;
Parameter Predecessor[task,task2] ; Predecessor[task,task2] = 0 ;

 Predecessor['C','A']   = 1 ;
 Predecessor['C','B']   = 1 ;
 Predecessor['D','A']   = 1 ;
 Predecessor['D','B']   = 1 ;
 Predecessor['E','D']   = 1 ;
 Predecessor['F','C']   = 1 ;
 Predecessor['F','E']   = 1 ;
 Predecessor['FIN','F'] = 1 ;

Set links(task,task2) ;
    links(task,task2) = Yes$(Predecessor[task,task2]>0) ;

Variable  StartProcess[task] ,  Complete , TotalTime ;

Equation Order(task,task2) , Finish(task) , Def_obj ;

Order(task,task2)$links(task,task2)..
         StartProcess[task] =g= StartProcess[task2] + Duration[task2];

Finish(task)$(ord(task) eq card(task))..
         StartProcess[task] =e= Complete;

Def_obj..
         TotalTime =e= Complete ;

* MPL model solution
*StartProcess.fx['A']       =  0.0 ;
*StartProcess.fx['B']       =  0.0 ;
*StartProcess.fx['C']       =  9.0 ;
*StartProcess.fx['D']       =  9.0 ;
*StartProcess.fx['E']       = 16.0 ;
*StartProcess.fx['F']       = 26.0 ;
*StartProcess.fx['FIN']     = 38.0 ;

* gams model solution
*StartProcess.fx['A']       =  0.0 ;
*StartProcess.fx['B']       =  0.0 ;
*StartProcess.fx['C']       = 18.0 ;
*StartProcess.fx['D']       =  9.0 ;
*StartProcess.fx['E']       = 16.0 ;
*StartProcess.fx['F']       = 26.0 ;
*StartProcess.fx['FIN']     = 38.0 ;





StartProcess.lo[task]       =  0.0 ;

Model m8_4_6WidgetCo / all / ;

Solve m8_4_6WidgetCo using lp minimazing TotalTime ;

Display TotalTime.l ;