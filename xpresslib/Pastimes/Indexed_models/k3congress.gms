*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file k3congress.mos
*   ```````````````````
*   Congress puzzle
*
*   At an international congress taking place on 7-11 August
*   five researchers of different nationality are giving talks,
*   each on a different day. Find out the date and nationality
*   for every researcher from the following information:
*   a) Michael is not Japanese.
*   b) Eric is French and he talks before the 10th.
*   c) Arabinda talks on the 9th.
*   d) The Chinese who is not Hitoshi gives his talk on the 8th,
*      before Michael.
*   e) Hitoshi does his talk after the Indian and before the American.
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "K-3 Congress"

Set NAMES / Arabinda , Eric , Hitoshi , Michael , Zhicheng / ;
Set DAYS  / d7*d11 / ;
Set NAT   / Japanese , French , Chinese , American , Indian / ;

Binary Variable talk[NAMES,NAT,DAYS] ;
* [NAMES,NAT,DAYS] 1 if person p of nationality n
*                    gives a talk on day d, 0 otherwise

Variable
                Obj ;

Equation Eq_1(NAMES),
         Eq_2(NAT)  ,
         Eq_3(DAYS) ,
         Eq_4       ,
         Eq_5       ,
         Eq_6       ,
         Eq_7       ,
         Eq_8       ,
         Eq_9       ,
         Eq_10      ,
         Eq_11      ,
         Eq_12      ,
         Eq_13      ,
         Def_Obj    ;

* One researcher per day and nationality
Eq_1(NAMES)..
    Sum{(NAT,DAYS), talk[NAMES,NAT,DAYS] } =e= 1 ;

* Every nationality exactly once
Eq_2(NAT)..
    Sum{(NAMES,DAYS), talk[NAMES,NAT,DAYS] }  =e= 1 ;

* One talk per day
Eq_3(DAYS)..
    Sum{(NAMES,NAT), talk[NAMES,NAT,DAYS] } =e= 1 ;

* a: Michael is not Japanese
Eq_4..
    Sum{DAYS, talk['Michael','Japanese', DAYS] } =e= 0 ;

* b: Eric is French and he talks before the 10th
Eq_5..
    Sum{DAYS$((ord(DAYS) eq 1) or
              (ord(DAYS) eq 2) or
              (ord(DAYS) eq 3)   ) , talk['Eric','French',DAYS] } =e=  1 ;

* c: Arabinda talks on the 9th
Eq_6..
    Sum{NAT, talk['Arabinda',NAT,'d9'] } =e= 1 ;

* d: The Chinese who is not Hitoshi gives his talk on the 8th, before Michael
Eq_7..
    Sum{DAYS, (talk['Hitoshi','Chinese',DAYS]+
               talk['Michael','Chinese',DAYS] )} =e= 0 ;
Eq_8..
    Sum{NAMES, talk[NAMES,'Chinese','d8'] } =e= 1 ;
Eq_9..
    Sum{(NAT,DAYS)$((ord(DAYS) eq 3) or
                    (ord(DAYS) eq 4) or
                    (ord(DAYS) eq 5)   ) , talk['Michael',NAT,DAYS] } =e= 1 ;

* e: Hitoshi does his talk after the Indian and before the American
Eq_10..
    Sum{NAT, (talk['Hitoshi',NAT,'d7']+talk['Hitoshi',NAT,'d11']) } =e= 0 ;
Eq_11..
    Sum{(NAMES,DAYS)$((ord(DAYS) eq 4) or
                      (ord(DAYS) eq 5)   ) , talk[NAMES,'Indian',DAYS]} =e= 0 ;
Eq_12..
    Sum{(NAMES,DAYS)$((ord(DAYS) eq 1) or
                      (ord(DAYS) eq 2)   ) , talk[NAMES,"American",DAYS] } =e= 0 ;
Eq_13..
    Sum{DAYS, (talk['Hitoshi','Indian',DAYS]  +
               talk['Hitoshi','American',DAYS]  ) } =e= 0 ;

Def_Obj..
    Obj =e= 0 ;
* Solve the problem: no objective

Model K_3_Congress / all / ;
* Solve the MIP-problem
Solve K_3_Congress using MIP minimazing Obj ;

Display Obj.l ;