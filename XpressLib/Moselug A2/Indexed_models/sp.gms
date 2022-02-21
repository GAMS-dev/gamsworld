******************************************************
*   Mosel User Guide Example Problems
*   =================================
*
* origin file sp.mos
*   ```````````
*   Initialization of multi-dimensional arrays.
*
*   (c) 2001 Dash Associates
*       author: Bob Daniel
********************************************************

* model sp

Set I /i1,i2/ ;
Set J /j1*j3/ ;
Set K /k1*k4/ ;


Table a[J,K]
       k1   k2   k3   k4
  j1  111  112  113  114
  j2  121  122  123  124
  j3  131  132  133  134 ;

Table b[J,K]
       k1   k2   k3   k4
  j1  211  212  213  214
  j2  221  222  223  224
  j3  231  232  233  234 ;

Parameter TT[i,j,k] ;
          TT['i1',j,k] = a[j,k] ;
          TT['i2',j,k] = b[j,k] ;

Variable Obj ;

Equation Def_obj ;

Def_obj.. Obj =e= 1 ;

Model sp / all / ;
* Solve the MIP-problem
Solve sp using lp maximazing Obj ;

Display Obj.l ;
Parameter R_1 , R_2 , R_3 ;
          R_1 = TT['i1','j1','k1'] ;
          R_2 = TT['i2','j1','k3'] ;
          R_3 = TT['i2','j3','k4'] ;

Display R_1 ;
Display R_2 ;
Display R_3 ;



