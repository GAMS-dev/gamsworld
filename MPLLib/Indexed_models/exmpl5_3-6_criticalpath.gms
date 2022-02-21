* MPL Model Library MPL Model Library
* Critical Path,  Example 5.3-6,  H.P.Williams
*   {  Exmpl5.3-6_CriticalPath.mpl  }
*   {  H.P. Williams, Model Building in Mathematical Programming, 3rd ed.  }
*   {  Chapter 5.3,  Example 6,  Critical Path,  Size: 9x7,  Page 86  }

* TITLE CriticalPath;

Set time / t0*t6 / ;

Set activities / DigFoundations , ObtainTiles , ObtainBricks ,
                 LayFoundations , Walls       , Dummy24      ,
                 Roofing        , Wiring      , Painting     / ;

Set FromNode(activities,time) ;
        FromNode('DigFoundations','t0')  = Yes ;
        FromNode('ObtainTiles','t0')     = Yes ;
        FromNode('ObtainBricks','t0')    = Yes ;
        FromNode('LayFoundations','t1')  = Yes ;
        FromNode('Walls','t3')           = Yes ;
        FromNode('Dummy24','t4')         = Yes ;
        FromNode('Roofing','t2')         = Yes ;
        FromNode('Wiring','t4')          = Yes ;
        FromNode('Painting','t5')        = Yes ;

Set ToNode(activities,time) ;
          ToNode('DigFoundations','t1')  = Yes ;
          ToNode('ObtainTiles','t2')     = Yes ;
          ToNode('ObtainBricks','t3')    = Yes ;
          ToNode('LayFoundations','t3')  = Yes ;
          ToNode('Walls','t4')           = Yes ;
          ToNode('Dummy24','t2')         = Yes ;
          ToNode('Roofing','t5')         = Yes ;
          ToNode('Wiring','t5')          = Yes ;
          ToNode('Painting','t6')        = Yes ;

Parameter Duration[activities] / DigFoundations  4 ,
                                 ObtainTiles    12 ,
                                 ObtainBricks    7 ,
                                 LayFoundations  2 ,
                                 Walls          10 ,
                                 Dummy24         0 ,
                                 Roofing         5 ,
                                 Wiring          3 ,
                                 Painting        4  / ;

Variables StartTime[time]  ,
*-> t;
          FinishTime       ;

Equation SeqRelation(activities) ,
         Def_obj                 ;

SeqRelation(activities)..
    Sum{time$ToNode(activities,time)  ,StartTime[time] }  -
    Sum{time$FromNode(activities,time),StartTime[time] }    =g=
                                                    Duration[activities];

Def_obj..
    FinishTime =e= StartTime['t6'];

* MPL  model solution
StartTime.fx['t0']  =   0.0000 ;
StartTime.fx['t1']  =   4.0000 ;
StartTime.fx['t2']  =  17.0000 ;
StartTime.fx['t3']  =   7.0000 ;
StartTime.fx['t4']  =  17.0000 ;
StartTime.fx['t5']  =  22.0000 ;
StartTime.fx['t6']  =  26.0000 ;

Model m5_3_6_CriticalPath / all / ;

Solve m5_3_6_CriticalPath using lp minimazing FinishTime ;

Display FinishTime.l ;