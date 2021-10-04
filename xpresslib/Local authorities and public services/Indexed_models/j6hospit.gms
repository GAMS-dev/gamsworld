*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file j6hospit.mos
*   `````````````````
*   Compare the efficiency of hospitals (DEA method)
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "J-6 Hospital efficiency"

Set HOSP / h1*h4 / ;
* Set of hospitals

Set SERV / admissions     ,
           consultations  ,
           doctors        ,
           nurses          / ;
* Service indicators

Set RES  / non_med_pers , expense , beds / ;
* Resource indicators

Table INDSERV[SERV,HOSP]
                              h1    h2    h3    h4
           admissions        30.12 18.54 20.88 10.42
           consultations     13.54 14.45  8.52 17.74
           doctors           13     7     8    26
           nurses            79    55    47    50       ;
* Service indicator values

Table INDRES[RES,HOSP]
                              h1     h2    h3    h4
             non_med_pers     90     87    51    66
             expense          38.89 109.48 40.43 48.41
             beds             34     33    20    33     ;
* Resource indicator values

Variable
          eff        ,
* Efficiency value
          coef[HOSP] ,
* Coefficients for DEA method
          fserv[SERV],
* Service indicator of fict. hospital
          fres[RES]  ;
* Resource indicator of fict. hospit.

Equation Eq_1       ,
         Eq_2(SERV) ,
         Eq_3(RES)  ,
         LimServ(HOSP,SERV) ,
         LimRes(HOSP,RES)   ;

* DEA coefficients
Eq_1..
   Sum{HOSP, coef[HOSP] } =e= 1 ;
* Relations between service and resource indicators
Eq_2(SERV)..
   fserv[SERV] =e= Sum{HOSP, INDSERV(SERV,HOSP)*coef(HOSP) } ;
Eq_3(RES)..
   fres[RES]   =e= Sum{HOSP, INDRES(RES,HOSP)*coef(HOSP)   } ;
* Solve the problem for every hospital
* Limits on services and resources for the hospital currently looked at

* Hospital-specific service constr.
LimServ(HOSP,SERV)$(ord(HOSP) eq card(HOSP))..
   fserv[SERV] =g= INDSERV[SERV,HOSP] ;
* Hospital-specific resource constr.
LimRes(HOSP,RES)$(ord(HOSP) eq card(HOSP))..
   fres[RES]   =l= INDRES[RES,HOSP]*eff  ;

coef.lo[HOSP] = 0 ;

* XPress solution
*coef.fx['h1']=0;
*coef.fx['h2']=0;
*coef.fx['h3']=0;
*coef.fx['h4']=1;

*fserv.fx['admissions'   ] = 10.42 ;
*fserv.fx['consultations'] = 17.74 ;
*fserv.fx['doctors'      ] = 26    ;
*fserv.fx['nurses'       ] = 50    ;

*fres.fx['non_med_pers'  ] = 66    ;
*fres.fx['expense'       ] = 48.41 ;
*fres.fx['beds'          ] = 33    ;

* Solve the problem
Model J_6_Hospital_efficiency / all / ;
* Solve the MIP-problem
Solve J_6_Hospital_efficiency using LP minimazing eff ;

* Evaluation of hospital
Display eff.l ;