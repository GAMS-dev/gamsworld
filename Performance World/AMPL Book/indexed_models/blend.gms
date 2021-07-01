$ontext
GAMS - General Algebraic Modeling System AMPL Book Model Library

Copyright (c) 2019 GAMS Software GmbH <support@gams.com>
Copyright (c) 2019 GAMS Development Corp. <support@gams.com>
Copyright (c) 2019 Andre Savitsky <andresavit@yandex.ru>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
$offtext

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