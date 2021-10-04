*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file j2bigbro.mos
*   `````````````````
*   CCTV surveillance
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "J-2 CCTV surveillance"

Set NODES / n1*n49 / ;
Alias(NODES,NODES1) ;

Parameter STREET[NODES,NODES1] ; STREET[NODES,NODES1] = 0 ;
* 1 if a street connects
* two nodes, 0 otherwise
                STREET['n1','n2']   =  1 ;
                STREET['n1','n3']   =  1 ;
                STREET['n2','n39']  =  1 ;
                STREET['n2','n41']  =  1 ;
                STREET['n3','n4']   =  1 ;
                STREET['n3','n11']  =  1 ;
                STREET['n3','n12']  =  1 ;
                STREET['n3','n16']  =  1 ;
                STREET['n4','n5']   =  1 ;
                STREET['n4','n6']   =  1 ;
                STREET['n4','n9']   =  1 ;
                STREET['n6','n7']   =  1 ;
                STREET['n6','n8']   =  1 ;
                STREET['n9','n10']  =  1 ;
                STREET['n11','n21'] =  1 ;
                STREET['n12','n13'] =  1 ;
                STREET['n12','n15'] =  1 ;
                STREET['n13','n14'] =  1 ;
                STREET['n14','n15'] =  1 ;
                STREET['n14','n18'] =  1 ;
                STREET['n15','n16'] =  1 ;
                STREET['n15','n19'] =  1 ;
                STREET['n16','n20'] =  1 ;
                STREET['n17','n18'] =  1 ;
                STREET['n18','n19'] =  1 ;
                STREET['n19','n20'] =  1 ;
                STREET['n20','n21'] =  1 ;
                STREET['n21','n22'] =  1 ;
                STREET['n22','n23'] =  1 ;
                STREET['n22','n25'] =  1 ;
                STREET['n23','n32'] =  1 ;
                STREET['n24','n25'] =  1 ;
                STREET['n25','n26'] =  1 ;
                STREET['n25','n30'] =  1 ;
                STREET['n26','n27'] =  1 ;
                STREET['n26','n28'] =  1 ;
                STREET['n28','n29'] =  1 ;
                STREET['n30','n31'] =  1 ;
                STREET['n31','n32'] =  1 ;
                STREET['n31','n33'] =  1 ;
                STREET['n32','n38'] =  1 ;
                STREET['n32','n39'] =  1 ;
                STREET['n33','n34'] =  1 ;
                STREET['n33','n37'] =  1 ;
                STREET['n34','n35'] =  1 ;
                STREET['n35','n36'] =  1 ;
                STREET['n37','n38'] =  1 ;
                STREET['n37','n43'] =  1 ;
                STREET['n38','n40'] =  1 ;
                STREET['n39','n40'] =  1 ;
                STREET['n40','n41'] =  1 ;
                STREET['n41','n42'] =  1 ;
                STREET['n43','n44'] =  1 ;
                STREET['n44','n49'] =  1 ;
                STREET['n44','n45'] =  1 ;
                STREET['n45','n46'] =  1 ;
                STREET['n45','n47'] =  1 ;
                STREET['n47','n48'] =  1 ;

Parameter Additional[NODES,NODES1];
          Additional[NODES,NODES1] = STREET[NODES1,NODES] ;
STREET[NODES,NODES1] = STREET[NODES,NODES1] + Additional[NODES,NODES1] ;

Binary Variable place[NODES];
* 1 if camera at node, 0 otherwise

Variable Total              ;

Equation Eq_1(NODES,NODES1) ,
         Def_obj            ;

* Flow balances in nodes
Eq_1(NODES,NODES1)$(STREET[NODES,NODES1] > 0 )..
    place[NODES] + place[NODES1] =g= 1 ;

* Objective: number of cameras to install
Def_obj..
    Total =e= Sum{NODES, place[NODES] } ;

* Solve the problem
Model J_2_CCTV_surveillance / all / ;
* Solve the MIP-problem
Solve J_2_CCTV_surveillance using MIP minimazing Total ;

Display Total.l ;
