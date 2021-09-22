*MPL Model Library MPL Model Library
*Save-It Company, Example 3.4-4b, Hillier and Lieberman
*   {  Exmpl3.4-4b_SaveItComp.mpl  }
*   {  Hillier and Lieberman, Introduction to Operations Research, 7th ed.  }
*   {  Chapter 3.4,  Example 4b,  Blending Material,  Size: 26x19,  Page 53  }
*   {  Alternative formulation for the same model, adds summary variables  }

*TITLE    SaveItCompany;


Set    grade    / A, B, C / ;
Set    material / m1*m4 / ;
Alias (material,material1) ;

Set  GradeMat[grade,material]
                / A.m1 , A.m2 , A.m3 , A.m4 , B.m1 , B.m2 , B.m4 , C.m1 /;


Parameter MinMixSpecs[grade,material]  ;
             MinMixSpecs['A','m1'] =  0;
             MinMixSpecs['A','m2'] = 40;
             MinMixSpecs['A','m3'] =  0;
             MinMixSpecs['A','m4'] = 20;
             MinMixSpecs['B','m1'] =  0;
             MinMixSpecs['B','m2'] = 10;
             MinMixSpecs['B','m4'] = 10;
             MinMixSpecs['C','m1'] =  0;

MinMixSpecs[grade,material]=MinMixSpecs[grade,material]/100;

Parameter MaxMixSpecs[grade,material] ;

             MaxMixSpecs['A','m1'] = 30  ;
             MaxMixSpecs['A','m2'] =  0  ;
             MaxMixSpecs['A','m3'] = 50  ;
             MaxMixSpecs['A','m4'] = 20  ;
             MaxMixSpecs['B','m1'] = 50  ;
             MaxMixSpecs['B','m2'] =  0  ;
             MaxMixSpecs['B','m4'] = 10  ;
             MaxMixSpecs['C','m1'] = 70  ;

MaxMixSpecs[grade,material]=MaxMixSpecs[grade,material]/100;

Parameter AmalgamationCost[grade]  /A 3.00 , B 2.50 , C 2.00 / ;
Parameter SellingPrice[grade]      /A 8.50 , B 7.00 , C 5.50 / ;
Parameter MaterialAvail[material]  / m1 3000 , m2 2000 , m3 4000 , m4 1000 / ;
Parameter TreatmentCost[material]  / m1 3.00 , m2 6.00 , m3 4.00 , m4 5.00 / ;

Scalar MinimumTreated     / 0.5   / ;
Scalar TreatmentCashAvail / 30000 / ;

Variables
          TotalAmalCost                   ,
          TotalRevenues                   ,
          ProduceGrade[grade]             ,
          MaterialUsed[material]          ,
          MixMaterial[grade, material]    ,
          TotalProfit                      ;
Equation
          GradeProd[grade]                ,
          MatUse[material]                ,
          MinMixtureSpecs(grade, material),
          MaxMixtureSpecs(grade, material),
          MaterialLimit(material)         ,
          ReqAmountTreated(material)      ,
          TreatCostRestrict               ,
          Eq_MACROS_1                     ,
          Eq_MACROS_2                     ,
          Def_obj                          ;

GradeProd[grade]..
       ProduceGrade[grade] =e= SUM{material,MixMaterial[grade,material]};
MatUse[material]..
       MaterialUsed[material] =e= SUM{grade,MixMaterial[grade,material]};

MinMixtureSpecs(grade, material)$(MinMixSpecs[grade,material] gt 0)..
       MixMaterial[grade,material] =g= MinMixSpecs[grade,material]*ProduceGrade[grade];
*-> MinMix:
MaxMixtureSpecs(grade, material)$(MaxMixSpecs[grade,material] gt 0)..
       MixMaterial[grade,material] =l= MaxMixSpecs[grade,material]*ProduceGrade[grade];
*-> MaxMix:
MaterialLimit(material)..
       MaterialUsed[material] =l= MaterialAvail[material];
*-> MatLim:
ReqAmountTreated(material)..
*-> ReqTr:
       MaterialUsed[material] =g= MinimumTreated*MaterialAvail[material];
TreatCostRestrict..
*-> TreatCst:
       SUM{material,TreatmentCost[material]*MaterialUsed[material]} =e= TreatmentCashAvail;
Eq_MACROS_1..
 TotalRevenues  =e=
       SUM{(grade),SellingPrice[grade]*ProduceGrade[grade]};
Eq_MACROS_2..
 TotalAmalCost  =e=
       SUM{(grade),AmalgamationCost[grade]*ProduceGrade[grade]};

Def_obj..
       TotalProfit =e= TotalRevenues - TotalAmalCost;

MixMaterial.lo[grade, material] = 0 ; 

Model m3_4_4b_SaveItComp / all / ;

Solve m3_4_4b_SaveItComp using nlp maximazing TotalProfit ;

Display TotalProfit.l ;