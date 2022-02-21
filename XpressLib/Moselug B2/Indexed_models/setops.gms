*******************************************************
*   Mosel User Guide Example Problems
*   =================================
*
* origin file setops.mos
*   ```````````````
*   Performing set operations.
*
*   (c) 2001 Dash Associates
*       author: S. Heipcke
*******************************************************!)

* model "Set example"

Set town / plymouth ,  bristol ,  glasgow ,  calais ,  liverpool
           rome ,  london ,  paris ,  madrid ,  berlin / ;

Set Cities(town)   /   rome ,  bristol ,  london ,  paris ,  liverpool  / ;
Set Ports(town)    /   plymouth ,  bristol ,  glasgow ,  london ,  calais ,  liverpool / ;
Set Capitals(town) /   rome ,  london ,  paris ,  madrid ,  berlin / ;

Set Places(town) ;
    Places(town) =  Cities(town)+Ports(town)+Capitals(town) ;
* Create the union of all 3 sets

Set In_all_three(town) ;
 In_all_three(town)= Cities(town)*Ports(town)*Capitals(town) ;
* Create the intersection of all 3 sets

Set Cities_not_cap(town) ;

Cities_not_cap(town) = Cities(town) - Capitals(town) ;
* Create the set of all cities that
* are not capitals

Display "Union of all places: " , Places  ;
Display "Intersection of all three: ", In_all_three ;
Display "Cities that are not capitals: ", Cities_not_cap ;

