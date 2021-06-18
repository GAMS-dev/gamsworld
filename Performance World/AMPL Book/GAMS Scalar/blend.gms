set INs /Collard , Hazen , Rieders/;
* inputs
set OUTs /d1*d4/;;
* outputs

Parameter cost[INs]   /Collard 12 , Hazen 13 , Rieders 12 / ;
Parameter in_min[INs] /Collard  1 , Hazen  1 , Rieders  1 / ;
Parameter in_max[INs] /Collard  4 , Hazen  4 , Rieders  4 / ;

Parameter out_min[OUTs] /d1  1 , d2  1 , d3  1 , d4  1 / ;
Parameter out_max[OUTs] /d1 31 , d2 32 , d3 32 , d4 32 / ;

Table io{INs,OUTs}
            d1   d2   d3  d4
   Collard   1    2    2   2
   Hazen     1    2    2   3
   Rieders   1    2    2   4   ;

Variable X[INs] , total_cost ;
Equation outputs_1(OUTs), outputs_2(OUTs), Def_obj ;

outputs_1(OUTs)..
   out_min[OUTs] =l= sum{INs, io[INs,OUTs] * X[INs]} ;

outputs_2(OUTs)..
                  sum{INs, io[INs,OUTs] * X[INs]} =l= out_max[OUTs];

Def_obj.. total_cost =e=  sum{INs,cost[INs] * X[INs]} ;

X.lo[INs] = in_min[INs] ;
X.up[INs]= in_max[INs] ;

Model blend /all/;
Solve blend using nlp minimazing total_cost ;
Display total_cost.l ;