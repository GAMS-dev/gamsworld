* TITLE  WyndorGlassDual;

Set product / Door , Window / ;
Set plant   / p1*p3         / ;

Parameter TimeAvail[plant] / p1 4 , p2 12 , p3 18 / ;

Table ProdTime[plant, product]
                      Door     Window
                 p1      1          0
                 p2      0          2
                 p3      3          2     ;

Parameter Profit[product] / Door 3.00 , Window 5.00 / ;

Variables  TimeCapShadow[plant] , TotalProfit ;

Equation ProduceDual(product) ,  Def_obj ;

ProduceDual(product)..
   SUM{plant,ProdTime[plant,product]*TimeCapShadow[plant]} =g= Profit[product] ;

Def_obj..  TotalProfit =e= SUM(plant,TimeAvail[plant]*TimeCapShadow[plant]);

TimeCapShadow.lo[plant] = 0 ;

Model m7_1_1_WyndorGlassDual / all / ;

Solve m7_1_1_WyndorGlassDual using nlp minimazing TotalProfit ;

Display TotalProfit.l ;