*MPL Model Library MPL Model Library
*Matchmaking, Example 5, Winston
*    {  Exmpl8.3_5Matchmaking.mpl  }
*    {  Winston, Operations Research, Applications and Algorithms, 4th ed.  }
*    {  Chapter 8.3,  Example 5, Maximum Flow,  Size: 12x20,  Page 422 }

* TITLE  MatchMaking;

Set person  / SO , KC , BR , TS , MJ , TC , LA , MS , KH , LE , VP , SI / ;

Alias(person,person2);

Parameter Compatible[person,person2] ;  Compatible[person,person2] = 0 ;

    Compatible['SO','KC'] =  1 ;
    Compatible['SO','BR'] =  1 ;
    Compatible['SO','TS'] =  1 ;
    Compatible['SO','MJ'] =  1 ;
    Compatible['SO','TC'] =  1 ;
    Compatible['KC','MS'] =  1 ;
    Compatible['BR','LA'] =  1 ;
    Compatible['TS','LA'] =  1 ;
    Compatible['TS','MS'] =  1 ;
    Compatible['MJ','LA'] =  1 ;
    Compatible['MJ','MS'] =  1 ;
    Compatible['TC','KH'] =  1 ;
    Compatible['TC','LE'] =  1 ;
    Compatible['TC','VP'] =  1 ;
    Compatible['LA','SI'] =  1 ;
    Compatible['MS','SI'] =  1 ;
    Compatible['KH','SI'] =  1 ;
    Compatible['LE','SI'] =  1 ;
    Compatible['VP','SI'] =  1 ;
    Compatible['SI','SO'] =  1 ;

Set links(person,person2) ;
    links(person,person2) = Yes$(Compatible[person,person2]>0) ;


Variable Match[person,person2] , NumberOfMatches  ;

Equation MatchBalance(person) ,  Def_obj ;

MatchBalance(person)..
        Sum{person2$links(person,person2), Match[person,person2]} =e=
        Sum{person2$links(person2,person), Match[person2,person]} ;

Def_obj..
      NumberOfMatches =e= Sum{(person,person2)$links(person,person2),
                                                       Match[person,person2]}  ;

Match.lo[person,person2] = 0 ;
Match.up[person,person2] = 1 ;

* MPL model solution
*  Match.fx['SO','KC']     =         1.0000  ;
*  Match.fx['SO','BR']     =         0.0000  ;
*  Match.fx['SO','TS']     =         0.0000  ;
*  Match.fx['SO','MJ']     =         0.0000  ;
*  Match.fx['SO','TC']     =         0.0000  ;
*  Match.fx['KC','MS']     =         1.0000  ;
*  Match.fx['BR','LA']     =         0.0000  ;
*  Match.fx['TS','LA']     =         0.0000  ;
*  Match.fx['TS','MS']     =         0.0000  ;
*  Match.fx['MJ','LA']     =         0.0000  ;
*  Match.fx['MJ','MS']     =         0.0000  ;
*  Match.fx['TC','KH']     =         0.0000  ;
*  Match.fx['TC','LE']     =         0.0000  ;
*  Match.fx['TC','VP']     =         0.0000  ;
*  Match.fx['LA','SI']     =         0.0000  ;
*  Match.fx['MS','SI']     =         1.0000  ;
*  Match.fx['KH','SI']     =         0.0000  ;
*  Match.fx['LE','SI']     =         0.0000  ;
*  Match.fx['VP','SI']     =         0.0000  ;
*  Match.fx['SI','SO']     =         1.0000  ;

Model m8_3_5Matchmaking / all / ;

Solve m8_3_5Matchmaking using lp maximazing NumberOfMatches ;

Display NumberOfMatches.l

