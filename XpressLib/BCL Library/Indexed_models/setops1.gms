********************************************************
*  Mosel Example Problems
*  ======================
*
* Origin file setops1.mos
*  ````````````````
*  Performing set operations with Mosel.
*
*  (c) 2001 Dash Associates
*      author: S.Heipcke
**********************************************************

* model Setops1
Set Item /  rome , bristol , london , paris , liverpool ,
            plymouth ,  glasgow ,  calais  / ;
Set Places[Item] ;
Set Both_sets[Item] ;
Set Cities[Item] / rome , bristol , london , paris , liverpool / ;
Set Ports[Item] / plymouth , bristol , glasgow , london , calais , liverpool / ;

* Create the union of the sets

 Places[Item] = Cities[Item] + Ports[Item] ;
 Display Places ;

* Create the intersection of the sets
 Both_sets[Item] = Cities[Item]*Ports[Item] ;
 Display Both_sets ;
