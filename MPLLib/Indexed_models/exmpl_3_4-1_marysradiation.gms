*MPL Model Library MPL Model Library
*
*Mary's Radiation, Example 3.4-1, Hillier and Lieberman
*   {  Exmpl_3.4-1_MarysRadiation.mpl  }
*   {  Hillier and Lieberman, Introduction to Operations Research, 7th ed.  }
*   {  Chapter 3.4,  Example 1,  Blending/Radiation,  Size: 3x2,  Page 44  }
*
*
*TITLE
*   MarysRadiationTherapy;

Set beam        / Beam1 , Beam2 / ;
Set bodyarea    / CriticalTissues , TumorRegion , CenterTumor / ;

Parameter  Restriction[bodyarea]  / CriticalTissues 2.7 ,
                                    TumorRegion 6.0    ,
                                    CenterTumor 6.0        /;

Parameter HealthyAnatomy[beam]    / Beam1 0.4 ,
                                    Beam2 0.5  / ;

Table  DosageAbsorbed[beam, bodyarea]
               CriticalTissues  TumorRegion  CenterTumor
   Beam1          0.3              0.5          0.6
   Beam2          0.1              0.5          0.4         ;

Variable Dosage[beam] , TotalHealthyDosage ;

Equation RestrictDosage_1(bodyarea) ,
         RestrictDosage_2(bodyarea) ,
         RestrictDosage_3(bodyarea) , Def_obj ;

RestrictDosage_1(bodyarea)$(ord(bodyarea) eq 1)..
             SUM{beam,DosageAbsorbed[beam, bodyarea] * Dosage[beam]} =l=
                                              Restriction[bodyarea];
RestrictDosage_2(bodyarea)$(ord(bodyarea) eq 2)..
             SUM{beam,DosageAbsorbed[beam, bodyarea] * Dosage[beam]} =e=
                                              Restriction[bodyarea];
RestrictDosage_3(bodyarea)$(ord(bodyarea) eq 3)..
             SUM{beam,DosageAbsorbed[beam, bodyarea] * Dosage[beam]} =g=
                                              Restriction[bodyarea];
Def_obj..
             TotalHealthyDosage =e= SUM{beam,HealthyAnatomy[beam]*Dosage[beam]};

Model m3_4_1_MarysRadiation / all / ;

Solve m3_4_1_MarysRadiation using nlp minimazing TotalHealthyDosage ;

Display TotalHealthyDosage.l ;


