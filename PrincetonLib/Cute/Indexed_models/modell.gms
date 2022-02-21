*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem :  A customer choice marketing problem
*   *********
*   SIF input: Andy Conn, December 1991.
*              Ingrid Bongartz, January 1994.
*   classification LLR2-AN-1831-339
*   useful parameter definitions.
*  Number of customers
*  Number of products
*  Number of alternatives available to each customer
*  Number of time periods
*  Percentage profit
*  Initialize customer preference matrices to zero.
*  Set nonzero entries in preference matrices.
*  Initialize unit cost matrices to zero.
*  Set nonzero entries in unit cost matrices.
*  Set unit profit matrices.
*  Sales of product j in time period k.
*  Returns of product j in time period k.
*  Inventory of product j in time period k.
*  Production of product j in time period k.
*  Sales of upgrades from product i to product j in time period k.
*  Inventory of upgrades from product i to product j in time period k.
*  Break-ups from product i to product j in time period k.
*  Number of product i obtained from product j in time period k.
*  Production of upgrade from product i to product j in time period k.
*  Inventory of product j in time period t+1.
*  Inventory of upgrades from product i to product j in time period t+1.
*  Choice of alternative j by customer k.
*  Objective function:  maximize profit.
*  Constraints to ensure consistency between customer choice,
*  sales and returns.
*  Constraints to ensure each customer chooses only one alternative.
*  Value constraints.
*  Customer 1.
*  Customer 2.
*  Customer 3.
*  Inventory constraints.
* Constants for value constraints for customer 1.
* Constants for value constraints for customer 2.

     Parameter         m  ;        m  = 3;
     Parameter         n  ;        n  = 15;
     Parameter      nalt  ;     nalt  = 4;
     Parameter         t  ;        t  = 1;
     Parameter       tm1  ;      tm1  = -1 + (1);
     Parameter     nprof  ;    nprof  = 0.3;
     Parameter       im1  ;      im1  = -1 + (4);
     Parameter    d1_2_1  ;   d1_2_1  = 500.0;
     Parameter    d1_3_1  ;   d1_3_1  = -1500.0;
     Parameter    d2_3_1  ;   d2_3_1  = -2000.0;
     Parameter    d1_4_1  ;   d1_4_1  = 2000.0;
     Parameter    d2_4_1  ;   d2_4_1  = 3000.0;
     Parameter    d3_4_1  ;   d3_4_1  = 4000.0;
     Parameter    d1_2_2  ;   d1_2_2  = 100.0;
     Parameter    d1_3_2  ;   d1_3_2  = -1500.0;
     Parameter    d2_3_2  ;   d2_3_2  = 1000.0;
     Parameter    d1_4_2  ;   d1_4_2  = 0.0;
     Parameter    d2_4_2  ;   d2_4_2  = 0.0;
     Parameter    d3_4_2  ;   d3_4_2  = 0.0;
     Parameter    d1_2_3  ;   d1_2_3  = 500.0;
     Parameter    d1_3_3  ;   d1_3_3  = 500.0;
     Parameter    d2_3_3  ;   d2_3_3  = 200.0;
     Parameter    d1_4_3  ;   d1_4_3  = -1500.0;
     Parameter    d2_4_3  ;   d2_4_3  = -300.0;
     Parameter    d3_4_3  ;   d3_4_3  = -1500.0;
     Parameter     cm1_1  ;    cm1_1  = 10600.0;
     Parameter  cm1_m1_1  ; cm1_m1_1  = 0.0;
     Parameter   c0_m1_1  ;  c0_m1_1  = 0.0;
     Parameter   c1_m1_1  ;  c1_m1_1  = 0.0;
     Parameter   c2_m1_1  ;  c2_m1_1  = 0.0;
     Parameter   c3_m1_1  ;  c3_m1_1  = 0.0;
     Parameter   c4_m1_1  ;  c4_m1_1  = 0.0;
     Parameter   c5_m1_1  ;  c5_m1_1  = 0.0;
     Parameter   c6_m1_1  ;  c6_m1_1  = 0.0;
     Parameter   c7_m1_1  ;  c7_m1_1  = 0.0;
     Parameter   c8_m1_1  ;  c8_m1_1  = 0.0;
     Parameter   c9_m1_1  ;  c9_m1_1  = 0.0;
     Parameter  c10_m1_1  ; c10_m1_1  = 0.0;
     Parameter  c11_m1_1  ; c11_m1_1  = 0.0;
     Parameter  c12_m1_1  ; c12_m1_1  = 0.0;
     Parameter  c13_m1_1  ; c13_m1_1  = 0.0;
     Parameter  c14_m1_1  ; c14_m1_1  = 0.0;
     Parameter  c15_m1_1  ; c15_m1_1  = 0.0;
     Parameter      c0_1  ;     c0_1  = 11200.0;
     Parameter   cm1_0_1  ;  cm1_0_1  = 0.0;
     Parameter    c0_0_1  ;   c0_0_1  = 0.0;
     Parameter    c1_0_1  ;   c1_0_1  = 0.0;
     Parameter    c2_0_1  ;   c2_0_1  = 0.0;
     Parameter    c3_0_1  ;   c3_0_1  = 0.0;
     Parameter    c4_0_1  ;   c4_0_1  = 0.0;
     Parameter    c5_0_1  ;   c5_0_1  = 0.0;
     Parameter    c6_0_1  ;   c6_0_1  = 0.0;
     Parameter    c7_0_1  ;   c7_0_1  = 0.0;
     Parameter    c8_0_1  ;   c8_0_1  = 0.0;
     Parameter    c9_0_1  ;   c9_0_1  = 0.0;
     Parameter   c10_0_1  ;  c10_0_1  = 0.0;
     Parameter   c11_0_1  ;  c11_0_1  = 0.0;
     Parameter   c12_0_1  ;  c12_0_1  = 0.0;
     Parameter   c13_0_1  ;  c13_0_1  = 0.0;
     Parameter   c14_0_1  ;  c14_0_1  = 0.0;
     Parameter   c15_0_1  ;  c15_0_1  = 0.0;
     Parameter      c1_1  ;     c1_1  = 0.0;
     Parameter   cm1_1_1  ;  cm1_1_1  = 0.0;
     Parameter    c0_1_1  ;   c0_1_1  = 0.0;
     Parameter    c1_1_1  ;   c1_1_1  = 0.0;
     Parameter    c2_1_1  ;   c2_1_1  = 0.0;
     Parameter    c3_1_1  ;   c3_1_1  = 0.0;
     Parameter    c4_1_1  ;   c4_1_1  = 0.0;
     Parameter    c5_1_1  ;   c5_1_1  = 0.0;
     Parameter    c6_1_1  ;   c6_1_1  = 0.0;
     Parameter    c7_1_1  ;   c7_1_1  = 0.0;
     Parameter    c8_1_1  ;   c8_1_1  = 0.0;
     Parameter    c9_1_1  ;   c9_1_1  = 0.0;
     Parameter   c10_1_1  ;  c10_1_1  = 0.0;
     Parameter   c11_1_1  ;  c11_1_1  = 0.0;
     Parameter   c12_1_1  ;  c12_1_1  = 0.0;
     Parameter   c13_1_1  ;  c13_1_1  = 0.0;
     Parameter   c14_1_1  ;  c14_1_1  = 0.0;
     Parameter   c15_1_1  ;  c15_1_1  = 0.0;
     Parameter      c2_1  ;     c2_1  = 0.0;
     Parameter   cm1_2_1  ;  cm1_2_1  = 0.0;
     Parameter    c0_2_1  ;   c0_2_1  = 0.0;
     Parameter    c1_2_1  ;   c1_2_1  = 0.0;
     Parameter    c2_2_1  ;   c2_2_1  = 0.0;
     Parameter    c3_2_1  ;   c3_2_1  = 0.0;
     Parameter    c4_2_1  ;   c4_2_1  = 0.0;
     Parameter    c5_2_1  ;   c5_2_1  = 0.0;
     Parameter    c6_2_1  ;   c6_2_1  = 0.0;
     Parameter    c7_2_1  ;   c7_2_1  = 0.0;
     Parameter    c8_2_1  ;   c8_2_1  = 0.0;
     Parameter    c9_2_1  ;   c9_2_1  = 0.0;
     Parameter   c10_2_1  ;  c10_2_1  = 0.0;
     Parameter   c11_2_1  ;  c11_2_1  = 0.0;
     Parameter   c12_2_1  ;  c12_2_1  = 0.0;
     Parameter   c13_2_1  ;  c13_2_1  = 0.0;
     Parameter   c14_2_1  ;  c14_2_1  = 0.0;
     Parameter   c15_2_1  ;  c15_2_1  = 0.0;
     Parameter      c3_1  ;     c3_1  = 0.0;
     Parameter   cm1_3_1  ;  cm1_3_1  = 0.0;
     Parameter    c0_3_1  ;   c0_3_1  = 0.0;
     Parameter    c1_3_1  ;   c1_3_1  = 0.0;
     Parameter    c2_3_1  ;   c2_3_1  = 0.0;
     Parameter    c3_3_1  ;   c3_3_1  = 0.0;
     Parameter    c4_3_1  ;   c4_3_1  = 0.0;
     Parameter    c5_3_1  ;   c5_3_1  = 0.0;
     Parameter    c6_3_1  ;   c6_3_1  = 0.0;
     Parameter    c7_3_1  ;   c7_3_1  = 0.0;
     Parameter    c8_3_1  ;   c8_3_1  = 0.0;
     Parameter    c9_3_1  ;   c9_3_1  = 0.0;
     Parameter   c10_3_1  ;  c10_3_1  = 0.0;
     Parameter   c11_3_1  ;  c11_3_1  = 0.0;
     Parameter   c12_3_1  ;  c12_3_1  = 0.0;
     Parameter   c13_3_1  ;  c13_3_1  = 0.0;
     Parameter   c14_3_1  ;  c14_3_1  = 0.0;
     Parameter   c15_3_1  ;  c15_3_1  = 0.0;
     Parameter      c4_1  ;     c4_1  = 2300.0;
     Parameter   cm1_4_1  ;  cm1_4_1  = 0.0;
     Parameter    c0_4_1  ;   c0_4_1  = 0.0;
     Parameter    c1_4_1  ;   c1_4_1  = 0.0;
     Parameter    c2_4_1  ;   c2_4_1  = 0.0;
     Parameter    c3_4_1  ;   c3_4_1  = 0.0;
     Parameter    c4_4_1  ;   c4_4_1  = 0.0;
     Parameter    c5_4_1  ;   c5_4_1  = 0.0;
     Parameter    c6_4_1  ;   c6_4_1  = 0.0;
     Parameter    c7_4_1  ;   c7_4_1  = 0.0;
     Parameter    c8_4_1  ;   c8_4_1  = 0.0;
     Parameter    c9_4_1  ;   c9_4_1  = 0.0;
     Parameter   c10_4_1  ;  c10_4_1  = 0.0;
     Parameter   c11_4_1  ;  c11_4_1  = 0.0;
     Parameter   c12_4_1  ;  c12_4_1  = 0.0;
     Parameter   c13_4_1  ;  c13_4_1  = 0.0;
     Parameter   c14_4_1  ;  c14_4_1  = 0.0;
     Parameter   c15_4_1  ;  c15_4_1  = 0.0;
     Parameter      c5_1  ;     c5_1  = 0.0;
     Parameter   cm1_5_1  ;  cm1_5_1  = 0.0;
     Parameter    c0_5_1  ;   c0_5_1  = 0.0;
     Parameter    c1_5_1  ;   c1_5_1  = 0.0;
     Parameter    c2_5_1  ;   c2_5_1  = 0.0;
     Parameter    c3_5_1  ;   c3_5_1  = 1700.0;
     Parameter    c4_5_1  ;   c4_5_1  = 0.0;
     Parameter    c5_5_1  ;   c5_5_1  = 0.0;
     Parameter    c6_5_1  ;   c6_5_1  = 0.0;
     Parameter    c7_5_1  ;   c7_5_1  = 0.0;
     Parameter    c8_5_1  ;   c8_5_1  = 0.0;
     Parameter    c9_5_1  ;   c9_5_1  = 0.0;
     Parameter   c10_5_1  ;  c10_5_1  = 0.0;
     Parameter   c11_5_1  ;  c11_5_1  = 0.0;
     Parameter   c12_5_1  ;  c12_5_1  = 0.0;
     Parameter   c13_5_1  ;  c13_5_1  = 0.0;
     Parameter   c14_5_1  ;  c14_5_1  = 0.0;
     Parameter   c15_5_1  ;  c15_5_1  = 0.0;
     Parameter      c6_1  ;     c6_1  = 13900.0;
     Parameter   cm1_6_1  ;  cm1_6_1  = 0.0;
     Parameter    c0_6_1  ;   c0_6_1  = 0.0;
     Parameter    c1_6_1  ;   c1_6_1  = 0.0;
     Parameter    c2_6_1  ;   c2_6_1  = 0.0;
     Parameter    c3_6_1  ;   c3_6_1  = 0.0;
     Parameter    c4_6_1  ;   c4_6_1  = 0.0;
     Parameter    c5_6_1  ;   c5_6_1  = 0.0;
     Parameter    c6_6_1  ;   c6_6_1  = 0.0;
     Parameter    c7_6_1  ;   c7_6_1  = 0.0;
     Parameter    c8_6_1  ;   c8_6_1  = 0.0;
     Parameter    c9_6_1  ;   c9_6_1  = 0.0;
     Parameter   c10_6_1  ;  c10_6_1  = 0.0;
     Parameter   c11_6_1  ;  c11_6_1  = 0.0;
     Parameter   c12_6_1  ;  c12_6_1  = 0.0;
     Parameter   c13_6_1  ;  c13_6_1  = 0.0;
     Parameter   c14_6_1  ;  c14_6_1  = 0.0;
     Parameter   c15_6_1  ;  c15_6_1  = 0.0;
     Parameter      c7_1  ;     c7_1  = 15400.0;
     Parameter   cm1_7_1  ;  cm1_7_1  = 0.0;
     Parameter    c0_7_1  ;   c0_7_1  = 0.0;
     Parameter    c1_7_1  ;   c1_7_1  = 0.0;
     Parameter    c2_7_1  ;   c2_7_1  = 0.0;
     Parameter    c3_7_1  ;   c3_7_1  = 0.0;
     Parameter    c4_7_1  ;   c4_7_1  = 0.0;
     Parameter    c5_7_1  ;   c5_7_1  = 0.0;
     Parameter    c6_7_1  ;   c6_7_1  = 0.0;
     Parameter    c7_7_1  ;   c7_7_1  = 0.0;
     Parameter    c8_7_1  ;   c8_7_1  = 0.0;
     Parameter    c9_7_1  ;   c9_7_1  = 0.0;
     Parameter   c10_7_1  ;  c10_7_1  = 0.0;
     Parameter   c11_7_1  ;  c11_7_1  = 0.0;
     Parameter   c12_7_1  ;  c12_7_1  = 0.0;
     Parameter   c13_7_1  ;  c13_7_1  = 0.0;
     Parameter   c14_7_1  ;  c14_7_1  = 0.0;
     Parameter   c15_7_1  ;  c15_7_1  = 0.0;
     Parameter      c8_1  ;     c8_1  = 0.0;
     Parameter   cm1_8_1  ;  cm1_8_1  = 0.0;
     Parameter    c0_8_1  ;   c0_8_1  = 0.0;
     Parameter    c1_8_1  ;   c1_8_1  = 0.0;
     Parameter    c2_8_1  ;   c2_8_1  = 0.0;
     Parameter    c3_8_1  ;   c3_8_1  = 0.0;
     Parameter    c4_8_1  ;   c4_8_1  = 0.0;
     Parameter    c5_8_1  ;   c5_8_1  = 0.0;
     Parameter    c6_8_1  ;   c6_8_1  = 0.0;
     Parameter    c7_8_1  ;   c7_8_1  = 0.0;
     Parameter    c8_8_1  ;   c8_8_1  = 0.0;
     Parameter    c9_8_1  ;   c9_8_1  = 0.0;
     Parameter   c10_8_1  ;  c10_8_1  = 0.0;
     Parameter   c11_8_1  ;  c11_8_1  = 0.0;
     Parameter   c12_8_1  ;  c12_8_1  = 0.0;
     Parameter   c13_8_1  ;  c13_8_1  = 0.0;
     Parameter   c14_8_1  ;  c14_8_1  = 0.0;
     Parameter   c15_8_1  ;  c15_8_1  = 0.0;
     Parameter      c9_1  ;     c9_1  = 0.0;
     Parameter   cm1_9_1  ;  cm1_9_1  = 0.0;
     Parameter    c0_9_1  ;   c0_9_1  = 0.0;
     Parameter    c1_9_1  ;   c1_9_1  = 0.0;
     Parameter    c2_9_1  ;   c2_9_1  = 0.0;
     Parameter    c3_9_1  ;   c3_9_1  = 2700.0;
     Parameter    c4_9_1  ;   c4_9_1  = 0.0;
     Parameter    c5_9_1  ;   c5_9_1  = 0.0;
     Parameter    c6_9_1  ;   c6_9_1  = 0.0;
     Parameter    c7_9_1  ;   c7_9_1  = 0.0;
     Parameter    c8_9_1  ;   c8_9_1  = 0.0;
     Parameter    c9_9_1  ;   c9_9_1  = 0.0;
     Parameter   c10_9_1  ;  c10_9_1  = 0.0;
     Parameter   c11_9_1  ;  c11_9_1  = 0.0;
     Parameter   c12_9_1  ;  c12_9_1  = 0.0;
     Parameter   c13_9_1  ;  c13_9_1  = 0.0;
     Parameter   c14_9_1  ;  c14_9_1  = 0.0;
     Parameter   c15_9_1  ;  c15_9_1  = 0.0;
     Parameter     c10_1  ;    c10_1  = 0.0;
     Parameter  cm1_10_1  ; cm1_10_1  = 0.0;
     Parameter   c0_10_1  ;  c0_10_1  = 0.0;
     Parameter   c1_10_1  ;  c1_10_1  = 0.0;
     Parameter   c2_10_1  ;  c2_10_1  = 0.0;
     Parameter   c3_10_1  ;  c3_10_1  = 0.0;
     Parameter   c4_10_1  ;  c4_10_1  = 0.0;
     Parameter   c5_10_1  ;  c5_10_1  = 0.0;
     Parameter   c6_10_1  ;  c6_10_1  = 0.0;
     Parameter   c7_10_1  ;  c7_10_1  = 0.0;
     Parameter   c8_10_1  ;  c8_10_1  = 0.0;
     Parameter   c9_10_1  ;  c9_10_1  = 0.0;
     Parameter  c10_10_1  ; c10_10_1  = 0.0;
     Parameter  c11_10_1  ; c11_10_1  = 0.0;
     Parameter  c12_10_1  ; c12_10_1  = 0.0;
     Parameter  c13_10_1  ; c13_10_1  = 0.0;
     Parameter  c14_10_1  ; c14_10_1  = 0.0;
     Parameter  c15_10_1  ; c15_10_1  = 0.0;
     Parameter     c11_1  ;    c11_1  = 0.0;
     Parameter  cm1_11_1  ; cm1_11_1  = 0.0;
     Parameter   c0_11_1  ;  c0_11_1  = 0.0;
     Parameter   c1_11_1  ;  c1_11_1  = 0.0;
     Parameter   c2_11_1  ;  c2_11_1  = 0.0;
     Parameter   c3_11_1  ;  c3_11_1  = 0.0;
     Parameter   c4_11_1  ;  c4_11_1  = 3400.0;
     Parameter   c5_11_1  ;  c5_11_1  = 0.0;
     Parameter   c6_11_1  ;  c6_11_1  = 0.0;
     Parameter   c7_11_1  ;  c7_11_1  = 2400.0;
     Parameter   c8_11_1  ;  c8_11_1  = 0.0;
     Parameter   c9_11_1  ;  c9_11_1  = 0.0;
     Parameter  c10_11_1  ; c10_11_1  = 0.0;
     Parameter  c11_11_1  ; c11_11_1  = 0.0;
     Parameter  c12_11_1  ; c12_11_1  = 0.0;
     Parameter  c13_11_1  ; c13_11_1  = 0.0;
     Parameter  c14_11_1  ; c14_11_1  = 0.0;
     Parameter  c15_11_1  ; c15_11_1  = 0.0;
     Parameter     c12_1  ;    c12_1  = 24650.0;
     Parameter  cm1_12_1  ; cm1_12_1  = 0.0;
     Parameter   c0_12_1  ;  c0_12_1  = 0.0;
     Parameter   c1_12_1  ;  c1_12_1  = 0.0;
     Parameter   c2_12_1  ;  c2_12_1  = 0.0;
     Parameter   c3_12_1  ;  c3_12_1  = 0.0;
     Parameter   c4_12_1  ;  c4_12_1  = 0.0;
     Parameter   c5_12_1  ;  c5_12_1  = 0.0;
     Parameter   c6_12_1  ;  c6_12_1  = 0.0;
     Parameter   c7_12_1  ;  c7_12_1  = 0.0;
     Parameter   c8_12_1  ;  c8_12_1  = 0.0;
     Parameter   c9_12_1  ;  c9_12_1  = 0.0;
     Parameter  c10_12_1  ; c10_12_1  = 0.0;
     Parameter  c11_12_1  ; c11_12_1  = 0.0;
     Parameter  c12_12_1  ; c12_12_1  = 0.0;
     Parameter  c13_12_1  ; c13_12_1  = 0.0;
     Parameter  c14_12_1  ; c14_12_1  = 0.0;
     Parameter  c15_12_1  ; c15_12_1  = 0.0;
     Parameter     c13_1  ;    c13_1  = 0.0;
     Parameter  cm1_13_1  ; cm1_13_1  = 0.0;
     Parameter   c0_13_1  ;  c0_13_1  = 0.0;
     Parameter   c1_13_1  ;  c1_13_1  = 0.0;
     Parameter   c2_13_1  ;  c2_13_1  = 0.0;
     Parameter   c3_13_1  ;  c3_13_1  = 0.0;
     Parameter   c4_13_1  ;  c4_13_1  = 0.0;
     Parameter   c5_13_1  ;  c5_13_1  = 4100.0;
     Parameter   c6_13_1  ;  c6_13_1  = 0.0;
     Parameter   c7_13_1  ;  c7_13_1  = 0.0;
     Parameter   c8_13_1  ;  c8_13_1  = 0.0;
     Parameter   c9_13_1  ;  c9_13_1  = 0.0;
     Parameter  c10_13_1  ; c10_13_1  = 0.0;
     Parameter  c11_13_1  ; c11_13_1  = 0.0;
     Parameter  c12_13_1  ; c12_13_1  = 0.0;
     Parameter  c13_13_1  ; c13_13_1  = 0.0;
     Parameter  c14_13_1  ; c14_13_1  = 0.0;
     Parameter  c15_13_1  ; c15_13_1  = 0.0;
     Parameter     c14_1  ;    c14_1  = 16450.0;
     Parameter  cm1_14_1  ; cm1_14_1  = 0.0;
     Parameter   c0_14_1  ;  c0_14_1  = 0.0;
     Parameter   c1_14_1  ;  c1_14_1  = 0.0;
     Parameter   c2_14_1  ;  c2_14_1  = 0.0;
     Parameter   c3_14_1  ;  c3_14_1  = 0.0;
     Parameter   c4_14_1  ;  c4_14_1  = 3800.0;
     Parameter   c5_14_1  ;  c5_14_1  = 0.0;
     Parameter   c6_14_1  ;  c6_14_1  = 0.0;
     Parameter   c7_14_1  ;  c7_14_1  = 3500.0;
     Parameter   c8_14_1  ;  c8_14_1  = 0.0;
     Parameter   c9_14_1  ;  c9_14_1  = 0.0;
     Parameter  c10_14_1  ; c10_14_1  = 0.0;
     Parameter  c11_14_1  ; c11_14_1  = 0.0;
     Parameter  c12_14_1  ; c12_14_1  = 0.0;
     Parameter  c13_14_1  ; c13_14_1  = 0.0;
     Parameter  c14_14_1  ; c14_14_1  = 0.0;
     Parameter  c15_14_1  ; c15_14_1  = 0.0;
     Parameter     c15_1  ;    c15_1  = 0.0;
     Parameter  cm1_15_1  ; cm1_15_1  = 0.0;
     Parameter   c0_15_1  ;  c0_15_1  = 0.0;
     Parameter   c1_15_1  ;  c1_15_1  = 0.0;
     Parameter   c2_15_1  ;  c2_15_1  = 0.0;
     Parameter   c3_15_1  ;  c3_15_1  = 0.0;
     Parameter   c4_15_1  ;  c4_15_1  = 0.0;
     Parameter   c5_15_1  ;  c5_15_1  = 0.0;
     Parameter   c6_15_1  ;  c6_15_1  = 0.0;
     Parameter   c7_15_1  ;  c7_15_1  = 0.0;
     Parameter   c8_15_1  ;  c8_15_1  = 8000.0;
     Parameter   c9_15_1  ;  c9_15_1  = 0.0;
     Parameter  c10_15_1  ; c10_15_1  = 0.0;
     Parameter  c11_15_1  ; c11_15_1  = 0.0;
     Parameter  c12_15_1  ; c12_15_1  = 0.0;
     Parameter  c13_15_1  ; c13_15_1  = 0.0;
     Parameter  c14_15_1  ; c14_15_1  = 0.0;
     Parameter  c15_15_1  ; c15_15_1  = 0.0;
     Parameter     lm1_1  ;    lm1_1  = (10600.0) * (0.3);
     Parameter  lm1_m1_1  ; lm1_m1_1  = (0.0) * (0.3);
     Parameter   l0_m1_1  ;  l0_m1_1  = (0.0) * (0.3);
     Parameter   l1_m1_1  ;  l1_m1_1  = (0.0) * (0.3);
     Parameter   l2_m1_1  ;  l2_m1_1  = (0.0) * (0.3);
     Parameter   l3_m1_1  ;  l3_m1_1  = (0.0) * (0.3);
     Parameter   l4_m1_1  ;  l4_m1_1  = (0.0) * (0.3);
     Parameter   l5_m1_1  ;  l5_m1_1  = (0.0) * (0.3);
     Parameter   l6_m1_1  ;  l6_m1_1  = (0.0) * (0.3);
     Parameter   l7_m1_1  ;  l7_m1_1  = (0.0) * (0.3);
     Parameter   l8_m1_1  ;  l8_m1_1  = (0.0) * (0.3);
     Parameter   l9_m1_1  ;  l9_m1_1  = (0.0) * (0.3);
     Parameter  l10_m1_1  ; l10_m1_1  = (0.0) * (0.3);
     Parameter  l11_m1_1  ; l11_m1_1  = (0.0) * (0.3);
     Parameter  l12_m1_1  ; l12_m1_1  = (0.0) * (0.3);
     Parameter  l13_m1_1  ; l13_m1_1  = (0.0) * (0.3);
     Parameter  l14_m1_1  ; l14_m1_1  = (0.0) * (0.3);
     Parameter  l15_m1_1  ; l15_m1_1  = (0.0) * (0.3);
     Parameter      l0_1  ;     l0_1  = (11200.0) * (0.3);
     Parameter   lm1_0_1  ;  lm1_0_1  = (0.0) * (0.3);
     Parameter    l0_0_1  ;   l0_0_1  = (0.0) * (0.3);
     Parameter    l1_0_1  ;   l1_0_1  = (0.0) * (0.3);
     Parameter    l2_0_1  ;   l2_0_1  = (0.0) * (0.3);
     Parameter    l3_0_1  ;   l3_0_1  = (0.0) * (0.3);
     Parameter    l4_0_1  ;   l4_0_1  = (0.0) * (0.3);
     Parameter    l5_0_1  ;   l5_0_1  = (0.0) * (0.3);
     Parameter    l6_0_1  ;   l6_0_1  = (0.0) * (0.3);
     Parameter    l7_0_1  ;   l7_0_1  = (0.0) * (0.3);
     Parameter    l8_0_1  ;   l8_0_1  = (0.0) * (0.3);
     Parameter    l9_0_1  ;   l9_0_1  = (0.0) * (0.3);
     Parameter   l10_0_1  ;  l10_0_1  = (0.0) * (0.3);
     Parameter   l11_0_1  ;  l11_0_1  = (0.0) * (0.3);
     Parameter   l12_0_1  ;  l12_0_1  = (0.0) * (0.3);
     Parameter   l13_0_1  ;  l13_0_1  = (0.0) * (0.3);
     Parameter   l14_0_1  ;  l14_0_1  = (0.0) * (0.3);
     Parameter   l15_0_1  ;  l15_0_1  = (0.0) * (0.3);
     Parameter      l1_1  ;     l1_1  = (0.0) * (0.3);
     Parameter   lm1_1_1  ;  lm1_1_1  = (0.0) * (0.3);
     Parameter    l0_1_1  ;   l0_1_1  = (0.0) * (0.3);
     Parameter    l1_1_1  ;   l1_1_1  = (0.0) * (0.3);
     Parameter    l2_1_1  ;   l2_1_1  = (0.0) * (0.3);
     Parameter    l3_1_1  ;   l3_1_1  = (0.0) * (0.3);
     Parameter    l4_1_1  ;   l4_1_1  = (0.0) * (0.3);
     Parameter    l5_1_1  ;   l5_1_1  = (0.0) * (0.3);
     Parameter    l6_1_1  ;   l6_1_1  = (0.0) * (0.3);
     Parameter    l7_1_1  ;   l7_1_1  = (0.0) * (0.3);
     Parameter    l8_1_1  ;   l8_1_1  = (0.0) * (0.3);
     Parameter    l9_1_1  ;   l9_1_1  = (0.0) * (0.3);
     Parameter   l10_1_1  ;  l10_1_1  = (0.0) * (0.3);
     Parameter   l11_1_1  ;  l11_1_1  = (0.0) * (0.3);
     Parameter   l12_1_1  ;  l12_1_1  = (0.0) * (0.3);
     Parameter   l13_1_1  ;  l13_1_1  = (0.0) * (0.3);
     Parameter   l14_1_1  ;  l14_1_1  = (0.0) * (0.3);
     Parameter   l15_1_1  ;  l15_1_1  = (0.0) * (0.3);
     Parameter      l2_1  ;     l2_1  = (0.0) * (0.3);
     Parameter   lm1_2_1  ;  lm1_2_1  = (0.0) * (0.3);
     Parameter    l0_2_1  ;   l0_2_1  = (0.0) * (0.3);
     Parameter    l1_2_1  ;   l1_2_1  = (0.0) * (0.3);
     Parameter    l2_2_1  ;   l2_2_1  = (0.0) * (0.3);
     Parameter    l3_2_1  ;   l3_2_1  = (0.0) * (0.3);
     Parameter    l4_2_1  ;   l4_2_1  = (0.0) * (0.3);
     Parameter    l5_2_1  ;   l5_2_1  = (0.0) * (0.3);
     Parameter    l6_2_1  ;   l6_2_1  = (0.0) * (0.3);
     Parameter    l7_2_1  ;   l7_2_1  = (0.0) * (0.3);
     Parameter    l8_2_1  ;   l8_2_1  = (0.0) * (0.3);
     Parameter    l9_2_1  ;   l9_2_1  = (0.0) * (0.3);
     Parameter   l10_2_1  ;  l10_2_1  = (0.0) * (0.3);
     Parameter   l11_2_1  ;  l11_2_1  = (0.0) * (0.3);
     Parameter   l12_2_1  ;  l12_2_1  = (0.0) * (0.3);
     Parameter   l13_2_1  ;  l13_2_1  = (0.0) * (0.3);
     Parameter   l14_2_1  ;  l14_2_1  = (0.0) * (0.3);
     Parameter   l15_2_1  ;  l15_2_1  = (0.0) * (0.3);
     Parameter      l3_1  ;     l3_1  = (0.0) * (0.3);
     Parameter   lm1_3_1  ;  lm1_3_1  = (0.0) * (0.3);
     Parameter    l0_3_1  ;   l0_3_1  = (0.0) * (0.3);
     Parameter    l1_3_1  ;   l1_3_1  = (0.0) * (0.3);
     Parameter    l2_3_1  ;   l2_3_1  = (0.0) * (0.3);
     Parameter    l3_3_1  ;   l3_3_1  = (0.0) * (0.3);
     Parameter    l4_3_1  ;   l4_3_1  = (0.0) * (0.3);
     Parameter    l5_3_1  ;   l5_3_1  = (0.0) * (0.3);
     Parameter    l6_3_1  ;   l6_3_1  = (0.0) * (0.3);
     Parameter    l7_3_1  ;   l7_3_1  = (0.0) * (0.3);
     Parameter    l8_3_1  ;   l8_3_1  = (0.0) * (0.3);
     Parameter    l9_3_1  ;   l9_3_1  = (0.0) * (0.3);
     Parameter   l10_3_1  ;  l10_3_1  = (0.0) * (0.3);
     Parameter   l11_3_1  ;  l11_3_1  = (0.0) * (0.3);
     Parameter   l12_3_1  ;  l12_3_1  = (0.0) * (0.3);
     Parameter   l13_3_1  ;  l13_3_1  = (0.0) * (0.3);
     Parameter   l14_3_1  ;  l14_3_1  = (0.0) * (0.3);
     Parameter   l15_3_1  ;  l15_3_1  = (0.0) * (0.3);
     Parameter      l4_1  ;     l4_1  = (2300.0) * (0.3);
     Parameter   lm1_4_1  ;  lm1_4_1  = (0.0) * (0.3);
     Parameter    l0_4_1  ;   l0_4_1  = (0.0) * (0.3);
     Parameter    l1_4_1  ;   l1_4_1  = (0.0) * (0.3);
     Parameter    l2_4_1  ;   l2_4_1  = (0.0) * (0.3);
     Parameter    l3_4_1  ;   l3_4_1  = (0.0) * (0.3);
     Parameter    l4_4_1  ;   l4_4_1  = (0.0) * (0.3);
     Parameter    l5_4_1  ;   l5_4_1  = (0.0) * (0.3);
     Parameter    l6_4_1  ;   l6_4_1  = (0.0) * (0.3);
     Parameter    l7_4_1  ;   l7_4_1  = (0.0) * (0.3);
     Parameter    l8_4_1  ;   l8_4_1  = (0.0) * (0.3);
     Parameter    l9_4_1  ;   l9_4_1  = (0.0) * (0.3);
     Parameter   l10_4_1  ;  l10_4_1  = (0.0) * (0.3);
     Parameter   l11_4_1  ;  l11_4_1  = (0.0) * (0.3);
     Parameter   l12_4_1  ;  l12_4_1  = (0.0) * (0.3);
     Parameter   l13_4_1  ;  l13_4_1  = (0.0) * (0.3);
     Parameter   l14_4_1  ;  l14_4_1  = (0.0) * (0.3);
     Parameter   l15_4_1  ;  l15_4_1  = (0.0) * (0.3);
     Parameter      l5_1  ;     l5_1  = (0.0) * (0.3);
     Parameter   lm1_5_1  ;  lm1_5_1  = (0.0) * (0.3);
     Parameter    l0_5_1  ;   l0_5_1  = (0.0) * (0.3);
     Parameter    l1_5_1  ;   l1_5_1  = (0.0) * (0.3);
     Parameter    l2_5_1  ;   l2_5_1  = (0.0) * (0.3);
     Parameter    l3_5_1  ;   l3_5_1  = (1700.0) * (0.3);
     Parameter    l4_5_1  ;   l4_5_1  = (0.0) * (0.3);
     Parameter    l5_5_1  ;   l5_5_1  = (0.0) * (0.3);
     Parameter    l6_5_1  ;   l6_5_1  = (0.0) * (0.3);
     Parameter    l7_5_1  ;   l7_5_1  = (0.0) * (0.3);
     Parameter    l8_5_1  ;   l8_5_1  = (0.0) * (0.3);
     Parameter    l9_5_1  ;   l9_5_1  = (0.0) * (0.3);
     Parameter   l10_5_1  ;  l10_5_1  = (0.0) * (0.3);
     Parameter   l11_5_1  ;  l11_5_1  = (0.0) * (0.3);
     Parameter   l12_5_1  ;  l12_5_1  = (0.0) * (0.3);
     Parameter   l13_5_1  ;  l13_5_1  = (0.0) * (0.3);
     Parameter   l14_5_1  ;  l14_5_1  = (0.0) * (0.3);
     Parameter   l15_5_1  ;  l15_5_1  = (0.0) * (0.3);
     Parameter      l6_1  ;     l6_1  = (13900.0) * (0.3);
     Parameter   lm1_6_1  ;  lm1_6_1  = (0.0) * (0.3);
     Parameter    l0_6_1  ;   l0_6_1  = (0.0) * (0.3);
     Parameter    l1_6_1  ;   l1_6_1  = (0.0) * (0.3);
     Parameter    l2_6_1  ;   l2_6_1  = (0.0) * (0.3);
     Parameter    l3_6_1  ;   l3_6_1  = (0.0) * (0.3);
     Parameter    l4_6_1  ;   l4_6_1  = (0.0) * (0.3);
     Parameter    l5_6_1  ;   l5_6_1  = (0.0) * (0.3);
     Parameter    l6_6_1  ;   l6_6_1  = (0.0) * (0.3);
     Parameter    l7_6_1  ;   l7_6_1  = (0.0) * (0.3);
     Parameter    l8_6_1  ;   l8_6_1  = (0.0) * (0.3);
     Parameter    l9_6_1  ;   l9_6_1  = (0.0) * (0.3);
     Parameter   l10_6_1  ;  l10_6_1  = (0.0) * (0.3);
     Parameter   l11_6_1  ;  l11_6_1  = (0.0) * (0.3);
     Parameter   l12_6_1  ;  l12_6_1  = (0.0) * (0.3);
     Parameter   l13_6_1  ;  l13_6_1  = (0.0) * (0.3);
     Parameter   l14_6_1  ;  l14_6_1  = (0.0) * (0.3);
     Parameter   l15_6_1  ;  l15_6_1  = (0.0) * (0.3);
     Parameter      l7_1  ;     l7_1  = (15400.0) * (0.3);
     Parameter   lm1_7_1  ;  lm1_7_1  = (0.0) * (0.3);
     Parameter    l0_7_1  ;   l0_7_1  = (0.0) * (0.3);
     Parameter    l1_7_1  ;   l1_7_1  = (0.0) * (0.3);
     Parameter    l2_7_1  ;   l2_7_1  = (0.0) * (0.3);
     Parameter    l3_7_1  ;   l3_7_1  = (0.0) * (0.3);
     Parameter    l4_7_1  ;   l4_7_1  = (0.0) * (0.3);
     Parameter    l5_7_1  ;   l5_7_1  = (0.0) * (0.3);
     Parameter    l6_7_1  ;   l6_7_1  = (0.0) * (0.3);
     Parameter    l7_7_1  ;   l7_7_1  = (0.0) * (0.3);
     Parameter    l8_7_1  ;   l8_7_1  = (0.0) * (0.3);
     Parameter    l9_7_1  ;   l9_7_1  = (0.0) * (0.3);
     Parameter   l10_7_1  ;  l10_7_1  = (0.0) * (0.3);
     Parameter   l11_7_1  ;  l11_7_1  = (0.0) * (0.3);
     Parameter   l12_7_1  ;  l12_7_1  = (0.0) * (0.3);
     Parameter   l13_7_1  ;  l13_7_1  = (0.0) * (0.3);
     Parameter   l14_7_1  ;  l14_7_1  = (0.0) * (0.3);
     Parameter   l15_7_1  ;  l15_7_1  = (0.0) * (0.3);
     Parameter      l8_1  ;     l8_1  = (0.0) * (0.3);
     Parameter   lm1_8_1  ;  lm1_8_1  = (0.0) * (0.3);
     Parameter    l0_8_1  ;   l0_8_1  = (0.0) * (0.3);
     Parameter    l1_8_1  ;   l1_8_1  = (0.0) * (0.3);
     Parameter    l2_8_1  ;   l2_8_1  = (0.0) * (0.3);
     Parameter    l3_8_1  ;   l3_8_1  = (0.0) * (0.3);
     Parameter    l4_8_1  ;   l4_8_1  = (0.0) * (0.3);
     Parameter    l5_8_1  ;   l5_8_1  = (0.0) * (0.3);
     Parameter    l6_8_1  ;   l6_8_1  = (0.0) * (0.3);
     Parameter    l7_8_1  ;   l7_8_1  = (0.0) * (0.3);
     Parameter    l8_8_1  ;   l8_8_1  = (0.0) * (0.3);
     Parameter    l9_8_1  ;   l9_8_1  = (0.0) * (0.3);
     Parameter   l10_8_1  ;  l10_8_1  = (0.0) * (0.3);
     Parameter   l11_8_1  ;  l11_8_1  = (0.0) * (0.3);
     Parameter   l12_8_1  ;  l12_8_1  = (0.0) * (0.3);
     Parameter   l13_8_1  ;  l13_8_1  = (0.0) * (0.3);
     Parameter   l14_8_1  ;  l14_8_1  = (0.0) * (0.3);
     Parameter   l15_8_1  ;  l15_8_1  = (0.0) * (0.3);
     Parameter      l9_1  ;     l9_1  = (0.0) * (0.3);
     Parameter   lm1_9_1  ;  lm1_9_1  = (0.0) * (0.3);
     Parameter    l0_9_1  ;   l0_9_1  = (0.0) * (0.3);
     Parameter    l1_9_1  ;   l1_9_1  = (0.0) * (0.3);
     Parameter    l2_9_1  ;   l2_9_1  = (0.0) * (0.3);
     Parameter    l3_9_1  ;   l3_9_1  = (2700.0) * (0.3);
     Parameter    l4_9_1  ;   l4_9_1  = (0.0) * (0.3);
     Parameter    l5_9_1  ;   l5_9_1  = (0.0) * (0.3);
     Parameter    l6_9_1  ;   l6_9_1  = (0.0) * (0.3);
     Parameter    l7_9_1  ;   l7_9_1  = (0.0) * (0.3);
     Parameter    l8_9_1  ;   l8_9_1  = (0.0) * (0.3);
     Parameter    l9_9_1  ;   l9_9_1  = (0.0) * (0.3);
     Parameter   l10_9_1  ;  l10_9_1  = (0.0) * (0.3);
     Parameter   l11_9_1  ;  l11_9_1  = (0.0) * (0.3);
     Parameter   l12_9_1  ;  l12_9_1  = (0.0) * (0.3);
     Parameter   l13_9_1  ;  l13_9_1  = (0.0) * (0.3);
     Parameter   l14_9_1  ;  l14_9_1  = (0.0) * (0.3);
     Parameter   l15_9_1  ;  l15_9_1  = (0.0) * (0.3);
     Parameter     l10_1  ;    l10_1  = (0.0) * (0.3);
     Parameter  lm1_10_1  ; lm1_10_1  = (0.0) * (0.3);
     Parameter   l0_10_1  ;  l0_10_1  = (0.0) * (0.3);
     Parameter   l1_10_1  ;  l1_10_1  = (0.0) * (0.3);
     Parameter   l2_10_1  ;  l2_10_1  = (0.0) * (0.3);
     Parameter   l3_10_1  ;  l3_10_1  = (0.0) * (0.3);
     Parameter   l4_10_1  ;  l4_10_1  = (0.0) * (0.3);
     Parameter   l5_10_1  ;  l5_10_1  = (0.0) * (0.3);
     Parameter   l6_10_1  ;  l6_10_1  = (0.0) * (0.3);
     Parameter   l7_10_1  ;  l7_10_1  = (0.0) * (0.3);
     Parameter   l8_10_1  ;  l8_10_1  = (0.0) * (0.3);
     Parameter   l9_10_1  ;  l9_10_1  = (0.0) * (0.3);
     Parameter  l10_10_1  ; l10_10_1  = (0.0) * (0.3);
     Parameter  l11_10_1  ; l11_10_1  = (0.0) * (0.3);
     Parameter  l12_10_1  ; l12_10_1  = (0.0) * (0.3);
     Parameter  l13_10_1  ; l13_10_1  = (0.0) * (0.3);
     Parameter  l14_10_1  ; l14_10_1  = (0.0) * (0.3);
     Parameter  l15_10_1  ; l15_10_1  = (0.0) * (0.3);
     Parameter     l11_1  ;    l11_1  = (0.0) * (0.3);
     Parameter  lm1_11_1  ; lm1_11_1  = (0.0) * (0.3);
     Parameter   l0_11_1  ;  l0_11_1  = (0.0) * (0.3);
     Parameter   l1_11_1  ;  l1_11_1  = (0.0) * (0.3);
     Parameter   l2_11_1  ;  l2_11_1  = (0.0) * (0.3);
     Parameter   l3_11_1  ;  l3_11_1  = (0.0) * (0.3);
     Parameter   l4_11_1  ;  l4_11_1  = (3400.0) * (0.3);
     Parameter   l5_11_1  ;  l5_11_1  = (0.0) * (0.3);
     Parameter   l6_11_1  ;  l6_11_1  = (0.0) * (0.3);
     Parameter   l7_11_1  ;  l7_11_1  = (2400.0) * (0.3);
     Parameter   l8_11_1  ;  l8_11_1  = (0.0) * (0.3);
     Parameter   l9_11_1  ;  l9_11_1  = (0.0) * (0.3);
     Parameter  l10_11_1  ; l10_11_1  = (0.0) * (0.3);
     Parameter  l11_11_1  ; l11_11_1  = (0.0) * (0.3);
     Parameter  l12_11_1  ; l12_11_1  = (0.0) * (0.3);
     Parameter  l13_11_1  ; l13_11_1  = (0.0) * (0.3);
     Parameter  l14_11_1  ; l14_11_1  = (0.0) * (0.3);
     Parameter  l15_11_1  ; l15_11_1  = (0.0) * (0.3);
     Parameter     l12_1  ;    l12_1  = (24650.0) * (0.3);
     Parameter  lm1_12_1  ; lm1_12_1  = (0.0) * (0.3);
     Parameter   l0_12_1  ;  l0_12_1  = (0.0) * (0.3);
     Parameter   l1_12_1  ;  l1_12_1  = (0.0) * (0.3);
     Parameter   l2_12_1  ;  l2_12_1  = (0.0) * (0.3);
     Parameter   l3_12_1  ;  l3_12_1  = (0.0) * (0.3);
     Parameter   l4_12_1  ;  l4_12_1  = (0.0) * (0.3);
     Parameter   l5_12_1  ;  l5_12_1  = (0.0) * (0.3);
     Parameter   l6_12_1  ;  l6_12_1  = (0.0) * (0.3);
     Parameter   l7_12_1  ;  l7_12_1  = (0.0) * (0.3);
     Parameter   l8_12_1  ;  l8_12_1  = (0.0) * (0.3);
     Parameter   l9_12_1  ;  l9_12_1  = (0.0) * (0.3);
     Parameter  l10_12_1  ; l10_12_1  = (0.0) * (0.3);
     Parameter  l11_12_1  ; l11_12_1  = (0.0) * (0.3);
     Parameter  l12_12_1  ; l12_12_1  = (0.0) * (0.3);
     Parameter  l13_12_1  ; l13_12_1  = (0.0) * (0.3);
     Parameter  l14_12_1  ; l14_12_1  = (0.0) * (0.3);
     Parameter  l15_12_1  ; l15_12_1  = (0.0) * (0.3);
     Parameter     l13_1  ;    l13_1  = (0.0) * (0.3);
     Parameter  lm1_13_1  ; lm1_13_1  = (0.0) * (0.3);
     Parameter   l0_13_1  ;  l0_13_1  = (0.0) * (0.3);
     Parameter   l1_13_1  ;  l1_13_1  = (0.0) * (0.3);
     Parameter   l2_13_1  ;  l2_13_1  = (0.0) * (0.3);
     Parameter   l3_13_1  ;  l3_13_1  = (0.0) * (0.3);
     Parameter   l4_13_1  ;  l4_13_1  = (0.0) * (0.3);
     Parameter   l5_13_1  ;  l5_13_1  = (4100.0) * (0.3);
     Parameter   l6_13_1  ;  l6_13_1  = (0.0) * (0.3);
     Parameter   l7_13_1  ;  l7_13_1  = (0.0) * (0.3);
     Parameter   l8_13_1  ;  l8_13_1  = (0.0) * (0.3);
     Parameter   l9_13_1  ;  l9_13_1  = (0.0) * (0.3);
     Parameter  l10_13_1  ; l10_13_1  = (0.0) * (0.3);
     Parameter  l11_13_1  ; l11_13_1  = (0.0) * (0.3);
     Parameter  l12_13_1  ; l12_13_1  = (0.0) * (0.3);
     Parameter  l13_13_1  ; l13_13_1  = (0.0) * (0.3);
     Parameter  l14_13_1  ; l14_13_1  = (0.0) * (0.3);
     Parameter  l15_13_1  ; l15_13_1  = (0.0) * (0.3);
     Parameter     l14_1  ;    l14_1  = (16450.0) * (0.3);
     Parameter  lm1_14_1  ; lm1_14_1  = (0.0) * (0.3);
     Parameter   l0_14_1  ;  l0_14_1  = (0.0) * (0.3);
     Parameter   l1_14_1  ;  l1_14_1  = (0.0) * (0.3);
     Parameter   l2_14_1  ;  l2_14_1  = (0.0) * (0.3);
     Parameter   l3_14_1  ;  l3_14_1  = (0.0) * (0.3);
     Parameter   l4_14_1  ;  l4_14_1  = (3800.0) * (0.3);
     Parameter   l5_14_1  ;  l5_14_1  = (0.0) * (0.3);
     Parameter   l6_14_1  ;  l6_14_1  = (0.0) * (0.3);
     Parameter   l7_14_1  ;  l7_14_1  = (3500.0) * (0.3);
     Parameter   l8_14_1  ;  l8_14_1  = (0.0) * (0.3);
     Parameter   l9_14_1  ;  l9_14_1  = (0.0) * (0.3);
     Parameter  l10_14_1  ; l10_14_1  = (0.0) * (0.3);
     Parameter  l11_14_1  ; l11_14_1  = (0.0) * (0.3);
     Parameter  l12_14_1  ; l12_14_1  = (0.0) * (0.3);
     Parameter  l13_14_1  ; l13_14_1  = (0.0) * (0.3);
     Parameter  l14_14_1  ; l14_14_1  = (0.0) * (0.3);
     Parameter  l15_14_1  ; l15_14_1  = (0.0) * (0.3);
     Parameter     l15_1  ;    l15_1  = (0.0) * (0.3);
     Parameter  lm1_15_1  ; lm1_15_1  = (0.0) * (0.3);
     Parameter   l0_15_1  ;  l0_15_1  = (0.0) * (0.3);
     Parameter   l1_15_1  ;  l1_15_1  = (0.0) * (0.3);
     Parameter   l2_15_1  ;  l2_15_1  = (0.0) * (0.3);
     Parameter   l3_15_1  ;  l3_15_1  = (0.0) * (0.3);
     Parameter   l4_15_1  ;  l4_15_1  = (0.0) * (0.3);
     Parameter   l5_15_1  ;  l5_15_1  = (0.0) * (0.3);
     Parameter   l6_15_1  ;  l6_15_1  = (0.0) * (0.3);
     Parameter   l7_15_1  ;  l7_15_1  = (0.0) * (0.3);
     Parameter   l8_15_1  ;  l8_15_1  = (8000.0) * (0.3);
     Parameter   l9_15_1  ;  l9_15_1  = (0.0) * (0.3);
     Parameter  l10_15_1  ; l10_15_1  = (0.0) * (0.3);
     Parameter  l11_15_1  ; l11_15_1  = (0.0) * (0.3);
     Parameter  l12_15_1  ; l12_15_1  = (0.0) * (0.3);
     Parameter  l13_15_1  ; l13_15_1  = (0.0) * (0.3);
     Parameter  l14_15_1  ; l14_15_1  = (0.0) * (0.3);
     Parameter  l15_15_1  ; l15_15_1  = (0.0) * (0.3);
     Parameter         u  ;        u  = 1 + (1);
     Parameter        m1  ;       m1  = (1700.0) + (4100.0);
     Parameter       mm1  ;      mm1  = -1.0 * ((1700.0) + (4100.0));
     Parameter       mc1  ;      mc1  = -1.0 * (3500.0);
     Parameter       mc2  ;      mc2  = -1.0 * (2700.0);
     Parameter        m2  ;       m2  = (13900.0) - (11200.0);
     Parameter        m3  ;       m3  = (15400.0) - (11200.0);
     Parameter       mm3  ;      mm3  = -1.0 * ((15400.0) - (11200.0));
     Parameter       mc3  ;      mc3  = -1.0 * (8000.0);
     Parameter        m4  ;       m4  = (24650.0) - (2300.0);
     Parameter        m5  ;       m5  = (3800.0) - (2300.0);
     Parameter       mm4  ;      mm4  = -1.0 * ((24650.0) - (2300.0));
     Parameter       mm5  ;      mm5  = -1.0 * ((3800.0) - (2300.0));
     Parameter       mc4  ;      mc4  = -1.0 * (10600.0);
     Parameter         l  ;        l  = 1 + (1);

Variable  ym1_1 , rm1_1 , sm1_1 , pm1_1 , ym1_m1_1 , sm1_m1_1 ,
          bm1_m1_1 , om1_m1_1 , pm1_m1_1 , y0_m1_1 , s0_m1_1 ,
          b0_m1_1 , o0_m1_1 , p0_m1_1 , y1_m1_1 , s1_m1_1 , b1_m1_1,
          o1_m1_1 , p1_m1_1 , y2_m1_1 , s2_m1_1 , b2_m1_1 , o2_m1_1,
          p2_m1_1 , y3_m1_1 , s3_m1_1 , b3_m1_1 , o3_m1_1 , p3_m1_1,
          y4_m1_1 , s4_m1_1 , b4_m1_1 , o4_m1_1 , p4_m1_1 , y5_m1_1,
          s5_m1_1 , b5_m1_1 , o5_m1_1 , p5_m1_1 , y6_m1_1 , s6_m1_1,
          b6_m1_1 , o6_m1_1 , p6_m1_1 , y7_m1_1 , s7_m1_1 , b7_m1_1,
          o7_m1_1 , p7_m1_1 , y8_m1_1 , s8_m1_1 , b8_m1_1 , o8_m1_1,
          p8_m1_1 , y9_m1_1 , s9_m1_1 , b9_m1_1 , o9_m1_1 , p9_m1_1,
          y10_m1_1 , s10_m1_1 , b10_m1_1 , o10_m1_1 , p10_m1_1 ,
         y11_m1_1 , s11_m1_1 , b11_m1_1 , o11_m1_1 , p11_m1_1 ,
         y12_m1_1 , s12_m1_1 , b12_m1_1 , o12_m1_1 , p12_m1_1 ,
         y13_m1_1 , s13_m1_1 , b13_m1_1 , o13_m1_1 , p13_m1_1 ,
         y14_m1_1 , s14_m1_1 , b14_m1_1 , o14_m1_1 , p14_m1_1 ,
         y15_m1_1 , s15_m1_1 , b15_m1_1 , o15_m1_1 , p15_m1_1 , y0_1 ,
          r0_1 , s0_1 , p0_1 , ym1_0_1 , sm1_0_1 , bm1_0_1 ,
         om1_0_1 , pm1_0_1 , y0_0_1 , s0_0_1 , b0_0_1 , o0_0_1 ,
         p0_0_1 , y1_0_1 , s1_0_1 , b1_0_1 , o1_0_1 , p1_0_1 ,
         y2_0_1 , s2_0_1 , b2_0_1 , o2_0_1 , p2_0_1 , y3_0_1 ,
         s3_0_1 , b3_0_1 , o3_0_1 , p3_0_1 , y4_0_1 , s4_0_1 ,
         b4_0_1 , o4_0_1 , p4_0_1 , y5_0_1 , s5_0_1 , b5_0_1 ,
         o5_0_1 , p5_0_1 , y6_0_1 , s6_0_1 , b6_0_1 , o6_0_1 ,
         p6_0_1 , y7_0_1 , s7_0_1 , b7_0_1 , o7_0_1 , p7_0_1 ,
         y8_0_1 , s8_0_1 , b8_0_1 , o8_0_1 , p8_0_1 , y9_0_1 ,
         s9_0_1 , b9_0_1 , o9_0_1 , p9_0_1 , y10_0_1 , s10_0_1 ,
         b10_0_1 , o10_0_1 , p10_0_1 , y11_0_1 , s11_0_1 , b11_0_1 ,
         o11_0_1 , p11_0_1 , y12_0_1 , s12_0_1 , b12_0_1 , o12_0_1 ,
         p12_0_1 , y13_0_1 , s13_0_1 , b13_0_1 , o13_0_1 , p13_0_1 ,
         y14_0_1 , s14_0_1 , b14_0_1 , o14_0_1 , p14_0_1 , y15_0_1 ,
         s15_0_1 , b15_0_1 , o15_0_1 , p15_0_1 , y1_1 , r1_1 , s1_1 ,
         p1_1 , ym1_1_1 , sm1_1_1 , bm1_1_1 , om1_1_1 , pm1_1_1 ,
         y0_1_1 , s0_1_1 , b0_1_1 , o0_1_1 , p0_1_1 , y1_1_1 ,
         s1_1_1 , b1_1_1 , o1_1_1 , p1_1_1 , y2_1_1 , s2_1_1 ,
         b2_1_1 , o2_1_1 , p2_1_1 , y3_1_1 , s3_1_1 , b3_1_1 ,
         o3_1_1 , p3_1_1 , y4_1_1 , s4_1_1 , b4_1_1 , o4_1_1 ,
         p4_1_1 , y5_1_1 , s5_1_1 , b5_1_1 , o5_1_1 , p5_1_1 ,
         y6_1_1 , s6_1_1 , b6_1_1 , o6_1_1 , p6_1_1 , y7_1_1 ,
         s7_1_1 , b7_1_1 , o7_1_1 , p7_1_1 , y8_1_1 , s8_1_1 ,
         b8_1_1 , o8_1_1 , p8_1_1 , y9_1_1 , s9_1_1 , b9_1_1 ,
         o9_1_1 , p9_1_1 , y10_1_1 , s10_1_1 , b10_1_1 , o10_1_1 ,
         p10_1_1 , y11_1_1 , s11_1_1 , b11_1_1 , o11_1_1 , p11_1_1 ,
         y12_1_1 , s12_1_1 , b12_1_1 , o12_1_1 , p12_1_1 , y13_1_1 ,
         s13_1_1 , b13_1_1 , o13_1_1 , p13_1_1 , y14_1_1 , s14_1_1 ,
         b14_1_1 , o14_1_1 , p14_1_1 , y15_1_1 , s15_1_1 , b15_1_1 ,
         o15_1_1 , p15_1_1 , y2_1 , r2_1 , s2_1 , p2_1 , ym1_2_1 ,
         sm1_2_1 , bm1_2_1 , om1_2_1 , pm1_2_1 , y0_2_1 , s0_2_1 ,
         b0_2_1 , o0_2_1 , p0_2_1 , y1_2_1 , s1_2_1 , b1_2_1 ,
         o1_2_1 , p1_2_1 , y2_2_1 , s2_2_1 , b2_2_1 , o2_2_1 ,
         p2_2_1 , y3_2_1 , s3_2_1 , b3_2_1 , o3_2_1 , p3_2_1 ,
         y4_2_1 , s4_2_1 , b4_2_1 , o4_2_1 , p4_2_1 , y5_2_1 ,
         s5_2_1 , b5_2_1 , o5_2_1 , p5_2_1 , y6_2_1 , s6_2_1 ,
         b6_2_1 , o6_2_1 , p6_2_1 , y7_2_1 , s7_2_1 , b7_2_1 ,
         o7_2_1 , p7_2_1 , y8_2_1 , s8_2_1 , b8_2_1 , o8_2_1 ,
         p8_2_1 , y9_2_1 , s9_2_1 , b9_2_1 , o9_2_1 , p9_2_1 ,
         y10_2_1 , s10_2_1 , b10_2_1 , o10_2_1 , p10_2_1 , y11_2_1 ,
         s11_2_1 , b11_2_1 , o11_2_1 , p11_2_1 , y12_2_1 , s12_2_1 ,
         b12_2_1 , o12_2_1 , p12_2_1 , y13_2_1 , s13_2_1 , b13_2_1 ,
         o13_2_1 , p13_2_1 , y14_2_1 , s14_2_1 , b14_2_1 , o14_2_1 ,
         p14_2_1 , y15_2_1 , s15_2_1 , b15_2_1 , o15_2_1 , p15_2_1 ,
         y3_1 , r3_1 , s3_1 , p3_1 , ym1_3_1 , sm1_3_1 , bm1_3_1 ,
         om1_3_1 , pm1_3_1 , y0_3_1 , s0_3_1 , b0_3_1 , o0_3_1 ,
         p0_3_1 , y1_3_1 , s1_3_1 , b1_3_1 , o1_3_1 , p1_3_1 ,
         y2_3_1 , s2_3_1 , b2_3_1 , o2_3_1 , p2_3_1 , y3_3_1 ,
         s3_3_1 , b3_3_1 , o3_3_1 , p3_3_1 , y4_3_1 , s4_3_1 ,
         b4_3_1 , o4_3_1 , p4_3_1 , y5_3_1 , s5_3_1 , b5_3_1 ,
         o5_3_1 , p5_3_1 , y6_3_1 , s6_3_1 , b6_3_1 , o6_3_1 ,
         p6_3_1 , y7_3_1 , s7_3_1 , b7_3_1 , o7_3_1 , p7_3_1 ,
         y8_3_1 , s8_3_1 , b8_3_1 , o8_3_1 , p8_3_1 , y9_3_1 ,
         s9_3_1 , b9_3_1 , o9_3_1 , p9_3_1 , y10_3_1 , s10_3_1 ,
         b10_3_1 , o10_3_1 , p10_3_1 , y11_3_1 , s11_3_1 , b11_3_1 ,
         o11_3_1 , p11_3_1 , y12_3_1 , s12_3_1 , b12_3_1 , o12_3_1 ,
         p12_3_1 , y13_3_1 , s13_3_1 , b13_3_1 , o13_3_1 , p13_3_1 ,
         y14_3_1 , s14_3_1 , b14_3_1 , o14_3_1 , p14_3_1 , y15_3_1 ,
         s15_3_1 , b15_3_1 , o15_3_1 , p15_3_1 , y4_1 , r4_1 , s4_1
         , p4_1 , ym1_4_1 , sm1_4_1 , bm1_4_1 , om1_4_1 , pm1_4_1 ,
         y0_4_1 , s0_4_1 , b0_4_1 , o0_4_1 , p0_4_1 , y1_4_1 ,
         s1_4_1 , b1_4_1 , o1_4_1 , p1_4_1 , y2_4_1 , s2_4_1 ,
         b2_4_1 , o2_4_1 , p2_4_1 , y3_4_1 , s3_4_1 , b3_4_1 ,
         o3_4_1 , p3_4_1 , y4_4_1 , s4_4_1 , b4_4_1 , o4_4_1 ,
         p4_4_1 , y5_4_1 , s5_4_1 , b5_4_1 , o5_4_1 , p5_4_1 ,
         y6_4_1 , s6_4_1 , b6_4_1 , o6_4_1 , p6_4_1 , y7_4_1 ,
         s7_4_1 , b7_4_1 , o7_4_1 , p7_4_1 , y8_4_1 , s8_4_1 ,
         b8_4_1 , o8_4_1 , p8_4_1 , y9_4_1 , s9_4_1 , b9_4_1 ,
         o9_4_1 , p9_4_1 , y10_4_1 , s10_4_1 , b10_4_1 , o10_4_1 ,
         p10_4_1 , y11_4_1 , s11_4_1 , b11_4_1 , o11_4_1 , p11_4_1 ,
         y12_4_1 , s12_4_1 , b12_4_1 , o12_4_1 , p12_4_1 , y13_4_1 ,
         s13_4_1 , b13_4_1 , o13_4_1 , p13_4_1 , y14_4_1 , s14_4_1 ,
         b14_4_1 , o14_4_1 , p14_4_1 , y15_4_1 , s15_4_1 , b15_4_1 ,
         o15_4_1 , p15_4_1 , y5_1 , r5_1 , s5_1 , p5_1 , ym1_5_1 ,
         sm1_5_1 , bm1_5_1 , om1_5_1 , pm1_5_1 , y0_5_1 , s0_5_1 ,
         b0_5_1 , o0_5_1 , p0_5_1 , y1_5_1 , s1_5_1 , b1_5_1 ,
         o1_5_1 , p1_5_1 , y2_5_1 , s2_5_1 , b2_5_1 , o2_5_1 ,
         p2_5_1 , y3_5_1 , s3_5_1 , b3_5_1 , o3_5_1 , p3_5_1 ,
         y4_5_1 , s4_5_1 , b4_5_1 , o4_5_1 , p4_5_1 , y5_5_1 ,
         s5_5_1 , b5_5_1 , o5_5_1 , p5_5_1 , y6_5_1 , s6_5_1 ,
         b6_5_1 , o6_5_1 , p6_5_1 , y7_5_1 , s7_5_1 , b7_5_1 ,
         o7_5_1 , p7_5_1 , y8_5_1 , s8_5_1 , b8_5_1 , o8_5_1 ,
         p8_5_1 , y9_5_1 , s9_5_1 , b9_5_1 , o9_5_1 , p9_5_1 ,
         y10_5_1 , s10_5_1 , b10_5_1 , o10_5_1 , p10_5_1 , y11_5_1 ,
         s11_5_1 , b11_5_1 , o11_5_1 , p11_5_1 , y12_5_1 , s12_5_1 ,
         b12_5_1 , o12_5_1 , p12_5_1 , y13_5_1 , s13_5_1 , b13_5_1 ,
         o13_5_1 , p13_5_1 , y14_5_1 , s14_5_1 , b14_5_1 , o14_5_1 ,
         p14_5_1 , y15_5_1 , s15_5_1 , b15_5_1 , o15_5_1 , p15_5_1 ,
         y6_1 , r6_1 , s6_1 , p6_1 , ym1_6_1 , sm1_6_1 , bm1_6_1 ,
         om1_6_1 , pm1_6_1 , y0_6_1 , s0_6_1 , b0_6_1 , o0_6_1 ,
         p0_6_1 , y1_6_1 , s1_6_1 , b1_6_1 , o1_6_1 , p1_6_1 ,
         y2_6_1 , s2_6_1 , b2_6_1 , o2_6_1 , p2_6_1 , y3_6_1 ,
         s3_6_1 , b3_6_1 , o3_6_1 , p3_6_1 , y4_6_1 , s4_6_1 ,
         b4_6_1 , o4_6_1 , p4_6_1 , y5_6_1 , s5_6_1 , b5_6_1 ,
         o5_6_1 , p5_6_1 , y6_6_1 , s6_6_1 , b6_6_1 , o6_6_1 ,
         p6_6_1 , y7_6_1 , s7_6_1 , b7_6_1 , o7_6_1 , p7_6_1 ,
         y8_6_1 , s8_6_1 , b8_6_1 , o8_6_1 , p8_6_1 , y9_6_1 ,
         s9_6_1 , b9_6_1 , o9_6_1 , p9_6_1 , y10_6_1 , s10_6_1 ,
         b10_6_1 , o10_6_1 , p10_6_1 , y11_6_1 , s11_6_1 , b11_6_1 ,
         o11_6_1 , p11_6_1 , y12_6_1 , s12_6_1 , b12_6_1 , o12_6_1 ,
         p12_6_1 , y13_6_1 , s13_6_1 , b13_6_1 , o13_6_1 , p13_6_1 ,
         y14_6_1 , s14_6_1 , b14_6_1 , o14_6_1 , p14_6_1 , y15_6_1 ,
         s15_6_1 , b15_6_1 , o15_6_1 , p15_6_1 , y7_1 , r7_1 , s7_1
         , p7_1 , ym1_7_1 , sm1_7_1 , bm1_7_1 , om1_7_1 , pm1_7_1 ,
         y0_7_1 , s0_7_1 , b0_7_1 , o0_7_1 , p0_7_1 , y1_7_1 ,
         s1_7_1 , b1_7_1 , o1_7_1 , p1_7_1 , y2_7_1 , s2_7_1 ,
         b2_7_1 , o2_7_1 , p2_7_1 , y3_7_1 , s3_7_1 , b3_7_1 ,
         o3_7_1 , p3_7_1 , y4_7_1 , s4_7_1 , b4_7_1 , o4_7_1 ,
         p4_7_1 , y5_7_1 , s5_7_1 , b5_7_1 , o5_7_1 , p5_7_1 ,
         y6_7_1 , s6_7_1 , b6_7_1 , o6_7_1 , p6_7_1 , y7_7_1 ,
         s7_7_1 , b7_7_1 , o7_7_1 , p7_7_1 , y8_7_1 , s8_7_1 ,
         b8_7_1 , o8_7_1 , p8_7_1 , y9_7_1 , s9_7_1 , b9_7_1 ,
         o9_7_1 , p9_7_1 , y10_7_1 , s10_7_1 , b10_7_1 , o10_7_1 ,
         p10_7_1 , y11_7_1 , s11_7_1 , b11_7_1 , o11_7_1 , p11_7_1 ,
         y12_7_1 , s12_7_1 , b12_7_1 , o12_7_1 , p12_7_1 , y13_7_1 ,
         s13_7_1 , b13_7_1 , o13_7_1 , p13_7_1 , y14_7_1 , s14_7_1 ,
         b14_7_1 , o14_7_1 , p14_7_1 , y15_7_1 , s15_7_1 , b15_7_1 ,
         o15_7_1 , p15_7_1 , y8_1 , r8_1 , s8_1 , p8_1 , ym1_8_1 ,
         sm1_8_1 , bm1_8_1 , om1_8_1 , pm1_8_1 , y0_8_1 , s0_8_1 ,
         b0_8_1 , o0_8_1 , p0_8_1 , y1_8_1 , s1_8_1 , b1_8_1 ,
         o1_8_1 , p1_8_1 , y2_8_1 , s2_8_1 , b2_8_1 , o2_8_1 ,
         p2_8_1 , y3_8_1 , s3_8_1 , b3_8_1 , o3_8_1 , p3_8_1 ,
         y4_8_1 , s4_8_1 , b4_8_1 , o4_8_1 , p4_8_1 , y5_8_1 ,
         s5_8_1 , b5_8_1 , o5_8_1 , p5_8_1 , y6_8_1 , s6_8_1 ,
         b6_8_1 , o6_8_1 , p6_8_1 , y7_8_1 , s7_8_1 , b7_8_1 ,
         o7_8_1 , p7_8_1 , y8_8_1 , s8_8_1 , b8_8_1 , o8_8_1 ,
         p8_8_1 , y9_8_1 , s9_8_1 , b9_8_1 , o9_8_1 , p9_8_1 ,
         y10_8_1 , s10_8_1 , b10_8_1 , o10_8_1 , p10_8_1 , y11_8_1 ,
         s11_8_1 , b11_8_1 , o11_8_1 , p11_8_1 , y12_8_1 , s12_8_1 ,
         b12_8_1 , o12_8_1 , p12_8_1 , y13_8_1 , s13_8_1 , b13_8_1 ,
         o13_8_1 , p13_8_1 , y14_8_1 , s14_8_1 , b14_8_1 , o14_8_1 ,
         p14_8_1 , y15_8_1 , s15_8_1 , b15_8_1 , o15_8_1 , p15_8_1 ,
         y9_1 , r9_1 , s9_1 , p9_1 , ym1_9_1 , sm1_9_1 , bm1_9_1 ,
         om1_9_1 , pm1_9_1 , y0_9_1 , s0_9_1 , b0_9_1 , o0_9_1 ,
         p0_9_1 , y1_9_1 , s1_9_1 , b1_9_1 , o1_9_1 , p1_9_1 ,
         y2_9_1 , s2_9_1 , b2_9_1 , o2_9_1 , p2_9_1 , y3_9_1 ,
         s3_9_1 , b3_9_1 , o3_9_1 , p3_9_1 , y4_9_1 , s4_9_1 ,
         b4_9_1 , o4_9_1 , p4_9_1 , y5_9_1 , s5_9_1 , b5_9_1 ,
         o5_9_1 , p5_9_1 , y6_9_1 , s6_9_1 , b6_9_1 , o6_9_1 ,
         p6_9_1 , y7_9_1 , s7_9_1 , b7_9_1 , o7_9_1 , p7_9_1 ,
         y8_9_1 , s8_9_1 , b8_9_1 , o8_9_1 , p8_9_1 , y9_9_1 ,
         s9_9_1 , b9_9_1 , o9_9_1 , p9_9_1 , y10_9_1 , s10_9_1 ,
         b10_9_1 , o10_9_1 , p10_9_1 , y11_9_1 , s11_9_1 , b11_9_1 ,
         o11_9_1 , p11_9_1 , y12_9_1 , s12_9_1 , b12_9_1 , o12_9_1 ,
         p12_9_1 , y13_9_1 , s13_9_1 , b13_9_1 , o13_9_1 , p13_9_1 ,
         y14_9_1 , s14_9_1 , b14_9_1 , o14_9_1 , p14_9_1 , y15_9_1 ,
         s15_9_1 , b15_9_1 , o15_9_1 , p15_9_1 , y10_1 , r10_1 ,
         s10_1 , p10_1 , ym1_10_1 , sm1_10_1 , bm1_10_1 , om1_10_1 ,
         pm1_10_1 , y0_10_1 , s0_10_1 , b0_10_1 , o0_10_1 , p0_10_1 ,
         y1_10_1 , s1_10_1 , b1_10_1 , o1_10_1 , p1_10_1 , y2_10_1 ,
         s2_10_1 , b2_10_1 , o2_10_1 , p2_10_1 , y3_10_1 , s3_10_1 ,
         b3_10_1 , o3_10_1 , p3_10_1 , y4_10_1 , s4_10_1 , b4_10_1 ,
         o4_10_1 , p4_10_1 , y5_10_1 , s5_10_1 , b5_10_1 , o5_10_1 ,
         p5_10_1 , y6_10_1 , s6_10_1 , b6_10_1 , o6_10_1 , p6_10_1 ,
         y7_10_1 , s7_10_1 , b7_10_1 , o7_10_1 , p7_10_1 , y8_10_1 ,
         s8_10_1 , b8_10_1 , o8_10_1 , p8_10_1 , y9_10_1 , s9_10_1 ,
         b9_10_1 , o9_10_1 , p9_10_1 , y10_10_1 , s10_10_1 ,
         b10_10_1 , o10_10_1 , p10_10_1 , y11_10_1 , s11_10_1 ,
         b11_10_1 , o11_10_1 , p11_10_1 , y12_10_1 , s12_10_1 ,
         b12_10_1 , o12_10_1 , p12_10_1 , y13_10_1 , s13_10_1 ,
         b13_10_1 , o13_10_1 , p13_10_1 , y14_10_1 , s14_10_1 ,
         b14_10_1 , o14_10_1 , p14_10_1 , y15_10_1 , s15_10_1 ,
         b15_10_1 , o15_10_1 , p15_10_1 , y11_1 , r11_1 , s11_1 ,
         p11_1 , ym1_11_1 , sm1_11_1 , bm1_11_1 , om1_11_1 ,
         pm1_11_1 , y0_11_1 , s0_11_1 , b0_11_1 , o0_11_1 , p0_11_1  ,
         y1_11_1 , s1_11_1 , b1_11_1 , o1_11_1 , p1_11_1 , y2_11_1 ,
         s2_11_1 , b2_11_1 , o2_11_1 , p2_11_1 , y3_11_1 , s3_11_1 ,
         b3_11_1 , o3_11_1 , p3_11_1 , y4_11_1 , s4_11_1 , b4_11_1 ,
         o4_11_1 , p4_11_1 , y5_11_1 , s5_11_1 , b5_11_1 , o5_11_1 ,
         p5_11_1 , y6_11_1 , s6_11_1 , b6_11_1 , o6_11_1 , p6_11_1 ,
         y7_11_1 , s7_11_1 , b7_11_1 , o7_11_1 , p7_11_1 , y8_11_1 ,
         s8_11_1 , b8_11_1 , o8_11_1 , p8_11_1 , y9_11_1 , s9_11_1 ,
         b9_11_1 , o9_11_1 , p9_11_1 , y10_11_1 , s10_11_1 ,
         b10_11_1 , o10_11_1 , p10_11_1 , y11_11_1 , s11_11_1 ,
         b11_11_1 , o11_11_1 , p11_11_1 , y12_11_1 , s12_11_1 ,
         b12_11_1 , o12_11_1 , p12_11_1 , y13_11_1 , s13_11_1 ,
         b13_11_1 , o13_11_1 , p13_11_1 , y14_11_1 , s14_11_1 ,
         b14_11_1 , o14_11_1 , p14_11_1 , y15_11_1 , s15_11_1 ,
         b15_11_1 , o15_11_1 , p15_11_1 , y12_1 , r12_1 , s12_1 ,
         p12_1 , ym1_12_1 , sm1_12_1 , bm1_12_1 , om1_12_1 ,
         pm1_12_1 , y0_12_1 , s0_12_1 , b0_12_1 , o0_12_1 , p0_12_1 ,
         y1_12_1 , s1_12_1 , b1_12_1 , o1_12_1 , p1_12_1 , y2_12_1 ,
         s2_12_1 , b2_12_1 , o2_12_1 , p2_12_1 , y3_12_1 , s3_12_1 ,
         b3_12_1 , o3_12_1 , p3_12_1 , y4_12_1 , s4_12_1 , b4_12_1 ,
         o4_12_1 , p4_12_1 , y5_12_1 , s5_12_1 , b5_12_1 , o5_12_1 ,
         p5_12_1 , y6_12_1 , s6_12_1 , b6_12_1 , o6_12_1 , p6_12_1 ,
         y7_12_1 , s7_12_1 , b7_12_1 , o7_12_1 , p7_12_1 , y8_12_1 ,
         s8_12_1 , b8_12_1 , o8_12_1 , p8_12_1 , y9_12_1 , s9_12_1 ,
         b9_12_1 , o9_12_1 , p9_12_1 , y10_12_1 , s10_12_1 ,
         b10_12_1 , o10_12_1 , p10_12_1 , y11_12_1 , s11_12_1 ,
         b11_12_1 , o11_12_1 , p11_12_1 , y12_12_1 , s12_12_1 ,
         b12_12_1 , o12_12_1 , p12_12_1 , y13_12_1 , s13_12_1 ,
         b13_12_1 , o13_12_1 , p13_12_1 , y14_12_1 , s14_12_1 ,
         b14_12_1 , o14_12_1 , p14_12_1 , y15_12_1 , s15_12_1 ,
         b15_12_1 , o15_12_1 , p15_12_1 , y13_1 , r13_1 , s13_1 ,
         p13_1 , ym1_13_1 , sm1_13_1 , bm1_13_1 , om1_13_1 ,
         pm1_13_1 , y0_13_1 , s0_13_1 , b0_13_1 , o0_13_1 , p0_13_1 ,
         y1_13_1 , s1_13_1 , b1_13_1 , o1_13_1 , p1_13_1 , y2_13_1 ,
         s2_13_1 , b2_13_1 , o2_13_1 , p2_13_1 , y3_13_1 , s3_13_1 ,
         b3_13_1 , o3_13_1 , p3_13_1 , y4_13_1 , s4_13_1 , b4_13_1 ,
         o4_13_1 , p4_13_1 , y5_13_1 , s5_13_1 , b5_13_1 , o5_13_1 ,
         p5_13_1 , y6_13_1 , s6_13_1 , b6_13_1 , o6_13_1 , p6_13_1 ,
         y7_13_1 , s7_13_1 , b7_13_1 , o7_13_1 , p7_13_1 , y8_13_1 ,
         s8_13_1 , b8_13_1 , o8_13_1 , p8_13_1 , y9_13_1 , s9_13_1 ,
         b9_13_1 , o9_13_1 , p9_13_1 , y10_13_1 , s10_13_1 ,
         b10_13_1 , o10_13_1 , p10_13_1 , y11_13_1 , s11_13_1 ,
         b11_13_1 , o11_13_1 , p11_13_1 , y12_13_1 , s12_13_1 ,
         b12_13_1 , o12_13_1 , p12_13_1 , y13_13_1 , s13_13_1 ,
         b13_13_1 , o13_13_1 , p13_13_1 , y14_13_1 , s14_13_1 ,
         b14_13_1 , o14_13_1 , p14_13_1 , y15_13_1 , s15_13_1 ,
         b15_13_1 , o15_13_1 , p15_13_1 , y14_1 , r14_1 , s14_1 ,
         p14_1 , ym1_14_1 , sm1_14_1 , bm1_14_1 , om1_14_1 ,
         pm1_14_1 , y0_14_1 , s0_14_1 , b0_14_1 , o0_14_1 , p0_14_1 ,
         y1_14_1 , s1_14_1 , b1_14_1 , o1_14_1 , p1_14_1 , y2_14_1 ,
         s2_14_1 , b2_14_1 , o2_14_1 , p2_14_1 , y3_14_1 , s3_14_1 ,
         b3_14_1 , o3_14_1 , p3_14_1 , y4_14_1 , s4_14_1 , b4_14_1 ,
         o4_14_1 , p4_14_1 , y5_14_1 , s5_14_1 , b5_14_1 , o5_14_1 ,
         p5_14_1 , y6_14_1 , s6_14_1 , b6_14_1 , o6_14_1 , p6_14_1 ,
         y7_14_1 , s7_14_1 , b7_14_1 , o7_14_1 , p7_14_1 , y8_14_1 ,
         s8_14_1 , b8_14_1 , o8_14_1 , p8_14_1 , y9_14_1 , s9_14_1 ,
         b9_14_1 , o9_14_1 , p9_14_1 , y10_14_1 , s10_14_1 ,
         b10_14_1 , o10_14_1 , p10_14_1 , y11_14_1 , s11_14_1 ,
         b11_14_1 , o11_14_1 , p11_14_1 , y12_14_1 , s12_14_1 ,
         b12_14_1 , o12_14_1 , p12_14_1 , y13_14_1 , s13_14_1 ,
         b13_14_1 , o13_14_1 , p13_14_1 , y14_14_1 , s14_14_1 ,
         b14_14_1 , o14_14_1 , p14_14_1 , y15_14_1 , s15_14_1 ,
         b15_14_1 , o15_14_1 , p15_14_1 , y15_1 , r15_1 , s15_1 ,
         p15_1 , ym1_15_1 , sm1_15_1 , bm1_15_1 , om1_15_1 ,
         pm1_15_1 , y0_15_1 , s0_15_1 , b0_15_1 , o0_15_1 , p0_15_1 ,
         y1_15_1 , s1_15_1 , b1_15_1 , o1_15_1 , p1_15_1 , y2_15_1  ,
         s2_15_1 , b2_15_1 , o2_15_1 , p2_15_1 , y3_15_1 , s3_15_1  ,
         b3_15_1 , o3_15_1 , p3_15_1 , y4_15_1 , s4_15_1 , b4_15_1  ,
         o4_15_1 , p4_15_1 , y5_15_1 , s5_15_1 , b5_15_1 , o5_15_1  ,
         p5_15_1 , y6_15_1 , s6_15_1 , b6_15_1 , o6_15_1 , p6_15_1  ,
         y7_15_1 , s7_15_1 , b7_15_1 , o7_15_1 , p7_15_1 , y8_15_1  ,
         s8_15_1 , b8_15_1 , o8_15_1 , p8_15_1 , y9_15_1 , s9_15_1  ,
         b9_15_1 , o9_15_1 , p9_15_1 , y10_15_1 , s10_15_1 ,
         b10_15_1 , o10_15_1 , p10_15_1 , y11_15_1 , s11_15_1 ,
         b11_15_1 , o11_15_1 , p11_15_1 , y12_15_1 , s12_15_1 ,
         b12_15_1 , o12_15_1 , p12_15_1 , y13_15_1 , s13_15_1 ,
         b13_15_1 , o13_15_1 , p13_15_1 , y14_15_1 , s14_15_1 ,
         b14_15_1 , o14_15_1 , p14_15_1 , y15_15_1 , s15_15_1 ,
         b15_15_1 , o15_15_1 , p15_15_1 , sm1_2 , sm1_m1_2 , s0_m1_2 ,
         s1_m1_2 , s2_m1_2 , s3_m1_2 , s4_m1_2 , s5_m1_2 , s6_m1_2 ,
         s7_m1_2 , s8_m1_2 , s9_m1_2 , s10_m1_2 , s11_m1_2 ,
         s12_m1_2 , s13_m1_2 , s14_m1_2 , s15_m1_2 , s0_2 , sm1_0_2 ,
         s0_0_2 , s1_0_2 , s2_0_2 , s3_0_2 , s4_0_2 , s5_0_2 ,
         s6_0_2 , s7_0_2 , s8_0_2 , s9_0_2 , s10_0_2 , s11_0_2 ,
         s12_0_2 , s13_0_2 , s14_0_2 , s15_0_2 , s1_2 , sm1_1_2 ,
         s0_1_2 , s1_1_2 , s2_1_2 , s3_1_2 , s4_1_2 , s5_1_2 ,
         s6_1_2 , s7_1_2 , s8_1_2 , s9_1_2 , s10_1_2 , s11_1_2 ,
         s12_1_2 , s13_1_2 , s14_1_2 , s15_1_2 , s2_2 , sm1_2_2 ,
         s0_2_2 , s1_2_2 , s2_2_2 , s3_2_2 , s4_2_2 , s5_2_2 ,
         s6_2_2 , s7_2_2 , s8_2_2 , s9_2_2 , s10_2_2 , s11_2_2 ,
         s12_2_2 , s13_2_2 , s14_2_2 , s15_2_2 , s3_2 , sm1_3_2 ,
         s0_3_2 , s1_3_2 , s2_3_2 , s3_3_2 , s4_3_2 , s5_3_2 ,
         s6_3_2 , s7_3_2 , s8_3_2 , s9_3_2 , s10_3_2 , s11_3_2 ,
         s12_3_2 , s13_3_2 , s14_3_2 , s15_3_2 , s4_2 , sm1_4_2 ,
         s0_4_2 , s1_4_2 , s2_4_2 , s3_4_2 , s4_4_2 , s5_4_2 ,
         s6_4_2 , s7_4_2 , s8_4_2 , s9_4_2 , s10_4_2 , s11_4_2 ,
         s12_4_2 , s13_4_2 , s14_4_2 , s15_4_2 , s5_2 , sm1_5_2 ,
         s0_5_2 , s1_5_2 , s2_5_2 , s3_5_2 , s4_5_2 , s5_5_2 ,
         s6_5_2 , s7_5_2 , s8_5_2 , s9_5_2 , s10_5_2 , s11_5_2 ,
         s12_5_2 , s13_5_2 , s14_5_2 , s15_5_2 , s6_2 , sm1_6_2 ,
         s0_6_2 , s1_6_2 , s2_6_2 , s3_6_2 , s4_6_2 , s5_6_2 ,
         s6_6_2 , s7_6_2 , s8_6_2 , s9_6_2 , s10_6_2 , s11_6_2 ,
         s12_6_2 , s13_6_2 , s14_6_2 , s15_6_2 , s7_2 , sm1_7_2 ,
         s0_7_2 , s1_7_2 , s2_7_2 , s3_7_2 , s4_7_2 , s5_7_2 ,
         s6_7_2 , s7_7_2 , s8_7_2 , s9_7_2 , s10_7_2 , s11_7_2 ,
         s12_7_2 , s13_7_2 , s14_7_2 , s15_7_2 , s8_2 , sm1_8_2 ,
         s0_8_2 , s1_8_2 , s2_8_2 , s3_8_2 , s4_8_2 , s5_8_2 ,
         s6_8_2 , s7_8_2 , s8_8_2 , s9_8_2 , s10_8_2 , s11_8_2 ,
         s12_8_2 , s13_8_2 , s14_8_2 , s15_8_2 , s9_2 , sm1_9_2 ,
         s0_9_2 , s1_9_2 , s2_9_2 , s3_9_2 , s4_9_2 , s5_9_2 ,
         s6_9_2 , s7_9_2 , s8_9_2 , s9_9_2 , s10_9_2 , s11_9_2 ,
         s12_9_2 , s13_9_2 , s14_9_2 , s15_9_2 , s10_2 , sm1_10_2 ,
         s0_10_2 , s1_10_2 , s2_10_2 , s3_10_2 , s4_10_2 , s5_10_2 ,
         s6_10_2 , s7_10_2 , s8_10_2 , s9_10_2 , s10_10_2 , s11_10_2 ,
         s12_10_2 , s13_10_2 , s14_10_2 , s15_10_2 , s11_2 ,
         sm1_11_2 , s0_11_2 , s1_11_2 , s2_11_2 , s3_11_2 , s4_11_2 ,
         s5_11_2 , s6_11_2 , s7_11_2 , s8_11_2 , s9_11_2 ,
         s10_11_2 , s11_11_2 , s12_11_2 , s13_11_2 , s14_11_2 ,
         s15_11_2 , s12_2 , sm1_12_2 , s0_12_2 , s1_12_2 , s2_12_2 ,
         s3_12_2 , s4_12_2 , s5_12_2 , s6_12_2 , s7_12_2 , s8_12_2 ,
         s9_12_2 , s10_12_2 , s11_12_2 , s12_12_2 , s13_12_2 ,
         s14_12_2 , s15_12_2 , s13_2 , sm1_13_2 , s0_13_2 , s1_13_2,
         s2_13_2 , s3_13_2 , s4_13_2 , s5_13_2 , s6_13_2 , s7_13_2 ,
         s8_13_2 , s9_13_2 , s10_13_2 , s11_13_2 , s12_13_2 ,
         s13_13_2 , s14_13_2 , s15_13_2 , s14_2 , sm1_14_2 , s0_14_2 ,
         s1_14_2 , s2_14_2 , s3_14_2 , s4_14_2 , s5_14_2 , s6_14_2 ,
         s7_14_2 , s8_14_2 , s9_14_2 , s10_14_2 , s11_14_2 ,
         s12_14_2 , s13_14_2 , s14_14_2 , s15_14_2 , s15_2 ,
         sm1_15_2 , s0_15_2 , s1_15_2 , s2_15_2 , s3_15_2 , s4_15_2 ,
         s5_15_2 , s6_15_2 , s7_15_2 , s8_15_2 , s9_15_2 ,
         s10_15_2 , s11_15_2 , s12_15_2 , s13_15_2 , s14_15_2 ,
         s15_15_2 , x1_1 , x2_1 , x3_1 , x4_1 , x1_2 , x2_2 , x3_2 ,
         x4_2 , x1_3 , x2_3 , x3_3 , x4_3 , obj ;

Equation c1p11, c1p5, c1p13, c1p14, c1p9, c2p6, c2p15,
         c2p7, c2r0, c3p11, c3p12, c3pm, c3p14, c3r4, uc1,
         uc2, uc3, dc11, dc12, dc13, dc14, dc15, dc16,
         dc21, dc22, dc23, dc31, dc32, dc33, dc34, dc35,
         dc36, icm1_2, ic0_2, ic1_2, ic2_2, ic3_2, ic4_2,
         ic5_2, ic6_2, ic7_2, ic8_2, ic9_2, ic10_2, ic11_2,
         ic12_2, ic13_2, ic14_2, ic15_2, icm1_m1_2,
         icm1_0_2, icm1_1_2, icm1_2_2, icm1_3_2, icm1_4_2,
         icm1_5_2, icm1_6_2, icm1_7_2, icm1_8_2, icm1_9_2,
         icm1_10_2, icm1_11_2, icm1_12_2, icm1_13_2,
         icm1_14_2, icm1_15_2, ic0_m1_2, ic0_0_2, ic0_1_2,
         ic0_2_2, ic0_3_2, ic0_4_2, ic0_5_2, ic0_6_2,
         ic0_7_2, ic0_8_2, ic0_9_2, ic0_10_2, ic0_11_2,
         ic0_12_2, ic0_13_2, ic0_14_2, ic0_15_2, ic1_m1_2,
         ic1_0_2, ic1_1_2, ic1_2_2, ic1_3_2, ic1_4_2,
         ic1_5_2, ic1_6_2, ic1_7_2, ic1_8_2, ic1_9_2,
         ic1_10_2, ic1_11_2, ic1_12_2, ic1_13_2, ic1_14_2,
         ic1_15_2, ic2_m1_2, ic2_0_2, ic2_1_2, ic2_2_2,
         ic2_3_2, ic2_4_2, ic2_5_2, ic2_6_2, ic2_7_2,
         ic2_8_2, ic2_9_2, ic2_10_2, ic2_11_2, ic2_12_2,
         ic2_13_2, ic2_14_2, ic2_15_2, ic3_m1_2, ic3_0_2,
         ic3_1_2, ic3_2_2, ic3_3_2, ic3_4_2, ic3_5_2,
         ic3_6_2, ic3_7_2, ic3_8_2, ic3_9_2, ic3_10_2,
         ic3_11_2, ic3_12_2, ic3_13_2, ic3_14_2, ic3_15_2,
         ic4_m1_2, ic4_0_2, ic4_1_2, ic4_2_2, ic4_3_2,
         ic4_4_2, ic4_5_2, ic4_6_2, ic4_7_2, ic4_8_2,
         ic4_9_2, ic4_10_2, ic4_11_2, ic4_12_2, ic4_13_2,
         ic4_14_2, ic4_15_2, ic5_m1_2, ic5_0_2, ic5_1_2,
         ic5_2_2, ic5_3_2, ic5_4_2, ic5_5_2, ic5_6_2,
         ic5_7_2, ic5_8_2, ic5_9_2, ic5_10_2, ic5_11_2,
         ic5_12_2, ic5_13_2, ic5_14_2, ic5_15_2, ic6_m1_2,
         ic6_0_2, ic6_1_2, ic6_2_2, ic6_3_2, ic6_4_2,
         ic6_5_2, ic6_6_2, ic6_7_2, ic6_8_2, ic6_9_2,
         ic6_10_2, ic6_11_2, ic6_12_2, ic6_13_2, ic6_14_2,
         ic6_15_2, ic7_m1_2, ic7_0_2, ic7_1_2, ic7_2_2,
         ic7_3_2, ic7_4_2, ic7_5_2, ic7_6_2, ic7_7_2,
         ic7_8_2, ic7_9_2, ic7_10_2, ic7_11_2, ic7_12_2,
         ic7_13_2, ic7_14_2, ic7_15_2, ic8_m1_2, ic8_0_2,
         ic8_1_2, ic8_2_2, ic8_3_2, ic8_4_2, ic8_5_2,
         ic8_6_2, ic8_7_2, ic8_8_2, ic8_9_2, ic8_10_2,
         ic8_11_2, ic8_12_2, ic8_13_2, ic8_14_2, ic8_15_2,
         ic9_m1_2, ic9_0_2, ic9_1_2, ic9_2_2, ic9_3_2,
         ic9_4_2, ic9_5_2, ic9_6_2, ic9_7_2, ic9_8_2,
         ic9_9_2, ic9_10_2, ic9_11_2, ic9_12_2, ic9_13_2,
         ic9_14_2, ic9_15_2, ic10_m1_2, ic10_0_2, ic10_1_2,
         ic10_2_2, ic10_3_2, ic10_4_2, ic10_5_2, ic10_6_2,
         ic10_7_2, ic10_8_2, ic10_9_2, ic10_10_2,
         ic10_11_2, ic10_12_2, ic10_13_2, ic10_14_2,
         ic10_15_2, ic11_m1_2, ic11_0_2, ic11_1_2,
         ic11_2_2, ic11_3_2, ic11_4_2, ic11_5_2, ic11_6_2,
         ic11_7_2, ic11_8_2, ic11_9_2, ic11_10_2,
         ic11_11_2, ic11_12_2, ic11_13_2, ic11_14_2,
         ic11_15_2, ic12_m1_2, ic12_0_2, ic12_1_2,
         ic12_2_2, ic12_3_2, ic12_4_2, ic12_5_2, ic12_6_2,
         ic12_7_2, ic12_8_2, ic12_9_2, ic12_10_2,
         ic12_11_2, ic12_12_2, ic12_13_2, ic12_14_2,
         ic12_15_2, ic13_m1_2, ic13_0_2, ic13_1_2,
         ic13_2_2, ic13_3_2, ic13_4_2, ic13_5_2, ic13_6_2,
         ic13_7_2, ic13_8_2, ic13_9_2, ic13_10_2,
         ic13_11_2, ic13_12_2, ic13_13_2, ic13_14_2,
         ic13_15_2, ic14_m1_2, ic14_0_2, ic14_1_2,
         ic14_2_2, ic14_3_2, ic14_4_2, ic14_5_2, ic14_6_2,
         ic14_7_2, ic14_8_2, ic14_9_2, ic14_10_2,
         ic14_11_2, ic14_12_2, ic14_13_2, ic14_14_2,
         ic14_15_2, ic15_m1_2, ic15_0_2, ic15_1_2,
         ic15_2_2, ic15_3_2, ic15_4_2, ic15_5_2, ic15_6_2,
         ic15_7_2, ic15_8_2, ic15_9_2, ic15_10_2,
         ic15_11_2, ic15_12_2, ic15_13_2, ic15_14_2,
         ic15_15_2, ib11, Def_obj ;

  c1p11..       x1_1 - y7_11_1 =e= 0;
  c1p5..        x2_1 - y3_5_1 =e= 0;
  c1p13..       x2_1 - y5_13_1 =e= 0;
  c1p14..       x3_1 - y7_14_1 =e= 0;
  c1p9..        x4_1 - y3_9_1 =e= 0;
  c2p6..        x1_2 - y6_1 =e= 0;
  c2p15..       x2_2 - y8_15_1 =e= 0;
  c2p7..        x3_2 - y7_1 =e= 0;
  c2r0..        x1_2 - r0_1 + x3_2 =e= 0;
  c3p11..       x1_3 - y4_11_1 =e= 0;
  c3p12..       x2_3 - y12_1 =e= 0;
  c3pm..        x3_3 - ym1_1 =e= 0;
  c3p14..       x4_3 - y4_14_1 =e= 0;
  c3r4..        x2_3 - r4_1 + x4_3 =e= 0;
  uc1..         x1_1 + x2_1 + x3_1 + x4_1 - 1.0 =e= 0;
  uc2..         x1_2 + x2_2 + x3_2 + x4_2 - 1.0 =e= 0;
  uc3..         x1_3 + x2_3 + x3_3 + x4_3 - 1.0 =e= 0;
  dc11..        0 =g= 2400.0*x1_1 - 5800.0*x2_1 - 500.0;
  dc12..        0 =g= 2400.0*x1_1 - 3500.0*x3_1 + 1500.0;
  dc13..        0 =g= 2400.0*x1_1 - 2700.0*x4_1 - 2000.0;
  dc14..        0 =g= 5800.0*x2_1 - 3500.0*x3_1 + 2000.0;
  dc15..        0 =g= 5800.0*x2_1 - 2700.0*x4_1 - 3000.0;
  dc16..        0 =g= 3500.0*x3_1 - 2700.0*x4_1 - 4000.0;
  dc21..        0 =g= 2700.0*x1_2 - 8000.0*x2_2 - 100.0;
  dc22..        0 =g= 2700.0*x1_2 - 4200.0*x3_2 + 1500.0;
  dc23..        0 =g= 8000.0*x2_2 - 4200.0*x3_2 - 1000.0;
  dc31..        0 =g= 3400.0*x1_3 - 22350.0*x2_3 - 500.0;
  dc32..        0 =g= 3400.0*x1_3 - 10600.0*x3_3 - 500.0;
  dc33..        0 =g= 3400.0*x1_3 - 1500.0*x4_3 + 1500.0;
  dc34..        0 =g= 22350.0*x2_3 - 10600.0*x3_3 - 200.0;
  dc35..        0 =g= 22350.0*x2_3 - 1500.0*x4_3 + 300.0;
  dc36..        0 =g= 10600.0*x3_3 - 1500.0*x4_3 + 1500.0;

icm1_2..  -sm1_2 + sm1_1 + pm1_1 - ym1_1 + rm1_1 - bm1_m1_1
         + om1_m1_1- bm1_0_1 +om1_0_1 - bm1_1_1 + om1_1_1 -
         bm1_2_1 + om1_2_1 - bm1_3_1 + om1_3_1 - bm1_4_1
         +om1_4_1 - bm1_5_1 + om1_5_1 - bm1_6_1 + om1_6_1 -
         bm1_7_1 + om1_7_1 - bm1_8_1 +om1_8_1 - bm1_9_1 +
         om1_9_1 - bm1_10_1 + om1_10_1 - bm1_11_1 +
         om1_11_1 -bm1_12_1 + om1_12_1 - bm1_13_1 +
         om1_13_1 - bm1_14_1 +om1_14_1 - bm1_15_1 +om1_15_1
         =e= 0;

ic0_2..  -s0_2 + s0_1 + p0_1 - y0_1 + r0_1 - b0_m1_1 +
         o0_m1_1 - b0_0_1 + o0_0_1 -b0_1_1 + o0_1_1 -
         b0_2_1 + o0_2_1 - b0_3_1 + o0_3_1 - b0_4_1 +
         o0_4_1 - b0_5_1+ o0_5_1 - b0_6_1 + o0_6_1 - b0_7_1
         + o0_7_1 - b0_8_1 + o0_8_1 - b0_9_1 +o0_9_1 -
         b0_10_1 + o0_10_1 - b0_11_1 + o0_11_1 - b0_12_1 +
         o0_12_1 - b0_13_1 +o0_13_1 - b0_14_1 + o0_14_1 -
         b0_15_1 + o0_15_1 =e= 0;

ic1_2..  -s1_2 + s1_1 + p1_1 - y1_1 + r1_1 - b1_m1_1 +
         o1_m1_1 - b1_0_1 + o1_0_1 -b1_1_1 + o1_1_1 -
         b1_2_1 + o1_2_1 - b1_3_1 + o1_3_1 - b1_4_1 +
         o1_4_1 - b1_5_1+ o1_5_1 - b1_6_1 + o1_6_1 - b1_7_1
         + o1_7_1 - b1_8_1 + o1_8_1 - b1_9_1 +o1_9_1 -
         b1_10_1 + o1_10_1 - b1_11_1 + o1_11_1 - b1_12_1 +
         o1_12_1 - b1_13_1 +o1_13_1 - b1_14_1 + o1_14_1 -
         b1_15_1 + o1_15_1 =e= 0;

ic2_2..  -s2_2 + s2_1 + p2_1 - y2_1 + r2_1 - b2_m1_1 +
         o2_m1_1 - b2_0_1 + o2_0_1 -b2_1_1 + o2_1_1 -
         b2_2_1 + o2_2_1 - b2_3_1 + o2_3_1 - b2_4_1 +
         o2_4_1 - b2_5_1+ o2_5_1 - b2_6_1 + o2_6_1 - b2_7_1
         + o2_7_1 - b2_8_1 + o2_8_1 - b2_9_1 +o2_9_1 -
         b2_10_1 + o2_10_1 - b2_11_1 + o2_11_1 - b2_12_1 +
         o2_12_1 - b2_13_1 +o2_13_1 - b2_14_1 + o2_14_1 -
         b2_15_1 + o2_15_1 =e= 0;

ic3_2..  -s3_2 + s3_1 + p3_1 - y3_1 + r3_1 - b3_m1_1 +
         o3_m1_1 - b3_0_1 + o3_0_1 -b3_1_1 + o3_1_1 -
         b3_2_1 + o3_2_1 - b3_3_1 + o3_3_1 - b3_4_1 +
         o3_4_1 - b3_5_1+ o3_5_1 - b3_6_1 + o3_6_1 - b3_7_1
         + o3_7_1 - b3_8_1 + o3_8_1 - b3_9_1 +o3_9_1 -
         b3_10_1 + o3_10_1 - b3_11_1 + o3_11_1 - b3_12_1 +
         o3_12_1 - b3_13_1 +o3_13_1 - b3_14_1 + o3_14_1 -
         b3_15_1 + o3_15_1 =e= 0;

ic4_2..  -s4_2 + s4_1 + p4_1 - y4_1 + r4_1 - b4_m1_1 +
         o4_m1_1 - b4_0_1 + o4_0_1 -b4_1_1 + o4_1_1 -
         b4_2_1 + o4_2_1 - b4_3_1 + o4_3_1 - b4_4_1 +
         o4_4_1 - b4_5_1+ o4_5_1 - b4_6_1 + o4_6_1 - b4_7_1
         + o4_7_1 - b4_8_1 + o4_8_1 - b4_9_1 +o4_9_1 -
         b4_10_1 + o4_10_1 - b4_11_1 + o4_11_1 - b4_12_1 +
         o4_12_1 - b4_13_1 +o4_13_1 - b4_14_1 + o4_14_1 -
         b4_15_1 + o4_15_1 =e= 0;

ic5_2..  -s5_2 + s5_1 + p5_1 - y5_1 + r5_1 - b5_m1_1 +
         o5_m1_1 - b5_0_1 + o5_0_1 -b5_1_1 + o5_1_1 -
         b5_2_1 + o5_2_1 - b5_3_1 + o5_3_1 - b5_4_1 +
         o5_4_1 - b5_5_1+ o5_5_1 - b5_6_1 + o5_6_1 - b5_7_1
         + o5_7_1 - b5_8_1 + o5_8_1 - b5_9_1 +o5_9_1 -
         b5_10_1 + o5_10_1 - b5_11_1 + o5_11_1 - b5_12_1 +
         o5_12_1 - b5_13_1 +o5_13_1 - b5_14_1 + o5_14_1 -
         b5_15_1 + o5_15_1 =e= 0;

ic6_2..  -s6_2 + s6_1 + p6_1 - y6_1 + r6_1 - b6_m1_1 +
         o6_m1_1 - b6_0_1 + o6_0_1 -b6_1_1 + o6_1_1 -
         b6_2_1 + o6_2_1 - b6_3_1 + o6_3_1 - b6_4_1 +
         o6_4_1 - b6_5_1+ o6_5_1 - b6_6_1 + o6_6_1 - b6_7_1
         + o6_7_1 - b6_8_1 + o6_8_1 - b6_9_1 +o6_9_1 -
         b6_10_1 + o6_10_1 - b6_11_1 + o6_11_1 - b6_12_1 +
         o6_12_1 - b6_13_1 +o6_13_1 - b6_14_1 + o6_14_1 -
         b6_15_1 + o6_15_1 =e= 0;

ic7_2..  -s7_2 + s7_1 + p7_1 - y7_1 + r7_1 - b7_m1_1 +
         o7_m1_1 - b7_0_1 + o7_0_1 -b7_1_1 + o7_1_1 -
         b7_2_1 + o7_2_1 - b7_3_1 + o7_3_1 - b7_4_1 +
         o7_4_1 - b7_5_1+ o7_5_1 - b7_6_1 + o7_6_1 - b7_7_1
         + o7_7_1 - b7_8_1 + o7_8_1 - b7_9_1 +o7_9_1 -
         b7_10_1 + o7_10_1 - b7_11_1 + o7_11_1 - b7_12_1 +
         o7_12_1 - b7_13_1 +o7_13_1 - b7_14_1 + o7_14_1 -
         b7_15_1 + o7_15_1 =e= 0;

ic8_2..  -s8_2 + s8_1 + p8_1 - y8_1 + r8_1 - b8_m1_1 +
         o8_m1_1 - b8_0_1 + o8_0_1 -b8_1_1 + o8_1_1 -
         b8_2_1 + o8_2_1 - b8_3_1 + o8_3_1 - b8_4_1 +
         o8_4_1 - b8_5_1+ o8_5_1 - b8_6_1 + o8_6_1 - b8_7_1
         + o8_7_1 - b8_8_1 + o8_8_1 - b8_9_1 +o8_9_1 -
         b8_10_1 + o8_10_1 - b8_11_1 + o8_11_1 - b8_12_1 +
         o8_12_1 - b8_13_1 +o8_13_1 - b8_14_1 + o8_14_1 -
         b8_15_1 + o8_15_1 =e= 0;

ic9_2..  -s9_2 + s9_1 + p9_1 - y9_1 + r9_1 - b9_m1_1 +
         o9_m1_1 - b9_0_1 + o9_0_1 -b9_1_1 + o9_1_1 -
         b9_2_1 + o9_2_1 - b9_3_1 + o9_3_1 - b9_4_1 +
         o9_4_1 - b9_5_1+ o9_5_1 - b9_6_1 + o9_6_1 - b9_7_1
         + o9_7_1 - b9_8_1 + o9_8_1 - b9_9_1 +o9_9_1 -
         b9_10_1 + o9_10_1 - b9_11_1 + o9_11_1 - b9_12_1 +
         o9_12_1 - b9_13_1 +o9_13_1 - b9_14_1 + o9_14_1 -
         b9_15_1 + o9_15_1 =e= 0;

ic10_2..  -s10_2 + s10_1 + p10_1 - y10_1 + r10_1 - b10_m1_1
         + o10_m1_1 - b10_0_1 +o10_0_1 - b10_1_1 + o10_1_1
         - b10_2_1 + o10_2_1 - b10_3_1 + o10_3_1 - b10_4_1
         +o10_4_1 - b10_5_1 + o10_5_1 - b10_6_1 + o10_6_1 -
         b10_7_1 + o10_7_1 - b10_8_1 +o10_8_1 - b10_9_1 +
         o10_9_1 - b10_10_1 + o10_10_1 - b10_11_1 +
         o10_11_1 -b10_12_1 + o10_12_1 - b10_13_1 +
         o10_13_1 - b10_14_1 + o10_14_1 - b10_15_1
         +o10_15_1 =e= 0;

ic11_2..  -s11_2 + s11_1 + p11_1 - y11_1 + r11_1 - b11_m1_1
         + o11_m1_1 - b11_0_1 +o11_0_1 - b11_1_1 + o11_1_1
         - b11_2_1 + o11_2_1 - b11_3_1 + o11_3_1 - b11_4_1
         +o11_4_1 - b11_5_1 + o11_5_1 - b11_6_1 + o11_6_1 -
         b11_7_1 + o11_7_1 - b11_8_1 +o11_8_1 - b11_9_1 +
         o11_9_1 - b11_10_1 + o11_10_1 - b11_11_1 +
         o11_11_1 -b11_12_1 + o11_12_1 - b11_13_1 +
         o11_13_1 - b11_14_1 + o11_14_1 - b11_15_1
         +o11_15_1 =e= 0;

ic12_2..  -s12_2 + s12_1 + p12_1 - y12_1 + r12_1 - b12_m1_1
         + o12_m1_1 - b12_0_1 +o12_0_1 - b12_1_1 + o12_1_1
         - b12_2_1 + o12_2_1 - b12_3_1 + o12_3_1 - b12_4_1
         +o12_4_1 - b12_5_1 + o12_5_1 - b12_6_1 + o12_6_1 -
         b12_7_1 + o12_7_1 - b12_8_1 +o12_8_1 - b12_9_1 +
         o12_9_1 - b12_10_1 + o12_10_1 - b12_11_1 +
         o12_11_1 -b12_12_1 + o12_12_1 - b12_13_1 +
         o12_13_1 - b12_14_1 + o12_14_1 - b12_15_1
         +o12_15_1 =e= 0;

ic13_2..  -s13_2 + s13_1 + p13_1 - y13_1 + r13_1 - b13_m1_1
         + o13_m1_1 - b13_0_1 +o13_0_1 - b13_1_1 + o13_1_1
         - b13_2_1 + o13_2_1 - b13_3_1 + o13_3_1 - b13_4_1
         +o13_4_1 - b13_5_1 + o13_5_1 - b13_6_1 + o13_6_1 -
         b13_7_1 + o13_7_1 - b13_8_1 +o13_8_1 - b13_9_1 +
         o13_9_1 - b13_10_1 + o13_10_1 - b13_11_1 +
         o13_11_1 -b13_12_1 + o13_12_1 - b13_13_1 +
         o13_13_1 - b13_14_1 + o13_14_1 - b13_15_1
         +o13_15_1 =e= 0;

ic14_2..  -s14_2 + s14_1 + p14_1 - y14_1 + r14_1 - b14_m1_1
         + o14_m1_1 - b14_0_1 +o14_0_1 - b14_1_1 + o14_1_1
         - b14_2_1 + o14_2_1 - b14_3_1 + o14_3_1 - b14_4_1
         +o14_4_1 - b14_5_1 + o14_5_1 - b14_6_1 + o14_6_1 -
         b14_7_1 + o14_7_1 - b14_8_1 +o14_8_1 - b14_9_1 +
         o14_9_1 - b14_10_1 + o14_10_1 - b14_11_1 +
         o14_11_1 -b14_12_1 + o14_12_1 - b14_13_1 +
         o14_13_1 - b14_14_1 + o14_14_1 - b14_15_1
         +o14_15_1 =e= 0;

ic15_2..  -s15_2 + s15_1 + p15_1 - y15_1 + r15_1 - b15_m1_1
         + o15_m1_1 - b15_0_1 +o15_0_1 - b15_1_1 + o15_1_1
         - b15_2_1 + o15_2_1 - b15_3_1 + o15_3_1 - b15_4_1
         +o15_4_1 - b15_5_1 + o15_5_1 - b15_6_1 + o15_6_1 -
         b15_7_1 + o15_7_1 - b15_8_1 +o15_8_1 - b15_9_1 +
         o15_9_1 - b15_10_1 + o15_10_1 - b15_11_1 +
         o15_11_1 -b15_12_1 + o15_12_1 - b15_13_1 +
         o15_13_1 - b15_14_1 + o15_14_1 - b15_15_1
         +o15_15_1 =e= 0;

  icm1_m1_2..       -sm1_m1_2 + sm1_m1_1 + pm1_m1_1 - ym1_m1_1 =e= 0;
  icm1_0_2..        -sm1_0_2 + sm1_0_1 + pm1_0_1 - ym1_0_1 =e= 0;
  icm1_1_2..        -sm1_1_2 + sm1_1_1 + pm1_1_1 - ym1_1_1 =e= 0;
  icm1_2_2..        -sm1_2_2 + sm1_2_1 + pm1_2_1 - ym1_2_1 =e= 0;
  icm1_3_2..        -sm1_3_2 + sm1_3_1 + pm1_3_1 - ym1_3_1 =e= 0;
  icm1_4_2..        -sm1_4_2 + sm1_4_1 + pm1_4_1 - ym1_4_1 =e= 0;
  icm1_5_2..        -sm1_5_2 + sm1_5_1 + pm1_5_1 - ym1_5_1 =e= 0;
  icm1_6_2..        -sm1_6_2 + sm1_6_1 + pm1_6_1 - ym1_6_1 =e= 0;
  icm1_7_2..        -sm1_7_2 + sm1_7_1 + pm1_7_1 - ym1_7_1 =e= 0;
  icm1_8_2..        -sm1_8_2 + sm1_8_1 + pm1_8_1 - ym1_8_1 =e= 0;
  icm1_9_2..        -sm1_9_2 + sm1_9_1 + pm1_9_1 - ym1_9_1 =e= 0;
  icm1_10_2..       -sm1_10_2 + sm1_10_1 + pm1_10_1 - ym1_10_1 =e= 0;
  icm1_11_2..       -sm1_11_2 + sm1_11_1 + pm1_11_1 - ym1_11_1 =e= 0;
  icm1_12_2..       -sm1_12_2 + sm1_12_1 + pm1_12_1 - ym1_12_1 =e= 0;
  icm1_13_2..       -sm1_13_2 + sm1_13_1 + pm1_13_1 - ym1_13_1 =e= 0;
  icm1_14_2..       -sm1_14_2 + sm1_14_1 + pm1_14_1 - ym1_14_1 =e= 0;
  icm1_15_2..       -sm1_15_2 + sm1_15_1 + pm1_15_1 - ym1_15_1 =e= 0;
  ic0_m1_2..        -s0_m1_2 + s0_m1_1 + p0_m1_1 - y0_m1_1 =e= 0;
  ic0_0_2..         -s0_0_2 + s0_0_1 + p0_0_1 - y0_0_1 =e= 0;
  ic0_1_2..         -s0_1_2 + s0_1_1 + p0_1_1 - y0_1_1 =e= 0;
  ic0_2_2..         -s0_2_2 + s0_2_1 + p0_2_1 - y0_2_1 =e= 0;
  ic0_3_2..         -s0_3_2 + s0_3_1 + p0_3_1 - y0_3_1 =e= 0;
  ic0_4_2..         -s0_4_2 + s0_4_1 + p0_4_1 - y0_4_1 =e= 0;
  ic0_5_2..         -s0_5_2 + s0_5_1 + p0_5_1 - y0_5_1 =e= 0;
  ic0_6_2..         -s0_6_2 + s0_6_1 + p0_6_1 - y0_6_1 =e= 0;
  ic0_7_2..         -s0_7_2 + s0_7_1 + p0_7_1 - y0_7_1 =e= 0;
  ic0_8_2..         -s0_8_2 + s0_8_1 + p0_8_1 - y0_8_1 =e= 0;
  ic0_9_2..         -s0_9_2 + s0_9_1 + p0_9_1 - y0_9_1 =e= 0;
  ic0_10_2..        -s0_10_2 + s0_10_1 + p0_10_1 - y0_10_1 =e= 0;
  ic0_11_2..        -s0_11_2 + s0_11_1 + p0_11_1 - y0_11_1 =e= 0;
  ic0_12_2..        -s0_12_2 + s0_12_1 + p0_12_1 - y0_12_1 =e= 0;
  ic0_13_2..        -s0_13_2 + s0_13_1 + p0_13_1 - y0_13_1 =e= 0;
  ic0_14_2..        -s0_14_2 + s0_14_1 + p0_14_1 - y0_14_1 =e= 0;
  ic0_15_2..        -s0_15_2 + s0_15_1 + p0_15_1 - y0_15_1 =e= 0;
  ic1_m1_2..        -s1_m1_2 + s1_m1_1 + p1_m1_1 - y1_m1_1 =e= 0;
  ic1_0_2..         -s1_0_2 + s1_0_1 + p1_0_1 - y1_0_1 =e= 0;
  ic1_1_2..         -s1_1_2 + s1_1_1 + p1_1_1 - y1_1_1 =e= 0;
  ic1_2_2..         -s1_2_2 + s1_2_1 + p1_2_1 - y1_2_1 =e= 0;
  ic1_3_2..         -s1_3_2 + s1_3_1 + p1_3_1 - y1_3_1 =e= 0;
  ic1_4_2..         -s1_4_2 + s1_4_1 + p1_4_1 - y1_4_1 =e= 0;
  ic1_5_2..         -s1_5_2 + s1_5_1 + p1_5_1 - y1_5_1 =e= 0;
  ic1_6_2..         -s1_6_2 + s1_6_1 + p1_6_1 - y1_6_1 =e= 0;
  ic1_7_2..         -s1_7_2 + s1_7_1 + p1_7_1 - y1_7_1 =e= 0;
  ic1_8_2..         -s1_8_2 + s1_8_1 + p1_8_1 - y1_8_1 =e= 0;
  ic1_9_2..         -s1_9_2 + s1_9_1 + p1_9_1 - y1_9_1 =e= 0;
  ic1_10_2..        -s1_10_2 + s1_10_1 + p1_10_1 - y1_10_1 =e= 0;
  ic1_11_2..        -s1_11_2 + s1_11_1 + p1_11_1 - y1_11_1 =e= 0;
  ic1_12_2..        -s1_12_2 + s1_12_1 + p1_12_1 - y1_12_1 =e= 0;
  ic1_13_2..        -s1_13_2 + s1_13_1 + p1_13_1 - y1_13_1 =e= 0;
  ic1_14_2..        -s1_14_2 + s1_14_1 + p1_14_1 - y1_14_1 =e= 0;
  ic1_15_2..        -s1_15_2 + s1_15_1 + p1_15_1 - y1_15_1 =e= 0;
  ic2_m1_2..        -s2_m1_2 + s2_m1_1 + p2_m1_1 - y2_m1_1 =e= 0;
  ic2_0_2..         -s2_0_2 + s2_0_1 + p2_0_1 - y2_0_1 =e= 0;
  ic2_1_2..         -s2_1_2 + s2_1_1 + p2_1_1 - y2_1_1 =e= 0;
  ic2_2_2..         -s2_2_2 + s2_2_1 + p2_2_1 - y2_2_1 =e= 0;
  ic2_3_2..         -s2_3_2 + s2_3_1 + p2_3_1 - y2_3_1 =e= 0;
  ic2_4_2..         -s2_4_2 + s2_4_1 + p2_4_1 - y2_4_1 =e= 0;
  ic2_5_2..         -s2_5_2 + s2_5_1 + p2_5_1 - y2_5_1 =e= 0;
  ic2_6_2..         -s2_6_2 + s2_6_1 + p2_6_1 - y2_6_1 =e= 0;
  ic2_7_2..         -s2_7_2 + s2_7_1 + p2_7_1 - y2_7_1 =e= 0;
  ic2_8_2..         -s2_8_2 + s2_8_1 + p2_8_1 - y2_8_1 =e= 0;
  ic2_9_2..         -s2_9_2 + s2_9_1 + p2_9_1 - y2_9_1 =e= 0;
  ic2_10_2..        -s2_10_2 + s2_10_1 + p2_10_1 - y2_10_1 =e= 0;
  ic2_11_2..        -s2_11_2 + s2_11_1 + p2_11_1 - y2_11_1 =e= 0;
  ic2_12_2..        -s2_12_2 + s2_12_1 + p2_12_1 - y2_12_1 =e= 0;
  ic2_13_2..        -s2_13_2 + s2_13_1 + p2_13_1 - y2_13_1 =e= 0;
  ic2_14_2..        -s2_14_2 + s2_14_1 + p2_14_1 - y2_14_1 =e= 0;
  ic2_15_2..        -s2_15_2 + s2_15_1 + p2_15_1 - y2_15_1 =e= 0;
  ic3_m1_2..        -s3_m1_2 + s3_m1_1 + p3_m1_1 - y3_m1_1 =e= 0;
  ic3_0_2..         -s3_0_2 + s3_0_1 + p3_0_1 - y3_0_1 =e= 0;
  ic3_1_2..         -s3_1_2 + s3_1_1 + p3_1_1 - y3_1_1 =e= 0;
  ic3_2_2..         -s3_2_2 + s3_2_1 + p3_2_1 - y3_2_1 =e= 0;
  ic3_3_2..         -s3_3_2 + s3_3_1 + p3_3_1 - y3_3_1 =e= 0;
  ic3_4_2..         -s3_4_2 + s3_4_1 + p3_4_1 - y3_4_1 =e= 0;
  ic3_5_2..         -s3_5_2 + s3_5_1 + p3_5_1 - y3_5_1 =e= 0;
  ic3_6_2..         -s3_6_2 + s3_6_1 + p3_6_1 - y3_6_1 =e= 0;
  ic3_7_2..         -s3_7_2 + s3_7_1 + p3_7_1 - y3_7_1 =e= 0;
  ic3_8_2..         -s3_8_2 + s3_8_1 + p3_8_1 - y3_8_1 =e= 0;
  ic3_9_2..         -s3_9_2 + s3_9_1 + p3_9_1 - y3_9_1 =e= 0;
  ic3_10_2..        -s3_10_2 + s3_10_1 + p3_10_1 - y3_10_1 =e= 0;
  ic3_11_2..        -s3_11_2 + s3_11_1 + p3_11_1 - y3_11_1 =e= 0;
  ic3_12_2..        -s3_12_2 + s3_12_1 + p3_12_1 - y3_12_1 =e= 0;
  ic3_13_2..        -s3_13_2 + s3_13_1 + p3_13_1 - y3_13_1 =e= 0;
  ic3_14_2..        -s3_14_2 + s3_14_1 + p3_14_1 - y3_14_1 =e= 0;
  ic3_15_2..        -s3_15_2 + s3_15_1 + p3_15_1 - y3_15_1 =e= 0;
  ic4_m1_2..        -s4_m1_2 + s4_m1_1 + p4_m1_1 - y4_m1_1 =e= 0;
  ic4_0_2..         -s4_0_2 + s4_0_1 + p4_0_1 - y4_0_1 =e= 0;
  ic4_1_2..         -s4_1_2 + s4_1_1 + p4_1_1 - y4_1_1 =e= 0;
  ic4_2_2..         -s4_2_2 + s4_2_1 + p4_2_1 - y4_2_1 =e= 0;
  ic4_3_2..         -s4_3_2 + s4_3_1 + p4_3_1 - y4_3_1 =e= 0;
  ic4_4_2..         -s4_4_2 + s4_4_1 + p4_4_1 - y4_4_1 =e= 0;
  ic4_5_2..         -s4_5_2 + s4_5_1 + p4_5_1 - y4_5_1 =e= 0;
  ic4_6_2..         -s4_6_2 + s4_6_1 + p4_6_1 - y4_6_1 =e= 0;
  ic4_7_2..         -s4_7_2 + s4_7_1 + p4_7_1 - y4_7_1 =e= 0;
  ic4_8_2..         -s4_8_2 + s4_8_1 + p4_8_1 - y4_8_1 =e= 0;
  ic4_9_2..         -s4_9_2 + s4_9_1 + p4_9_1 - y4_9_1 =e= 0;
  ic4_10_2..        -s4_10_2 + s4_10_1 + p4_10_1 - y4_10_1 =e= 0;
  ic4_11_2..        -s4_11_2 + s4_11_1 + p4_11_1 - y4_11_1 =e= 0;
  ic4_12_2..        -s4_12_2 + s4_12_1 + p4_12_1 - y4_12_1 =e= 0;
  ic4_13_2..        -s4_13_2 + s4_13_1 + p4_13_1 - y4_13_1 =e= 0;
  ic4_14_2..        -s4_14_2 + s4_14_1 + p4_14_1 - y4_14_1 =e= 0;
  ic4_15_2..        -s4_15_2 + s4_15_1 + p4_15_1 - y4_15_1 =e= 0;
  ic5_m1_2..        -s5_m1_2 + s5_m1_1 + p5_m1_1 - y5_m1_1 =e= 0;
  ic5_0_2..         -s5_0_2 + s5_0_1 + p5_0_1 - y5_0_1 =e= 0;
  ic5_1_2..         -s5_1_2 + s5_1_1 + p5_1_1 - y5_1_1 =e= 0;
  ic5_2_2..         -s5_2_2 + s5_2_1 + p5_2_1 - y5_2_1 =e= 0;
  ic5_3_2..         -s5_3_2 + s5_3_1 + p5_3_1 - y5_3_1 =e= 0;
  ic5_4_2..         -s5_4_2 + s5_4_1 + p5_4_1 - y5_4_1 =e= 0;
  ic5_5_2..         -s5_5_2 + s5_5_1 + p5_5_1 - y5_5_1 =e= 0;
  ic5_6_2..         -s5_6_2 + s5_6_1 + p5_6_1 - y5_6_1 =e= 0;
  ic5_7_2..         -s5_7_2 + s5_7_1 + p5_7_1 - y5_7_1 =e= 0;
  ic5_8_2..         -s5_8_2 + s5_8_1 + p5_8_1 - y5_8_1 =e= 0;
  ic5_9_2..         -s5_9_2 + s5_9_1 + p5_9_1 - y5_9_1 =e= 0;
  ic5_10_2..        -s5_10_2 + s5_10_1 + p5_10_1 - y5_10_1 =e= 0;
  ic5_11_2..        -s5_11_2 + s5_11_1 + p5_11_1 - y5_11_1 =e= 0;
  ic5_12_2..        -s5_12_2 + s5_12_1 + p5_12_1 - y5_12_1 =e= 0;
  ic5_13_2..        -s5_13_2 + s5_13_1 + p5_13_1 - y5_13_1 =e= 0;
  ic5_14_2..        -s5_14_2 + s5_14_1 + p5_14_1 - y5_14_1 =e= 0;
  ic5_15_2..        -s5_15_2 + s5_15_1 + p5_15_1 - y5_15_1 =e= 0;
  ic6_m1_2..        -s6_m1_2 + s6_m1_1 + p6_m1_1 - y6_m1_1 =e= 0;
  ic6_0_2..         -s6_0_2 + s6_0_1 + p6_0_1 - y6_0_1 =e= 0;
  ic6_1_2..         -s6_1_2 + s6_1_1 + p6_1_1 - y6_1_1 =e= 0;
  ic6_2_2..         -s6_2_2 + s6_2_1 + p6_2_1 - y6_2_1 =e= 0;
  ic6_3_2..         -s6_3_2 + s6_3_1 + p6_3_1 - y6_3_1 =e= 0;
  ic6_4_2..         -s6_4_2 + s6_4_1 + p6_4_1 - y6_4_1 =e= 0;
  ic6_5_2..         -s6_5_2 + s6_5_1 + p6_5_1 - y6_5_1 =e= 0;
  ic6_6_2..         -s6_6_2 + s6_6_1 + p6_6_1 - y6_6_1 =e= 0;
  ic6_7_2..         -s6_7_2 + s6_7_1 + p6_7_1 - y6_7_1 =e= 0;
  ic6_8_2..         -s6_8_2 + s6_8_1 + p6_8_1 - y6_8_1 =e= 0;
  ic6_9_2..         -s6_9_2 + s6_9_1 + p6_9_1 - y6_9_1 =e= 0;
  ic6_10_2..        -s6_10_2 + s6_10_1 + p6_10_1 - y6_10_1 =e= 0;
  ic6_11_2..        -s6_11_2 + s6_11_1 + p6_11_1 - y6_11_1 =e= 0;
  ic6_12_2..        -s6_12_2 + s6_12_1 + p6_12_1 - y6_12_1 =e= 0;
  ic6_13_2..        -s6_13_2 + s6_13_1 + p6_13_1 - y6_13_1 =e= 0;
  ic6_14_2..        -s6_14_2 + s6_14_1 + p6_14_1 - y6_14_1 =e= 0;
  ic6_15_2..        -s6_15_2 + s6_15_1 + p6_15_1 - y6_15_1 =e= 0;
  ic7_m1_2..        -s7_m1_2 + s7_m1_1 + p7_m1_1 - y7_m1_1 =e= 0;
  ic7_0_2..         -s7_0_2 + s7_0_1 + p7_0_1 - y7_0_1 =e= 0;
  ic7_1_2..         -s7_1_2 + s7_1_1 + p7_1_1 - y7_1_1 =e= 0;
  ic7_2_2..         -s7_2_2 + s7_2_1 + p7_2_1 - y7_2_1 =e= 0;
  ic7_3_2..         -s7_3_2 + s7_3_1 + p7_3_1 - y7_3_1 =e= 0;
  ic7_4_2..         -s7_4_2 + s7_4_1 + p7_4_1 - y7_4_1 =e= 0;
  ic7_5_2..         -s7_5_2 + s7_5_1 + p7_5_1 - y7_5_1 =e= 0;
  ic7_6_2..         -s7_6_2 + s7_6_1 + p7_6_1 - y7_6_1 =e= 0;
  ic7_7_2..         -s7_7_2 + s7_7_1 + p7_7_1 - y7_7_1 =e= 0;
  ic7_8_2..         -s7_8_2 + s7_8_1 + p7_8_1 - y7_8_1 =e= 0;
  ic7_9_2..         -s7_9_2 + s7_9_1 + p7_9_1 - y7_9_1 =e= 0;
  ic7_10_2..        -s7_10_2 + s7_10_1 + p7_10_1 - y7_10_1 =e= 0;
  ic7_11_2..        -s7_11_2 + s7_11_1 + p7_11_1 - y7_11_1 =e= 0;
  ic7_12_2..        -s7_12_2 + s7_12_1 + p7_12_1 - y7_12_1 =e= 0;
  ic7_13_2..        -s7_13_2 + s7_13_1 + p7_13_1 - y7_13_1 =e= 0;
  ic7_14_2..        -s7_14_2 + s7_14_1 + p7_14_1 - y7_14_1 =e= 0;
  ic7_15_2..        -s7_15_2 + s7_15_1 + p7_15_1 - y7_15_1 =e= 0;
  ic8_m1_2..        -s8_m1_2 + s8_m1_1 + p8_m1_1 - y8_m1_1 =e= 0;
  ic8_0_2..         -s8_0_2 + s8_0_1 + p8_0_1 - y8_0_1 =e= 0;
  ic8_1_2..         -s8_1_2 + s8_1_1 + p8_1_1 - y8_1_1 =e= 0;
  ic8_2_2..         -s8_2_2 + s8_2_1 + p8_2_1 - y8_2_1 =e= 0;
  ic8_3_2..         -s8_3_2 + s8_3_1 + p8_3_1 - y8_3_1 =e= 0;
  ic8_4_2..         -s8_4_2 + s8_4_1 + p8_4_1 - y8_4_1 =e= 0;
  ic8_5_2..         -s8_5_2 + s8_5_1 + p8_5_1 - y8_5_1 =e= 0;
  ic8_6_2..         -s8_6_2 + s8_6_1 + p8_6_1 - y8_6_1 =e= 0;
  ic8_7_2..         -s8_7_2 + s8_7_1 + p8_7_1 - y8_7_1 =e= 0;
  ic8_8_2..         -s8_8_2 + s8_8_1 + p8_8_1 - y8_8_1 =e= 0;
  ic8_9_2..         -s8_9_2 + s8_9_1 + p8_9_1 - y8_9_1 =e= 0;
  ic8_10_2..        -s8_10_2 + s8_10_1 + p8_10_1 - y8_10_1 =e= 0;
  ic8_11_2..        -s8_11_2 + s8_11_1 + p8_11_1 - y8_11_1 =e= 0;
  ic8_12_2..        -s8_12_2 + s8_12_1 + p8_12_1 - y8_12_1 =e= 0;
  ic8_13_2..        -s8_13_2 + s8_13_1 + p8_13_1 - y8_13_1 =e= 0;
  ic8_14_2..        -s8_14_2 + s8_14_1 + p8_14_1 - y8_14_1 =e= 0;
  ic8_15_2..        -s8_15_2 + s8_15_1 + p8_15_1 - y8_15_1 =e= 0;
  ic9_m1_2..        -s9_m1_2 + s9_m1_1 + p9_m1_1 - y9_m1_1 =e= 0;
  ic9_0_2..         -s9_0_2 + s9_0_1 + p9_0_1 - y9_0_1 =e= 0;
  ic9_1_2..         -s9_1_2 + s9_1_1 + p9_1_1 - y9_1_1 =e= 0;
  ic9_2_2..         -s9_2_2 + s9_2_1 + p9_2_1 - y9_2_1 =e= 0;
  ic9_3_2..         -s9_3_2 + s9_3_1 + p9_3_1 - y9_3_1 =e= 0;
  ic9_4_2..         -s9_4_2 + s9_4_1 + p9_4_1 - y9_4_1 =e= 0;
  ic9_5_2..         -s9_5_2 + s9_5_1 + p9_5_1 - y9_5_1 =e= 0;
  ic9_6_2..         -s9_6_2 + s9_6_1 + p9_6_1 - y9_6_1 =e= 0;
  ic9_7_2..         -s9_7_2 + s9_7_1 + p9_7_1 - y9_7_1 =e= 0;
  ic9_8_2..         -s9_8_2 + s9_8_1 + p9_8_1 - y9_8_1 =e= 0;
  ic9_9_2..         -s9_9_2 + s9_9_1 + p9_9_1 - y9_9_1 =e= 0;
  ic9_10_2..        -s9_10_2 + s9_10_1 + p9_10_1 - y9_10_1 =e= 0;
  ic9_11_2..        -s9_11_2 + s9_11_1 + p9_11_1 - y9_11_1 =e= 0;
  ic9_12_2..        -s9_12_2 + s9_12_1 + p9_12_1 - y9_12_1 =e= 0;
  ic9_13_2..        -s9_13_2 + s9_13_1 + p9_13_1 - y9_13_1 =e= 0;
  ic9_14_2..        -s9_14_2 + s9_14_1 + p9_14_1 - y9_14_1 =e= 0;
  ic9_15_2..        -s9_15_2 + s9_15_1 + p9_15_1 - y9_15_1 =e= 0;
  ic10_m1_2..       -s10_m1_2 + s10_m1_1 + p10_m1_1 - y10_m1_1 =e= 0;
  ic10_0_2..        -s10_0_2 + s10_0_1 + p10_0_1 - y10_0_1 =e= 0;
  ic10_1_2..        -s10_1_2 + s10_1_1 + p10_1_1 - y10_1_1 =e= 0;
  ic10_2_2..        -s10_2_2 + s10_2_1 + p10_2_1 - y10_2_1 =e= 0;
  ic10_3_2..        -s10_3_2 + s10_3_1 + p10_3_1 - y10_3_1 =e= 0;
  ic10_4_2..        -s10_4_2 + s10_4_1 + p10_4_1 - y10_4_1 =e= 0;
  ic10_5_2..        -s10_5_2 + s10_5_1 + p10_5_1 - y10_5_1 =e= 0;
  ic10_6_2..        -s10_6_2 + s10_6_1 + p10_6_1 - y10_6_1 =e= 0;
  ic10_7_2..        -s10_7_2 + s10_7_1 + p10_7_1 - y10_7_1 =e= 0;
  ic10_8_2..        -s10_8_2 + s10_8_1 + p10_8_1 - y10_8_1 =e= 0;
  ic10_9_2..        -s10_9_2 + s10_9_1 + p10_9_1 - y10_9_1 =e= 0;
  ic10_10_2..       -s10_10_2 + s10_10_1 + p10_10_1 - y10_10_1 =e= 0;
  ic10_11_2..       -s10_11_2 + s10_11_1 + p10_11_1 - y10_11_1 =e= 0;
  ic10_12_2..       -s10_12_2 + s10_12_1 + p10_12_1 - y10_12_1 =e= 0;
  ic10_13_2..       -s10_13_2 + s10_13_1 + p10_13_1 - y10_13_1 =e= 0;
  ic10_14_2..       -s10_14_2 + s10_14_1 + p10_14_1 - y10_14_1 =e= 0;
  ic10_15_2..       -s10_15_2 + s10_15_1 + p10_15_1 - y10_15_1 =e= 0;
  ic11_m1_2..       -s11_m1_2 + s11_m1_1 + p11_m1_1 - y11_m1_1 =e= 0;
  ic11_0_2..        -s11_0_2 + s11_0_1 + p11_0_1 - y11_0_1 =e= 0;
  ic11_1_2..        -s11_1_2 + s11_1_1 + p11_1_1 - y11_1_1 =e= 0;
  ic11_2_2..        -s11_2_2 + s11_2_1 + p11_2_1 - y11_2_1 =e= 0;
  ic11_3_2..        -s11_3_2 + s11_3_1 + p11_3_1 - y11_3_1 =e= 0;
  ic11_4_2..        -s11_4_2 + s11_4_1 + p11_4_1 - y11_4_1 =e= 0;
  ic11_5_2..        -s11_5_2 + s11_5_1 + p11_5_1 - y11_5_1 =e= 0;
  ic11_6_2..        -s11_6_2 + s11_6_1 + p11_6_1 - y11_6_1 =e= 0;
  ic11_7_2..        -s11_7_2 + s11_7_1 + p11_7_1 - y11_7_1 =e= 0;
  ic11_8_2..        -s11_8_2 + s11_8_1 + p11_8_1 - y11_8_1 =e= 0;
  ic11_9_2..        -s11_9_2 + s11_9_1 + p11_9_1 - y11_9_1 =e= 0;
  ic11_10_2..       -s11_10_2 + s11_10_1 + p11_10_1 - y11_10_1 =e= 0;
  ic11_11_2..       -s11_11_2 + s11_11_1 + p11_11_1 - y11_11_1 =e= 0;
  ic11_12_2..       -s11_12_2 + s11_12_1 + p11_12_1 - y11_12_1 =e= 0;
  ic11_13_2..       -s11_13_2 + s11_13_1 + p11_13_1 - y11_13_1 =e= 0;
  ic11_14_2..       -s11_14_2 + s11_14_1 + p11_14_1 - y11_14_1 =e= 0;
  ic11_15_2..       -s11_15_2 + s11_15_1 + p11_15_1 - y11_15_1 =e= 0;
  ic12_m1_2..       -s12_m1_2 + s12_m1_1 + p12_m1_1 - y12_m1_1 =e= 0;
  ic12_0_2..        -s12_0_2 + s12_0_1 + p12_0_1 - y12_0_1 =e= 0;
  ic12_1_2..        -s12_1_2 + s12_1_1 + p12_1_1 - y12_1_1 =e= 0;
  ic12_2_2..        -s12_2_2 + s12_2_1 + p12_2_1 - y12_2_1 =e= 0;
  ic12_3_2..        -s12_3_2 + s12_3_1 + p12_3_1 - y12_3_1 =e= 0;
  ic12_4_2..        -s12_4_2 + s12_4_1 + p12_4_1 - y12_4_1 =e= 0;
  ic12_5_2..        -s12_5_2 + s12_5_1 + p12_5_1 - y12_5_1 =e= 0;
  ic12_6_2..        -s12_6_2 + s12_6_1 + p12_6_1 - y12_6_1 =e= 0;
  ic12_7_2..        -s12_7_2 + s12_7_1 + p12_7_1 - y12_7_1 =e= 0;
  ic12_8_2..        -s12_8_2 + s12_8_1 + p12_8_1 - y12_8_1 =e= 0;
  ic12_9_2..        -s12_9_2 + s12_9_1 + p12_9_1 - y12_9_1 =e= 0;
  ic12_10_2..       -s12_10_2 + s12_10_1 + p12_10_1 - y12_10_1 =e= 0;
  ic12_11_2..       -s12_11_2 + s12_11_1 + p12_11_1 - y12_11_1 =e= 0;
  ic12_12_2..       -s12_12_2 + s12_12_1 + p12_12_1 - y12_12_1 =e= 0;
  ic12_13_2..       -s12_13_2 + s12_13_1 + p12_13_1 - y12_13_1 =e= 0;
  ic12_14_2..       -s12_14_2 + s12_14_1 + p12_14_1 - y12_14_1 =e= 0;
  ic12_15_2..       -s12_15_2 + s12_15_1 + p12_15_1 - y12_15_1 =e= 0;
  ic13_m1_2..       -s13_m1_2 + s13_m1_1 + p13_m1_1 - y13_m1_1 =e= 0;
  ic13_0_2..        -s13_0_2 + s13_0_1 + p13_0_1 - y13_0_1 =e= 0;
  ic13_1_2..        -s13_1_2 + s13_1_1 + p13_1_1 - y13_1_1 =e= 0;
  ic13_2_2..        -s13_2_2 + s13_2_1 + p13_2_1 - y13_2_1 =e= 0;
  ic13_3_2..        -s13_3_2 + s13_3_1 + p13_3_1 - y13_3_1 =e= 0;
  ic13_4_2..        -s13_4_2 + s13_4_1 + p13_4_1 - y13_4_1 =e= 0;
  ic13_5_2..        -s13_5_2 + s13_5_1 + p13_5_1 - y13_5_1 =e= 0;
  ic13_6_2..        -s13_6_2 + s13_6_1 + p13_6_1 - y13_6_1 =e= 0;
  ic13_7_2..        -s13_7_2 + s13_7_1 + p13_7_1 - y13_7_1 =e= 0;
  ic13_8_2..        -s13_8_2 + s13_8_1 + p13_8_1 - y13_8_1 =e= 0;
  ic13_9_2..        -s13_9_2 + s13_9_1 + p13_9_1 - y13_9_1 =e= 0;
  ic13_10_2..       -s13_10_2 + s13_10_1 + p13_10_1 - y13_10_1 =e= 0;
  ic13_11_2..       -s13_11_2 + s13_11_1 + p13_11_1 - y13_11_1 =e= 0;
  ic13_12_2..       -s13_12_2 + s13_12_1 + p13_12_1 - y13_12_1 =e= 0;
  ic13_13_2..       -s13_13_2 + s13_13_1 + p13_13_1 - y13_13_1 =e= 0;
  ic13_14_2..       -s13_14_2 + s13_14_1 + p13_14_1 - y13_14_1 =e= 0;
  ic13_15_2..       -s13_15_2 + s13_15_1 + p13_15_1 - y13_15_1 =e= 0;
  ic14_m1_2..       -s14_m1_2 + s14_m1_1 + p14_m1_1 - y14_m1_1 =e= 0;
  ic14_0_2..        -s14_0_2 + s14_0_1 + p14_0_1 - y14_0_1 =e= 0;
  ic14_1_2..        -s14_1_2 + s14_1_1 + p14_1_1 - y14_1_1 =e= 0;
  ic14_2_2..        -s14_2_2 + s14_2_1 + p14_2_1 - y14_2_1 =e= 0;
  ic14_3_2..        -s14_3_2 + s14_3_1 + p14_3_1 - y14_3_1 =e= 0;
  ic14_4_2..        -s14_4_2 + s14_4_1 + p14_4_1 - y14_4_1 =e= 0;
  ic14_5_2..        -s14_5_2 + s14_5_1 + p14_5_1 - y14_5_1 =e= 0;
  ic14_6_2..        -s14_6_2 + s14_6_1 + p14_6_1 - y14_6_1 =e= 0;
  ic14_7_2..        -s14_7_2 + s14_7_1 + p14_7_1 - y14_7_1 =e= 0;
  ic14_8_2..        -s14_8_2 + s14_8_1 + p14_8_1 - y14_8_1 =e= 0;
  ic14_9_2..        -s14_9_2 + s14_9_1 + p14_9_1 - y14_9_1 =e= 0;
  ic14_10_2..       -s14_10_2 + s14_10_1 + p14_10_1 - y14_10_1 =e= 0;
  ic14_11_2..       -s14_11_2 + s14_11_1 + p14_11_1 - y14_11_1 =e= 0;
  ic14_12_2..       -s14_12_2 + s14_12_1 + p14_12_1 - y14_12_1 =e= 0;
  ic14_13_2..       -s14_13_2 + s14_13_1 + p14_13_1 - y14_13_1 =e= 0;
  ic14_14_2..       -s14_14_2 + s14_14_1 + p14_14_1 - y14_14_1 =e= 0;
  ic14_15_2..       -s14_15_2 + s14_15_1 + p14_15_1 - y14_15_1 =e= 0;
  ic15_m1_2..       -s15_m1_2 + s15_m1_1 + p15_m1_1 - y15_m1_1 =e= 0;
  ic15_0_2..        -s15_0_2 + s15_0_1 + p15_0_1 - y15_0_1 =e= 0;
  ic15_1_2..        -s15_1_2 + s15_1_1 + p15_1_1 - y15_1_1 =e= 0;
  ic15_2_2..        -s15_2_2 + s15_2_1 + p15_2_1 - y15_2_1 =e= 0;
  ic15_3_2..        -s15_3_2 + s15_3_1 + p15_3_1 - y15_3_1 =e= 0;
  ic15_4_2..        -s15_4_2 + s15_4_1 + p15_4_1 - y15_4_1 =e= 0;
  ic15_5_2..        -s15_5_2 + s15_5_1 + p15_5_1 - y15_5_1 =e= 0;
  ic15_6_2..        -s15_6_2 + s15_6_1 + p15_6_1 - y15_6_1 =e= 0;
  ic15_7_2..        -s15_7_2 + s15_7_1 + p15_7_1 - y15_7_1 =e= 0;
  ic15_8_2..        -s15_8_2 + s15_8_1 + p15_8_1 - y15_8_1 =e= 0;
  ic15_9_2..        -s15_9_2 + s15_9_1 + p15_9_1 - y15_9_1 =e= 0;
  ic15_10_2..       -s15_10_2 + s15_10_1 + p15_10_1 - y15_10_1 =e= 0;
  ic15_11_2..       -s15_11_2 + s15_11_1 + p15_11_1 - y15_11_1 =e= 0;
  ic15_12_2..       -s15_12_2 + s15_12_1 + p15_12_1 - y15_12_1 =e= 0;
  ic15_13_2..       -s15_13_2 + s15_13_1 + p15_13_1 - y15_13_1 =e= 0;
  ic15_14_2..       -s15_14_2 + s15_14_1 + p15_14_1 - y15_14_1 =e= 0;
  ic15_15_2..       -s15_15_2 + s15_15_1 + p15_15_1 - y15_15_1 =e= 0;
  ib11..            o3_12_1 - 3.0*b12_3_1 =e= 0;

Def_obj.. obj=e= 3180.0*ym1_1 + 3360.0*y0_1 + 690.0*y4_1 + 510.0*y3_5_1 +
                 4170.0*y6_1 + 4620.0*y7_1 + 810.0*y3_9_1 + 1020.0*y4_11_1 +
                  720.0*y7_11_1 + 7395.0*y12_1 + 1230.0*y5_13_1 + 4935.0*y14_1 +
                 1140.0*y4_14_1 + 1050.0*y7_14_1 + 2400.0*y8_15_1;



       ym1_1.lo = 0.0 ;     ym1_1.up    = 1.0  ;       ym1_1.l = 1.0;
       rm1_1.lo = 0.0 ;     rm1_1.up    = 0.0  ;       rm1_1.l = 1.0;
       sm1_1.lo = 0.0 ;     sm1_1.up    = 10.0 ;       sm1_1.l = 1.0;
       pm1_1.lo = 0.0 ;     pm1_1.up    = 1.0  ;       pm1_1.l = 1.0;
    ym1_m1_1.lo = 0.0 ;  ym1_m1_1.up    = 0.0  ;    ym1_m1_1.l = 1.0;
    sm1_m1_1.lo = 0.0 ;  sm1_m1_1.up    = 0.0  ;    sm1_m1_1.l = 1.0;
    bm1_m1_1.lo = 0.0 ;  bm1_m1_1.up    = 0.0  ;    bm1_m1_1.l = 1.0;
    om1_m1_1.lo = 0.0 ;  om1_m1_1.up    = 0.0  ;    om1_m1_1.l = 1.0;
    pm1_m1_1.lo = 0.0 ;  pm1_m1_1.up    = 0.0  ;    pm1_m1_1.l = 1.0;
     y0_m1_1.lo = 0.0 ;   y0_m1_1.up    = 0.0  ;     y0_m1_1.l = 1.0;
     s0_m1_1.lo = 0.0 ;   s0_m1_1.up    = 0.0  ;     s0_m1_1.l = 1.0;
     b0_m1_1.lo = 0.0 ;   b0_m1_1.up    = 0.0  ;     b0_m1_1.l = 1.0;
     o0_m1_1.lo = 0.0 ;   o0_m1_1.up    = 0.0  ;     o0_m1_1.l = 1.0;
     p0_m1_1.lo = 0.0 ;   p0_m1_1.up    = 0.0  ;     p0_m1_1.l = 1.0;
     y1_m1_1.lo = 0.0 ;   y1_m1_1.up    = 0.0  ;     y1_m1_1.l = 1.0;
     s1_m1_1.lo = 0.0 ;   s1_m1_1.up    = 0.0  ;     s1_m1_1.l = 1.0;
     b1_m1_1.lo = 0.0 ;   b1_m1_1.up    = 0.0  ;     b1_m1_1.l = 1.0;
     o1_m1_1.lo = 0.0 ;   o1_m1_1.up    = 0.0  ;     o1_m1_1.l = 1.0;
     p1_m1_1.lo = 0.0 ;   p1_m1_1.up    = 0.0  ;     p1_m1_1.l = 1.0;
     y2_m1_1.lo = 0.0 ;   y2_m1_1.up    = 0.0  ;     y2_m1_1.l = 1.0;
     s2_m1_1.lo = 0.0 ;   s2_m1_1.up    = 0.0  ;     s2_m1_1.l = 1.0;
     b2_m1_1.lo = 0.0 ;   b2_m1_1.up    = 0.0  ;     b2_m1_1.l = 1.0;
     o2_m1_1.lo = 0.0 ;   o2_m1_1.up    = 0.0  ;     o2_m1_1.l = 1.0;
     p2_m1_1.lo = 0.0 ;   p2_m1_1.up    = 0.0  ;     p2_m1_1.l = 1.0;
     y3_m1_1.lo = 0.0 ;   y3_m1_1.up    = 0.0  ;     y3_m1_1.l = 1.0;
     s3_m1_1.lo = 0.0 ;   s3_m1_1.up    = 0.0  ;     s3_m1_1.l = 1.0;
     b3_m1_1.lo = 0.0 ;   b3_m1_1.up    = 0.0  ;     b3_m1_1.l = 1.0;
     o3_m1_1.lo = 0.0 ;   o3_m1_1.up    = 0.0  ;     o3_m1_1.l = 1.0;
     p3_m1_1.lo = 0.0 ;   p3_m1_1.up    = 0.0  ;     p3_m1_1.l = 1.0;
     y4_m1_1.lo = 0.0 ;   y4_m1_1.up    = 0.0  ;     y4_m1_1.l = 1.0;
     s4_m1_1.lo = 0.0 ;   s4_m1_1.up    = 0.0  ;     s4_m1_1.l = 1.0;
     b4_m1_1.lo = 0.0 ;   b4_m1_1.up    = 0.0  ;     b4_m1_1.l = 1.0;
     o4_m1_1.lo = 0.0 ;   o4_m1_1.up    = 0.0  ;     o4_m1_1.l = 1.0;
     p4_m1_1.lo = 0.0 ;   p4_m1_1.up    = 0.0  ;     p4_m1_1.l = 1.0;
     y5_m1_1.lo = 0.0 ;   y5_m1_1.up    = 0.0  ;     y5_m1_1.l = 1.0;
     s5_m1_1.lo = 0.0 ;   s5_m1_1.up    = 0.0  ;     s5_m1_1.l = 1.0;
     b5_m1_1.lo = 0.0 ;   b5_m1_1.up    = 0.0  ;     b5_m1_1.l = 1.0;
     o5_m1_1.lo = 0.0 ;   o5_m1_1.up    = 0.0  ;     o5_m1_1.l = 1.0;
     p5_m1_1.lo = 0.0 ;   p5_m1_1.up    = 0.0  ;     p5_m1_1.l = 1.0;
     y6_m1_1.lo = 0.0 ;   y6_m1_1.up    = 0.0  ;     y6_m1_1.l = 1.0;
     s6_m1_1.lo = 0.0 ;   s6_m1_1.up    = 0.0  ;     s6_m1_1.l = 1.0;
     b6_m1_1.lo = 0.0 ;   b6_m1_1.up    = 0.0  ;     b6_m1_1.l = 1.0;
     o6_m1_1.lo = 0.0 ;   o6_m1_1.up    = 0.0  ;     o6_m1_1.l = 1.0;
     p6_m1_1.lo = 0.0 ;   p6_m1_1.up    = 0.0  ;     p6_m1_1.l = 1.0;
     y7_m1_1.lo = 0.0 ;   y7_m1_1.up    = 0.0  ;     y7_m1_1.l = 1.0;
     s7_m1_1.lo = 0.0 ;   s7_m1_1.up    = 0.0  ;     s7_m1_1.l = 1.0;
     b7_m1_1.lo = 0.0 ;   b7_m1_1.up    = 0.0  ;     b7_m1_1.l = 1.0;
     o7_m1_1.lo = 0.0 ;   o7_m1_1.up    = 0.0  ;     o7_m1_1.l = 1.0;
     p7_m1_1.lo = 0.0 ;   p7_m1_1.up    = 0.0  ;     p7_m1_1.l = 1.0;
     y8_m1_1.lo = 0.0 ;   y8_m1_1.up    = 0.0  ;     y8_m1_1.l = 1.0;
     s8_m1_1.lo = 0.0 ;   s8_m1_1.up    = 0.0  ;     s8_m1_1.l = 1.0;
     b8_m1_1.lo = 0.0 ;   b8_m1_1.up    = 0.0  ;     b8_m1_1.l = 1.0;
     o8_m1_1.lo = 0.0 ;   o8_m1_1.up    = 0.0  ;     o8_m1_1.l = 1.0;
     p8_m1_1.lo = 0.0 ;   p8_m1_1.up    = 0.0  ;     p8_m1_1.l = 1.0;
     y9_m1_1.lo = 0.0 ;   y9_m1_1.up    = 0.0  ;     y9_m1_1.l = 1.0;
     s9_m1_1.lo = 0.0 ;   s9_m1_1.up    = 0.0  ;     s9_m1_1.l = 1.0;
     b9_m1_1.lo = 0.0 ;   b9_m1_1.up    = 0.0  ;     b9_m1_1.l = 1.0;
     o9_m1_1.lo = 0.0 ;   o9_m1_1.up    = 0.0  ;     o9_m1_1.l = 1.0;
     p9_m1_1.lo = 0.0 ;   p9_m1_1.up    = 0.0  ;     p9_m1_1.l = 1.0;
    y10_m1_1.lo = 0.0 ;  y10_m1_1.up    = 0.0  ;    y10_m1_1.l = 1.0;
    s10_m1_1.lo = 0.0 ;  s10_m1_1.up    = 0.0  ;    s10_m1_1.l = 1.0;
    b10_m1_1.lo = 0.0 ;  b10_m1_1.up    = 0.0  ;    b10_m1_1.l = 1.0;
    o10_m1_1.lo = 0.0 ;  o10_m1_1.up    = 0.0  ;    o10_m1_1.l = 1.0;
    p10_m1_1.lo = 0.0 ;  p10_m1_1.up    = 0.0  ;    p10_m1_1.l = 1.0;
    y11_m1_1.lo = 0.0 ;  y11_m1_1.up    = 0.0  ;    y11_m1_1.l = 1.0;
    s11_m1_1.lo = 0.0 ;  s11_m1_1.up    = 0.0  ;    s11_m1_1.l = 1.0;
    b11_m1_1.lo = 0.0 ;  b11_m1_1.up    = 0.0  ;    b11_m1_1.l = 1.0;
    o11_m1_1.lo = 0.0 ;  o11_m1_1.up    = 0.0  ;    o11_m1_1.l = 1.0;
    p11_m1_1.lo = 0.0 ;  p11_m1_1.up    = 0.0  ;    p11_m1_1.l = 1.0;
    y12_m1_1.lo = 0.0 ;  y12_m1_1.up    = 0.0  ;    y12_m1_1.l = 1.0;
    s12_m1_1.lo = 0.0 ;  s12_m1_1.up    = 0.0  ;    s12_m1_1.l = 1.0;
    b12_m1_1.lo = 0.0 ;  b12_m1_1.up    = 0.0  ;    b12_m1_1.l = 1.0;
    o12_m1_1.lo = 0.0 ;  o12_m1_1.up    = 0.0  ;    o12_m1_1.l = 1.0;
    p12_m1_1.lo = 0.0 ;  p12_m1_1.up    = 0.0  ;    p12_m1_1.l = 1.0;
    y13_m1_1.lo = 0.0 ;  y13_m1_1.up    = 0.0  ;    y13_m1_1.l = 1.0;
    s13_m1_1.lo = 0.0 ;  s13_m1_1.up    = 0.0  ;    s13_m1_1.l = 1.0;
    b13_m1_1.lo = 0.0 ;  b13_m1_1.up    = 0.0  ;    b13_m1_1.l = 1.0;
    o13_m1_1.lo = 0.0 ;  o13_m1_1.up    = 0.0  ;    o13_m1_1.l = 1.0;
    p13_m1_1.lo = 0.0 ;  p13_m1_1.up    = 0.0  ;    p13_m1_1.l = 1.0;
    y14_m1_1.lo = 0.0 ;  y14_m1_1.up    = 0.0  ;    y14_m1_1.l = 1.0;
    s14_m1_1.lo = 0.0 ;  s14_m1_1.up    = 0.0  ;    s14_m1_1.l = 1.0;
    b14_m1_1.lo = 0.0 ;  b14_m1_1.up    = 0.0  ;    b14_m1_1.l = 1.0;
    o14_m1_1.lo = 0.0 ;  o14_m1_1.up    = 0.0  ;    o14_m1_1.l = 1.0;
    p14_m1_1.lo = 0.0 ;  p14_m1_1.up    = 0.0  ;    p14_m1_1.l = 1.0;
    y15_m1_1.lo = 0.0 ;  y15_m1_1.up    = 0.0  ;    y15_m1_1.l = 1.0;
    s15_m1_1.lo = 0.0 ;  s15_m1_1.up    = 0.0  ;    s15_m1_1.l = 1.0;
    b15_m1_1.lo = 0.0 ;  b15_m1_1.up    = 0.0  ;    b15_m1_1.l = 1.0;
    o15_m1_1.lo = 0.0 ;  o15_m1_1.up    = 0.0  ;    o15_m1_1.l = 1.0;
    p15_m1_1.lo = 0.0 ;  p15_m1_1.up    = 0.0  ;    p15_m1_1.l = 1.0;
        y0_1.lo = 0.0 ;      y0_1.up    = 0.0  ;        y0_1.l = 1.0;
        r0_1.lo = 0.0 ;      r0_1.up    = 2.0  ;        r0_1.l = 1.0;
        s0_1.lo = 0.0 ;      s0_1.up    = 10.0 ;        s0_1.l = 1.0;
        p0_1.lo = 0.0 ;      p0_1.up    = 0.0  ;        p0_1.l = 1.0;
     ym1_0_1.lo = 0.0 ;   ym1_0_1.up    = 0.0  ;     ym1_0_1.l = 1.0;
     sm1_0_1.lo = 0.0 ;   sm1_0_1.up    = 0.0  ;     sm1_0_1.l = 1.0;
     bm1_0_1.lo = 0.0 ;   bm1_0_1.up    = 0.0  ;     bm1_0_1.l = 1.0;
     om1_0_1.lo = 0.0 ;   om1_0_1.up    = 0.0  ;     om1_0_1.l = 1.0;
     pm1_0_1.lo = 0.0 ;   pm1_0_1.up    = 0.0  ;     pm1_0_1.l = 1.0;
      y0_0_1.lo = 0.0 ;    y0_0_1.up    = 0.0  ;      y0_0_1.l = 1.0;
      s0_0_1.lo = 0.0 ;    s0_0_1.up    = 0.0  ;      s0_0_1.l = 1.0;
      b0_0_1.lo = 0.0 ;    b0_0_1.up    = 0.0  ;      b0_0_1.l = 1.0;
      o0_0_1.lo = 0.0 ;    o0_0_1.up    = 0.0  ;      o0_0_1.l = 1.0;
      p0_0_1.lo = 0.0 ;    p0_0_1.up    = 0.0  ;      p0_0_1.l = 1.0;
      y1_0_1.lo = 0.0 ;    y1_0_1.up    = 0.0  ;      y1_0_1.l = 1.0;
      s1_0_1.lo = 0.0 ;    s1_0_1.up    = 0.0  ;      s1_0_1.l = 1.0;
      b1_0_1.lo = 0.0 ;    b1_0_1.up    = 0.0  ;      b1_0_1.l = 1.0;
      o1_0_1.lo = 0.0 ;    o1_0_1.up    = 0.0  ;      o1_0_1.l = 1.0;
      p1_0_1.lo = 0.0 ;    p1_0_1.up    = 0.0  ;      p1_0_1.l = 1.0;
      y2_0_1.lo = 0.0 ;    y2_0_1.up    = 0.0  ;      y2_0_1.l = 1.0;
      s2_0_1.lo = 0.0 ;    s2_0_1.up    = 0.0  ;      s2_0_1.l = 1.0;
      b2_0_1.lo = 0.0 ;    b2_0_1.up    = 0.0  ;      b2_0_1.l = 1.0;
      o2_0_1.lo = 0.0 ;    o2_0_1.up    = 0.0  ;      o2_0_1.l = 1.0;
      p2_0_1.lo = 0.0 ;    p2_0_1.up    = 0.0  ;      p2_0_1.l = 1.0;
      y3_0_1.lo = 0.0 ;    y3_0_1.up    = 0.0  ;      y3_0_1.l = 1.0;
      s3_0_1.lo = 0.0 ;    s3_0_1.up    = 0.0  ;      s3_0_1.l = 1.0;
      b3_0_1.lo = 0.0 ;    b3_0_1.up    = 0.0  ;      b3_0_1.l = 1.0;
      o3_0_1.lo = 0.0 ;    o3_0_1.up    = 0.0  ;      o3_0_1.l = 1.0;
      p3_0_1.lo = 0.0 ;    p3_0_1.up    = 0.0  ;      p3_0_1.l = 1.0;
      y4_0_1.lo = 0.0 ;    y4_0_1.up    = 0.0  ;      y4_0_1.l = 1.0;
      s4_0_1.lo = 0.0 ;    s4_0_1.up    = 0.0  ;      s4_0_1.l = 1.0;
      b4_0_1.lo = 0.0 ;    b4_0_1.up    = 0.0  ;      b4_0_1.l = 1.0;
      o4_0_1.lo = 0.0 ;    o4_0_1.up    = 0.0  ;      o4_0_1.l = 1.0;
      p4_0_1.lo = 0.0 ;    p4_0_1.up    = 0.0  ;      p4_0_1.l = 1.0;
      y5_0_1.lo = 0.0 ;    y5_0_1.up    = 0.0  ;      y5_0_1.l = 1.0;
      s5_0_1.lo = 0.0 ;    s5_0_1.up    = 0.0  ;      s5_0_1.l = 1.0;
      b5_0_1.lo = 0.0 ;    b5_0_1.up    = 0.0  ;      b5_0_1.l = 1.0;
      o5_0_1.lo = 0.0 ;    o5_0_1.up    = 0.0  ;      o5_0_1.l = 1.0;
      p5_0_1.lo = 0.0 ;    p5_0_1.up    = 0.0  ;      p5_0_1.l = 1.0;
      y6_0_1.lo = 0.0 ;    y6_0_1.up    = 0.0  ;      y6_0_1.l = 1.0;
      s6_0_1.lo = 0.0 ;    s6_0_1.up    = 0.0  ;      s6_0_1.l = 1.0;
      b6_0_1.lo = 0.0 ;    b6_0_1.up    = 0.0  ;      b6_0_1.l = 1.0;
      o6_0_1.lo = 0.0 ;    o6_0_1.up    = 0.0  ;      o6_0_1.l = 1.0;
      p6_0_1.lo = 0.0 ;    p6_0_1.up    = 0.0  ;      p6_0_1.l = 1.0;
      y7_0_1.lo = 0.0 ;    y7_0_1.up    = 0.0  ;      y7_0_1.l = 1.0;
      s7_0_1.lo = 0.0 ;    s7_0_1.up    = 0.0  ;      s7_0_1.l = 1.0;
      b7_0_1.lo = 0.0 ;    b7_0_1.up    = 0.0  ;      b7_0_1.l = 1.0;
      o7_0_1.lo = 0.0 ;    o7_0_1.up    = 0.0  ;      o7_0_1.l = 1.0;
      p7_0_1.lo = 0.0 ;    p7_0_1.up    = 0.0  ;      p7_0_1.l = 1.0;
      y8_0_1.lo = 0.0 ;    y8_0_1.up    = 0.0  ;      y8_0_1.l = 1.0;
      s8_0_1.lo = 0.0 ;    s8_0_1.up    = 0.0  ;      s8_0_1.l = 1.0;
      b8_0_1.lo = 0.0 ;    b8_0_1.up    = 0.0  ;      b8_0_1.l = 1.0;
      o8_0_1.lo = 0.0 ;    o8_0_1.up    = 0.0  ;      o8_0_1.l = 1.0;
      p8_0_1.lo = 0.0 ;    p8_0_1.up    = 0.0  ;      p8_0_1.l = 1.0;
      y9_0_1.lo = 0.0 ;    y9_0_1.up    = 0.0  ;      y9_0_1.l = 1.0;
      s9_0_1.lo = 0.0 ;    s9_0_1.up    = 0.0  ;      s9_0_1.l = 1.0;
      b9_0_1.lo = 0.0 ;    b9_0_1.up    = 0.0  ;      b9_0_1.l = 1.0;
      o9_0_1.lo = 0.0 ;    o9_0_1.up    = 0.0  ;      o9_0_1.l = 1.0;
      p9_0_1.lo = 0.0 ;    p9_0_1.up    = 0.0  ;      p9_0_1.l = 1.0;
     y10_0_1.lo = 0.0 ;   y10_0_1.up    = 0.0  ;     y10_0_1.l = 1.0;
     s10_0_1.lo = 0.0 ;   s10_0_1.up    = 0.0  ;     s10_0_1.l = 1.0;
     b10_0_1.lo = 0.0 ;   b10_0_1.up    = 0.0  ;     b10_0_1.l = 1.0;
     o10_0_1.lo = 0.0 ;   o10_0_1.up    = 0.0  ;     o10_0_1.l = 1.0;
     p10_0_1.lo = 0.0 ;   p10_0_1.up    = 0.0  ;     p10_0_1.l = 1.0;
     y11_0_1.lo = 0.0 ;   y11_0_1.up    = 0.0  ;     y11_0_1.l = 1.0;
     s11_0_1.lo = 0.0 ;   s11_0_1.up    = 0.0  ;     s11_0_1.l = 1.0;
     b11_0_1.lo = 0.0 ;   b11_0_1.up    = 0.0  ;     b11_0_1.l = 1.0;
     o11_0_1.lo = 0.0 ;   o11_0_1.up    = 0.0  ;     o11_0_1.l = 1.0;
     p11_0_1.lo = 0.0 ;   p11_0_1.up    = 0.0  ;     p11_0_1.l = 1.0;
     y12_0_1.lo = 0.0 ;   y12_0_1.up    = 0.0  ;     y12_0_1.l = 1.0;
     s12_0_1.lo = 0.0 ;   s12_0_1.up    = 0.0  ;     s12_0_1.l = 1.0;
     b12_0_1.lo = 0.0 ;   b12_0_1.up    = 0.0  ;     b12_0_1.l = 1.0;
     o12_0_1.lo = 0.0 ;   o12_0_1.up    = 0.0  ;     o12_0_1.l = 1.0;
     p12_0_1.lo = 0.0 ;   p12_0_1.up    = 0.0  ;     p12_0_1.l = 1.0;
     y13_0_1.lo = 0.0 ;   y13_0_1.up    = 0.0  ;     y13_0_1.l = 1.0;
     s13_0_1.lo = 0.0 ;   s13_0_1.up    = 0.0  ;     s13_0_1.l = 1.0;
     b13_0_1.lo = 0.0 ;   b13_0_1.up    = 0.0  ;     b13_0_1.l = 1.0;
     o13_0_1.lo = 0.0 ;   o13_0_1.up    = 0.0  ;     o13_0_1.l = 1.0;
     p13_0_1.lo = 0.0 ;   p13_0_1.up    = 0.0  ;     p13_0_1.l = 1.0;
     y14_0_1.lo = 0.0 ;   y14_0_1.up    = 0.0  ;     y14_0_1.l = 1.0;
     s14_0_1.lo = 0.0 ;   s14_0_1.up    = 0.0  ;     s14_0_1.l = 1.0;
     b14_0_1.lo = 0.0 ;   b14_0_1.up    = 0.0  ;     b14_0_1.l = 1.0;
     o14_0_1.lo = 0.0 ;   o14_0_1.up    = 0.0  ;     o14_0_1.l = 1.0;
     p14_0_1.lo = 0.0 ;   p14_0_1.up    = 0.0  ;     p14_0_1.l = 1.0;
     y15_0_1.lo = 0.0 ;   y15_0_1.up    = 0.0  ;     y15_0_1.l = 1.0;
     s15_0_1.lo = 0.0 ;   s15_0_1.up    = 0.0  ;     s15_0_1.l = 1.0;
     b15_0_1.lo = 0.0 ;   b15_0_1.up    = 0.0  ;     b15_0_1.l = 1.0;
     o15_0_1.lo = 0.0 ;   o15_0_1.up    = 0.0  ;     o15_0_1.l = 1.0;
     p15_0_1.lo = 0.0 ;   p15_0_1.up    = 0.0  ;     p15_0_1.l = 1.0;
        y1_1.lo = 0.0 ;      y1_1.up    = 0.0  ;        y1_1.l = 1.0;
        r1_1.lo = 0.0 ;      r1_1.up    = 0.0  ;        r1_1.l = 1.0;
        s1_1.lo = 0.0 ;      s1_1.up    = 0.0  ;        s1_1.l = 1.0;
        p1_1.lo = 0.0 ;      p1_1.up    = 0.0  ;        p1_1.l = 1.0;
     ym1_1_1.lo = 0.0 ;   ym1_1_1.up    = 0.0  ;     ym1_1_1.l = 1.0;
     sm1_1_1.lo = 0.0 ;   sm1_1_1.up    = 0.0  ;     sm1_1_1.l = 1.0;
     bm1_1_1.lo = 0.0 ;   bm1_1_1.up    = 0.0  ;     bm1_1_1.l = 1.0;
     om1_1_1.lo = 0.0 ;   om1_1_1.up    = 0.0  ;     om1_1_1.l = 1.0;
     pm1_1_1.lo = 0.0 ;   pm1_1_1.up    = 0.0  ;     pm1_1_1.l = 1.0;
      y0_1_1.lo = 0.0 ;    y0_1_1.up    = 0.0  ;      y0_1_1.l = 1.0;
      s0_1_1.lo = 0.0 ;    s0_1_1.up    = 0.0  ;      s0_1_1.l = 1.0;
      b0_1_1.lo = 0.0 ;    b0_1_1.up    = 0.0  ;      b0_1_1.l = 1.0;
      o0_1_1.lo = 0.0 ;    o0_1_1.up    = 0.0  ;      o0_1_1.l = 1.0;
      p0_1_1.lo = 0.0 ;    p0_1_1.up    = 0.0  ;      p0_1_1.l = 1.0;
      y1_1_1.lo = 0.0 ;    y1_1_1.up    = 0.0  ;      y1_1_1.l = 1.0;
      s1_1_1.lo = 0.0 ;    s1_1_1.up    = 0.0  ;      s1_1_1.l = 1.0;
      b1_1_1.lo = 0.0 ;    b1_1_1.up    = 0.0  ;      b1_1_1.l = 1.0;
      o1_1_1.lo = 0.0 ;    o1_1_1.up    = 0.0  ;      o1_1_1.l = 1.0;
      p1_1_1.lo = 0.0 ;    p1_1_1.up    = 0.0  ;      p1_1_1.l = 1.0;
      y2_1_1.lo = 0.0 ;    y2_1_1.up    = 0.0  ;      y2_1_1.l = 1.0;
      s2_1_1.lo = 0.0 ;    s2_1_1.up    = 0.0  ;      s2_1_1.l = 1.0;
      b2_1_1.lo = 0.0 ;    b2_1_1.up    = 0.0  ;      b2_1_1.l = 1.0;
      o2_1_1.lo = 0.0 ;    o2_1_1.up    = 0.0  ;      o2_1_1.l = 1.0;
      p2_1_1.lo = 0.0 ;    p2_1_1.up    = 0.0  ;      p2_1_1.l = 1.0;
      y3_1_1.lo = 0.0 ;    y3_1_1.up    = 0.0  ;      y3_1_1.l = 1.0;
      s3_1_1.lo = 0.0 ;    s3_1_1.up    = 0.0  ;      s3_1_1.l = 1.0;
      b3_1_1.lo = 0.0 ;    b3_1_1.up    = 0.0  ;      b3_1_1.l = 1.0;
      o3_1_1.lo = 0.0 ;    o3_1_1.up    = 0.0  ;      o3_1_1.l = 1.0;
      p3_1_1.lo = 0.0 ;    p3_1_1.up    = 0.0  ;      p3_1_1.l = 1.0;
      y4_1_1.lo = 0.0 ;    y4_1_1.up    = 0.0  ;      y4_1_1.l = 1.0;
      s4_1_1.lo = 0.0 ;    s4_1_1.up    = 0.0  ;      s4_1_1.l = 1.0;
      b4_1_1.lo = 0.0 ;    b4_1_1.up    = 0.0  ;      b4_1_1.l = 1.0;
      o4_1_1.lo = 0.0 ;    o4_1_1.up    = 0.0  ;      o4_1_1.l = 1.0;
      p4_1_1.lo = 0.0 ;    p4_1_1.up    = 0.0  ;      p4_1_1.l = 1.0;
      y5_1_1.lo = 0.0 ;    y5_1_1.up    = 0.0  ;      y5_1_1.l = 1.0;
      s5_1_1.lo = 0.0 ;    s5_1_1.up    = 0.0  ;      s5_1_1.l = 1.0;
      b5_1_1.lo = 0.0 ;    b5_1_1.up    = 0.0  ;      b5_1_1.l = 1.0;
      o5_1_1.lo = 0.0 ;    o5_1_1.up    = 0.0  ;      o5_1_1.l = 1.0;
      p5_1_1.lo = 0.0 ;    p5_1_1.up    = 0.0  ;      p5_1_1.l = 1.0;
      y6_1_1.lo = 0.0 ;    y6_1_1.up    = 0.0  ;      y6_1_1.l = 1.0;
      s6_1_1.lo = 0.0 ;    s6_1_1.up    = 0.0  ;      s6_1_1.l = 1.0;
      b6_1_1.lo = 0.0 ;    b6_1_1.up    = 0.0  ;      b6_1_1.l = 1.0;
      o6_1_1.lo = 0.0 ;    o6_1_1.up    = 0.0  ;      o6_1_1.l = 1.0;
      p6_1_1.lo = 0.0 ;    p6_1_1.up    = 0.0  ;      p6_1_1.l = 1.0;
      y7_1_1.lo = 0.0 ;    y7_1_1.up    = 0.0  ;      y7_1_1.l = 1.0;
      s7_1_1.lo = 0.0 ;    s7_1_1.up    = 0.0  ;      s7_1_1.l = 1.0;
      b7_1_1.lo = 0.0 ;    b7_1_1.up    = 0.0  ;      b7_1_1.l = 1.0;
      o7_1_1.lo = 0.0 ;    o7_1_1.up    = 0.0  ;      o7_1_1.l = 1.0;
      p7_1_1.lo = 0.0 ;    p7_1_1.up    = 0.0  ;      p7_1_1.l = 1.0;
      y8_1_1.lo = 0.0 ;    y8_1_1.up    = 0.0  ;      y8_1_1.l = 1.0;
      s8_1_1.lo = 0.0 ;    s8_1_1.up    = 0.0  ;      s8_1_1.l = 1.0;
      b8_1_1.lo = 0.0 ;    b8_1_1.up    = 0.0  ;      b8_1_1.l = 1.0;
      o8_1_1.lo = 0.0 ;    o8_1_1.up    = 0.0  ;      o8_1_1.l = 1.0;
      p8_1_1.lo = 0.0 ;    p8_1_1.up    = 0.0  ;      p8_1_1.l = 1.0;
      y9_1_1.lo = 0.0 ;    y9_1_1.up    = 0.0  ;      y9_1_1.l = 1.0;
      s9_1_1.lo = 0.0 ;    s9_1_1.up    = 0.0  ;      s9_1_1.l = 1.0;
      b9_1_1.lo = 0.0 ;    b9_1_1.up    = 0.0  ;      b9_1_1.l = 1.0;
      o9_1_1.lo = 0.0 ;    o9_1_1.up    = 0.0  ;      o9_1_1.l = 1.0;
      p9_1_1.lo = 0.0 ;    p9_1_1.up    = 0.0  ;      p9_1_1.l = 1.0;
     y10_1_1.lo = 0.0 ;   y10_1_1.up    = 0.0  ;     y10_1_1.l = 1.0;
     s10_1_1.lo = 0.0 ;   s10_1_1.up    = 0.0  ;     s10_1_1.l = 1.0;
     b10_1_1.lo = 0.0 ;   b10_1_1.up    = 0.0  ;     b10_1_1.l = 1.0;
     o10_1_1.lo = 0.0 ;   o10_1_1.up    = 0.0  ;     o10_1_1.l = 1.0;
     p10_1_1.lo = 0.0 ;   p10_1_1.up    = 0.0  ;     p10_1_1.l = 1.0;
     y11_1_1.lo = 0.0 ;   y11_1_1.up    = 0.0  ;     y11_1_1.l = 1.0;
     s11_1_1.lo = 0.0 ;   s11_1_1.up    = 0.0  ;     s11_1_1.l = 1.0;
     b11_1_1.lo = 0.0 ;   b11_1_1.up    = 0.0  ;     b11_1_1.l = 1.0;
     o11_1_1.lo = 0.0 ;   o11_1_1.up    = 0.0  ;     o11_1_1.l = 1.0;
     p11_1_1.lo = 0.0 ;   p11_1_1.up    = 0.0  ;     p11_1_1.l = 1.0;
     y12_1_1.lo = 0.0 ;   y12_1_1.up    = 0.0  ;     y12_1_1.l = 1.0;
     s12_1_1.lo = 0.0 ;   s12_1_1.up    = 0.0  ;     s12_1_1.l = 1.0;
     b12_1_1.lo = 0.0 ;   b12_1_1.up    = 0.0  ;     b12_1_1.l = 1.0;
     o12_1_1.lo = 0.0 ;   o12_1_1.up    = 0.0  ;     o12_1_1.l = 1.0;
     p12_1_1.lo = 0.0 ;   p12_1_1.up    = 0.0  ;     p12_1_1.l = 1.0;
     y13_1_1.lo = 0.0 ;   y13_1_1.up    = 0.0  ;     y13_1_1.l = 1.0;
     s13_1_1.lo = 0.0 ;   s13_1_1.up    = 0.0  ;     s13_1_1.l = 1.0;
     b13_1_1.lo = 0.0 ;   b13_1_1.up    = 0.0  ;     b13_1_1.l = 1.0;
     o13_1_1.lo = 0.0 ;   o13_1_1.up    = 0.0  ;     o13_1_1.l = 1.0;
     p13_1_1.lo = 0.0 ;   p13_1_1.up    = 0.0  ;     p13_1_1.l = 1.0;
     y14_1_1.lo = 0.0 ;   y14_1_1.up    = 0.0  ;     y14_1_1.l = 1.0;
     s14_1_1.lo = 0.0 ;   s14_1_1.up    = 0.0  ;     s14_1_1.l = 1.0;
     b14_1_1.lo = 0.0 ;   b14_1_1.up    = 0.0  ;     b14_1_1.l = 1.0;
     o14_1_1.lo = 0.0 ;   o14_1_1.up    = 0.0  ;     o14_1_1.l = 1.0;
     p14_1_1.lo = 0.0 ;   p14_1_1.up    = 0.0  ;     p14_1_1.l = 1.0;
     y15_1_1.lo = 0.0 ;   y15_1_1.up    = 0.0  ;     y15_1_1.l = 1.0;
     s15_1_1.lo = 0.0 ;   s15_1_1.up    = 0.0  ;     s15_1_1.l = 1.0;
     b15_1_1.lo = 0.0 ;   b15_1_1.up    = 0.0  ;     b15_1_1.l = 1.0;
     o15_1_1.lo = 0.0 ;   o15_1_1.up    = 0.0  ;     o15_1_1.l = 1.0;
     p15_1_1.lo = 0.0 ;   p15_1_1.up    = 0.0  ;     p15_1_1.l = 1.0;
        y2_1.lo = 0.0 ;      y2_1.up    = 0.0  ;        y2_1.l = 1.0;
        r2_1.lo = 0.0 ;      r2_1.up    = 0.0  ;        r2_1.l = 1.0;
        s2_1.lo = 0.0 ;      s2_1.up    = 0.0  ;        s2_1.l = 1.0;
        p2_1.lo = 0.0 ;      p2_1.up    = 0.0  ;        p2_1.l = 1.0;
     ym1_2_1.lo = 0.0 ;   ym1_2_1.up    = 0.0  ;     ym1_2_1.l = 1.0;
     sm1_2_1.lo = 0.0 ;   sm1_2_1.up    = 0.0  ;     sm1_2_1.l = 1.0;
     bm1_2_1.lo = 0.0 ;   bm1_2_1.up    = 0.0  ;     bm1_2_1.l = 1.0;
     om1_2_1.lo = 0.0 ;   om1_2_1.up    = 0.0  ;     om1_2_1.l = 1.0;
     pm1_2_1.lo = 0.0 ;   pm1_2_1.up    = 0.0  ;     pm1_2_1.l = 1.0;
      y0_2_1.lo = 0.0 ;    y0_2_1.up    = 0.0  ;      y0_2_1.l = 1.0;
      s0_2_1.lo = 0.0 ;    s0_2_1.up    = 0.0  ;      s0_2_1.l = 1.0;
      b0_2_1.lo = 0.0 ;    b0_2_1.up    = 0.0  ;      b0_2_1.l = 1.0;
      o0_2_1.lo = 0.0 ;    o0_2_1.up    = 0.0  ;      o0_2_1.l = 1.0;
      p0_2_1.lo = 0.0 ;    p0_2_1.up    = 0.0  ;      p0_2_1.l = 1.0;
      y1_2_1.lo = 0.0 ;    y1_2_1.up    = 0.0  ;      y1_2_1.l = 1.0;
      s1_2_1.lo = 0.0 ;    s1_2_1.up    = 0.0  ;      s1_2_1.l = 1.0;
      b1_2_1.lo = 0.0 ;    b1_2_1.up    = 0.0  ;      b1_2_1.l = 1.0;
      o1_2_1.lo = 0.0 ;    o1_2_1.up    = 0.0  ;      o1_2_1.l = 1.0;
      p1_2_1.lo = 0.0 ;    p1_2_1.up    = 0.0  ;      p1_2_1.l = 1.0;
      y2_2_1.lo = 0.0 ;    y2_2_1.up    = 0.0  ;      y2_2_1.l = 1.0;
      s2_2_1.lo = 0.0 ;    s2_2_1.up    = 0.0  ;      s2_2_1.l = 1.0;
      b2_2_1.lo = 0.0 ;    b2_2_1.up    = 0.0  ;      b2_2_1.l = 1.0;
      o2_2_1.lo = 0.0 ;    o2_2_1.up    = 0.0  ;      o2_2_1.l = 1.0;
      p2_2_1.lo = 0.0 ;    p2_2_1.up    = 0.0  ;      p2_2_1.l = 1.0;
      y3_2_1.lo = 0.0 ;    y3_2_1.up    = 0.0  ;      y3_2_1.l = 1.0;
      s3_2_1.lo = 0.0 ;    s3_2_1.up    = 0.0  ;      s3_2_1.l = 1.0;
      b3_2_1.lo = 0.0 ;    b3_2_1.up    = 0.0  ;      b3_2_1.l = 1.0;
      o3_2_1.lo = 0.0 ;    o3_2_1.up    = 0.0  ;      o3_2_1.l = 1.0;
      p3_2_1.lo = 0.0 ;    p3_2_1.up    = 0.0  ;      p3_2_1.l = 1.0;
      y4_2_1.lo = 0.0 ;    y4_2_1.up    = 0.0  ;      y4_2_1.l = 1.0;
      s4_2_1.lo = 0.0 ;    s4_2_1.up    = 0.0  ;      s4_2_1.l = 1.0;
      b4_2_1.lo = 0.0 ;    b4_2_1.up    = 0.0  ;      b4_2_1.l = 1.0;
      o4_2_1.lo = 0.0 ;    o4_2_1.up    = 0.0  ;      o4_2_1.l = 1.0;
      p4_2_1.lo = 0.0 ;    p4_2_1.up    = 0.0  ;      p4_2_1.l = 1.0;
      y5_2_1.lo = 0.0 ;    y5_2_1.up    = 0.0  ;      y5_2_1.l = 1.0;
      s5_2_1.lo = 0.0 ;    s5_2_1.up    = 0.0  ;      s5_2_1.l = 1.0;
      b5_2_1.lo = 0.0 ;    b5_2_1.up    = 0.0  ;      b5_2_1.l = 1.0;
      o5_2_1.lo = 0.0 ;    o5_2_1.up    = 0.0  ;      o5_2_1.l = 1.0;
      p5_2_1.lo = 0.0 ;    p5_2_1.up    = 0.0  ;      p5_2_1.l = 1.0;
      y6_2_1.lo = 0.0 ;    y6_2_1.up    = 0.0  ;      y6_2_1.l = 1.0;
      s6_2_1.lo = 0.0 ;    s6_2_1.up    = 0.0  ;      s6_2_1.l = 1.0;
      b6_2_1.lo = 0.0 ;    b6_2_1.up    = 0.0  ;      b6_2_1.l = 1.0;
      o6_2_1.lo = 0.0 ;    o6_2_1.up    = 0.0  ;      o6_2_1.l = 1.0;
      p6_2_1.lo = 0.0 ;    p6_2_1.up    = 0.0  ;      p6_2_1.l = 1.0;
      y7_2_1.lo = 0.0 ;    y7_2_1.up    = 0.0  ;      y7_2_1.l = 1.0;
      s7_2_1.lo = 0.0 ;    s7_2_1.up    = 0.0  ;      s7_2_1.l = 1.0;
      b7_2_1.lo = 0.0 ;    b7_2_1.up    = 0.0  ;      b7_2_1.l = 1.0;
      o7_2_1.lo = 0.0 ;    o7_2_1.up    = 0.0  ;      o7_2_1.l = 1.0;
      p7_2_1.lo = 0.0 ;    p7_2_1.up    = 0.0  ;      p7_2_1.l = 1.0;
      y8_2_1.lo = 0.0 ;    y8_2_1.up    = 0.0  ;      y8_2_1.l = 1.0;
      s8_2_1.lo = 0.0 ;    s8_2_1.up    = 0.0  ;      s8_2_1.l = 1.0;
      b8_2_1.lo = 0.0 ;    b8_2_1.up    = 0.0  ;      b8_2_1.l = 1.0;
      o8_2_1.lo = 0.0 ;    o8_2_1.up    = 0.0  ;      o8_2_1.l = 1.0;
      p8_2_1.lo = 0.0 ;    p8_2_1.up    = 0.0  ;      p8_2_1.l = 1.0;
      y9_2_1.lo = 0.0 ;    y9_2_1.up    = 0.0  ;      y9_2_1.l = 1.0;
      s9_2_1.lo = 0.0 ;    s9_2_1.up    = 0.0  ;      s9_2_1.l = 1.0;
      b9_2_1.lo = 0.0 ;    b9_2_1.up    = 0.0  ;      b9_2_1.l = 1.0;
      o9_2_1.lo = 0.0 ;    o9_2_1.up    = 0.0  ;      o9_2_1.l = 1.0;
      p9_2_1.lo = 0.0 ;    p9_2_1.up    = 0.0  ;      p9_2_1.l = 1.0;
     y10_2_1.lo = 0.0 ;   y10_2_1.up    = 0.0  ;     y10_2_1.l = 1.0;
     s10_2_1.lo = 0.0 ;   s10_2_1.up    = 0.0  ;     s10_2_1.l = 1.0;
     b10_2_1.lo = 0.0 ;   b10_2_1.up    = 0.0  ;     b10_2_1.l = 1.0;
     o10_2_1.lo = 0.0 ;   o10_2_1.up    = 0.0  ;     o10_2_1.l = 1.0;
     p10_2_1.lo = 0.0 ;   p10_2_1.up    = 0.0  ;     p10_2_1.l = 1.0;
     y11_2_1.lo = 0.0 ;   y11_2_1.up    = 0.0  ;     y11_2_1.l = 1.0;
     s11_2_1.lo = 0.0 ;   s11_2_1.up    = 0.0  ;     s11_2_1.l = 1.0;
     b11_2_1.lo = 0.0 ;   b11_2_1.up    = 0.0  ;     b11_2_1.l = 1.0;
     o11_2_1.lo = 0.0 ;   o11_2_1.up    = 0.0  ;     o11_2_1.l = 1.0;
     p11_2_1.lo = 0.0 ;   p11_2_1.up    = 0.0  ;     p11_2_1.l = 1.0;
     y12_2_1.lo = 0.0 ;   y12_2_1.up    = 0.0  ;     y12_2_1.l = 1.0;
     s12_2_1.lo = 0.0 ;   s12_2_1.up    = 0.0  ;     s12_2_1.l = 1.0;
     b12_2_1.lo = 0.0 ;   b12_2_1.up    = 0.0  ;     b12_2_1.l = 1.0;
     o12_2_1.lo = 0.0 ;   o12_2_1.up    = 0.0  ;     o12_2_1.l = 1.0;
     p12_2_1.lo = 0.0 ;   p12_2_1.up    = 0.0  ;     p12_2_1.l = 1.0;
     y13_2_1.lo = 0.0 ;   y13_2_1.up    = 0.0  ;     y13_2_1.l = 1.0;
     s13_2_1.lo = 0.0 ;   s13_2_1.up    = 0.0  ;     s13_2_1.l = 1.0;
     b13_2_1.lo = 0.0 ;   b13_2_1.up    = 0.0  ;     b13_2_1.l = 1.0;
     o13_2_1.lo = 0.0 ;   o13_2_1.up    = 0.0  ;     o13_2_1.l = 1.0;
     p13_2_1.lo = 0.0 ;   p13_2_1.up    = 0.0  ;     p13_2_1.l = 1.0;
     y14_2_1.lo = 0.0 ;   y14_2_1.up    = 0.0  ;     y14_2_1.l = 1.0;
     s14_2_1.lo = 0.0 ;   s14_2_1.up    = 0.0  ;     s14_2_1.l = 1.0;
     b14_2_1.lo = 0.0 ;   b14_2_1.up    = 0.0  ;     b14_2_1.l = 1.0;
     o14_2_1.lo = 0.0 ;   o14_2_1.up    = 0.0  ;     o14_2_1.l = 1.0;
     p14_2_1.lo = 0.0 ;   p14_2_1.up    = 0.0  ;     p14_2_1.l = 1.0;
     y15_2_1.lo = 0.0 ;   y15_2_1.up    = 0.0  ;     y15_2_1.l = 1.0;
     s15_2_1.lo = 0.0 ;   s15_2_1.up    = 0.0  ;     s15_2_1.l = 1.0;
     b15_2_1.lo = 0.0 ;   b15_2_1.up    = 0.0  ;     b15_2_1.l = 1.0;
     o15_2_1.lo = 0.0 ;   o15_2_1.up    = 0.0  ;     o15_2_1.l = 1.0;
     p15_2_1.lo = 0.0 ;   p15_2_1.up    = 0.0  ;     p15_2_1.l = 1.0;
        y3_1.lo = 0.0 ;      y3_1.up    = 0.0  ;        y3_1.l = 1.0;
        r3_1.lo = 0.0 ;      r3_1.up    = 0.0  ;        r3_1.l = 1.0;
        s3_1.lo = 0.0 ;      s3_1.up    = 0.0  ;        s3_1.l = 1.0;
        p3_1.lo = 0.0 ;      p3_1.up    = 0.0  ;        p3_1.l = 1.0;
     ym1_3_1.lo = 0.0 ;   ym1_3_1.up    = 0.0  ;     ym1_3_1.l = 1.0;
     sm1_3_1.lo = 0.0 ;   sm1_3_1.up    = 0.0  ;     sm1_3_1.l = 1.0;
     bm1_3_1.lo = 0.0 ;   bm1_3_1.up    = 0.0  ;     bm1_3_1.l = 1.0;
     om1_3_1.lo = 0.0 ;   om1_3_1.up    = 0.0  ;     om1_3_1.l = 1.0;
     pm1_3_1.lo = 0.0 ;   pm1_3_1.up    = 0.0  ;     pm1_3_1.l = 1.0;
      y0_3_1.lo = 0.0 ;    y0_3_1.up    = 0.0  ;      y0_3_1.l = 1.0;
      s0_3_1.lo = 0.0 ;    s0_3_1.up    = 0.0  ;      s0_3_1.l = 1.0;
      b0_3_1.lo = 0.0 ;    b0_3_1.up    = 0.0  ;      b0_3_1.l = 1.0;
      o0_3_1.lo = 0.0 ;    o0_3_1.up    = 0.0  ;      o0_3_1.l = 1.0;
      p0_3_1.lo = 0.0 ;    p0_3_1.up    = 0.0  ;      p0_3_1.l = 1.0;
      y1_3_1.lo = 0.0 ;    y1_3_1.up    = 0.0  ;      y1_3_1.l = 1.0;
      s1_3_1.lo = 0.0 ;    s1_3_1.up    = 0.0  ;      s1_3_1.l = 1.0;
      b1_3_1.lo = 0.0 ;    b1_3_1.up    = 0.0  ;      b1_3_1.l = 1.0;
      o1_3_1.lo = 0.0 ;    o1_3_1.up    = 0.0  ;      o1_3_1.l = 1.0;
      p1_3_1.lo = 0.0 ;    p1_3_1.up    = 0.0  ;      p1_3_1.l = 1.0;
      y2_3_1.lo = 0.0 ;    y2_3_1.up    = 0.0  ;      y2_3_1.l = 1.0;
      s2_3_1.lo = 0.0 ;    s2_3_1.up    = 0.0  ;      s2_3_1.l = 1.0;
      b2_3_1.lo = 0.0 ;    b2_3_1.up    = 0.0  ;      b2_3_1.l = 1.0;
      o2_3_1.lo = 0.0 ;    o2_3_1.up    = 0.0  ;      o2_3_1.l = 1.0;
      p2_3_1.lo = 0.0 ;    p2_3_1.up    = 0.0  ;      p2_3_1.l = 1.0;
      y3_3_1.lo = 0.0 ;    y3_3_1.up    = 0.0  ;      y3_3_1.l = 1.0;
      s3_3_1.lo = 0.0 ;    s3_3_1.up    = 0.0  ;      s3_3_1.l = 1.0;
      b3_3_1.lo = 0.0 ;    b3_3_1.up    = 0.0  ;      b3_3_1.l = 1.0;
      o3_3_1.lo = 0.0 ;    o3_3_1.up    = 0.0  ;      o3_3_1.l = 1.0;
      p3_3_1.lo = 0.0 ;    p3_3_1.up    = 0.0  ;      p3_3_1.l = 1.0;
      y4_3_1.lo = 0.0 ;    y4_3_1.up    = 0.0  ;      y4_3_1.l = 1.0;
      s4_3_1.lo = 0.0 ;    s4_3_1.up    = 0.0  ;      s4_3_1.l = 1.0;
      b4_3_1.lo = 0.0 ;    b4_3_1.up    = 0.0  ;      b4_3_1.l = 1.0;
      o4_3_1.lo = 0.0 ;    o4_3_1.up    = 0.0  ;      o4_3_1.l = 1.0;
      p4_3_1.lo = 0.0 ;    p4_3_1.up    = 0.0  ;      p4_3_1.l = 1.0;
      y5_3_1.lo = 0.0 ;    y5_3_1.up    = 0.0  ;      y5_3_1.l = 1.0;
      s5_3_1.lo = 0.0 ;    s5_3_1.up    = 0.0  ;      s5_3_1.l = 1.0;
      b5_3_1.lo = 0.0 ;    b5_3_1.up    = 0.0  ;      b5_3_1.l = 1.0;
      o5_3_1.lo = 0.0 ;    o5_3_1.up    = 0.0  ;      o5_3_1.l = 1.0;
      p5_3_1.lo = 0.0 ;    p5_3_1.up    = 0.0  ;      p5_3_1.l = 1.0;
      y6_3_1.lo = 0.0 ;    y6_3_1.up    = 0.0  ;      y6_3_1.l = 1.0;
      s6_3_1.lo = 0.0 ;    s6_3_1.up    = 0.0  ;      s6_3_1.l = 1.0;
      b6_3_1.lo = 0.0 ;    b6_3_1.up    = 0.0  ;      b6_3_1.l = 1.0;
      o6_3_1.lo = 0.0 ;    o6_3_1.up    = 0.0  ;      o6_3_1.l = 1.0;
      p6_3_1.lo = 0.0 ;    p6_3_1.up    = 0.0  ;      p6_3_1.l = 1.0;
      y7_3_1.lo = 0.0 ;    y7_3_1.up    = 0.0  ;      y7_3_1.l = 1.0;
      s7_3_1.lo = 0.0 ;    s7_3_1.up    = 0.0  ;      s7_3_1.l = 1.0;
      b7_3_1.lo = 0.0 ;    b7_3_1.up    = 0.0  ;      b7_3_1.l = 1.0;
      o7_3_1.lo = 0.0 ;    o7_3_1.up    = 0.0  ;      o7_3_1.l = 1.0;
      p7_3_1.lo = 0.0 ;    p7_3_1.up    = 0.0  ;      p7_3_1.l = 1.0;
      y8_3_1.lo = 0.0 ;    y8_3_1.up    = 0.0  ;      y8_3_1.l = 1.0;
      s8_3_1.lo = 0.0 ;    s8_3_1.up    = 0.0  ;      s8_3_1.l = 1.0;
      b8_3_1.lo = 0.0 ;    b8_3_1.up    = 0.0  ;      b8_3_1.l = 1.0;
      o8_3_1.lo = 0.0 ;    o8_3_1.up    = 0.0  ;      o8_3_1.l = 1.0;
      p8_3_1.lo = 0.0 ;    p8_3_1.up    = 0.0  ;      p8_3_1.l = 1.0;
      y9_3_1.lo = 0.0 ;    y9_3_1.up    = 0.0  ;      y9_3_1.l = 1.0;
      s9_3_1.lo = 0.0 ;    s9_3_1.up    = 0.0  ;      s9_3_1.l = 1.0;
      b9_3_1.lo = 0.0 ;    b9_3_1.up    = 0.0  ;      b9_3_1.l = 1.0;
      o9_3_1.lo = 0.0 ;    o9_3_1.up    = 0.0  ;      o9_3_1.l = 1.0;
      p9_3_1.lo = 0.0 ;    p9_3_1.up    = 0.0  ;      p9_3_1.l = 1.0;
     y10_3_1.lo = 0.0 ;   y10_3_1.up    = 0.0  ;     y10_3_1.l = 1.0;
     s10_3_1.lo = 0.0 ;   s10_3_1.up    = 0.0  ;     s10_3_1.l = 1.0;
     b10_3_1.lo = 0.0 ;   b10_3_1.up    = 0.0  ;     b10_3_1.l = 1.0;
     o10_3_1.lo = 0.0 ;   o10_3_1.up    = 0.0  ;     o10_3_1.l = 1.0;
     p10_3_1.lo = 0.0 ;   p10_3_1.up    = 0.0  ;     p10_3_1.l = 1.0;
     y11_3_1.lo = 0.0 ;   y11_3_1.up    = 0.0  ;     y11_3_1.l = 1.0;
     s11_3_1.lo = 0.0 ;   s11_3_1.up    = 0.0  ;     s11_3_1.l = 1.0;
     b11_3_1.lo = 0.0 ;   b11_3_1.up    = 0.0  ;     b11_3_1.l = 1.0;
     o11_3_1.lo = 0.0 ;   o11_3_1.up    = 0.0  ;     o11_3_1.l = 1.0;
     p11_3_1.lo = 0.0 ;   p11_3_1.up    = 0.0  ;     p11_3_1.l = 1.0;
     y12_3_1.lo = 0.0 ;   y12_3_1.up    = 0.0  ;     y12_3_1.l = 1.0;
     s12_3_1.lo = 0.0 ;   s12_3_1.up    = 0.0  ;     s12_3_1.l = 1.0;
     b12_3_1.lo = 0.0 ;   b12_3_1.up    = 3.0  ;     b12_3_1.l = 1.0;
     o12_3_1.lo = 0.0 ;   o12_3_1.up    = 0.0  ;     o12_3_1.l = 1.0;
     p12_3_1.lo = 0.0 ;   p12_3_1.up    = 0.0  ;     p12_3_1.l = 1.0;
     y13_3_1.lo = 0.0 ;   y13_3_1.up    = 0.0  ;     y13_3_1.l = 1.0;
     s13_3_1.lo = 0.0 ;   s13_3_1.up    = 0.0  ;     s13_3_1.l = 1.0;
     b13_3_1.lo = 0.0 ;   b13_3_1.up    = 0.0  ;     b13_3_1.l = 1.0;
     o13_3_1.lo = 0.0 ;   o13_3_1.up    = 0.0  ;     o13_3_1.l = 1.0;
     p13_3_1.lo = 0.0 ;   p13_3_1.up    = 0.0  ;     p13_3_1.l = 1.0;
     y14_3_1.lo = 0.0 ;   y14_3_1.up    = 0.0  ;     y14_3_1.l = 1.0;
     s14_3_1.lo = 0.0 ;   s14_3_1.up    = 0.0  ;     s14_3_1.l = 1.0;
     b14_3_1.lo = 0.0 ;   b14_3_1.up    = 0.0  ;     b14_3_1.l = 1.0;
     o14_3_1.lo = 0.0 ;   o14_3_1.up    = 0.0  ;     o14_3_1.l = 1.0;
     p14_3_1.lo = 0.0 ;   p14_3_1.up    = 0.0  ;     p14_3_1.l = 1.0;
     y15_3_1.lo = 0.0 ;   y15_3_1.up    = 0.0  ;     y15_3_1.l = 1.0;
     s15_3_1.lo = 0.0 ;   s15_3_1.up    = 0.0  ;     s15_3_1.l = 1.0;
     b15_3_1.lo = 0.0 ;   b15_3_1.up    = 0.0  ;     b15_3_1.l = 1.0;
     o15_3_1.lo = 0.0 ;   o15_3_1.up    = 0.0  ;     o15_3_1.l = 1.0;
     p15_3_1.lo = 0.0 ;   p15_3_1.up    = 0.0  ;     p15_3_1.l = 1.0;
        y4_1.lo = 0.0 ;      y4_1.up    = 0.0  ;        y4_1.l = 1.0;
        r4_1.lo = 0.0 ;      r4_1.up    = 2.0  ;        r4_1.l = 1.0;
        s4_1.lo = 0.0 ;      s4_1.up    = 10.0 ;        s4_1.l = 1.0;
        p4_1.lo = 0.0 ;      p4_1.up    = 0.0  ;        p4_1.l = 1.0;
     ym1_4_1.lo = 0.0 ;   ym1_4_1.up    = 0.0  ;     ym1_4_1.l = 1.0;
     sm1_4_1.lo = 0.0 ;   sm1_4_1.up    = 0.0  ;     sm1_4_1.l = 1.0;
     bm1_4_1.lo = 0.0 ;   bm1_4_1.up    = 0.0  ;     bm1_4_1.l = 1.0;
     om1_4_1.lo = 0.0 ;   om1_4_1.up    = 0.0  ;     om1_4_1.l = 1.0;
     pm1_4_1.lo = 0.0 ;   pm1_4_1.up    = 0.0  ;     pm1_4_1.l = 1.0;
      y0_4_1.lo = 0.0 ;    y0_4_1.up    = 0.0  ;      y0_4_1.l = 1.0;
      s0_4_1.lo = 0.0 ;    s0_4_1.up    = 0.0  ;      s0_4_1.l = 1.0;
      b0_4_1.lo = 0.0 ;    b0_4_1.up    = 0.0  ;      b0_4_1.l = 1.0;
      o0_4_1.lo = 0.0 ;    o0_4_1.up    = 0.0  ;      o0_4_1.l = 1.0;
      p0_4_1.lo = 0.0 ;    p0_4_1.up    = 0.0  ;      p0_4_1.l = 1.0;
      y1_4_1.lo = 0.0 ;    y1_4_1.up    = 0.0  ;      y1_4_1.l = 1.0;
      s1_4_1.lo = 0.0 ;    s1_4_1.up    = 0.0  ;      s1_4_1.l = 1.0;
      b1_4_1.lo = 0.0 ;    b1_4_1.up    = 0.0  ;      b1_4_1.l = 1.0;
      o1_4_1.lo = 0.0 ;    o1_4_1.up    = 0.0  ;      o1_4_1.l = 1.0;
      p1_4_1.lo = 0.0 ;    p1_4_1.up    = 0.0  ;      p1_4_1.l = 1.0;
      y2_4_1.lo = 0.0 ;    y2_4_1.up    = 0.0  ;      y2_4_1.l = 1.0;
      s2_4_1.lo = 0.0 ;    s2_4_1.up    = 0.0  ;      s2_4_1.l = 1.0;
      b2_4_1.lo = 0.0 ;    b2_4_1.up    = 0.0  ;      b2_4_1.l = 1.0;
      o2_4_1.lo = 0.0 ;    o2_4_1.up    = 0.0  ;      o2_4_1.l = 1.0;
      p2_4_1.lo = 0.0 ;    p2_4_1.up    = 0.0  ;      p2_4_1.l = 1.0;
      y3_4_1.lo = 0.0 ;    y3_4_1.up    = 0.0  ;      y3_4_1.l = 1.0;
      s3_4_1.lo = 0.0 ;    s3_4_1.up    = 0.0  ;      s3_4_1.l = 1.0;
      b3_4_1.lo = 0.0 ;    b3_4_1.up    = 0.0  ;      b3_4_1.l = 1.0;
      o3_4_1.lo = 0.0 ;    o3_4_1.up    = 0.0  ;      o3_4_1.l = 1.0;
      p3_4_1.lo = 0.0 ;    p3_4_1.up    = 0.0  ;      p3_4_1.l = 1.0;
      y4_4_1.lo = 0.0 ;    y4_4_1.up    = 0.0  ;      y4_4_1.l = 1.0;
      s4_4_1.lo = 0.0 ;    s4_4_1.up    = 0.0  ;      s4_4_1.l = 1.0;
      b4_4_1.lo = 0.0 ;    b4_4_1.up    = 0.0  ;      b4_4_1.l = 1.0;
      o4_4_1.lo = 0.0 ;    o4_4_1.up    = 0.0  ;      o4_4_1.l = 1.0;
      p4_4_1.lo = 0.0 ;    p4_4_1.up    = 0.0  ;      p4_4_1.l = 1.0;
      y5_4_1.lo = 0.0 ;    y5_4_1.up    = 0.0  ;      y5_4_1.l = 1.0;
      s5_4_1.lo = 0.0 ;    s5_4_1.up    = 0.0  ;      s5_4_1.l = 1.0;
      b5_4_1.lo = 0.0 ;    b5_4_1.up    = 0.0  ;      b5_4_1.l = 1.0;
      o5_4_1.lo = 0.0 ;    o5_4_1.up    = 0.0  ;      o5_4_1.l = 1.0;
      p5_4_1.lo = 0.0 ;    p5_4_1.up    = 0.0  ;      p5_4_1.l = 1.0;
      y6_4_1.lo = 0.0 ;    y6_4_1.up    = 0.0  ;      y6_4_1.l = 1.0;
      s6_4_1.lo = 0.0 ;    s6_4_1.up    = 0.0  ;      s6_4_1.l = 1.0;
      b6_4_1.lo = 0.0 ;    b6_4_1.up    = 0.0  ;      b6_4_1.l = 1.0;
      o6_4_1.lo = 0.0 ;    o6_4_1.up    = 0.0  ;      o6_4_1.l = 1.0;
      p6_4_1.lo = 0.0 ;    p6_4_1.up    = 0.0  ;      p6_4_1.l = 1.0;
      y7_4_1.lo = 0.0 ;    y7_4_1.up    = 0.0  ;      y7_4_1.l = 1.0;
      s7_4_1.lo = 0.0 ;    s7_4_1.up    = 0.0  ;      s7_4_1.l = 1.0;
      b7_4_1.lo = 0.0 ;    b7_4_1.up    = 0.0  ;      b7_4_1.l = 1.0;
      o7_4_1.lo = 0.0 ;    o7_4_1.up    = 0.0  ;      o7_4_1.l = 1.0;
      p7_4_1.lo = 0.0 ;    p7_4_1.up    = 0.0  ;      p7_4_1.l = 1.0;
      y8_4_1.lo = 0.0 ;    y8_4_1.up    = 0.0  ;      y8_4_1.l = 1.0;
      s8_4_1.lo = 0.0 ;    s8_4_1.up    = 0.0  ;      s8_4_1.l = 1.0;
      b8_4_1.lo = 0.0 ;    b8_4_1.up    = 0.0  ;      b8_4_1.l = 1.0;
      o8_4_1.lo = 0.0 ;    o8_4_1.up    = 0.0  ;      o8_4_1.l = 1.0;
      p8_4_1.lo = 0.0 ;    p8_4_1.up    = 0.0  ;      p8_4_1.l = 1.0;
      y9_4_1.lo = 0.0 ;    y9_4_1.up    = 0.0  ;      y9_4_1.l = 1.0;
      s9_4_1.lo = 0.0 ;    s9_4_1.up    = 0.0  ;      s9_4_1.l = 1.0;
      b9_4_1.lo = 0.0 ;    b9_4_1.up    = 0.0  ;      b9_4_1.l = 1.0;
      o9_4_1.lo = 0.0 ;    o9_4_1.up    = 0.0  ;      o9_4_1.l = 1.0;
      p9_4_1.lo = 0.0 ;    p9_4_1.up    = 0.0  ;      p9_4_1.l = 1.0;
     y10_4_1.lo = 0.0 ;   y10_4_1.up    = 0.0  ;     y10_4_1.l = 1.0;
     s10_4_1.lo = 0.0 ;   s10_4_1.up    = 0.0  ;     s10_4_1.l = 1.0;
     b10_4_1.lo = 0.0 ;   b10_4_1.up    = 0.0  ;     b10_4_1.l = 1.0;
     o10_4_1.lo = 0.0 ;   o10_4_1.up    = 0.0  ;     o10_4_1.l = 1.0;
     p10_4_1.lo = 0.0 ;   p10_4_1.up    = 0.0  ;     p10_4_1.l = 1.0;
     y11_4_1.lo = 0.0 ;   y11_4_1.up    = 0.0  ;     y11_4_1.l = 1.0;
     s11_4_1.lo = 0.0 ;   s11_4_1.up    = 0.0  ;     s11_4_1.l = 1.0;
     b11_4_1.lo = 0.0 ;   b11_4_1.up    = 0.0  ;     b11_4_1.l = 1.0;
     o11_4_1.lo = 0.0 ;   o11_4_1.up    = 0.0  ;     o11_4_1.l = 1.0;
     p11_4_1.lo = 0.0 ;   p11_4_1.up    = 0.0  ;     p11_4_1.l = 1.0;
     y12_4_1.lo = 0.0 ;   y12_4_1.up    = 0.0  ;     y12_4_1.l = 1.0;
     s12_4_1.lo = 0.0 ;   s12_4_1.up    = 0.0  ;     s12_4_1.l = 1.0;
     b12_4_1.lo = 0.0 ;   b12_4_1.up    = 0.0  ;     b12_4_1.l = 1.0;
     o12_4_1.lo = 0.0 ;   o12_4_1.up    = 0.0  ;     o12_4_1.l = 1.0;
     p12_4_1.lo = 0.0 ;   p12_4_1.up    = 0.0  ;     p12_4_1.l = 1.0;
     y13_4_1.lo = 0.0 ;   y13_4_1.up    = 0.0  ;     y13_4_1.l = 1.0;
     s13_4_1.lo = 0.0 ;   s13_4_1.up    = 0.0  ;     s13_4_1.l = 1.0;
     b13_4_1.lo = 0.0 ;   b13_4_1.up    = 0.0  ;     b13_4_1.l = 1.0;
     o13_4_1.lo = 0.0 ;   o13_4_1.up    = 0.0  ;     o13_4_1.l = 1.0;
     p13_4_1.lo = 0.0 ;   p13_4_1.up    = 0.0  ;     p13_4_1.l = 1.0;
     y14_4_1.lo = 0.0 ;   y14_4_1.up    = 0.0  ;     y14_4_1.l = 1.0;
     s14_4_1.lo = 0.0 ;   s14_4_1.up    = 0.0  ;     s14_4_1.l = 1.0;
     b14_4_1.lo = 0.0 ;   b14_4_1.up    = 0.0  ;     b14_4_1.l = 1.0;
     o14_4_1.lo = 0.0 ;   o14_4_1.up    = 0.0  ;     o14_4_1.l = 1.0;
     p14_4_1.lo = 0.0 ;   p14_4_1.up    = 0.0  ;     p14_4_1.l = 1.0;
     y15_4_1.lo = 0.0 ;   y15_4_1.up    = 0.0  ;     y15_4_1.l = 1.0;
     s15_4_1.lo = 0.0 ;   s15_4_1.up    = 0.0  ;     s15_4_1.l = 1.0;
     b15_4_1.lo = 0.0 ;   b15_4_1.up    = 0.0  ;     b15_4_1.l = 1.0;
     o15_4_1.lo = 0.0 ;   o15_4_1.up    = 0.0  ;     o15_4_1.l = 1.0;
     p15_4_1.lo = 0.0 ;   p15_4_1.up    = 0.0  ;     p15_4_1.l = 1.0;
        y5_1.lo = 0.0 ;      y5_1.up    = 0.0  ;        y5_1.l = 1.0;
        r5_1.lo = 0.0 ;      r5_1.up    = 0.0  ;        r5_1.l = 1.0;
        s5_1.lo = 0.0 ;      s5_1.up    = 0.0  ;        s5_1.l = 1.0;
        p5_1.lo = 0.0 ;      p5_1.up    = 0.0  ;        p5_1.l = 1.0;
     ym1_5_1.lo = 0.0 ;   ym1_5_1.up    = 0.0  ;     ym1_5_1.l = 1.0;
     sm1_5_1.lo = 0.0 ;   sm1_5_1.up    = 0.0  ;     sm1_5_1.l = 1.0;
     bm1_5_1.lo = 0.0 ;   bm1_5_1.up    = 0.0  ;     bm1_5_1.l = 1.0;
     om1_5_1.lo = 0.0 ;   om1_5_1.up    = 0.0  ;     om1_5_1.l = 1.0;
     pm1_5_1.lo = 0.0 ;   pm1_5_1.up    = 0.0  ;     pm1_5_1.l = 1.0;
      y0_5_1.lo = 0.0 ;    y0_5_1.up    = 0.0  ;      y0_5_1.l = 1.0;
      s0_5_1.lo = 0.0 ;    s0_5_1.up    = 0.0  ;      s0_5_1.l = 1.0;
      b0_5_1.lo = 0.0 ;    b0_5_1.up    = 0.0  ;      b0_5_1.l = 1.0;
      o0_5_1.lo = 0.0 ;    o0_5_1.up    = 0.0  ;      o0_5_1.l = 1.0;
      p0_5_1.lo = 0.0 ;    p0_5_1.up    = 0.0  ;      p0_5_1.l = 1.0;
      y1_5_1.lo = 0.0 ;    y1_5_1.up    = 0.0  ;      y1_5_1.l = 1.0;
      s1_5_1.lo = 0.0 ;    s1_5_1.up    = 0.0  ;      s1_5_1.l = 1.0;
      b1_5_1.lo = 0.0 ;    b1_5_1.up    = 0.0  ;      b1_5_1.l = 1.0;
      o1_5_1.lo = 0.0 ;    o1_5_1.up    = 0.0  ;      o1_5_1.l = 1.0;
      p1_5_1.lo = 0.0 ;    p1_5_1.up    = 0.0  ;      p1_5_1.l = 1.0;
      y2_5_1.lo = 0.0 ;    y2_5_1.up    = 0.0  ;      y2_5_1.l = 1.0;
      s2_5_1.lo = 0.0 ;    s2_5_1.up    = 0.0  ;      s2_5_1.l = 1.0;
      b2_5_1.lo = 0.0 ;    b2_5_1.up    = 0.0  ;      b2_5_1.l = 1.0;
      o2_5_1.lo = 0.0 ;    o2_5_1.up    = 0.0  ;      o2_5_1.l = 1.0;
      p2_5_1.lo = 0.0 ;    p2_5_1.up    = 0.0  ;      p2_5_1.l = 1.0;
      y3_5_1.lo = 0.0 ;    y3_5_1.up    = 1.0  ;      y3_5_1.l = 1.0;
      s3_5_1.lo = 0.0 ;    s3_5_1.up    = 10.0 ;      s3_5_1.l = 1.0;
      b3_5_1.lo = 0.0 ;    b3_5_1.up    = 0.0  ;      b3_5_1.l = 1.0;
      o3_5_1.lo = 0.0 ;    o3_5_1.up    = 0.0  ;      o3_5_1.l = 1.0;
      p3_5_1.lo = 0.0 ;    p3_5_1.up    = 1.0  ;      p3_5_1.l = 1.0;
      y4_5_1.lo = 0.0 ;    y4_5_1.up    = 0.0  ;      y4_5_1.l = 1.0;
      s4_5_1.lo = 0.0 ;    s4_5_1.up    = 0.0  ;      s4_5_1.l = 1.0;
      b4_5_1.lo = 0.0 ;    b4_5_1.up    = 0.0  ;      b4_5_1.l = 1.0;
      o4_5_1.lo = 0.0 ;    o4_5_1.up    = 0.0  ;      o4_5_1.l = 1.0;
      p4_5_1.lo = 0.0 ;    p4_5_1.up    = 0.0  ;      p4_5_1.l = 1.0;
      y5_5_1.lo = 0.0 ;    y5_5_1.up    = 0.0  ;      y5_5_1.l = 1.0;
      s5_5_1.lo = 0.0 ;    s5_5_1.up    = 0.0  ;      s5_5_1.l = 1.0;
      b5_5_1.lo = 0.0 ;    b5_5_1.up    = 0.0  ;      b5_5_1.l = 1.0;
      o5_5_1.lo = 0.0 ;    o5_5_1.up    = 0.0  ;      o5_5_1.l = 1.0;
      p5_5_1.lo = 0.0 ;    p5_5_1.up    = 0.0  ;      p5_5_1.l = 1.0;
      y6_5_1.lo = 0.0 ;    y6_5_1.up    = 0.0  ;      y6_5_1.l = 1.0;
      s6_5_1.lo = 0.0 ;    s6_5_1.up    = 0.0  ;      s6_5_1.l = 1.0;
      b6_5_1.lo = 0.0 ;    b6_5_1.up    = 0.0  ;      b6_5_1.l = 1.0;
      o6_5_1.lo = 0.0 ;    o6_5_1.up    = 0.0  ;      o6_5_1.l = 1.0;
      p6_5_1.lo = 0.0 ;    p6_5_1.up    = 0.0  ;      p6_5_1.l = 1.0;
      y7_5_1.lo = 0.0 ;    y7_5_1.up    = 0.0  ;      y7_5_1.l = 1.0;
      s7_5_1.lo = 0.0 ;    s7_5_1.up    = 0.0  ;      s7_5_1.l = 1.0;
      b7_5_1.lo = 0.0 ;    b7_5_1.up    = 0.0  ;      b7_5_1.l = 1.0;
      o7_5_1.lo = 0.0 ;    o7_5_1.up    = 0.0  ;      o7_5_1.l = 1.0;
      p7_5_1.lo = 0.0 ;    p7_5_1.up    = 0.0  ;      p7_5_1.l = 1.0;
      y8_5_1.lo = 0.0 ;    y8_5_1.up    = 0.0  ;      y8_5_1.l = 1.0;
      s8_5_1.lo = 0.0 ;    s8_5_1.up    = 0.0  ;      s8_5_1.l = 1.0;
      b8_5_1.lo = 0.0 ;    b8_5_1.up    = 0.0  ;      b8_5_1.l = 1.0;
      o8_5_1.lo = 0.0 ;    o8_5_1.up    = 0.0  ;      o8_5_1.l = 1.0;
      p8_5_1.lo = 0.0 ;    p8_5_1.up    = 0.0  ;      p8_5_1.l = 1.0;
      y9_5_1.lo = 0.0 ;    y9_5_1.up    = 0.0  ;      y9_5_1.l = 1.0;
      s9_5_1.lo = 0.0 ;    s9_5_1.up    = 0.0  ;      s9_5_1.l = 1.0;
      b9_5_1.lo = 0.0 ;    b9_5_1.up    = 0.0  ;      b9_5_1.l = 1.0;
      o9_5_1.lo = 0.0 ;    o9_5_1.up    = 0.0  ;      o9_5_1.l = 1.0;
      p9_5_1.lo = 0.0 ;    p9_5_1.up    = 0.0  ;      p9_5_1.l = 1.0;
     y10_5_1.lo = 0.0 ;   y10_5_1.up    = 0.0  ;     y10_5_1.l = 1.0;
     s10_5_1.lo = 0.0 ;   s10_5_1.up    = 0.0  ;     s10_5_1.l = 1.0;
     b10_5_1.lo = 0.0 ;   b10_5_1.up    = 0.0  ;     b10_5_1.l = 1.0;
     o10_5_1.lo = 0.0 ;   o10_5_1.up    = 0.0  ;     o10_5_1.l = 1.0;
     p10_5_1.lo = 0.0 ;   p10_5_1.up    = 0.0  ;     p10_5_1.l = 1.0;
     y11_5_1.lo = 0.0 ;   y11_5_1.up    = 0.0  ;     y11_5_1.l = 1.0;
     s11_5_1.lo = 0.0 ;   s11_5_1.up    = 0.0  ;     s11_5_1.l = 1.0;
     b11_5_1.lo = 0.0 ;   b11_5_1.up    = 0.0  ;     b11_5_1.l = 1.0;
     o11_5_1.lo = 0.0 ;   o11_5_1.up    = 0.0  ;     o11_5_1.l = 1.0;
     p11_5_1.lo = 0.0 ;   p11_5_1.up    = 0.0  ;     p11_5_1.l = 1.0;
     y12_5_1.lo = 0.0 ;   y12_5_1.up    = 0.0  ;     y12_5_1.l = 1.0;
     s12_5_1.lo = 0.0 ;   s12_5_1.up    = 0.0  ;     s12_5_1.l = 1.0;
     b12_5_1.lo = 0.0 ;   b12_5_1.up    = 0.0  ;     b12_5_1.l = 1.0;
     o12_5_1.lo = 0.0 ;   o12_5_1.up    = 0.0  ;     o12_5_1.l = 1.0;
     p12_5_1.lo = 0.0 ;   p12_5_1.up    = 0.0  ;     p12_5_1.l = 1.0;
     y13_5_1.lo = 0.0 ;   y13_5_1.up    = 0.0  ;     y13_5_1.l = 1.0;
     s13_5_1.lo = 0.0 ;   s13_5_1.up    = 0.0  ;     s13_5_1.l = 1.0;
     b13_5_1.lo = 0.0 ;   b13_5_1.up    = 0.0  ;     b13_5_1.l = 1.0;
     o13_5_1.lo = 0.0 ;   o13_5_1.up    = 0.0  ;     o13_5_1.l = 1.0;
     p13_5_1.lo = 0.0 ;   p13_5_1.up    = 0.0  ;     p13_5_1.l = 1.0;
     y14_5_1.lo = 0.0 ;   y14_5_1.up    = 0.0  ;     y14_5_1.l = 1.0;
     s14_5_1.lo = 0.0 ;   s14_5_1.up    = 0.0  ;     s14_5_1.l = 1.0;
     b14_5_1.lo = 0.0 ;   b14_5_1.up    = 0.0  ;     b14_5_1.l = 1.0;
     o14_5_1.lo = 0.0 ;   o14_5_1.up    = 0.0  ;     o14_5_1.l = 1.0;
     p14_5_1.lo = 0.0 ;   p14_5_1.up    = 0.0  ;     p14_5_1.l = 1.0;
     y15_5_1.lo = 0.0 ;   y15_5_1.up    = 0.0  ;     y15_5_1.l = 1.0;
     s15_5_1.lo = 0.0 ;   s15_5_1.up    = 0.0  ;     s15_5_1.l = 1.0;
     b15_5_1.lo = 0.0 ;   b15_5_1.up    = 0.0  ;     b15_5_1.l = 1.0;
     o15_5_1.lo = 0.0 ;   o15_5_1.up    = 0.0  ;     o15_5_1.l = 1.0;
     p15_5_1.lo = 0.0 ;   p15_5_1.up    = 0.0  ;     p15_5_1.l = 1.0;
        y6_1.lo = 0.0 ;      y6_1.up    = 1.0  ;        y6_1.l = 1.0;
        r6_1.lo = 0.0 ;      r6_1.up    = 0.0  ;        r6_1.l = 1.0;
        s6_1.lo = 0.0 ;      s6_1.up    = 10.0 ;        s6_1.l = 1.0;
        p6_1.lo = 0.0 ;      p6_1.up    = 1.0  ;        p6_1.l = 1.0;
     ym1_6_1.lo = 0.0 ;   ym1_6_1.up    = 0.0  ;     ym1_6_1.l = 1.0;
     sm1_6_1.lo = 0.0 ;   sm1_6_1.up    = 0.0  ;     sm1_6_1.l = 1.0;
     bm1_6_1.lo = 0.0 ;   bm1_6_1.up    = 0.0  ;     bm1_6_1.l = 1.0;
     om1_6_1.lo = 0.0 ;   om1_6_1.up    = 0.0  ;     om1_6_1.l = 1.0;
     pm1_6_1.lo = 0.0 ;   pm1_6_1.up    = 0.0  ;     pm1_6_1.l = 1.0;
      y0_6_1.lo = 0.0 ;    y0_6_1.up    = 0.0  ;      y0_6_1.l = 1.0;
      s0_6_1.lo = 0.0 ;    s0_6_1.up    = 0.0  ;      s0_6_1.l = 1.0;
      b0_6_1.lo = 0.0 ;    b0_6_1.up    = 0.0  ;      b0_6_1.l = 1.0;
      o0_6_1.lo = 0.0 ;    o0_6_1.up    = 0.0  ;      o0_6_1.l = 1.0;
      p0_6_1.lo = 0.0 ;    p0_6_1.up    = 0.0  ;      p0_6_1.l = 1.0;
      y1_6_1.lo = 0.0 ;    y1_6_1.up    = 0.0  ;      y1_6_1.l = 1.0;
      s1_6_1.lo = 0.0 ;    s1_6_1.up    = 0.0  ;      s1_6_1.l = 1.0;
      b1_6_1.lo = 0.0 ;    b1_6_1.up    = 0.0  ;      b1_6_1.l = 1.0;
      o1_6_1.lo = 0.0 ;    o1_6_1.up    = 0.0  ;      o1_6_1.l = 1.0;
      p1_6_1.lo = 0.0 ;    p1_6_1.up    = 0.0  ;      p1_6_1.l = 1.0;
      y2_6_1.lo = 0.0 ;    y2_6_1.up    = 0.0  ;      y2_6_1.l = 1.0;
      s2_6_1.lo = 0.0 ;    s2_6_1.up    = 0.0  ;      s2_6_1.l = 1.0;
      b2_6_1.lo = 0.0 ;    b2_6_1.up    = 0.0  ;      b2_6_1.l = 1.0;
      o2_6_1.lo = 0.0 ;    o2_6_1.up    = 0.0  ;      o2_6_1.l = 1.0;
      p2_6_1.lo = 0.0 ;    p2_6_1.up    = 0.0  ;      p2_6_1.l = 1.0;
      y3_6_1.lo = 0.0 ;    y3_6_1.up    = 0.0  ;      y3_6_1.l = 1.0;
      s3_6_1.lo = 0.0 ;    s3_6_1.up    = 0.0  ;      s3_6_1.l = 1.0;
      b3_6_1.lo = 0.0 ;    b3_6_1.up    = 0.0  ;      b3_6_1.l = 1.0;
      o3_6_1.lo = 0.0 ;    o3_6_1.up    = 0.0  ;      o3_6_1.l = 1.0;
      p3_6_1.lo = 0.0 ;    p3_6_1.up    = 0.0  ;      p3_6_1.l = 1.0;
      y4_6_1.lo = 0.0 ;    y4_6_1.up    = 0.0  ;      y4_6_1.l = 1.0;
      s4_6_1.lo = 0.0 ;    s4_6_1.up    = 0.0  ;      s4_6_1.l = 1.0;
      b4_6_1.lo = 0.0 ;    b4_6_1.up    = 0.0  ;      b4_6_1.l = 1.0;
      o4_6_1.lo = 0.0 ;    o4_6_1.up    = 0.0  ;      o4_6_1.l = 1.0;
      p4_6_1.lo = 0.0 ;    p4_6_1.up    = 0.0  ;      p4_6_1.l = 1.0;
      y5_6_1.lo = 0.0 ;    y5_6_1.up    = 0.0  ;      y5_6_1.l = 1.0;
      s5_6_1.lo = 0.0 ;    s5_6_1.up    = 0.0  ;      s5_6_1.l = 1.0;
      b5_6_1.lo = 0.0 ;    b5_6_1.up    = 0.0  ;      b5_6_1.l = 1.0;
      o5_6_1.lo = 0.0 ;    o5_6_1.up    = 0.0  ;      o5_6_1.l = 1.0;
      p5_6_1.lo = 0.0 ;    p5_6_1.up    = 0.0  ;      p5_6_1.l = 1.0;
      y6_6_1.lo = 0.0 ;    y6_6_1.up    = 0.0  ;      y6_6_1.l = 1.0;
      s6_6_1.lo = 0.0 ;    s6_6_1.up    = 0.0  ;      s6_6_1.l = 1.0;
      b6_6_1.lo = 0.0 ;    b6_6_1.up    = 0.0  ;      b6_6_1.l = 1.0;
      o6_6_1.lo = 0.0 ;    o6_6_1.up    = 0.0  ;      o6_6_1.l = 1.0;
      p6_6_1.lo = 0.0 ;    p6_6_1.up    = 0.0  ;      p6_6_1.l = 1.0;
      y7_6_1.lo = 0.0 ;    y7_6_1.up    = 0.0  ;      y7_6_1.l = 1.0;
      s7_6_1.lo = 0.0 ;    s7_6_1.up    = 0.0  ;      s7_6_1.l = 1.0;
      b7_6_1.lo = 0.0 ;    b7_6_1.up    = 0.0  ;      b7_6_1.l = 1.0;
      o7_6_1.lo = 0.0 ;    o7_6_1.up    = 0.0  ;      o7_6_1.l = 1.0;
      p7_6_1.lo = 0.0 ;    p7_6_1.up    = 0.0  ;      p7_6_1.l = 1.0;
      y8_6_1.lo = 0.0 ;    y8_6_1.up    = 0.0  ;      y8_6_1.l = 1.0;
      s8_6_1.lo = 0.0 ;    s8_6_1.up    = 0.0  ;      s8_6_1.l = 1.0;
      b8_6_1.lo = 0.0 ;    b8_6_1.up    = 0.0  ;      b8_6_1.l = 1.0;
      o8_6_1.lo = 0.0 ;    o8_6_1.up    = 0.0  ;      o8_6_1.l = 1.0;
      p8_6_1.lo = 0.0 ;    p8_6_1.up    = 0.0  ;      p8_6_1.l = 1.0;
      y9_6_1.lo = 0.0 ;    y9_6_1.up    = 0.0  ;      y9_6_1.l = 1.0;
      s9_6_1.lo = 0.0 ;    s9_6_1.up    = 0.0  ;      s9_6_1.l = 1.0;
      b9_6_1.lo = 0.0 ;    b9_6_1.up    = 0.0  ;      b9_6_1.l = 1.0;
      o9_6_1.lo = 0.0 ;    o9_6_1.up    = 0.0  ;      o9_6_1.l = 1.0;
      p9_6_1.lo = 0.0 ;    p9_6_1.up    = 0.0  ;      p9_6_1.l = 1.0;
     y10_6_1.lo = 0.0 ;   y10_6_1.up    = 0.0  ;     y10_6_1.l = 1.0;
     s10_6_1.lo = 0.0 ;   s10_6_1.up    = 0.0  ;     s10_6_1.l = 1.0;
     b10_6_1.lo = 0.0 ;   b10_6_1.up    = 0.0  ;     b10_6_1.l = 1.0;
     o10_6_1.lo = 0.0 ;   o10_6_1.up    = 0.0  ;     o10_6_1.l = 1.0;
     p10_6_1.lo = 0.0 ;   p10_6_1.up    = 0.0  ;     p10_6_1.l = 1.0;
     y11_6_1.lo = 0.0 ;   y11_6_1.up    = 0.0  ;     y11_6_1.l = 1.0;
     s11_6_1.lo = 0.0 ;   s11_6_1.up    = 0.0  ;     s11_6_1.l = 1.0;
     b11_6_1.lo = 0.0 ;   b11_6_1.up    = 0.0  ;     b11_6_1.l = 1.0;
     o11_6_1.lo = 0.0 ;   o11_6_1.up    = 0.0  ;     o11_6_1.l = 1.0;
     p11_6_1.lo = 0.0 ;   p11_6_1.up    = 0.0  ;     p11_6_1.l = 1.0;
     y12_6_1.lo = 0.0 ;   y12_6_1.up    = 0.0  ;     y12_6_1.l = 1.0;
     s12_6_1.lo = 0.0 ;   s12_6_1.up    = 0.0  ;     s12_6_1.l = 1.0;
     b12_6_1.lo = 0.0 ;   b12_6_1.up    = 0.0  ;     b12_6_1.l = 1.0;
     o12_6_1.lo = 0.0 ;   o12_6_1.up    = 0.0  ;     o12_6_1.l = 1.0;
     p12_6_1.lo = 0.0 ;   p12_6_1.up    = 0.0  ;     p12_6_1.l = 1.0;
     y13_6_1.lo = 0.0 ;   y13_6_1.up    = 0.0  ;     y13_6_1.l = 1.0;
     s13_6_1.lo = 0.0 ;   s13_6_1.up    = 0.0  ;     s13_6_1.l = 1.0;
     b13_6_1.lo = 0.0 ;   b13_6_1.up    = 0.0  ;     b13_6_1.l = 1.0;
     o13_6_1.lo = 0.0 ;   o13_6_1.up    = 0.0  ;     o13_6_1.l = 1.0;
     p13_6_1.lo = 0.0 ;   p13_6_1.up    = 0.0  ;     p13_6_1.l = 1.0;
     y14_6_1.lo = 0.0 ;   y14_6_1.up    = 0.0  ;     y14_6_1.l = 1.0;
     s14_6_1.lo = 0.0 ;   s14_6_1.up    = 0.0  ;     s14_6_1.l = 1.0;
     b14_6_1.lo = 0.0 ;   b14_6_1.up    = 0.0  ;     b14_6_1.l = 1.0;
     o14_6_1.lo = 0.0 ;   o14_6_1.up    = 0.0  ;     o14_6_1.l = 1.0;
     p14_6_1.lo = 0.0 ;   p14_6_1.up    = 0.0  ;     p14_6_1.l = 1.0;
     y15_6_1.lo = 0.0 ;   y15_6_1.up    = 0.0  ;     y15_6_1.l = 1.0;
     s15_6_1.lo = 0.0 ;   s15_6_1.up    = 0.0  ;     s15_6_1.l = 1.0;
     b15_6_1.lo = 0.0 ;   b15_6_1.up    = 0.0  ;     b15_6_1.l = 1.0;
     o15_6_1.lo = 0.0 ;   o15_6_1.up    = 0.0  ;     o15_6_1.l = 1.0;
     p15_6_1.lo = 0.0 ;   p15_6_1.up    = 0.0  ;     p15_6_1.l = 1.0;
        y7_1.lo = 0.0 ;      y7_1.up    = 1.0  ;        y7_1.l = 1.0;
        r7_1.lo = 0.0 ;      r7_1.up    = 0.0  ;        r7_1.l = 1.0;
        s7_1.lo = 0.0 ;      s7_1.up    = 10.0 ;        s7_1.l = 1.0;
        p7_1.lo = 0.0 ;      p7_1.up    = 1.0  ;        p7_1.l = 1.0;
     ym1_7_1.lo = 0.0 ;   ym1_7_1.up    = 0.0  ;     ym1_7_1.l = 1.0;
     sm1_7_1.lo = 0.0 ;   sm1_7_1.up    = 0.0  ;     sm1_7_1.l = 1.0;
     bm1_7_1.lo = 0.0 ;   bm1_7_1.up    = 0.0  ;     bm1_7_1.l = 1.0;
     om1_7_1.lo = 0.0 ;   om1_7_1.up    = 0.0  ;     om1_7_1.l = 1.0;
     pm1_7_1.lo = 0.0 ;   pm1_7_1.up    = 0.0  ;     pm1_7_1.l = 1.0;
      y0_7_1.lo = 0.0 ;    y0_7_1.up    = 0.0  ;      y0_7_1.l = 1.0;
      s0_7_1.lo = 0.0 ;    s0_7_1.up    = 0.0  ;      s0_7_1.l = 1.0;
      b0_7_1.lo = 0.0 ;    b0_7_1.up    = 0.0  ;      b0_7_1.l = 1.0;
      o0_7_1.lo = 0.0 ;    o0_7_1.up    = 0.0  ;      o0_7_1.l = 1.0;
      p0_7_1.lo = 0.0 ;    p0_7_1.up    = 0.0  ;      p0_7_1.l = 1.0;
      y1_7_1.lo = 0.0 ;    y1_7_1.up    = 0.0  ;      y1_7_1.l = 1.0;
      s1_7_1.lo = 0.0 ;    s1_7_1.up    = 0.0  ;      s1_7_1.l = 1.0;
      b1_7_1.lo = 0.0 ;    b1_7_1.up    = 0.0  ;      b1_7_1.l = 1.0;
      o1_7_1.lo = 0.0 ;    o1_7_1.up    = 0.0  ;      o1_7_1.l = 1.0;
      p1_7_1.lo = 0.0 ;    p1_7_1.up    = 0.0  ;      p1_7_1.l = 1.0;
      y2_7_1.lo = 0.0 ;    y2_7_1.up    = 0.0  ;      y2_7_1.l = 1.0;
      s2_7_1.lo = 0.0 ;    s2_7_1.up    = 0.0  ;      s2_7_1.l = 1.0;
      b2_7_1.lo = 0.0 ;    b2_7_1.up    = 0.0  ;      b2_7_1.l = 1.0;
      o2_7_1.lo = 0.0 ;    o2_7_1.up    = 0.0  ;      o2_7_1.l = 1.0;
      p2_7_1.lo = 0.0 ;    p2_7_1.up    = 0.0  ;      p2_7_1.l = 1.0;
      y3_7_1.lo = 0.0 ;    y3_7_1.up    = 0.0  ;      y3_7_1.l = 1.0;
      s3_7_1.lo = 0.0 ;    s3_7_1.up    = 0.0  ;      s3_7_1.l = 1.0;
      b3_7_1.lo = 0.0 ;    b3_7_1.up    = 0.0  ;      b3_7_1.l = 1.0;
      o3_7_1.lo = 0.0 ;    o3_7_1.up    = 0.0  ;      o3_7_1.l = 1.0;
      p3_7_1.lo = 0.0 ;    p3_7_1.up    = 0.0  ;      p3_7_1.l = 1.0;
      y4_7_1.lo = 0.0 ;    y4_7_1.up    = 0.0  ;      y4_7_1.l = 1.0;
      s4_7_1.lo = 0.0 ;    s4_7_1.up    = 0.0  ;      s4_7_1.l = 1.0;
      b4_7_1.lo = 0.0 ;    b4_7_1.up    = 0.0  ;      b4_7_1.l = 1.0;
      o4_7_1.lo = 0.0 ;    o4_7_1.up    = 0.0  ;      o4_7_1.l = 1.0;
      p4_7_1.lo = 0.0 ;    p4_7_1.up    = 0.0  ;      p4_7_1.l = 1.0;
      y5_7_1.lo = 0.0 ;    y5_7_1.up    = 0.0  ;      y5_7_1.l = 1.0;
      s5_7_1.lo = 0.0 ;    s5_7_1.up    = 0.0  ;      s5_7_1.l = 1.0;
      b5_7_1.lo = 0.0 ;    b5_7_1.up    = 0.0  ;      b5_7_1.l = 1.0;
      o5_7_1.lo = 0.0 ;    o5_7_1.up    = 0.0  ;      o5_7_1.l = 1.0;
      p5_7_1.lo = 0.0 ;    p5_7_1.up    = 0.0  ;      p5_7_1.l = 1.0;
      y6_7_1.lo = 0.0 ;    y6_7_1.up    = 0.0  ;      y6_7_1.l = 1.0;
      s6_7_1.lo = 0.0 ;    s6_7_1.up    = 0.0  ;      s6_7_1.l = 1.0;
      b6_7_1.lo = 0.0 ;    b6_7_1.up    = 0.0  ;      b6_7_1.l = 1.0;
      o6_7_1.lo = 0.0 ;    o6_7_1.up    = 0.0  ;      o6_7_1.l = 1.0;
      p6_7_1.lo = 0.0 ;    p6_7_1.up    = 0.0  ;      p6_7_1.l = 1.0;
      y7_7_1.lo = 0.0 ;    y7_7_1.up    = 0.0  ;      y7_7_1.l = 1.0;
      s7_7_1.lo = 0.0 ;    s7_7_1.up    = 0.0  ;      s7_7_1.l = 1.0;
      b7_7_1.lo = 0.0 ;    b7_7_1.up    = 0.0  ;      b7_7_1.l = 1.0;
      o7_7_1.lo = 0.0 ;    o7_7_1.up    = 0.0  ;      o7_7_1.l = 1.0;
      p7_7_1.lo = 0.0 ;    p7_7_1.up    = 0.0  ;      p7_7_1.l = 1.0;
      y8_7_1.lo = 0.0 ;    y8_7_1.up    = 0.0  ;      y8_7_1.l = 1.0;
      s8_7_1.lo = 0.0 ;    s8_7_1.up    = 0.0  ;      s8_7_1.l = 1.0;
      b8_7_1.lo = 0.0 ;    b8_7_1.up    = 0.0  ;      b8_7_1.l = 1.0;
      o8_7_1.lo = 0.0 ;    o8_7_1.up    = 0.0  ;      o8_7_1.l = 1.0;
      p8_7_1.lo = 0.0 ;    p8_7_1.up    = 0.0  ;      p8_7_1.l = 1.0;
      y9_7_1.lo = 0.0 ;    y9_7_1.up    = 0.0  ;      y9_7_1.l = 1.0;
      s9_7_1.lo = 0.0 ;    s9_7_1.up    = 0.0  ;      s9_7_1.l = 1.0;
      b9_7_1.lo = 0.0 ;    b9_7_1.up    = 0.0  ;      b9_7_1.l = 1.0;
      o9_7_1.lo = 0.0 ;    o9_7_1.up    = 0.0  ;      o9_7_1.l = 1.0;
      p9_7_1.lo = 0.0 ;    p9_7_1.up    = 0.0  ;      p9_7_1.l = 1.0;
     y10_7_1.lo = 0.0 ;   y10_7_1.up    = 0.0  ;     y10_7_1.l = 1.0;
     s10_7_1.lo = 0.0 ;   s10_7_1.up    = 0.0  ;     s10_7_1.l = 1.0;
     b10_7_1.lo = 0.0 ;   b10_7_1.up    = 0.0  ;     b10_7_1.l = 1.0;
     o10_7_1.lo = 0.0 ;   o10_7_1.up    = 0.0  ;     o10_7_1.l = 1.0;
     p10_7_1.lo = 0.0 ;   p10_7_1.up    = 0.0  ;     p10_7_1.l = 1.0;
     y11_7_1.lo = 0.0 ;   y11_7_1.up    = 0.0  ;     y11_7_1.l = 1.0;
     s11_7_1.lo = 0.0 ;   s11_7_1.up    = 0.0  ;     s11_7_1.l = 1.0;
     b11_7_1.lo = 0.0 ;   b11_7_1.up    = 0.0  ;     b11_7_1.l = 1.0;
     o11_7_1.lo = 0.0 ;   o11_7_1.up    = 0.0  ;     o11_7_1.l = 1.0;
     p11_7_1.lo = 0.0 ;   p11_7_1.up    = 0.0  ;     p11_7_1.l = 1.0;
     y12_7_1.lo = 0.0 ;   y12_7_1.up    = 0.0  ;     y12_7_1.l = 1.0;
     s12_7_1.lo = 0.0 ;   s12_7_1.up    = 0.0  ;     s12_7_1.l = 1.0;
     b12_7_1.lo = 0.0 ;   b12_7_1.up    = 0.0  ;     b12_7_1.l = 1.0;
     o12_7_1.lo = 0.0 ;   o12_7_1.up    = 0.0  ;     o12_7_1.l = 1.0;
     p12_7_1.lo = 0.0 ;   p12_7_1.up    = 0.0  ;     p12_7_1.l = 1.0;
     y13_7_1.lo = 0.0 ;   y13_7_1.up    = 0.0  ;     y13_7_1.l = 1.0;
     s13_7_1.lo = 0.0 ;   s13_7_1.up    = 0.0  ;     s13_7_1.l = 1.0;
     b13_7_1.lo = 0.0 ;   b13_7_1.up    = 0.0  ;     b13_7_1.l = 1.0;
     o13_7_1.lo = 0.0 ;   o13_7_1.up    = 0.0  ;     o13_7_1.l = 1.0;
     p13_7_1.lo = 0.0 ;   p13_7_1.up    = 0.0  ;     p13_7_1.l = 1.0;
     y14_7_1.lo = 0.0 ;   y14_7_1.up    = 0.0  ;     y14_7_1.l = 1.0;
     s14_7_1.lo = 0.0 ;   s14_7_1.up    = 0.0  ;     s14_7_1.l = 1.0;
     b14_7_1.lo = 0.0 ;   b14_7_1.up    = 0.0  ;     b14_7_1.l = 1.0;
     o14_7_1.lo = 0.0 ;   o14_7_1.up    = 0.0  ;     o14_7_1.l = 1.0;
     p14_7_1.lo = 0.0 ;   p14_7_1.up    = 0.0  ;     p14_7_1.l = 1.0;
     y15_7_1.lo = 0.0 ;   y15_7_1.up    = 0.0  ;     y15_7_1.l = 1.0;
     s15_7_1.lo = 0.0 ;   s15_7_1.up    = 0.0  ;     s15_7_1.l = 1.0;
     b15_7_1.lo = 0.0 ;   b15_7_1.up    = 0.0  ;     b15_7_1.l = 1.0;
     o15_7_1.lo = 0.0 ;   o15_7_1.up    = 0.0  ;     o15_7_1.l = 1.0;
     p15_7_1.lo = 0.0 ;   p15_7_1.up    = 0.0  ;     p15_7_1.l = 1.0;
        y8_1.lo = 0.0 ;      y8_1.up    = 0.0  ;        y8_1.l = 1.0;
        r8_1.lo = 0.0 ;      r8_1.up    = 0.0  ;        r8_1.l = 1.0;
        s8_1.lo = 0.0 ;      s8_1.up    = 0.0  ;        s8_1.l = 1.0;
        p8_1.lo = 0.0 ;      p8_1.up    = 0.0  ;        p8_1.l = 1.0;
     ym1_8_1.lo = 0.0 ;   ym1_8_1.up    = 0.0  ;     ym1_8_1.l = 1.0;
     sm1_8_1.lo = 0.0 ;   sm1_8_1.up    = 0.0  ;     sm1_8_1.l = 1.0;
     bm1_8_1.lo = 0.0 ;   bm1_8_1.up    = 0.0  ;     bm1_8_1.l = 1.0;
     om1_8_1.lo = 0.0 ;   om1_8_1.up    = 0.0  ;     om1_8_1.l = 1.0;
     pm1_8_1.lo = 0.0 ;   pm1_8_1.up    = 0.0  ;     pm1_8_1.l = 1.0;
      y0_8_1.lo = 0.0 ;    y0_8_1.up    = 0.0  ;      y0_8_1.l = 1.0;
      s0_8_1.lo = 0.0 ;    s0_8_1.up    = 0.0  ;      s0_8_1.l = 1.0;
      b0_8_1.lo = 0.0 ;    b0_8_1.up    = 0.0  ;      b0_8_1.l = 1.0;
      o0_8_1.lo = 0.0 ;    o0_8_1.up    = 0.0  ;      o0_8_1.l = 1.0;
      p0_8_1.lo = 0.0 ;    p0_8_1.up    = 0.0  ;      p0_8_1.l = 1.0;
      y1_8_1.lo = 0.0 ;    y1_8_1.up    = 0.0  ;      y1_8_1.l = 1.0;
      s1_8_1.lo = 0.0 ;    s1_8_1.up    = 0.0  ;      s1_8_1.l = 1.0;
      b1_8_1.lo = 0.0 ;    b1_8_1.up    = 0.0  ;      b1_8_1.l = 1.0;
      o1_8_1.lo = 0.0 ;    o1_8_1.up    = 0.0  ;      o1_8_1.l = 1.0;
      p1_8_1.lo = 0.0 ;    p1_8_1.up    = 0.0  ;      p1_8_1.l = 1.0;
      y2_8_1.lo = 0.0 ;    y2_8_1.up    = 0.0  ;      y2_8_1.l = 1.0;
      s2_8_1.lo = 0.0 ;    s2_8_1.up    = 0.0  ;      s2_8_1.l = 1.0;
      b2_8_1.lo = 0.0 ;    b2_8_1.up    = 0.0  ;      b2_8_1.l = 1.0;
      o2_8_1.lo = 0.0 ;    o2_8_1.up    = 0.0  ;      o2_8_1.l = 1.0;
      p2_8_1.lo = 0.0 ;    p2_8_1.up    = 0.0  ;      p2_8_1.l = 1.0;
      y3_8_1.lo = 0.0 ;    y3_8_1.up    = 0.0  ;      y3_8_1.l = 1.0;
      s3_8_1.lo = 0.0 ;    s3_8_1.up    = 0.0  ;      s3_8_1.l = 1.0;
      b3_8_1.lo = 0.0 ;    b3_8_1.up    = 0.0  ;      b3_8_1.l = 1.0;
      o3_8_1.lo = 0.0 ;    o3_8_1.up    = 0.0  ;      o3_8_1.l = 1.0;
      p3_8_1.lo = 0.0 ;    p3_8_1.up    = 0.0  ;      p3_8_1.l = 1.0;
      y4_8_1.lo = 0.0 ;    y4_8_1.up    = 0.0  ;      y4_8_1.l = 1.0;
      s4_8_1.lo = 0.0 ;    s4_8_1.up    = 0.0  ;      s4_8_1.l = 1.0;
      b4_8_1.lo = 0.0 ;    b4_8_1.up    = 0.0  ;      b4_8_1.l = 1.0;
      o4_8_1.lo = 0.0 ;    o4_8_1.up    = 0.0  ;      o4_8_1.l = 1.0;
      p4_8_1.lo = 0.0 ;    p4_8_1.up    = 0.0  ;      p4_8_1.l = 1.0;
      y5_8_1.lo = 0.0 ;    y5_8_1.up    = 0.0  ;      y5_8_1.l = 1.0;
      s5_8_1.lo = 0.0 ;    s5_8_1.up    = 0.0  ;      s5_8_1.l = 1.0;
      b5_8_1.lo = 0.0 ;    b5_8_1.up    = 0.0  ;      b5_8_1.l = 1.0;
      o5_8_1.lo = 0.0 ;    o5_8_1.up    = 0.0  ;      o5_8_1.l = 1.0;
      p5_8_1.lo = 0.0 ;    p5_8_1.up    = 0.0  ;      p5_8_1.l = 1.0;
      y6_8_1.lo = 0.0 ;    y6_8_1.up    = 0.0  ;      y6_8_1.l = 1.0;
      s6_8_1.lo = 0.0 ;    s6_8_1.up    = 0.0  ;      s6_8_1.l = 1.0;
      b6_8_1.lo = 0.0 ;    b6_8_1.up    = 0.0  ;      b6_8_1.l = 1.0;
      o6_8_1.lo = 0.0 ;    o6_8_1.up    = 0.0  ;      o6_8_1.l = 1.0;
      p6_8_1.lo = 0.0 ;    p6_8_1.up    = 0.0  ;      p6_8_1.l = 1.0;
      y7_8_1.lo = 0.0 ;    y7_8_1.up    = 0.0  ;      y7_8_1.l = 1.0;
      s7_8_1.lo = 0.0 ;    s7_8_1.up    = 0.0  ;      s7_8_1.l = 1.0;
      b7_8_1.lo = 0.0 ;    b7_8_1.up    = 0.0  ;      b7_8_1.l = 1.0;
      o7_8_1.lo = 0.0 ;    o7_8_1.up    = 0.0  ;      o7_8_1.l = 1.0;
      p7_8_1.lo = 0.0 ;    p7_8_1.up    = 0.0  ;      p7_8_1.l = 1.0;
      y8_8_1.lo = 0.0 ;    y8_8_1.up    = 0.0  ;      y8_8_1.l = 1.0;
      s8_8_1.lo = 0.0 ;    s8_8_1.up    = 0.0  ;      s8_8_1.l = 1.0;
      b8_8_1.lo = 0.0 ;    b8_8_1.up    = 0.0  ;      b8_8_1.l = 1.0;
      o8_8_1.lo = 0.0 ;    o8_8_1.up    = 0.0  ;      o8_8_1.l = 1.0;
      p8_8_1.lo = 0.0 ;    p8_8_1.up    = 0.0  ;      p8_8_1.l = 1.0;
      y9_8_1.lo = 0.0 ;    y9_8_1.up    = 0.0  ;      y9_8_1.l = 1.0;
      s9_8_1.lo = 0.0 ;    s9_8_1.up    = 0.0  ;      s9_8_1.l = 1.0;
      b9_8_1.lo = 0.0 ;    b9_8_1.up    = 0.0  ;      b9_8_1.l = 1.0;
      o9_8_1.lo = 0.0 ;    o9_8_1.up    = 0.0  ;      o9_8_1.l = 1.0;
      p9_8_1.lo = 0.0 ;    p9_8_1.up    = 0.0  ;      p9_8_1.l = 1.0;
     y10_8_1.lo = 0.0 ;   y10_8_1.up    = 0.0  ;     y10_8_1.l = 1.0;
     s10_8_1.lo = 0.0 ;   s10_8_1.up    = 0.0  ;     s10_8_1.l = 1.0;
     b10_8_1.lo = 0.0 ;   b10_8_1.up    = 0.0  ;     b10_8_1.l = 1.0;
     o10_8_1.lo = 0.0 ;   o10_8_1.up    = 0.0  ;     o10_8_1.l = 1.0;
     p10_8_1.lo = 0.0 ;   p10_8_1.up    = 0.0  ;     p10_8_1.l = 1.0;
     y11_8_1.lo = 0.0 ;   y11_8_1.up    = 0.0  ;     y11_8_1.l = 1.0;
     s11_8_1.lo = 0.0 ;   s11_8_1.up    = 0.0  ;     s11_8_1.l = 1.0;
     b11_8_1.lo = 0.0 ;   b11_8_1.up    = 0.0  ;     b11_8_1.l = 1.0;
     o11_8_1.lo = 0.0 ;   o11_8_1.up    = 0.0  ;     o11_8_1.l = 1.0;
     p11_8_1.lo = 0.0 ;   p11_8_1.up    = 0.0  ;     p11_8_1.l = 1.0;
     y12_8_1.lo = 0.0 ;   y12_8_1.up    = 0.0  ;     y12_8_1.l = 1.0;
     s12_8_1.lo = 0.0 ;   s12_8_1.up    = 0.0  ;     s12_8_1.l = 1.0;
     b12_8_1.lo = 0.0 ;   b12_8_1.up    = 0.0  ;     b12_8_1.l = 1.0;
     o12_8_1.lo = 0.0 ;   o12_8_1.up    = 0.0  ;     o12_8_1.l = 1.0;
     p12_8_1.lo = 0.0 ;   p12_8_1.up    = 0.0  ;     p12_8_1.l = 1.0;
     y13_8_1.lo = 0.0 ;   y13_8_1.up    = 0.0  ;     y13_8_1.l = 1.0;
     s13_8_1.lo = 0.0 ;   s13_8_1.up    = 0.0  ;     s13_8_1.l = 1.0;
     b13_8_1.lo = 0.0 ;   b13_8_1.up    = 0.0  ;     b13_8_1.l = 1.0;
     o13_8_1.lo = 0.0 ;   o13_8_1.up    = 0.0  ;     o13_8_1.l = 1.0;
     p13_8_1.lo = 0.0 ;   p13_8_1.up    = 0.0  ;     p13_8_1.l = 1.0;
     y14_8_1.lo = 0.0 ;   y14_8_1.up    = 0.0  ;     y14_8_1.l = 1.0;
     s14_8_1.lo = 0.0 ;   s14_8_1.up    = 0.0  ;     s14_8_1.l = 1.0;
     b14_8_1.lo = 0.0 ;   b14_8_1.up    = 0.0  ;     b14_8_1.l = 1.0;
     o14_8_1.lo = 0.0 ;   o14_8_1.up    = 0.0  ;     o14_8_1.l = 1.0;
     p14_8_1.lo = 0.0 ;   p14_8_1.up    = 0.0  ;     p14_8_1.l = 1.0;
     y15_8_1.lo = 0.0 ;   y15_8_1.up    = 0.0  ;     y15_8_1.l = 1.0;
     s15_8_1.lo = 0.0 ;   s15_8_1.up    = 0.0  ;     s15_8_1.l = 1.0;
     b15_8_1.lo = 0.0 ;   b15_8_1.up    = 0.0  ;     b15_8_1.l = 1.0;
     o15_8_1.lo = 0.0 ;   o15_8_1.up    = 0.0  ;     o15_8_1.l = 1.0;
     p15_8_1.lo = 0.0 ;   p15_8_1.up    = 0.0  ;     p15_8_1.l = 1.0;
        y9_1.lo = 0.0 ;      y9_1.up    = 0.0  ;        y9_1.l = 1.0;
        r9_1.lo = 0.0 ;      r9_1.up    = 0.0  ;        r9_1.l = 1.0;
        s9_1.lo = 0.0 ;      s9_1.up    = 0.0  ;        s9_1.l = 1.0;
        p9_1.lo = 0.0 ;      p9_1.up    = 0.0  ;        p9_1.l = 1.0;
     ym1_9_1.lo = 0.0 ;   ym1_9_1.up    = 0.0  ;     ym1_9_1.l = 1.0;
     sm1_9_1.lo = 0.0 ;   sm1_9_1.up    = 0.0  ;     sm1_9_1.l = 1.0;
     bm1_9_1.lo = 0.0 ;   bm1_9_1.up    = 0.0  ;     bm1_9_1.l = 1.0;
     om1_9_1.lo = 0.0 ;   om1_9_1.up    = 0.0  ;     om1_9_1.l = 1.0;
     pm1_9_1.lo = 0.0 ;   pm1_9_1.up    = 0.0  ;     pm1_9_1.l = 1.0;
      y0_9_1.lo = 0.0 ;    y0_9_1.up    = 0.0  ;      y0_9_1.l = 1.0;
      s0_9_1.lo = 0.0 ;    s0_9_1.up    = 0.0  ;      s0_9_1.l = 1.0;
      b0_9_1.lo = 0.0 ;    b0_9_1.up    = 0.0  ;      b0_9_1.l = 1.0;
      o0_9_1.lo = 0.0 ;    o0_9_1.up    = 0.0  ;      o0_9_1.l = 1.0;
      p0_9_1.lo = 0.0 ;    p0_9_1.up    = 0.0  ;      p0_9_1.l = 1.0;
      y1_9_1.lo = 0.0 ;    y1_9_1.up    = 0.0  ;      y1_9_1.l = 1.0;
      s1_9_1.lo = 0.0 ;    s1_9_1.up    = 0.0  ;      s1_9_1.l = 1.0;
      b1_9_1.lo = 0.0 ;    b1_9_1.up    = 0.0  ;      b1_9_1.l = 1.0;
      o1_9_1.lo = 0.0 ;    o1_9_1.up    = 0.0  ;      o1_9_1.l = 1.0;
      p1_9_1.lo = 0.0 ;    p1_9_1.up    = 0.0  ;      p1_9_1.l = 1.0;
      y2_9_1.lo = 0.0 ;    y2_9_1.up    = 0.0  ;      y2_9_1.l = 1.0;
      s2_9_1.lo = 0.0 ;    s2_9_1.up    = 0.0  ;      s2_9_1.l = 1.0;
      b2_9_1.lo = 0.0 ;    b2_9_1.up    = 0.0  ;      b2_9_1.l = 1.0;
      o2_9_1.lo = 0.0 ;    o2_9_1.up    = 0.0  ;      o2_9_1.l = 1.0;
      p2_9_1.lo = 0.0 ;    p2_9_1.up    = 0.0  ;      p2_9_1.l = 1.0;
      y3_9_1.lo = 0.0 ;    y3_9_1.up    = 1.0  ;      y3_9_1.l = 1.0;
      s3_9_1.lo = 0.0 ;    s3_9_1.up    = 10.0 ;      s3_9_1.l = 1.0;
      b3_9_1.lo = 0.0 ;    b3_9_1.up    = 0.0  ;      b3_9_1.l = 1.0;
      o3_9_1.lo = 0.0 ;    o3_9_1.up    = 0.0  ;      o3_9_1.l = 1.0;
      p3_9_1.lo = 0.0 ;    p3_9_1.up    = 1.0  ;      p3_9_1.l = 1.0;
      y4_9_1.lo = 0.0 ;    y4_9_1.up    = 0.0  ;      y4_9_1.l = 1.0;
      s4_9_1.lo = 0.0 ;    s4_9_1.up    = 0.0  ;      s4_9_1.l = 1.0;
      b4_9_1.lo = 0.0 ;    b4_9_1.up    = 0.0  ;      b4_9_1.l = 1.0;
      o4_9_1.lo = 0.0 ;    o4_9_1.up    = 0.0  ;      o4_9_1.l = 1.0;
      p4_9_1.lo = 0.0 ;    p4_9_1.up    = 0.0  ;      p4_9_1.l = 1.0;
      y5_9_1.lo = 0.0 ;    y5_9_1.up    = 0.0  ;      y5_9_1.l = 1.0;
      s5_9_1.lo = 0.0 ;    s5_9_1.up    = 0.0  ;      s5_9_1.l = 1.0;
      b5_9_1.lo = 0.0 ;    b5_9_1.up    = 0.0  ;      b5_9_1.l = 1.0;
      o5_9_1.lo = 0.0 ;    o5_9_1.up    = 0.0  ;      o5_9_1.l = 1.0;
      p5_9_1.lo = 0.0 ;    p5_9_1.up    = 0.0  ;      p5_9_1.l = 1.0;
      y6_9_1.lo = 0.0 ;    y6_9_1.up    = 0.0  ;      y6_9_1.l = 1.0;
      s6_9_1.lo = 0.0 ;    s6_9_1.up    = 0.0  ;      s6_9_1.l = 1.0;
      b6_9_1.lo = 0.0 ;    b6_9_1.up    = 0.0  ;      b6_9_1.l = 1.0;
      o6_9_1.lo = 0.0 ;    o6_9_1.up    = 0.0  ;      o6_9_1.l = 1.0;
      p6_9_1.lo = 0.0 ;    p6_9_1.up    = 0.0  ;      p6_9_1.l = 1.0;
      y7_9_1.lo = 0.0 ;    y7_9_1.up    = 0.0  ;      y7_9_1.l = 1.0;
      s7_9_1.lo = 0.0 ;    s7_9_1.up    = 0.0  ;      s7_9_1.l = 1.0;
      b7_9_1.lo = 0.0 ;    b7_9_1.up    = 0.0  ;      b7_9_1.l = 1.0;
      o7_9_1.lo = 0.0 ;    o7_9_1.up    = 0.0  ;      o7_9_1.l = 1.0;
      p7_9_1.lo = 0.0 ;    p7_9_1.up    = 0.0  ;      p7_9_1.l = 1.0;
      y8_9_1.lo = 0.0 ;    y8_9_1.up    = 0.0  ;      y8_9_1.l = 1.0;
      s8_9_1.lo = 0.0 ;    s8_9_1.up    = 0.0  ;      s8_9_1.l = 1.0;
      b8_9_1.lo = 0.0 ;    b8_9_1.up    = 0.0  ;      b8_9_1.l = 1.0;
      o8_9_1.lo = 0.0 ;    o8_9_1.up    = 0.0  ;      o8_9_1.l = 1.0;
      p8_9_1.lo = 0.0 ;    p8_9_1.up    = 0.0  ;      p8_9_1.l = 1.0;
      y9_9_1.lo = 0.0 ;    y9_9_1.up    = 0.0  ;      y9_9_1.l = 1.0;
      s9_9_1.lo = 0.0 ;    s9_9_1.up    = 0.0  ;      s9_9_1.l = 1.0;
      b9_9_1.lo = 0.0 ;    b9_9_1.up    = 0.0  ;      b9_9_1.l = 1.0;
      o9_9_1.lo = 0.0 ;    o9_9_1.up    = 0.0  ;      o9_9_1.l = 1.0;
      p9_9_1.lo = 0.0 ;    p9_9_1.up    = 0.0  ;      p9_9_1.l = 1.0;
     y10_9_1.lo = 0.0 ;   y10_9_1.up    = 0.0  ;     y10_9_1.l = 1.0;
     s10_9_1.lo = 0.0 ;   s10_9_1.up    = 0.0  ;     s10_9_1.l = 1.0;
     b10_9_1.lo = 0.0 ;   b10_9_1.up    = 0.0  ;     b10_9_1.l = 1.0;
     o10_9_1.lo = 0.0 ;   o10_9_1.up    = 0.0  ;     o10_9_1.l = 1.0;
     p10_9_1.lo = 0.0 ;   p10_9_1.up    = 0.0  ;     p10_9_1.l = 1.0;
     y11_9_1.lo = 0.0 ;   y11_9_1.up    = 0.0  ;     y11_9_1.l = 1.0;
     s11_9_1.lo = 0.0 ;   s11_9_1.up    = 0.0  ;     s11_9_1.l = 1.0;
     b11_9_1.lo = 0.0 ;   b11_9_1.up    = 0.0  ;     b11_9_1.l = 1.0;
     o11_9_1.lo = 0.0 ;   o11_9_1.up    = 0.0  ;     o11_9_1.l = 1.0;
     p11_9_1.lo = 0.0 ;   p11_9_1.up    = 0.0  ;     p11_9_1.l = 1.0;
     y12_9_1.lo = 0.0 ;   y12_9_1.up    = 0.0  ;     y12_9_1.l = 1.0;
     s12_9_1.lo = 0.0 ;   s12_9_1.up    = 0.0  ;     s12_9_1.l = 1.0;
     b12_9_1.lo = 0.0 ;   b12_9_1.up    = 0.0  ;     b12_9_1.l = 1.0;
     o12_9_1.lo = 0.0 ;   o12_9_1.up    = 0.0  ;     o12_9_1.l = 1.0;
     p12_9_1.lo = 0.0 ;   p12_9_1.up    = 0.0  ;     p12_9_1.l = 1.0;
     y13_9_1.lo = 0.0 ;   y13_9_1.up    = 0.0  ;     y13_9_1.l = 1.0;
     s13_9_1.lo = 0.0 ;   s13_9_1.up    = 0.0  ;     s13_9_1.l = 1.0;
     b13_9_1.lo = 0.0 ;   b13_9_1.up    = 0.0  ;     b13_9_1.l = 1.0;
     o13_9_1.lo = 0.0 ;   o13_9_1.up    = 0.0  ;     o13_9_1.l = 1.0;
     p13_9_1.lo = 0.0 ;   p13_9_1.up    = 0.0  ;     p13_9_1.l = 1.0;
     y14_9_1.lo = 0.0 ;   y14_9_1.up    = 0.0  ;     y14_9_1.l = 1.0;
     s14_9_1.lo = 0.0 ;   s14_9_1.up    = 0.0  ;     s14_9_1.l = 1.0;
     b14_9_1.lo = 0.0 ;   b14_9_1.up    = 0.0  ;     b14_9_1.l = 1.0;
     o14_9_1.lo = 0.0 ;   o14_9_1.up    = 0.0  ;     o14_9_1.l = 1.0;
     p14_9_1.lo = 0.0 ;   p14_9_1.up    = 0.0  ;     p14_9_1.l = 1.0;
     y15_9_1.lo = 0.0 ;   y15_9_1.up    = 0.0  ;     y15_9_1.l = 1.0;
     s15_9_1.lo = 0.0 ;   s15_9_1.up    = 0.0  ;     s15_9_1.l = 1.0;
     b15_9_1.lo = 0.0 ;   b15_9_1.up    = 0.0  ;     b15_9_1.l = 1.0;
     o15_9_1.lo = 0.0 ;   o15_9_1.up    = 0.0  ;     o15_9_1.l = 1.0;
     p15_9_1.lo = 0.0 ;   p15_9_1.up    = 0.0  ;     p15_9_1.l = 1.0;
       y10_1.lo = 0.0 ;     y10_1.up    = 0.0  ;       y10_1.l = 1.0;
       r10_1.lo = 0.0 ;     r10_1.up    = 0.0  ;       r10_1.l = 1.0;
       s10_1.lo = 0.0 ;     s10_1.up    = 0.0  ;       s10_1.l = 1.0;
       p10_1.lo = 0.0 ;     p10_1.up    = 0.0  ;       p10_1.l = 1.0;
    ym1_10_1.lo = 0.0 ;  ym1_10_1.up    = 0.0  ;    ym1_10_1.l = 1.0;
    sm1_10_1.lo = 0.0 ;  sm1_10_1.up    = 0.0  ;    sm1_10_1.l = 1.0;
    bm1_10_1.lo = 0.0 ;  bm1_10_1.up    = 0.0  ;    bm1_10_1.l = 1.0;
    om1_10_1.lo = 0.0 ;  om1_10_1.up    = 0.0  ;    om1_10_1.l = 1.0;
    pm1_10_1.lo = 0.0 ;  pm1_10_1.up    = 0.0  ;    pm1_10_1.l = 1.0;
     y0_10_1.lo = 0.0 ;   y0_10_1.up    = 0.0  ;     y0_10_1.l = 1.0;
     s0_10_1.lo = 0.0 ;   s0_10_1.up    = 0.0  ;     s0_10_1.l = 1.0;
     b0_10_1.lo = 0.0 ;   b0_10_1.up    = 0.0  ;     b0_10_1.l = 1.0;
     o0_10_1.lo = 0.0 ;   o0_10_1.up    = 0.0  ;     o0_10_1.l = 1.0;
     p0_10_1.lo = 0.0 ;   p0_10_1.up    = 0.0  ;     p0_10_1.l = 1.0;
     y1_10_1.lo = 0.0 ;   y1_10_1.up    = 0.0  ;     y1_10_1.l = 1.0;
     s1_10_1.lo = 0.0 ;   s1_10_1.up    = 0.0  ;     s1_10_1.l = 1.0;
     b1_10_1.lo = 0.0 ;   b1_10_1.up    = 0.0  ;     b1_10_1.l = 1.0;
     o1_10_1.lo = 0.0 ;   o1_10_1.up    = 0.0  ;     o1_10_1.l = 1.0;
     p1_10_1.lo = 0.0 ;   p1_10_1.up    = 0.0  ;     p1_10_1.l = 1.0;
     y2_10_1.lo = 0.0 ;   y2_10_1.up    = 0.0  ;     y2_10_1.l = 1.0;
     s2_10_1.lo = 0.0 ;   s2_10_1.up    = 0.0  ;     s2_10_1.l = 1.0;
     b2_10_1.lo = 0.0 ;   b2_10_1.up    = 0.0  ;     b2_10_1.l = 1.0;
     o2_10_1.lo = 0.0 ;   o2_10_1.up    = 0.0  ;     o2_10_1.l = 1.0;
     p2_10_1.lo = 0.0 ;   p2_10_1.up    = 0.0  ;     p2_10_1.l = 1.0;
     y3_10_1.lo = 0.0 ;   y3_10_1.up    = 0.0  ;     y3_10_1.l = 1.0;
     s3_10_1.lo = 0.0 ;   s3_10_1.up    = 0.0  ;     s3_10_1.l = 1.0;
     b3_10_1.lo = 0.0 ;   b3_10_1.up    = 0.0  ;     b3_10_1.l = 1.0;
     o3_10_1.lo = 0.0 ;   o3_10_1.up    = 0.0  ;     o3_10_1.l = 1.0;
     p3_10_1.lo = 0.0 ;   p3_10_1.up    = 0.0  ;     p3_10_1.l = 1.0;
     y4_10_1.lo = 0.0 ;   y4_10_1.up    = 0.0  ;     y4_10_1.l = 1.0;
     s4_10_1.lo = 0.0 ;   s4_10_1.up    = 0.0  ;     s4_10_1.l = 1.0;
     b4_10_1.lo = 0.0 ;   b4_10_1.up    = 0.0  ;     b4_10_1.l = 1.0;
     o4_10_1.lo = 0.0 ;   o4_10_1.up    = 0.0  ;     o4_10_1.l = 1.0;
     p4_10_1.lo = 0.0 ;   p4_10_1.up    = 0.0  ;     p4_10_1.l = 1.0;
     y5_10_1.lo = 0.0 ;   y5_10_1.up    = 0.0  ;     y5_10_1.l = 1.0;
     s5_10_1.lo = 0.0 ;   s5_10_1.up    = 0.0  ;     s5_10_1.l = 1.0;
     b5_10_1.lo = 0.0 ;   b5_10_1.up    = 0.0  ;     b5_10_1.l = 1.0;
     o5_10_1.lo = 0.0 ;   o5_10_1.up    = 0.0  ;     o5_10_1.l = 1.0;
     p5_10_1.lo = 0.0 ;   p5_10_1.up    = 0.0  ;     p5_10_1.l = 1.0;
     y6_10_1.lo = 0.0 ;   y6_10_1.up    = 0.0  ;     y6_10_1.l = 1.0;
     s6_10_1.lo = 0.0 ;   s6_10_1.up    = 0.0  ;     s6_10_1.l = 1.0;
     b6_10_1.lo = 0.0 ;   b6_10_1.up    = 0.0  ;     b6_10_1.l = 1.0;
     o6_10_1.lo = 0.0 ;   o6_10_1.up    = 0.0  ;     o6_10_1.l = 1.0;
     p6_10_1.lo = 0.0 ;   p6_10_1.up    = 0.0  ;     p6_10_1.l = 1.0;
     y7_10_1.lo = 0.0 ;   y7_10_1.up    = 0.0  ;     y7_10_1.l = 1.0;
     s7_10_1.lo = 0.0 ;   s7_10_1.up    = 0.0  ;     s7_10_1.l = 1.0;
     b7_10_1.lo = 0.0 ;   b7_10_1.up    = 0.0  ;     b7_10_1.l = 1.0;
     o7_10_1.lo = 0.0 ;   o7_10_1.up    = 0.0  ;     o7_10_1.l = 1.0;
     p7_10_1.lo = 0.0 ;   p7_10_1.up    = 0.0  ;     p7_10_1.l = 1.0;
     y8_10_1.lo = 0.0 ;   y8_10_1.up    = 0.0  ;     y8_10_1.l = 1.0;
     s8_10_1.lo = 0.0 ;   s8_10_1.up    = 0.0  ;     s8_10_1.l = 1.0;
     b8_10_1.lo = 0.0 ;   b8_10_1.up    = 0.0  ;     b8_10_1.l = 1.0;
     o8_10_1.lo = 0.0 ;   o8_10_1.up    = 0.0  ;     o8_10_1.l = 1.0;
     p8_10_1.lo = 0.0 ;   p8_10_1.up    = 0.0  ;     p8_10_1.l = 1.0;
     y9_10_1.lo = 0.0 ;   y9_10_1.up    = 0.0  ;     y9_10_1.l = 1.0;
     s9_10_1.lo = 0.0 ;   s9_10_1.up    = 0.0  ;     s9_10_1.l = 1.0;
     b9_10_1.lo = 0.0 ;   b9_10_1.up    = 0.0  ;     b9_10_1.l = 1.0;
     o9_10_1.lo = 0.0 ;   o9_10_1.up    = 0.0  ;     o9_10_1.l = 1.0;
     p9_10_1.lo = 0.0 ;   p9_10_1.up    = 0.0  ;     p9_10_1.l = 1.0;
    y10_10_1.lo = 0.0 ;  y10_10_1.up    = 0.0  ;    y10_10_1.l = 1.0;
    s10_10_1.lo = 0.0 ;  s10_10_1.up    = 0.0  ;    s10_10_1.l = 1.0;
    b10_10_1.lo = 0.0 ;  b10_10_1.up    = 0.0  ;    b10_10_1.l = 1.0;
    o10_10_1.lo = 0.0 ;  o10_10_1.up    = 0.0  ;    o10_10_1.l = 1.0;
    p10_10_1.lo = 0.0 ;  p10_10_1.up    = 0.0  ;    p10_10_1.l = 1.0;
    y11_10_1.lo = 0.0 ;  y11_10_1.up    = 0.0  ;    y11_10_1.l = 1.0;
    s11_10_1.lo = 0.0 ;  s11_10_1.up    = 0.0  ;    s11_10_1.l = 1.0;
    b11_10_1.lo = 0.0 ;  b11_10_1.up    = 0.0  ;    b11_10_1.l = 1.0;
    o11_10_1.lo = 0.0 ;  o11_10_1.up    = 0.0  ;    o11_10_1.l = 1.0;
    p11_10_1.lo = 0.0 ;  p11_10_1.up    = 0.0  ;    p11_10_1.l = 1.0;
    y12_10_1.lo = 0.0 ;  y12_10_1.up    = 0.0  ;    y12_10_1.l = 1.0;
    s12_10_1.lo = 0.0 ;  s12_10_1.up    = 0.0  ;    s12_10_1.l = 1.0;
    b12_10_1.lo = 0.0 ;  b12_10_1.up    = 0.0  ;    b12_10_1.l = 1.0;
    o12_10_1.lo = 0.0 ;  o12_10_1.up    = 0.0  ;    o12_10_1.l = 1.0;
    p12_10_1.lo = 0.0 ;  p12_10_1.up    = 0.0  ;    p12_10_1.l = 1.0;
    y13_10_1.lo = 0.0 ;  y13_10_1.up    = 0.0  ;    y13_10_1.l = 1.0;
    s13_10_1.lo = 0.0 ;  s13_10_1.up    = 0.0  ;    s13_10_1.l = 1.0;
    b13_10_1.lo = 0.0 ;  b13_10_1.up    = 0.0  ;    b13_10_1.l = 1.0;
    o13_10_1.lo = 0.0 ;  o13_10_1.up    = 0.0  ;    o13_10_1.l = 1.0;
    p13_10_1.lo = 0.0 ;  p13_10_1.up    = 0.0  ;    p13_10_1.l = 1.0;
    y14_10_1.lo = 0.0 ;  y14_10_1.up    = 0.0  ;    y14_10_1.l = 1.0;
    s14_10_1.lo = 0.0 ;  s14_10_1.up    = 0.0  ;    s14_10_1.l = 1.0;
    b14_10_1.lo = 0.0 ;  b14_10_1.up    = 0.0  ;    b14_10_1.l = 1.0;
    o14_10_1.lo = 0.0 ;  o14_10_1.up    = 0.0  ;    o14_10_1.l = 1.0;
    p14_10_1.lo = 0.0 ;  p14_10_1.up    = 0.0  ;    p14_10_1.l = 1.0;
    y15_10_1.lo = 0.0 ;  y15_10_1.up    = 0.0  ;    y15_10_1.l = 1.0;
    s15_10_1.lo = 0.0 ;  s15_10_1.up    = 0.0  ;    s15_10_1.l = 1.0;
    b15_10_1.lo = 0.0 ;  b15_10_1.up    = 0.0  ;    b15_10_1.l = 1.0;
    o15_10_1.lo = 0.0 ;  o15_10_1.up    = 0.0  ;    o15_10_1.l = 1.0;
    p15_10_1.lo = 0.0 ;  p15_10_1.up    = 0.0  ;    p15_10_1.l = 1.0;
       y11_1.lo = 0.0 ;     y11_1.up    = 0.0  ;       y11_1.l = 1.0;
       r11_1.lo = 0.0 ;     r11_1.up    = 0.0  ;       r11_1.l = 1.0;
       s11_1.lo = 0.0 ;     s11_1.up    = 0.0  ;       s11_1.l = 1.0;
       p11_1.lo = 0.0 ;     p11_1.up    = 0.0  ;       p11_1.l = 1.0;
    ym1_11_1.lo = 0.0 ;  ym1_11_1.up    = 0.0  ;    ym1_11_1.l = 1.0;
    sm1_11_1.lo = 0.0 ;  sm1_11_1.up    = 0.0  ;    sm1_11_1.l = 1.0;
    bm1_11_1.lo = 0.0 ;  bm1_11_1.up    = 0.0  ;    bm1_11_1.l = 1.0;
    om1_11_1.lo = 0.0 ;  om1_11_1.up    = 0.0  ;    om1_11_1.l = 1.0;
    pm1_11_1.lo = 0.0 ;  pm1_11_1.up    = 0.0  ;    pm1_11_1.l = 1.0;
     y0_11_1.lo = 0.0 ;   y0_11_1.up    = 0.0  ;     y0_11_1.l = 1.0;
     s0_11_1.lo = 0.0 ;   s0_11_1.up    = 0.0  ;     s0_11_1.l = 1.0;
     b0_11_1.lo = 0.0 ;   b0_11_1.up    = 0.0  ;     b0_11_1.l = 1.0;
     o0_11_1.lo = 0.0 ;   o0_11_1.up    = 0.0  ;     o0_11_1.l = 1.0;
     p0_11_1.lo = 0.0 ;   p0_11_1.up    = 0.0  ;     p0_11_1.l = 1.0;
     y1_11_1.lo = 0.0 ;   y1_11_1.up    = 0.0  ;     y1_11_1.l = 1.0;
     s1_11_1.lo = 0.0 ;   s1_11_1.up    = 0.0  ;     s1_11_1.l = 1.0;
     b1_11_1.lo = 0.0 ;   b1_11_1.up    = 0.0  ;     b1_11_1.l = 1.0;
     o1_11_1.lo = 0.0 ;   o1_11_1.up    = 0.0  ;     o1_11_1.l = 1.0;
     p1_11_1.lo = 0.0 ;   p1_11_1.up    = 0.0  ;     p1_11_1.l = 1.0;
     y2_11_1.lo = 0.0 ;   y2_11_1.up    = 0.0  ;     y2_11_1.l = 1.0;
     s2_11_1.lo = 0.0 ;   s2_11_1.up    = 0.0  ;     s2_11_1.l = 1.0;
     b2_11_1.lo = 0.0 ;   b2_11_1.up    = 0.0  ;     b2_11_1.l = 1.0;
     o2_11_1.lo = 0.0 ;   o2_11_1.up    = 0.0  ;     o2_11_1.l = 1.0;
     p2_11_1.lo = 0.0 ;   p2_11_1.up    = 0.0  ;     p2_11_1.l = 1.0;
     y3_11_1.lo = 0.0 ;   y3_11_1.up    = 0.0  ;     y3_11_1.l = 1.0;
     s3_11_1.lo = 0.0 ;   s3_11_1.up    = 0.0  ;     s3_11_1.l = 1.0;
     b3_11_1.lo = 0.0 ;   b3_11_1.up    = 0.0  ;     b3_11_1.l = 1.0;
     o3_11_1.lo = 0.0 ;   o3_11_1.up    = 0.0  ;     o3_11_1.l = 1.0;
     p3_11_1.lo = 0.0 ;   p3_11_1.up    = 0.0  ;     p3_11_1.l = 1.0;
     y4_11_1.lo = 0.0 ;   y4_11_1.up    = 1.0  ;     y4_11_1.l = 1.0;
     s4_11_1.lo = 0.0 ;   s4_11_1.up    = 10.0 ;     s4_11_1.l = 1.0;
     b4_11_1.lo = 0.0 ;   b4_11_1.up    = 0.0  ;     b4_11_1.l = 1.0;
     o4_11_1.lo = 0.0 ;   o4_11_1.up    = 0.0  ;     o4_11_1.l = 1.0;
     p4_11_1.lo = 0.0 ;   p4_11_1.up    = 1.0  ;     p4_11_1.l = 1.0;
     y5_11_1.lo = 0.0 ;   y5_11_1.up    = 0.0  ;     y5_11_1.l = 1.0;
     s5_11_1.lo = 0.0 ;   s5_11_1.up    = 0.0  ;     s5_11_1.l = 1.0;
     b5_11_1.lo = 0.0 ;   b5_11_1.up    = 0.0  ;     b5_11_1.l = 1.0;
     o5_11_1.lo = 0.0 ;   o5_11_1.up    = 0.0  ;     o5_11_1.l = 1.0;
     p5_11_1.lo = 0.0 ;   p5_11_1.up    = 0.0  ;     p5_11_1.l = 1.0;
     y6_11_1.lo = 0.0 ;   y6_11_1.up    = 0.0  ;     y6_11_1.l = 1.0;
     s6_11_1.lo = 0.0 ;   s6_11_1.up    = 0.0  ;     s6_11_1.l = 1.0;
     b6_11_1.lo = 0.0 ;   b6_11_1.up    = 0.0  ;     b6_11_1.l = 1.0;
     o6_11_1.lo = 0.0 ;   o6_11_1.up    = 0.0  ;     o6_11_1.l = 1.0;
     p6_11_1.lo = 0.0 ;   p6_11_1.up    = 0.0  ;     p6_11_1.l = 1.0;
     y7_11_1.lo = 0.0 ;   y7_11_1.up    = 1.0  ;     y7_11_1.l = 1.0;
     s7_11_1.lo = 0.0 ;   s7_11_1.up    = 10.0 ;     s7_11_1.l = 1.0;
     b7_11_1.lo = 0.0 ;   b7_11_1.up    = 0.0  ;     b7_11_1.l = 1.0;
     o7_11_1.lo = 0.0 ;   o7_11_1.up    = 0.0  ;     o7_11_1.l = 1.0;
     p7_11_1.lo = 0.0 ;   p7_11_1.up    = 1.0  ;     p7_11_1.l = 1.0;
     y8_11_1.lo = 0.0 ;   y8_11_1.up    = 0.0  ;     y8_11_1.l = 1.0;
     s8_11_1.lo = 0.0 ;   s8_11_1.up    = 0.0  ;     s8_11_1.l = 1.0;
     b8_11_1.lo = 0.0 ;   b8_11_1.up    = 0.0  ;     b8_11_1.l = 1.0;
     o8_11_1.lo = 0.0 ;   o8_11_1.up    = 0.0  ;     o8_11_1.l = 1.0;
     p8_11_1.lo = 0.0 ;   p8_11_1.up    = 0.0  ;     p8_11_1.l = 1.0;
     y9_11_1.lo = 0.0 ;   y9_11_1.up    = 0.0  ;     y9_11_1.l = 1.0;
     s9_11_1.lo = 0.0 ;   s9_11_1.up    = 0.0  ;     s9_11_1.l = 1.0;
     b9_11_1.lo = 0.0 ;   b9_11_1.up    = 0.0  ;     b9_11_1.l = 1.0;
     o9_11_1.lo = 0.0 ;   o9_11_1.up    = 0.0  ;     o9_11_1.l = 1.0;
     p9_11_1.lo = 0.0 ;   p9_11_1.up    = 0.0  ;     p9_11_1.l = 1.0;
    y10_11_1.lo = 0.0 ;  y10_11_1.up    = 0.0  ;    y10_11_1.l = 1.0;
    s10_11_1.lo = 0.0 ;  s10_11_1.up    = 0.0  ;    s10_11_1.l = 1.0;
    b10_11_1.lo = 0.0 ;  b10_11_1.up    = 0.0  ;    b10_11_1.l = 1.0;
    o10_11_1.lo = 0.0 ;  o10_11_1.up    = 0.0  ;    o10_11_1.l = 1.0;
    p10_11_1.lo = 0.0 ;  p10_11_1.up    = 0.0  ;    p10_11_1.l = 1.0;
    y11_11_1.lo = 0.0 ;  y11_11_1.up    = 0.0  ;    y11_11_1.l = 1.0;
    s11_11_1.lo = 0.0 ;  s11_11_1.up    = 0.0  ;    s11_11_1.l = 1.0;
    b11_11_1.lo = 0.0 ;  b11_11_1.up    = 0.0  ;    b11_11_1.l = 1.0;
    o11_11_1.lo = 0.0 ;  o11_11_1.up    = 0.0  ;    o11_11_1.l = 1.0;
    p11_11_1.lo = 0.0 ;  p11_11_1.up    = 0.0  ;    p11_11_1.l = 1.0;
    y12_11_1.lo = 0.0 ;  y12_11_1.up    = 0.0  ;    y12_11_1.l = 1.0;
    s12_11_1.lo = 0.0 ;  s12_11_1.up    = 0.0  ;    s12_11_1.l = 1.0;
    b12_11_1.lo = 0.0 ;  b12_11_1.up    = 0.0  ;    b12_11_1.l = 1.0;
    o12_11_1.lo = 0.0 ;  o12_11_1.up    = 0.0  ;    o12_11_1.l = 1.0;
    p12_11_1.lo = 0.0 ;  p12_11_1.up    = 0.0  ;    p12_11_1.l = 1.0;
    y13_11_1.lo = 0.0 ;  y13_11_1.up    = 0.0  ;    y13_11_1.l = 1.0;
    s13_11_1.lo = 0.0 ;  s13_11_1.up    = 0.0  ;    s13_11_1.l = 1.0;
    b13_11_1.lo = 0.0 ;  b13_11_1.up    = 0.0  ;    b13_11_1.l = 1.0;
    o13_11_1.lo = 0.0 ;  o13_11_1.up    = 0.0  ;    o13_11_1.l = 1.0;
    p13_11_1.lo = 0.0 ;  p13_11_1.up    = 0.0  ;    p13_11_1.l = 1.0;
    y14_11_1.lo = 0.0 ;  y14_11_1.up    = 0.0  ;    y14_11_1.l = 1.0;
    s14_11_1.lo = 0.0 ;  s14_11_1.up    = 0.0  ;    s14_11_1.l = 1.0;
    b14_11_1.lo = 0.0 ;  b14_11_1.up    = 0.0  ;    b14_11_1.l = 1.0;
    o14_11_1.lo = 0.0 ;  o14_11_1.up    = 0.0  ;    o14_11_1.l = 1.0;
    p14_11_1.lo = 0.0 ;  p14_11_1.up    = 0.0  ;    p14_11_1.l = 1.0;
    y15_11_1.lo = 0.0 ;  y15_11_1.up    = 0.0  ;    y15_11_1.l = 1.0;
    s15_11_1.lo = 0.0 ;  s15_11_1.up    = 0.0  ;    s15_11_1.l = 1.0;
    b15_11_1.lo = 0.0 ;  b15_11_1.up    = 0.0  ;    b15_11_1.l = 1.0;
    o15_11_1.lo = 0.0 ;  o15_11_1.up    = 0.0  ;    o15_11_1.l = 1.0;
    p15_11_1.lo = 0.0 ;  p15_11_1.up    = 0.0  ;    p15_11_1.l = 1.0;
       y12_1.lo = 0.0 ;     y12_1.up    = 1.0  ;       y12_1.l = 1.0;
       r12_1.lo = 0.0 ;     r12_1.up    = 0.0  ;       r12_1.l = 1.0;
       s12_1.lo = 0.0 ;     s12_1.up    = 10.0 ;       s12_1.l = 1.0;
       p12_1.lo = 0.0 ;     p12_1.up    = 1.0  ;       p12_1.l = 1.0;
    ym1_12_1.lo = 0.0 ;  ym1_12_1.up    = 0.0  ;    ym1_12_1.l = 1.0;
    sm1_12_1.lo = 0.0 ;  sm1_12_1.up    = 0.0  ;    sm1_12_1.l = 1.0;
    bm1_12_1.lo = 0.0 ;  bm1_12_1.up    = 0.0  ;    bm1_12_1.l = 1.0;
    om1_12_1.lo = 0.0 ;  om1_12_1.up    = 0.0  ;    om1_12_1.l = 1.0;
    pm1_12_1.lo = 0.0 ;  pm1_12_1.up    = 0.0  ;    pm1_12_1.l = 1.0;
     y0_12_1.lo = 0.0 ;   y0_12_1.up    = 0.0  ;     y0_12_1.l = 1.0;
     s0_12_1.lo = 0.0 ;   s0_12_1.up    = 0.0  ;     s0_12_1.l = 1.0;
     b0_12_1.lo = 0.0 ;   b0_12_1.up    = 0.0  ;     b0_12_1.l = 1.0;
     o0_12_1.lo = 0.0 ;   o0_12_1.up    = 0.0  ;     o0_12_1.l = 1.0;
     p0_12_1.lo = 0.0 ;   p0_12_1.up    = 0.0  ;     p0_12_1.l = 1.0;
     y1_12_1.lo = 0.0 ;   y1_12_1.up    = 0.0  ;     y1_12_1.l = 1.0;
     s1_12_1.lo = 0.0 ;   s1_12_1.up    = 0.0  ;     s1_12_1.l = 1.0;
     b1_12_1.lo = 0.0 ;   b1_12_1.up    = 0.0  ;     b1_12_1.l = 1.0;
     o1_12_1.lo = 0.0 ;   o1_12_1.up    = 0.0  ;     o1_12_1.l = 1.0;
     p1_12_1.lo = 0.0 ;   p1_12_1.up    = 0.0  ;     p1_12_1.l = 1.0;
     y2_12_1.lo = 0.0 ;   y2_12_1.up    = 0.0  ;     y2_12_1.l = 1.0;
     s2_12_1.lo = 0.0 ;   s2_12_1.up    = 0.0  ;     s2_12_1.l = 1.0;
     b2_12_1.lo = 0.0 ;   b2_12_1.up    = 0.0  ;     b2_12_1.l = 1.0;
     o2_12_1.lo = 0.0 ;   o2_12_1.up    = 0.0  ;     o2_12_1.l = 1.0;
     p2_12_1.lo = 0.0 ;   p2_12_1.up    = 0.0  ;     p2_12_1.l = 1.0;
     y3_12_1.lo = 0.0 ;   y3_12_1.up    = 0.0  ;     y3_12_1.l = 1.0;
     s3_12_1.lo = 0.0 ;   s3_12_1.up    = 0.0  ;     s3_12_1.l = 1.0;
     b3_12_1.lo = 0.0 ;   b3_12_1.up    = 0.0  ;     b3_12_1.l = 1.0;
     o3_12_1.lo = 0.0 ;   o3_12_1.up    = 3.0  ;     o3_12_1.l = 1.0;
     p3_12_1.lo = 0.0 ;   p3_12_1.up    = 0.0  ;     p3_12_1.l = 1.0;
     y4_12_1.lo = 0.0 ;   y4_12_1.up    = 1.0  ;     y4_12_1.l = 1.0;
     s4_12_1.lo = 0.0 ;   s4_12_1.up    = 0.0  ;     s4_12_1.l = 1.0;
     b4_12_1.lo = 0.0 ;   b4_12_1.up    = 0.0  ;     b4_12_1.l = 1.0;
     o4_12_1.lo = 0.0 ;   o4_12_1.up    = 0.0  ;     o4_12_1.l = 1.0;
     p4_12_1.lo = 0.0 ;   p4_12_1.up    = 0.0  ;     p4_12_1.l = 1.0;
     y5_12_1.lo = 0.0 ;   y5_12_1.up    = 0.0  ;     y5_12_1.l = 1.0;
     s5_12_1.lo = 0.0 ;   s5_12_1.up    = 0.0  ;     s5_12_1.l = 1.0;
     b5_12_1.lo = 0.0 ;   b5_12_1.up    = 0.0  ;     b5_12_1.l = 1.0;
     o5_12_1.lo = 0.0 ;   o5_12_1.up    = 0.0  ;     o5_12_1.l = 1.0;
     p5_12_1.lo = 0.0 ;   p5_12_1.up    = 0.0  ;     p5_12_1.l = 1.0;
     y6_12_1.lo = 0.0 ;   y6_12_1.up    = 0.0  ;     y6_12_1.l = 1.0;
     s6_12_1.lo = 0.0 ;   s6_12_1.up    = 0.0  ;     s6_12_1.l = 1.0;
     b6_12_1.lo = 0.0 ;   b6_12_1.up    = 0.0  ;     b6_12_1.l = 1.0;
     o6_12_1.lo = 0.0 ;   o6_12_1.up    = 0.0  ;     o6_12_1.l = 1.0;
     p6_12_1.lo = 0.0 ;   p6_12_1.up    = 0.0  ;     p6_12_1.l = 1.0;
     y7_12_1.lo = 0.0 ;   y7_12_1.up    = 0.0  ;     y7_12_1.l = 1.0;
     s7_12_1.lo = 0.0 ;   s7_12_1.up    = 0.0  ;     s7_12_1.l = 1.0;
     b7_12_1.lo = 0.0 ;   b7_12_1.up    = 0.0  ;     b7_12_1.l = 1.0;
     o7_12_1.lo = 0.0 ;   o7_12_1.up    = 0.0  ;     o7_12_1.l = 1.0;
     p7_12_1.lo = 0.0 ;   p7_12_1.up    = 0.0  ;     p7_12_1.l = 1.0;
     y8_12_1.lo = 0.0 ;   y8_12_1.up    = 0.0  ;     y8_12_1.l = 1.0;
     s8_12_1.lo = 0.0 ;   s8_12_1.up    = 0.0  ;     s8_12_1.l = 1.0;
     b8_12_1.lo = 0.0 ;   b8_12_1.up    = 0.0  ;     b8_12_1.l = 1.0;
     o8_12_1.lo = 0.0 ;   o8_12_1.up    = 0.0  ;     o8_12_1.l = 1.0;
     p8_12_1.lo = 0.0 ;   p8_12_1.up    = 0.0  ;     p8_12_1.l = 1.0;
     y9_12_1.lo = 0.0 ;   y9_12_1.up    = 0.0  ;     y9_12_1.l = 1.0;
     s9_12_1.lo = 0.0 ;   s9_12_1.up    = 0.0  ;     s9_12_1.l = 1.0;
     b9_12_1.lo = 0.0 ;   b9_12_1.up    = 0.0  ;     b9_12_1.l = 1.0;
     o9_12_1.lo = 0.0 ;   o9_12_1.up    = 0.0  ;     o9_12_1.l = 1.0;
     p9_12_1.lo = 0.0 ;   p9_12_1.up    = 0.0  ;     p9_12_1.l = 1.0;
    y10_12_1.lo = 0.0 ;  y10_12_1.up    = 0.0  ;    y10_12_1.l = 1.0;
    s10_12_1.lo = 0.0 ;  s10_12_1.up    = 0.0  ;    s10_12_1.l = 1.0;
    b10_12_1.lo = 0.0 ;  b10_12_1.up    = 0.0  ;    b10_12_1.l = 1.0;
    o10_12_1.lo = 0.0 ;  o10_12_1.up    = 0.0  ;    o10_12_1.l = 1.0;
    p10_12_1.lo = 0.0 ;  p10_12_1.up    = 0.0  ;    p10_12_1.l = 1.0;
    y11_12_1.lo = 0.0 ;  y11_12_1.up    = 0.0  ;    y11_12_1.l = 1.0;
    s11_12_1.lo = 0.0 ;  s11_12_1.up    = 0.0  ;    s11_12_1.l = 1.0;
    b11_12_1.lo = 0.0 ;  b11_12_1.up    = 0.0  ;    b11_12_1.l = 1.0;
    o11_12_1.lo = 0.0 ;  o11_12_1.up    = 0.0  ;    o11_12_1.l = 1.0;
    p11_12_1.lo = 0.0 ;  p11_12_1.up    = 0.0  ;    p11_12_1.l = 1.0;
    y12_12_1.lo = 0.0 ;  y12_12_1.up    = 0.0  ;    y12_12_1.l = 1.0;
    s12_12_1.lo = 0.0 ;  s12_12_1.up    = 0.0  ;    s12_12_1.l = 1.0;
    b12_12_1.lo = 0.0 ;  b12_12_1.up    = 0.0  ;    b12_12_1.l = 1.0;
    o12_12_1.lo = 0.0 ;  o12_12_1.up    = 0.0  ;    o12_12_1.l = 1.0;
    p12_12_1.lo = 0.0 ;  p12_12_1.up    = 0.0  ;    p12_12_1.l = 1.0;
    y13_12_1.lo = 0.0 ;  y13_12_1.up    = 0.0  ;    y13_12_1.l = 1.0;
    s13_12_1.lo = 0.0 ;  s13_12_1.up    = 0.0  ;    s13_12_1.l = 1.0;
    b13_12_1.lo = 0.0 ;  b13_12_1.up    = 0.0  ;    b13_12_1.l = 1.0;
    o13_12_1.lo = 0.0 ;  o13_12_1.up    = 0.0  ;    o13_12_1.l = 1.0;
    p13_12_1.lo = 0.0 ;  p13_12_1.up    = 0.0  ;    p13_12_1.l = 1.0;
    y14_12_1.lo = 0.0 ;  y14_12_1.up    = 0.0  ;    y14_12_1.l = 1.0;
    s14_12_1.lo = 0.0 ;  s14_12_1.up    = 0.0  ;    s14_12_1.l = 1.0;
    b14_12_1.lo = 0.0 ;  b14_12_1.up    = 0.0  ;    b14_12_1.l = 1.0;
    o14_12_1.lo = 0.0 ;  o14_12_1.up    = 0.0  ;    o14_12_1.l = 1.0;
    p14_12_1.lo = 0.0 ;  p14_12_1.up    = 0.0  ;    p14_12_1.l = 1.0;
    y15_12_1.lo = 0.0 ;  y15_12_1.up    = 0.0  ;    y15_12_1.l = 1.0;
    s15_12_1.lo = 0.0 ;  s15_12_1.up    = 0.0  ;    s15_12_1.l = 1.0;
    b15_12_1.lo = 0.0 ;  b15_12_1.up    = 0.0  ;    b15_12_1.l = 1.0;
    o15_12_1.lo = 0.0 ;  o15_12_1.up    = 0.0  ;    o15_12_1.l = 1.0;
    p15_12_1.lo = 0.0 ;  p15_12_1.up    = 0.0  ;    p15_12_1.l = 1.0;
       y13_1.lo = 0.0 ;     y13_1.up    = 0.0  ;       y13_1.l = 1.0;
       r13_1.lo = 0.0 ;     r13_1.up    = 0.0  ;       r13_1.l = 1.0;
       s13_1.lo = 0.0 ;     s13_1.up    = 0.0  ;       s13_1.l = 1.0;
       p13_1.lo = 0.0 ;     p13_1.up    = 0.0  ;       p13_1.l = 1.0;
    ym1_13_1.lo = 0.0 ;  ym1_13_1.up    = 0.0  ;    ym1_13_1.l = 1.0;
    sm1_13_1.lo = 0.0 ;  sm1_13_1.up    = 0.0  ;    sm1_13_1.l = 1.0;
    bm1_13_1.lo = 0.0 ;  bm1_13_1.up    = 0.0  ;    bm1_13_1.l = 1.0;
    om1_13_1.lo = 0.0 ;  om1_13_1.up    = 0.0  ;    om1_13_1.l = 1.0;
    pm1_13_1.lo = 0.0 ;  pm1_13_1.up    = 0.0  ;    pm1_13_1.l = 1.0;
     y0_13_1.lo = 0.0 ;   y0_13_1.up    = 0.0  ;     y0_13_1.l = 1.0;
     s0_13_1.lo = 0.0 ;   s0_13_1.up    = 0.0  ;     s0_13_1.l = 1.0;
     b0_13_1.lo = 0.0 ;   b0_13_1.up    = 0.0  ;     b0_13_1.l = 1.0;
     o0_13_1.lo = 0.0 ;   o0_13_1.up    = 0.0  ;     o0_13_1.l = 1.0;
     p0_13_1.lo = 0.0 ;   p0_13_1.up    = 0.0  ;     p0_13_1.l = 1.0;
     y1_13_1.lo = 0.0 ;   y1_13_1.up    = 0.0  ;     y1_13_1.l = 1.0;
     s1_13_1.lo = 0.0 ;   s1_13_1.up    = 0.0  ;     s1_13_1.l = 1.0;
     b1_13_1.lo = 0.0 ;   b1_13_1.up    = 0.0  ;     b1_13_1.l = 1.0;
     o1_13_1.lo = 0.0 ;   o1_13_1.up    = 0.0  ;     o1_13_1.l = 1.0;
     p1_13_1.lo = 0.0 ;   p1_13_1.up    = 0.0  ;     p1_13_1.l = 1.0;
     y2_13_1.lo = 0.0 ;   y2_13_1.up    = 0.0  ;     y2_13_1.l = 1.0;
     s2_13_1.lo = 0.0 ;   s2_13_1.up    = 0.0  ;     s2_13_1.l = 1.0;
     b2_13_1.lo = 0.0 ;   b2_13_1.up    = 0.0  ;     b2_13_1.l = 1.0;
     o2_13_1.lo = 0.0 ;   o2_13_1.up    = 0.0  ;     o2_13_1.l = 1.0;
     p2_13_1.lo = 0.0 ;   p2_13_1.up    = 0.0  ;     p2_13_1.l = 1.0;
     y3_13_1.lo = 0.0 ;   y3_13_1.up    = 0.0  ;     y3_13_1.l = 1.0;
     s3_13_1.lo = 0.0 ;   s3_13_1.up    = 0.0  ;     s3_13_1.l = 1.0;
     b3_13_1.lo = 0.0 ;   b3_13_1.up    = 0.0  ;     b3_13_1.l = 1.0;
     o3_13_1.lo = 0.0 ;   o3_13_1.up    = 0.0  ;     o3_13_1.l = 1.0;
     p3_13_1.lo = 0.0 ;   p3_13_1.up    = 0.0  ;     p3_13_1.l = 1.0;
     y4_13_1.lo = 0.0 ;   y4_13_1.up    = 0.0  ;     y4_13_1.l = 1.0;
     s4_13_1.lo = 0.0 ;   s4_13_1.up    = 0.0  ;     s4_13_1.l = 1.0;
     b4_13_1.lo = 0.0 ;   b4_13_1.up    = 0.0  ;     b4_13_1.l = 1.0;
     o4_13_1.lo = 0.0 ;   o4_13_1.up    = 0.0  ;     o4_13_1.l = 1.0;
     p4_13_1.lo = 0.0 ;   p4_13_1.up    = 0.0  ;     p4_13_1.l = 1.0;
     y5_13_1.lo = 0.0 ;   y5_13_1.up    = 1.0  ;     y5_13_1.l = 1.0;
     s5_13_1.lo = 0.0 ;   s5_13_1.up    = 10.0 ;     s5_13_1.l = 1.0;
     b5_13_1.lo = 0.0 ;   b5_13_1.up    = 0.0  ;     b5_13_1.l = 1.0;
     o5_13_1.lo = 0.0 ;   o5_13_1.up    = 0.0  ;     o5_13_1.l = 1.0;
     p5_13_1.lo = 0.0 ;   p5_13_1.up    = 1.0  ;     p5_13_1.l = 1.0;
     y6_13_1.lo = 0.0 ;   y6_13_1.up    = 0.0  ;     y6_13_1.l = 1.0;
     s6_13_1.lo = 0.0 ;   s6_13_1.up    = 0.0  ;     s6_13_1.l = 1.0;
     b6_13_1.lo = 0.0 ;   b6_13_1.up    = 0.0  ;     b6_13_1.l = 1.0;
     o6_13_1.lo = 0.0 ;   o6_13_1.up    = 0.0  ;     o6_13_1.l = 1.0;
     p6_13_1.lo = 0.0 ;   p6_13_1.up    = 0.0  ;     p6_13_1.l = 1.0;
     y7_13_1.lo = 0.0 ;   y7_13_1.up    = 0.0  ;     y7_13_1.l = 1.0;
     s7_13_1.lo = 0.0 ;   s7_13_1.up    = 0.0  ;     s7_13_1.l = 1.0;
     b7_13_1.lo = 0.0 ;   b7_13_1.up    = 0.0  ;     b7_13_1.l = 1.0;
     o7_13_1.lo = 0.0 ;   o7_13_1.up    = 0.0  ;     o7_13_1.l = 1.0;
     p7_13_1.lo = 0.0 ;   p7_13_1.up    = 0.0  ;     p7_13_1.l = 1.0;
     y8_13_1.lo = 0.0 ;   y8_13_1.up    = 0.0  ;     y8_13_1.l = 1.0;
     s8_13_1.lo = 0.0 ;   s8_13_1.up    = 0.0  ;     s8_13_1.l = 1.0;
     b8_13_1.lo = 0.0 ;   b8_13_1.up    = 0.0  ;     b8_13_1.l = 1.0;
     o8_13_1.lo = 0.0 ;   o8_13_1.up    = 0.0  ;     o8_13_1.l = 1.0;
     p8_13_1.lo = 0.0 ;   p8_13_1.up    = 0.0  ;     p8_13_1.l = 1.0;
     y9_13_1.lo = 0.0 ;   y9_13_1.up    = 0.0  ;     y9_13_1.l = 1.0;
     s9_13_1.lo = 0.0 ;   s9_13_1.up    = 0.0  ;     s9_13_1.l = 1.0;
     b9_13_1.lo = 0.0 ;   b9_13_1.up    = 0.0  ;     b9_13_1.l = 1.0;
     o9_13_1.lo = 0.0 ;   o9_13_1.up    = 0.0  ;     o9_13_1.l = 1.0;
     p9_13_1.lo = 0.0 ;   p9_13_1.up    = 0.0  ;     p9_13_1.l = 1.0;
    y10_13_1.lo = 0.0 ;  y10_13_1.up    = 0.0  ;    y10_13_1.l = 1.0;
    s10_13_1.lo = 0.0 ;  s10_13_1.up    = 0.0  ;    s10_13_1.l = 1.0;
    b10_13_1.lo = 0.0 ;  b10_13_1.up    = 0.0  ;    b10_13_1.l = 1.0;
    o10_13_1.lo = 0.0 ;  o10_13_1.up    = 0.0  ;    o10_13_1.l = 1.0;
    p10_13_1.lo = 0.0 ;  p10_13_1.up    = 0.0  ;    p10_13_1.l = 1.0;
    y11_13_1.lo = 0.0 ;  y11_13_1.up    = 0.0  ;    y11_13_1.l = 1.0;
    s11_13_1.lo = 0.0 ;  s11_13_1.up    = 0.0  ;    s11_13_1.l = 1.0;
    b11_13_1.lo = 0.0 ;  b11_13_1.up    = 0.0  ;    b11_13_1.l = 1.0;
    o11_13_1.lo = 0.0 ;  o11_13_1.up    = 0.0  ;    o11_13_1.l = 1.0;
    p11_13_1.lo = 0.0 ;  p11_13_1.up    = 0.0  ;    p11_13_1.l = 1.0;
    y12_13_1.lo = 0.0 ;  y12_13_1.up    = 0.0  ;    y12_13_1.l = 1.0;
    s12_13_1.lo = 0.0 ;  s12_13_1.up    = 0.0  ;    s12_13_1.l = 1.0;
    b12_13_1.lo = 0.0 ;  b12_13_1.up    = 0.0  ;    b12_13_1.l = 1.0;
    o12_13_1.lo = 0.0 ;  o12_13_1.up    = 0.0  ;    o12_13_1.l = 1.0;
    p12_13_1.lo = 0.0 ;  p12_13_1.up    = 0.0  ;    p12_13_1.l = 1.0;
    y13_13_1.lo = 0.0 ;  y13_13_1.up    = 0.0  ;    y13_13_1.l = 1.0;
    s13_13_1.lo = 0.0 ;  s13_13_1.up    = 0.0  ;    s13_13_1.l = 1.0;
    b13_13_1.lo = 0.0 ;  b13_13_1.up    = 0.0  ;    b13_13_1.l = 1.0;
    o13_13_1.lo = 0.0 ;  o13_13_1.up    = 0.0  ;    o13_13_1.l = 1.0;
    p13_13_1.lo = 0.0 ;  p13_13_1.up    = 0.0  ;    p13_13_1.l = 1.0;
    y14_13_1.lo = 0.0 ;  y14_13_1.up    = 0.0  ;    y14_13_1.l = 1.0;
    s14_13_1.lo = 0.0 ;  s14_13_1.up    = 0.0  ;    s14_13_1.l = 1.0;
    b14_13_1.lo = 0.0 ;  b14_13_1.up    = 0.0  ;    b14_13_1.l = 1.0;
    o14_13_1.lo = 0.0 ;  o14_13_1.up    = 0.0  ;    o14_13_1.l = 1.0;
    p14_13_1.lo = 0.0 ;  p14_13_1.up    = 0.0  ;    p14_13_1.l = 1.0;
    y15_13_1.lo = 0.0 ;  y15_13_1.up    = 0.0  ;    y15_13_1.l = 1.0;
    s15_13_1.lo = 0.0 ;  s15_13_1.up    = 0.0  ;    s15_13_1.l = 1.0;
    b15_13_1.lo = 0.0 ;  b15_13_1.up    = 0.0  ;    b15_13_1.l = 1.0;
    o15_13_1.lo = 0.0 ;  o15_13_1.up    = 0.0  ;    o15_13_1.l = 1.0;
    p15_13_1.lo = 0.0 ;  p15_13_1.up    = 0.0  ;    p15_13_1.l = 1.0;
       y14_1.lo = 0.0 ;     y14_1.up    = 1.0  ;       y14_1.l = 1.0;
       r14_1.lo = 0.0 ;     r14_1.up    = 0.0  ;       r14_1.l = 1.0;
       s14_1.lo = 0.0 ;     s14_1.up    = 10.0 ;       s14_1.l = 1.0;
       p14_1.lo = 0.0 ;     p14_1.up    = 1.0  ;       p14_1.l = 1.0;
    ym1_14_1.lo = 0.0 ;  ym1_14_1.up    = 0.0  ;    ym1_14_1.l = 1.0;
    sm1_14_1.lo = 0.0 ;  sm1_14_1.up    = 0.0  ;    sm1_14_1.l = 1.0;
    bm1_14_1.lo = 0.0 ;  bm1_14_1.up    = 0.0  ;    bm1_14_1.l = 1.0;
    om1_14_1.lo = 0.0 ;  om1_14_1.up    = 0.0  ;    om1_14_1.l = 1.0;
    pm1_14_1.lo = 0.0 ;  pm1_14_1.up    = 0.0  ;    pm1_14_1.l = 1.0;
     y0_14_1.lo = 0.0 ;   y0_14_1.up    = 0.0  ;     y0_14_1.l = 1.0;
     s0_14_1.lo = 0.0 ;   s0_14_1.up    = 0.0  ;     s0_14_1.l = 1.0;
     b0_14_1.lo = 0.0 ;   b0_14_1.up    = 0.0  ;     b0_14_1.l = 1.0;
     o0_14_1.lo = 0.0 ;   o0_14_1.up    = 0.0  ;     o0_14_1.l = 1.0;
     p0_14_1.lo = 0.0 ;   p0_14_1.up    = 0.0  ;     p0_14_1.l = 1.0;
     y1_14_1.lo = 0.0 ;   y1_14_1.up    = 0.0  ;     y1_14_1.l = 1.0;
     s1_14_1.lo = 0.0 ;   s1_14_1.up    = 0.0  ;     s1_14_1.l = 1.0;
     b1_14_1.lo = 0.0 ;   b1_14_1.up    = 0.0  ;     b1_14_1.l = 1.0;
     o1_14_1.lo = 0.0 ;   o1_14_1.up    = 0.0  ;     o1_14_1.l = 1.0;
     p1_14_1.lo = 0.0 ;   p1_14_1.up    = 0.0  ;     p1_14_1.l = 1.0;
     y2_14_1.lo = 0.0 ;   y2_14_1.up    = 0.0  ;     y2_14_1.l = 1.0;
     s2_14_1.lo = 0.0 ;   s2_14_1.up    = 0.0  ;     s2_14_1.l = 1.0;
     b2_14_1.lo = 0.0 ;   b2_14_1.up    = 0.0  ;     b2_14_1.l = 1.0;
     o2_14_1.lo = 0.0 ;   o2_14_1.up    = 0.0  ;     o2_14_1.l = 1.0;
     p2_14_1.lo = 0.0 ;   p2_14_1.up    = 0.0  ;     p2_14_1.l = 1.0;
     y3_14_1.lo = 0.0 ;   y3_14_1.up    = 0.0  ;     y3_14_1.l = 1.0;
     s3_14_1.lo = 0.0 ;   s3_14_1.up    = 0.0  ;     s3_14_1.l = 1.0;
     b3_14_1.lo = 0.0 ;   b3_14_1.up    = 0.0  ;     b3_14_1.l = 1.0;
     o3_14_1.lo = 0.0 ;   o3_14_1.up    = 0.0  ;     o3_14_1.l = 1.0;
     p3_14_1.lo = 0.0 ;   p3_14_1.up    = 0.0  ;     p3_14_1.l = 1.0;
     y4_14_1.lo = 0.0 ;   y4_14_1.up    = 1.0  ;     y4_14_1.l = 1.0;
     s4_14_1.lo = 0.0 ;   s4_14_1.up    = 10.0 ;     s4_14_1.l = 1.0;
     b4_14_1.lo = 0.0 ;   b4_14_1.up    = 0.0  ;     b4_14_1.l = 1.0;
     o4_14_1.lo = 0.0 ;   o4_14_1.up    = 0.0  ;     o4_14_1.l = 1.0;
     p4_14_1.lo = 0.0 ;   p4_14_1.up    = 1.0  ;     p4_14_1.l = 1.0;
     y5_14_1.lo = 0.0 ;   y5_14_1.up    = 0.0  ;     y5_14_1.l = 1.0;
     s5_14_1.lo = 0.0 ;   s5_14_1.up    = 0.0  ;     s5_14_1.l = 1.0;
     b5_14_1.lo = 0.0 ;   b5_14_1.up    = 0.0  ;     b5_14_1.l = 1.0;
     o5_14_1.lo = 0.0 ;   o5_14_1.up    = 0.0  ;     o5_14_1.l = 1.0;
     p5_14_1.lo = 0.0 ;   p5_14_1.up    = 0.0  ;     p5_14_1.l = 1.0;
     y6_14_1.lo = 0.0 ;   y6_14_1.up    = 0.0  ;     y6_14_1.l = 1.0;
     s6_14_1.lo = 0.0 ;   s6_14_1.up    = 0.0  ;     s6_14_1.l = 1.0;
     b6_14_1.lo = 0.0 ;   b6_14_1.up    = 0.0  ;     b6_14_1.l = 1.0;
     o6_14_1.lo = 0.0 ;   o6_14_1.up    = 0.0  ;     o6_14_1.l = 1.0;
     p6_14_1.lo = 0.0 ;   p6_14_1.up    = 0.0  ;     p6_14_1.l = 1.0;
     y7_14_1.lo = 0.0 ;   y7_14_1.up    = 1.0  ;     y7_14_1.l = 1.0;
     s7_14_1.lo = 0.0 ;   s7_14_1.up    = 10.0 ;     s7_14_1.l = 1.0;
     b7_14_1.lo = 0.0 ;   b7_14_1.up    = 0.0  ;     b7_14_1.l = 1.0;
     o7_14_1.lo = 0.0 ;   o7_14_1.up    = 0.0  ;     o7_14_1.l = 1.0;
     p7_14_1.lo = 0.0 ;   p7_14_1.up    = 1.0  ;     p7_14_1.l = 1.0;
     y8_14_1.lo = 0.0 ;   y8_14_1.up    = 0.0  ;     y8_14_1.l = 1.0;
     s8_14_1.lo = 0.0 ;   s8_14_1.up    = 0.0  ;     s8_14_1.l = 1.0;
     b8_14_1.lo = 0.0 ;   b8_14_1.up    = 0.0  ;     b8_14_1.l = 1.0;
     o8_14_1.lo = 0.0 ;   o8_14_1.up    = 0.0  ;     o8_14_1.l = 1.0;
     p8_14_1.lo = 0.0 ;   p8_14_1.up    = 0.0  ;     p8_14_1.l = 1.0;
     y9_14_1.lo = 0.0 ;   y9_14_1.up    = 0.0  ;     y9_14_1.l = 1.0;
     s9_14_1.lo = 0.0 ;   s9_14_1.up    = 0.0  ;     s9_14_1.l = 1.0;
     b9_14_1.lo = 0.0 ;   b9_14_1.up    = 0.0  ;     b9_14_1.l = 1.0;
     o9_14_1.lo = 0.0 ;   o9_14_1.up    = 0.0  ;     o9_14_1.l = 1.0;
     p9_14_1.lo = 0.0 ;   p9_14_1.up    = 0.0  ;     p9_14_1.l = 1.0;
    y10_14_1.lo = 0.0 ;  y10_14_1.up    = 0.0  ;    y10_14_1.l = 1.0;
    s10_14_1.lo = 0.0 ;  s10_14_1.up    = 0.0  ;    s10_14_1.l = 1.0;
    b10_14_1.lo = 0.0 ;  b10_14_1.up    = 0.0  ;    b10_14_1.l = 1.0;
    o10_14_1.lo = 0.0 ;  o10_14_1.up    = 0.0  ;    o10_14_1.l = 1.0;
    p10_14_1.lo = 0.0 ;  p10_14_1.up    = 0.0  ;    p10_14_1.l = 1.0;
    y11_14_1.lo = 0.0 ;  y11_14_1.up    = 0.0  ;    y11_14_1.l = 1.0;
    s11_14_1.lo = 0.0 ;  s11_14_1.up    = 0.0  ;    s11_14_1.l = 1.0;
    b11_14_1.lo = 0.0 ;  b11_14_1.up    = 0.0  ;    b11_14_1.l = 1.0;
    o11_14_1.lo = 0.0 ;  o11_14_1.up    = 0.0  ;    o11_14_1.l = 1.0;
    p11_14_1.lo = 0.0 ;  p11_14_1.up    = 0.0  ;    p11_14_1.l = 1.0;
    y12_14_1.lo = 0.0 ;  y12_14_1.up    = 0.0  ;    y12_14_1.l = 1.0;
    s12_14_1.lo = 0.0 ;  s12_14_1.up    = 0.0  ;    s12_14_1.l = 1.0;
    b12_14_1.lo = 0.0 ;  b12_14_1.up    = 0.0  ;    b12_14_1.l = 1.0;
    o12_14_1.lo = 0.0 ;  o12_14_1.up    = 0.0  ;    o12_14_1.l = 1.0;
    p12_14_1.lo = 0.0 ;  p12_14_1.up    = 0.0  ;    p12_14_1.l = 1.0;
    y13_14_1.lo = 0.0 ;  y13_14_1.up    = 0.0  ;    y13_14_1.l = 1.0;
    s13_14_1.lo = 0.0 ;  s13_14_1.up    = 0.0  ;    s13_14_1.l = 1.0;
    b13_14_1.lo = 0.0 ;  b13_14_1.up    = 0.0  ;    b13_14_1.l = 1.0;
    o13_14_1.lo = 0.0 ;  o13_14_1.up    = 0.0  ;    o13_14_1.l = 1.0;
    p13_14_1.lo = 0.0 ;  p13_14_1.up    = 0.0  ;    p13_14_1.l = 1.0;
    y14_14_1.lo = 0.0 ;  y14_14_1.up    = 0.0  ;    y14_14_1.l = 1.0;
    s14_14_1.lo = 0.0 ;  s14_14_1.up    = 0.0  ;    s14_14_1.l = 1.0;
    b14_14_1.lo = 0.0 ;  b14_14_1.up    = 0.0  ;    b14_14_1.l = 1.0;
    o14_14_1.lo = 0.0 ;  o14_14_1.up    = 0.0  ;    o14_14_1.l = 1.0;
    p14_14_1.lo = 0.0 ;  p14_14_1.up    = 0.0  ;    p14_14_1.l = 1.0;
    y15_14_1.lo = 0.0 ;  y15_14_1.up    = 0.0  ;    y15_14_1.l = 1.0;
    s15_14_1.lo = 0.0 ;  s15_14_1.up    = 0.0  ;    s15_14_1.l = 1.0;
    b15_14_1.lo = 0.0 ;  b15_14_1.up    = 0.0  ;    b15_14_1.l = 1.0;
    o15_14_1.lo = 0.0 ;  o15_14_1.up    = 0.0  ;    o15_14_1.l = 1.0;
    p15_14_1.lo = 0.0 ;  p15_14_1.up    = 0.0  ;    p15_14_1.l = 1.0;
       y15_1.lo = 0.0 ;     y15_1.up    = 0.0  ;       y15_1.l = 1.0;
       r15_1.lo = 0.0 ;     r15_1.up    = 0.0  ;       r15_1.l = 1.0;
       s15_1.lo = 0.0 ;     s15_1.up    = 0.0  ;       s15_1.l = 1.0;
       p15_1.lo = 0.0 ;     p15_1.up    = 0.0  ;       p15_1.l = 1.0;
    ym1_15_1.lo = 0.0 ;  ym1_15_1.up    = 0.0  ;    ym1_15_1.l = 1.0;
    sm1_15_1.lo = 0.0 ;  sm1_15_1.up    = 0.0  ;    sm1_15_1.l = 1.0;
    bm1_15_1.lo = 0.0 ;  bm1_15_1.up    = 0.0  ;    bm1_15_1.l = 1.0;
    om1_15_1.lo = 0.0 ;  om1_15_1.up    = 0.0  ;    om1_15_1.l = 1.0;
    pm1_15_1.lo = 0.0 ;  pm1_15_1.up    = 0.0  ;    pm1_15_1.l = 1.0;
     y0_15_1.lo = 0.0 ;   y0_15_1.up    = 0.0  ;     y0_15_1.l = 1.0;
     s0_15_1.lo = 0.0 ;   s0_15_1.up    = 0.0  ;     s0_15_1.l = 1.0;
     b0_15_1.lo = 0.0 ;   b0_15_1.up    = 0.0  ;     b0_15_1.l = 1.0;
     o0_15_1.lo = 0.0 ;   o0_15_1.up    = 0.0  ;     o0_15_1.l = 1.0;
     p0_15_1.lo = 0.0 ;   p0_15_1.up    = 0.0  ;     p0_15_1.l = 1.0;
     y1_15_1.lo = 0.0 ;   y1_15_1.up    = 0.0  ;     y1_15_1.l = 1.0;
     s1_15_1.lo = 0.0 ;   s1_15_1.up    = 0.0  ;     s1_15_1.l = 1.0;
     b1_15_1.lo = 0.0 ;   b1_15_1.up    = 0.0  ;     b1_15_1.l = 1.0;
     o1_15_1.lo = 0.0 ;   o1_15_1.up    = 0.0  ;     o1_15_1.l = 1.0;
     p1_15_1.lo = 0.0 ;   p1_15_1.up    = 0.0  ;     p1_15_1.l = 1.0;
     y2_15_1.lo = 0.0 ;   y2_15_1.up    = 0.0  ;     y2_15_1.l = 1.0;
     s2_15_1.lo = 0.0 ;   s2_15_1.up    = 0.0  ;     s2_15_1.l = 1.0;
     b2_15_1.lo = 0.0 ;   b2_15_1.up    = 0.0  ;     b2_15_1.l = 1.0;
     o2_15_1.lo = 0.0 ;   o2_15_1.up    = 0.0  ;     o2_15_1.l = 1.0;
     p2_15_1.lo = 0.0 ;   p2_15_1.up    = 0.0  ;     p2_15_1.l = 1.0;
     y3_15_1.lo = 0.0 ;   y3_15_1.up    = 0.0  ;     y3_15_1.l = 1.0;
     s3_15_1.lo = 0.0 ;   s3_15_1.up    = 0.0  ;     s3_15_1.l = 1.0;
     b3_15_1.lo = 0.0 ;   b3_15_1.up    = 0.0  ;     b3_15_1.l = 1.0;
     o3_15_1.lo = 0.0 ;   o3_15_1.up    = 0.0  ;     o3_15_1.l = 1.0;
     p3_15_1.lo = 0.0 ;   p3_15_1.up    = 0.0  ;     p3_15_1.l = 1.0;
     y4_15_1.lo = 0.0 ;   y4_15_1.up    = 0.0  ;     y4_15_1.l = 1.0;
     s4_15_1.lo = 0.0 ;   s4_15_1.up    = 0.0  ;     s4_15_1.l = 1.0;
     b4_15_1.lo = 0.0 ;   b4_15_1.up    = 0.0  ;     b4_15_1.l = 1.0;
     o4_15_1.lo = 0.0 ;   o4_15_1.up    = 0.0  ;     o4_15_1.l = 1.0;
     p4_15_1.lo = 0.0 ;   p4_15_1.up    = 0.0  ;     p4_15_1.l = 1.0;
     y5_15_1.lo = 0.0 ;   y5_15_1.up    = 0.0  ;     y5_15_1.l = 1.0;
     s5_15_1.lo = 0.0 ;   s5_15_1.up    = 0.0  ;     s5_15_1.l = 1.0;
     b5_15_1.lo = 0.0 ;   b5_15_1.up    = 0.0  ;     b5_15_1.l = 1.0;
     o5_15_1.lo = 0.0 ;   o5_15_1.up    = 0.0  ;     o5_15_1.l = 1.0;
     p5_15_1.lo = 0.0 ;   p5_15_1.up    = 0.0  ;     p5_15_1.l = 1.0;
     y6_15_1.lo = 0.0 ;   y6_15_1.up    = 0.0  ;     y6_15_1.l = 1.0;
     s6_15_1.lo = 0.0 ;   s6_15_1.up    = 0.0  ;     s6_15_1.l = 1.0;
     b6_15_1.lo = 0.0 ;   b6_15_1.up    = 0.0  ;     b6_15_1.l = 1.0;
     o6_15_1.lo = 0.0 ;   o6_15_1.up    = 0.0  ;     o6_15_1.l = 1.0;
     p6_15_1.lo = 0.0 ;   p6_15_1.up    = 0.0  ;     p6_15_1.l = 1.0;
     y7_15_1.lo = 0.0 ;   y7_15_1.up    = 0.0  ;     y7_15_1.l = 1.0;
     s7_15_1.lo = 0.0 ;   s7_15_1.up    = 0.0  ;     s7_15_1.l = 1.0;
     b7_15_1.lo = 0.0 ;   b7_15_1.up    = 0.0  ;     b7_15_1.l = 1.0;
     o7_15_1.lo = 0.0 ;   o7_15_1.up    = 0.0  ;     o7_15_1.l = 1.0;
     p7_15_1.lo = 0.0 ;   p7_15_1.up    = 0.0  ;     p7_15_1.l = 1.0;
     y8_15_1.lo = 0.0 ;   y8_15_1.up    = 1.0  ;     y8_15_1.l = 1.0;
     s8_15_1.lo = 0.0 ;   s8_15_1.up    = 10.0 ;     s8_15_1.l = 1.0;
     b8_15_1.lo = 0.0 ;   b8_15_1.up    = 0.0  ;     b8_15_1.l = 1.0;
     o8_15_1.lo = 0.0 ;   o8_15_1.up    = 0.0  ;     o8_15_1.l = 1.0;
     p8_15_1.lo = 0.0 ;   p8_15_1.up    = 1.0  ;     p8_15_1.l = 1.0;
     y9_15_1.lo = 0.0 ;   y9_15_1.up    = 0.0  ;     y9_15_1.l = 1.0;
     s9_15_1.lo = 0.0 ;   s9_15_1.up    = 0.0  ;     s9_15_1.l = 1.0;
     b9_15_1.lo = 0.0 ;   b9_15_1.up    = 0.0  ;     b9_15_1.l = 1.0;
     o9_15_1.lo = 0.0 ;   o9_15_1.up    = 0.0  ;     o9_15_1.l = 1.0;
     p9_15_1.lo = 0.0 ;   p9_15_1.up    = 0.0  ;     p9_15_1.l = 1.0;
    y10_15_1.lo = 0.0 ;  y10_15_1.up    = 0.0  ;    y10_15_1.l = 1.0;
    s10_15_1.lo = 0.0 ;  s10_15_1.up    = 0.0  ;    s10_15_1.l = 1.0;
    b10_15_1.lo = 0.0 ;  b10_15_1.up    = 0.0  ;    b10_15_1.l = 1.0;
    o10_15_1.lo = 0.0 ;  o10_15_1.up    = 0.0  ;    o10_15_1.l = 1.0;
    p10_15_1.lo = 0.0 ;  p10_15_1.up    = 0.0  ;    p10_15_1.l = 1.0;
    y11_15_1.lo = 0.0 ;  y11_15_1.up    = 0.0  ;    y11_15_1.l = 1.0;
    s11_15_1.lo = 0.0 ;  s11_15_1.up    = 0.0  ;    s11_15_1.l = 1.0;
    b11_15_1.lo = 0.0 ;  b11_15_1.up    = 0.0  ;    b11_15_1.l = 1.0;
    o11_15_1.lo = 0.0 ;  o11_15_1.up    = 0.0  ;    o11_15_1.l = 1.0;
    p11_15_1.lo = 0.0 ;  p11_15_1.up    = 0.0  ;    p11_15_1.l = 1.0;
    y12_15_1.lo = 0.0 ;  y12_15_1.up    = 0.0  ;    y12_15_1.l = 1.0;
    s12_15_1.lo = 0.0 ;  s12_15_1.up    = 0.0  ;    s12_15_1.l = 1.0;
    b12_15_1.lo = 0.0 ;  b12_15_1.up    = 0.0  ;    b12_15_1.l = 1.0;
    o12_15_1.lo = 0.0 ;  o12_15_1.up    = 0.0  ;    o12_15_1.l = 1.0;
    p12_15_1.lo = 0.0 ;  p12_15_1.up    = 0.0  ;    p12_15_1.l = 1.0;
    y13_15_1.lo = 0.0 ;  y13_15_1.up    = 0.0  ;    y13_15_1.l = 1.0;
    s13_15_1.lo = 0.0 ;  s13_15_1.up    = 0.0  ;    s13_15_1.l = 1.0;
    b13_15_1.lo = 0.0 ;  b13_15_1.up    = 0.0  ;    b13_15_1.l = 1.0;
    o13_15_1.lo = 0.0 ;  o13_15_1.up    = 0.0  ;    o13_15_1.l = 1.0;
    p13_15_1.lo = 0.0 ;  p13_15_1.up    = 0.0  ;    p13_15_1.l = 1.0;
    y14_15_1.lo = 0.0 ;  y14_15_1.up    = 0.0  ;    y14_15_1.l = 1.0;
    s14_15_1.lo = 0.0 ;  s14_15_1.up    = 0.0  ;    s14_15_1.l = 1.0;
    b14_15_1.lo = 0.0 ;  b14_15_1.up    = 0.0  ;    b14_15_1.l = 1.0;
    o14_15_1.lo = 0.0 ;  o14_15_1.up    = 0.0  ;    o14_15_1.l = 1.0;
    p14_15_1.lo = 0.0 ;  p14_15_1.up    = 0.0  ;    p14_15_1.l = 1.0;
    y15_15_1.lo = 0.0 ;  y15_15_1.up    = 0.0  ;    y15_15_1.l = 1.0;
    s15_15_1.lo = 0.0 ;  s15_15_1.up    = 0.0  ;    s15_15_1.l = 1.0;
    b15_15_1.lo = 0.0 ;  b15_15_1.up    = 0.0  ;    b15_15_1.l = 1.0;
    o15_15_1.lo = 0.0 ;  o15_15_1.up    = 0.0  ;    o15_15_1.l = 1.0;
    p15_15_1.lo = 0.0 ;  p15_15_1.up    = 0.0  ;    p15_15_1.l = 1.0;
       sm1_2.lo = 0.0 ;     sm1_2.up    = 10.0 ;       sm1_2.l = 1.0;
    sm1_m1_2.lo = 0.0 ;  sm1_m1_2.up    = 0.0  ;    sm1_m1_2.l = 1.0;
     s0_m1_2.lo = 0.0 ;   s0_m1_2.up    = 0.0  ;     s0_m1_2.l = 1.0;
     s1_m1_2.lo = 0.0 ;   s1_m1_2.up    = 0.0  ;     s1_m1_2.l = 1.0;
     s2_m1_2.lo = 0.0 ;   s2_m1_2.up    = 0.0  ;     s2_m1_2.l = 1.0;
     s3_m1_2.lo = 0.0 ;   s3_m1_2.up    = 0.0  ;     s3_m1_2.l = 1.0;
     s4_m1_2.lo = 0.0 ;   s4_m1_2.up    = 0.0  ;     s4_m1_2.l = 1.0;
     s5_m1_2.lo = 0.0 ;   s5_m1_2.up    = 0.0  ;     s5_m1_2.l = 1.0;
     s6_m1_2.lo = 0.0 ;   s6_m1_2.up    = 0.0  ;     s6_m1_2.l = 1.0;
     s7_m1_2.lo = 0.0 ;   s7_m1_2.up    = 0.0  ;     s7_m1_2.l = 1.0;
     s8_m1_2.lo = 0.0 ;   s8_m1_2.up    = 0.0  ;     s8_m1_2.l = 1.0;
     s9_m1_2.lo = 0.0 ;   s9_m1_2.up    = 0.0  ;     s9_m1_2.l = 1.0;
    s10_m1_2.lo = 0.0 ;  s10_m1_2.up    = 0.0  ;    s10_m1_2.l = 1.0;
    s11_m1_2.lo = 0.0 ;  s11_m1_2.up    = 0.0  ;    s11_m1_2.l = 1.0;
    s12_m1_2.lo = 0.0 ;  s12_m1_2.up    = 0.0  ;    s12_m1_2.l = 1.0;
    s13_m1_2.lo = 0.0 ;  s13_m1_2.up    = 0.0  ;    s13_m1_2.l = 1.0;
    s14_m1_2.lo = 0.0 ;  s14_m1_2.up    = 0.0  ;    s14_m1_2.l = 1.0;
    s15_m1_2.lo = 0.0 ;  s15_m1_2.up    = 0.0  ;    s15_m1_2.l = 1.0;
        s0_2.lo = 0.0 ;      s0_2.up    = 10.0 ;        s0_2.l = 1.0;
     sm1_0_2.lo = 0.0 ;   sm1_0_2.up    = 0.0  ;     sm1_0_2.l = 1.0;
      s0_0_2.lo = 0.0 ;    s0_0_2.up    = 0.0  ;      s0_0_2.l = 1.0;
      s1_0_2.lo = 0.0 ;    s1_0_2.up    = 0.0  ;      s1_0_2.l = 1.0;
      s2_0_2.lo = 0.0 ;    s2_0_2.up    = 0.0  ;      s2_0_2.l = 1.0;
      s3_0_2.lo = 0.0 ;    s3_0_2.up    = 0.0  ;      s3_0_2.l = 1.0;
      s4_0_2.lo = 0.0 ;    s4_0_2.up    = 0.0  ;      s4_0_2.l = 1.0;
      s5_0_2.lo = 0.0 ;    s5_0_2.up    = 0.0  ;      s5_0_2.l = 1.0;
      s6_0_2.lo = 0.0 ;    s6_0_2.up    = 0.0  ;      s6_0_2.l = 1.0;
      s7_0_2.lo = 0.0 ;    s7_0_2.up    = 0.0  ;      s7_0_2.l = 1.0;
      s8_0_2.lo = 0.0 ;    s8_0_2.up    = 0.0  ;      s8_0_2.l = 1.0;
      s9_0_2.lo = 0.0 ;    s9_0_2.up    = 0.0  ;      s9_0_2.l = 1.0;
     s10_0_2.lo = 0.0 ;   s10_0_2.up    = 0.0  ;     s10_0_2.l = 1.0;
     s11_0_2.lo = 0.0 ;   s11_0_2.up    = 0.0  ;     s11_0_2.l = 1.0;
     s12_0_2.lo = 0.0 ;   s12_0_2.up    = 0.0  ;     s12_0_2.l = 1.0;
     s13_0_2.lo = 0.0 ;   s13_0_2.up    = 0.0  ;     s13_0_2.l = 1.0;
     s14_0_2.lo = 0.0 ;   s14_0_2.up    = 0.0  ;     s14_0_2.l = 1.0;
     s15_0_2.lo = 0.0 ;   s15_0_2.up    = 0.0  ;     s15_0_2.l = 1.0;
        s1_2.lo = 0.0 ;      s1_2.up    = 0.0  ;        s1_2.l = 1.0;
     sm1_1_2.lo = 0.0 ;   sm1_1_2.up    = 0.0  ;     sm1_1_2.l = 1.0;
      s0_1_2.lo = 0.0 ;    s0_1_2.up    = 0.0  ;      s0_1_2.l = 1.0;
      s1_1_2.lo = 0.0 ;    s1_1_2.up    = 0.0  ;      s1_1_2.l = 1.0;
      s2_1_2.lo = 0.0 ;    s2_1_2.up    = 0.0  ;      s2_1_2.l = 1.0;
      s3_1_2.lo = 0.0 ;    s3_1_2.up    = 0.0  ;      s3_1_2.l = 1.0;
      s4_1_2.lo = 0.0 ;    s4_1_2.up    = 0.0  ;      s4_1_2.l = 1.0;
      s5_1_2.lo = 0.0 ;    s5_1_2.up    = 0.0  ;      s5_1_2.l = 1.0;
      s6_1_2.lo = 0.0 ;    s6_1_2.up    = 0.0  ;      s6_1_2.l = 1.0;
      s7_1_2.lo = 0.0 ;    s7_1_2.up    = 0.0  ;      s7_1_2.l = 1.0;
      s8_1_2.lo = 0.0 ;    s8_1_2.up    = 0.0  ;      s8_1_2.l = 1.0;
      s9_1_2.lo = 0.0 ;    s9_1_2.up    = 0.0  ;      s9_1_2.l = 1.0;
     s10_1_2.lo = 0.0 ;   s10_1_2.up    = 0.0  ;     s10_1_2.l = 1.0;
     s11_1_2.lo = 0.0 ;   s11_1_2.up    = 0.0  ;     s11_1_2.l = 1.0;
     s12_1_2.lo = 0.0 ;   s12_1_2.up    = 0.0  ;     s12_1_2.l = 1.0;
     s13_1_2.lo = 0.0 ;   s13_1_2.up    = 0.0  ;     s13_1_2.l = 1.0;
     s14_1_2.lo = 0.0 ;   s14_1_2.up    = 0.0  ;     s14_1_2.l = 1.0;
     s15_1_2.lo = 0.0 ;   s15_1_2.up    = 0.0  ;     s15_1_2.l = 1.0;
        s2_2.lo = 0.0 ;      s2_2.up    = 0.0  ;        s2_2.l = 1.0;
     sm1_2_2.lo = 0.0 ;   sm1_2_2.up    = 0.0  ;     sm1_2_2.l = 1.0;
      s0_2_2.lo = 0.0 ;    s0_2_2.up    = 0.0  ;      s0_2_2.l = 1.0;
      s1_2_2.lo = 0.0 ;    s1_2_2.up    = 0.0  ;      s1_2_2.l = 1.0;
      s2_2_2.lo = 0.0 ;    s2_2_2.up    = 0.0  ;      s2_2_2.l = 1.0;
      s3_2_2.lo = 0.0 ;    s3_2_2.up    = 0.0  ;      s3_2_2.l = 1.0;
      s4_2_2.lo = 0.0 ;    s4_2_2.up    = 0.0  ;      s4_2_2.l = 1.0;
      s5_2_2.lo = 0.0 ;    s5_2_2.up    = 0.0  ;      s5_2_2.l = 1.0;
      s6_2_2.lo = 0.0 ;    s6_2_2.up    = 0.0  ;      s6_2_2.l = 1.0;
      s7_2_2.lo = 0.0 ;    s7_2_2.up    = 0.0  ;      s7_2_2.l = 1.0;
      s8_2_2.lo = 0.0 ;    s8_2_2.up    = 0.0  ;      s8_2_2.l = 1.0;
      s9_2_2.lo = 0.0 ;    s9_2_2.up    = 0.0  ;      s9_2_2.l = 1.0;
     s10_2_2.lo = 0.0 ;   s10_2_2.up    = 0.0  ;     s10_2_2.l = 1.0;
     s11_2_2.lo = 0.0 ;   s11_2_2.up    = 0.0  ;     s11_2_2.l = 1.0;
     s12_2_2.lo = 0.0 ;   s12_2_2.up    = 0.0  ;     s12_2_2.l = 1.0;
     s13_2_2.lo = 0.0 ;   s13_2_2.up    = 0.0  ;     s13_2_2.l = 1.0;
     s14_2_2.lo = 0.0 ;   s14_2_2.up    = 0.0  ;     s14_2_2.l = 1.0;
     s15_2_2.lo = 0.0 ;   s15_2_2.up    = 0.0  ;     s15_2_2.l = 1.0;
        s3_2.lo = 0.0 ;      s3_2.up    = 0.0  ;        s3_2.l = 1.0;
     sm1_3_2.lo = 0.0 ;   sm1_3_2.up    = 0.0  ;     sm1_3_2.l = 1.0;
      s0_3_2.lo = 0.0 ;    s0_3_2.up    = 0.0  ;      s0_3_2.l = 1.0;
      s1_3_2.lo = 0.0 ;    s1_3_2.up    = 0.0  ;      s1_3_2.l = 1.0;
      s2_3_2.lo = 0.0 ;    s2_3_2.up    = 0.0  ;      s2_3_2.l = 1.0;
      s3_3_2.lo = 0.0 ;    s3_3_2.up    = 0.0  ;      s3_3_2.l = 1.0;
      s4_3_2.lo = 0.0 ;    s4_3_2.up    = 0.0  ;      s4_3_2.l = 1.0;
      s5_3_2.lo = 0.0 ;    s5_3_2.up    = 0.0  ;      s5_3_2.l = 1.0;
      s6_3_2.lo = 0.0 ;    s6_3_2.up    = 0.0  ;      s6_3_2.l = 1.0;
      s7_3_2.lo = 0.0 ;    s7_3_2.up    = 0.0  ;      s7_3_2.l = 1.0;
      s8_3_2.lo = 0.0 ;    s8_3_2.up    = 0.0  ;      s8_3_2.l = 1.0;
      s9_3_2.lo = 0.0 ;    s9_3_2.up    = 0.0  ;      s9_3_2.l = 1.0;
     s10_3_2.lo = 0.0 ;   s10_3_2.up    = 0.0  ;     s10_3_2.l = 1.0;
     s11_3_2.lo = 0.0 ;   s11_3_2.up    = 0.0  ;     s11_3_2.l = 1.0;
     s12_3_2.lo = 0.0 ;   s12_3_2.up    = 0.0  ;     s12_3_2.l = 1.0;
     s13_3_2.lo = 0.0 ;   s13_3_2.up    = 0.0  ;     s13_3_2.l = 1.0;
     s14_3_2.lo = 0.0 ;   s14_3_2.up    = 0.0  ;     s14_3_2.l = 1.0;
     s15_3_2.lo = 0.0 ;   s15_3_2.up    = 0.0  ;     s15_3_2.l = 1.0;
        s4_2.lo = 0.0 ;      s4_2.up    = 10.0 ;        s4_2.l = 1.0;
     sm1_4_2.lo = 0.0 ;   sm1_4_2.up    = 0.0  ;     sm1_4_2.l = 1.0;
      s0_4_2.lo = 0.0 ;    s0_4_2.up    = 0.0  ;      s0_4_2.l = 1.0;
      s1_4_2.lo = 0.0 ;    s1_4_2.up    = 0.0  ;      s1_4_2.l = 1.0;
      s2_4_2.lo = 0.0 ;    s2_4_2.up    = 0.0  ;      s2_4_2.l = 1.0;
      s3_4_2.lo = 0.0 ;    s3_4_2.up    = 0.0  ;      s3_4_2.l = 1.0;
      s4_4_2.lo = 0.0 ;    s4_4_2.up    = 0.0  ;      s4_4_2.l = 1.0;
      s5_4_2.lo = 0.0 ;    s5_4_2.up    = 0.0  ;      s5_4_2.l = 1.0;
      s6_4_2.lo = 0.0 ;    s6_4_2.up    = 0.0  ;      s6_4_2.l = 1.0;
      s7_4_2.lo = 0.0 ;    s7_4_2.up    = 0.0  ;      s7_4_2.l = 1.0;
      s8_4_2.lo = 0.0 ;    s8_4_2.up    = 0.0  ;      s8_4_2.l = 1.0;
      s9_4_2.lo = 0.0 ;    s9_4_2.up    = 0.0  ;      s9_4_2.l = 1.0;
     s10_4_2.lo = 0.0 ;   s10_4_2.up    = 0.0  ;     s10_4_2.l = 1.0;
     s11_4_2.lo = 0.0 ;   s11_4_2.up    = 0.0  ;     s11_4_2.l = 1.0;
     s12_4_2.lo = 0.0 ;   s12_4_2.up    = 0.0  ;     s12_4_2.l = 1.0;
     s13_4_2.lo = 0.0 ;   s13_4_2.up    = 0.0  ;     s13_4_2.l = 1.0;
     s14_4_2.lo = 0.0 ;   s14_4_2.up    = 0.0  ;     s14_4_2.l = 1.0;
     s15_4_2.lo = 0.0 ;   s15_4_2.up    = 0.0  ;     s15_4_2.l = 1.0;
        s5_2.lo = 0.0 ;      s5_2.up    = 0.0  ;        s5_2.l = 1.0;
     sm1_5_2.lo = 0.0 ;   sm1_5_2.up    = 0.0  ;     sm1_5_2.l = 1.0;
      s0_5_2.lo = 0.0 ;    s0_5_2.up    = 0.0  ;      s0_5_2.l = 1.0;
      s1_5_2.lo = 0.0 ;    s1_5_2.up    = 0.0  ;      s1_5_2.l = 1.0;
      s2_5_2.lo = 0.0 ;    s2_5_2.up    = 0.0  ;      s2_5_2.l = 1.0;
      s3_5_2.lo = 0.0 ;    s3_5_2.up    = 10.0 ;      s3_5_2.l = 1.0;
      s4_5_2.lo = 0.0 ;    s4_5_2.up    = 0.0  ;      s4_5_2.l = 1.0;
      s5_5_2.lo = 0.0 ;    s5_5_2.up    = 0.0  ;      s5_5_2.l = 1.0;
      s6_5_2.lo = 0.0 ;    s6_5_2.up    = 0.0  ;      s6_5_2.l = 1.0;
      s7_5_2.lo = 0.0 ;    s7_5_2.up    = 0.0  ;      s7_5_2.l = 1.0;
      s8_5_2.lo = 0.0 ;    s8_5_2.up    = 0.0  ;      s8_5_2.l = 1.0;
      s9_5_2.lo = 0.0 ;    s9_5_2.up    = 0.0  ;      s9_5_2.l = 1.0;
     s10_5_2.lo = 0.0 ;   s10_5_2.up    = 0.0  ;     s10_5_2.l = 1.0;
     s11_5_2.lo = 0.0 ;   s11_5_2.up    = 0.0  ;     s11_5_2.l = 1.0;
     s12_5_2.lo = 0.0 ;   s12_5_2.up    = 0.0  ;     s12_5_2.l = 1.0;
     s13_5_2.lo = 0.0 ;   s13_5_2.up    = 0.0  ;     s13_5_2.l = 1.0;
     s14_5_2.lo = 0.0 ;   s14_5_2.up    = 0.0  ;     s14_5_2.l = 1.0;
     s15_5_2.lo = 0.0 ;   s15_5_2.up    = 0.0  ;     s15_5_2.l = 1.0;
        s6_2.lo = 0.0 ;      s6_2.up    = 10.0 ;        s6_2.l = 1.0;
     sm1_6_2.lo = 0.0 ;   sm1_6_2.up    = 0.0  ;     sm1_6_2.l = 1.0;
      s0_6_2.lo = 0.0 ;    s0_6_2.up    = 0.0  ;      s0_6_2.l = 1.0;
      s1_6_2.lo = 0.0 ;    s1_6_2.up    = 0.0  ;      s1_6_2.l = 1.0;
      s2_6_2.lo = 0.0 ;    s2_6_2.up    = 0.0  ;      s2_6_2.l = 1.0;
      s3_6_2.lo = 0.0 ;    s3_6_2.up    = 0.0  ;      s3_6_2.l = 1.0;
      s4_6_2.lo = 0.0 ;    s4_6_2.up    = 0.0  ;      s4_6_2.l = 1.0;
      s5_6_2.lo = 0.0 ;    s5_6_2.up    = 0.0  ;      s5_6_2.l = 1.0;
      s6_6_2.lo = 0.0 ;    s6_6_2.up    = 0.0  ;      s6_6_2.l = 1.0;
      s7_6_2.lo = 0.0 ;    s7_6_2.up    = 0.0  ;      s7_6_2.l = 1.0;
      s8_6_2.lo = 0.0 ;    s8_6_2.up    = 0.0  ;      s8_6_2.l = 1.0;
      s9_6_2.lo = 0.0 ;    s9_6_2.up    = 0.0  ;      s9_6_2.l = 1.0;
     s10_6_2.lo = 0.0 ;   s10_6_2.up    = 0.0  ;     s10_6_2.l = 1.0;
     s11_6_2.lo = 0.0 ;   s11_6_2.up    = 0.0  ;     s11_6_2.l = 1.0;
     s12_6_2.lo = 0.0 ;   s12_6_2.up    = 0.0  ;     s12_6_2.l = 1.0;
     s13_6_2.lo = 0.0 ;   s13_6_2.up    = 0.0  ;     s13_6_2.l = 1.0;
     s14_6_2.lo = 0.0 ;   s14_6_2.up    = 0.0  ;     s14_6_2.l = 1.0;
     s15_6_2.lo = 0.0 ;   s15_6_2.up    = 0.0  ;     s15_6_2.l = 1.0;
        s7_2.lo = 0.0 ;      s7_2.up    = 10.0 ;        s7_2.l = 1.0;
     sm1_7_2.lo = 0.0 ;   sm1_7_2.up    = 0.0  ;     sm1_7_2.l = 1.0;
      s0_7_2.lo = 0.0 ;    s0_7_2.up    = 0.0  ;      s0_7_2.l = 1.0;
      s1_7_2.lo = 0.0 ;    s1_7_2.up    = 0.0  ;      s1_7_2.l = 1.0;
      s2_7_2.lo = 0.0 ;    s2_7_2.up    = 0.0  ;      s2_7_2.l = 1.0;
      s3_7_2.lo = 0.0 ;    s3_7_2.up    = 0.0  ;      s3_7_2.l = 1.0;
      s4_7_2.lo = 0.0 ;    s4_7_2.up    = 0.0  ;      s4_7_2.l = 1.0;
      s5_7_2.lo = 0.0 ;    s5_7_2.up    = 0.0  ;      s5_7_2.l = 1.0;
      s6_7_2.lo = 0.0 ;    s6_7_2.up    = 0.0  ;      s6_7_2.l = 1.0;
      s7_7_2.lo = 0.0 ;    s7_7_2.up    = 0.0  ;      s7_7_2.l = 1.0;
      s8_7_2.lo = 0.0 ;    s8_7_2.up    = 0.0  ;      s8_7_2.l = 1.0;
      s9_7_2.lo = 0.0 ;    s9_7_2.up    = 0.0  ;      s9_7_2.l = 1.0;
     s10_7_2.lo = 0.0 ;   s10_7_2.up    = 0.0  ;     s10_7_2.l = 1.0;
     s11_7_2.lo = 0.0 ;   s11_7_2.up    = 0.0  ;     s11_7_2.l = 1.0;
     s12_7_2.lo = 0.0 ;   s12_7_2.up    = 0.0  ;     s12_7_2.l = 1.0;
     s13_7_2.lo = 0.0 ;   s13_7_2.up    = 0.0  ;     s13_7_2.l = 1.0;
     s14_7_2.lo = 0.0 ;   s14_7_2.up    = 0.0  ;     s14_7_2.l = 1.0;
     s15_7_2.lo = 0.0 ;   s15_7_2.up    = 0.0  ;     s15_7_2.l = 1.0;
        s8_2.lo = 0.0 ;      s8_2.up    = 0.0  ;        s8_2.l = 1.0;
     sm1_8_2.lo = 0.0 ;   sm1_8_2.up    = 0.0  ;     sm1_8_2.l = 1.0;
      s0_8_2.lo = 0.0 ;    s0_8_2.up    = 0.0  ;      s0_8_2.l = 1.0;
      s1_8_2.lo = 0.0 ;    s1_8_2.up    = 0.0  ;      s1_8_2.l = 1.0;
      s2_8_2.lo = 0.0 ;    s2_8_2.up    = 0.0  ;      s2_8_2.l = 1.0;
      s3_8_2.lo = 0.0 ;    s3_8_2.up    = 0.0  ;      s3_8_2.l = 1.0;
      s4_8_2.lo = 0.0 ;    s4_8_2.up    = 0.0  ;      s4_8_2.l = 1.0;
      s5_8_2.lo = 0.0 ;    s5_8_2.up    = 0.0  ;      s5_8_2.l = 1.0;
      s6_8_2.lo = 0.0 ;    s6_8_2.up    = 0.0  ;      s6_8_2.l = 1.0;
      s7_8_2.lo = 0.0 ;    s7_8_2.up    = 0.0  ;      s7_8_2.l = 1.0;
      s8_8_2.lo = 0.0 ;    s8_8_2.up    = 0.0  ;      s8_8_2.l = 1.0;
      s9_8_2.lo = 0.0 ;    s9_8_2.up    = 0.0  ;      s9_8_2.l = 1.0;
     s10_8_2.lo = 0.0 ;   s10_8_2.up    = 0.0  ;     s10_8_2.l = 1.0;
     s11_8_2.lo = 0.0 ;   s11_8_2.up    = 0.0  ;     s11_8_2.l = 1.0;
     s12_8_2.lo = 0.0 ;   s12_8_2.up    = 0.0  ;     s12_8_2.l = 1.0;
     s13_8_2.lo = 0.0 ;   s13_8_2.up    = 0.0  ;     s13_8_2.l = 1.0;
     s14_8_2.lo = 0.0 ;   s14_8_2.up    = 0.0  ;     s14_8_2.l = 1.0;
     s15_8_2.lo = 0.0 ;   s15_8_2.up    = 0.0  ;     s15_8_2.l = 1.0;
        s9_2.lo = 0.0 ;      s9_2.up    = 0.0  ;        s9_2.l = 1.0;
     sm1_9_2.lo = 0.0 ;   sm1_9_2.up    = 0.0  ;     sm1_9_2.l = 1.0;
      s0_9_2.lo = 0.0 ;    s0_9_2.up    = 0.0  ;      s0_9_2.l = 1.0;
      s1_9_2.lo = 0.0 ;    s1_9_2.up    = 0.0  ;      s1_9_2.l = 1.0;
      s2_9_2.lo = 0.0 ;    s2_9_2.up    = 0.0  ;      s2_9_2.l = 1.0;
      s3_9_2.lo = 0.0 ;    s3_9_2.up    = 10.0 ;      s3_9_2.l = 1.0;
      s4_9_2.lo = 0.0 ;    s4_9_2.up    = 0.0  ;      s4_9_2.l = 1.0;
      s5_9_2.lo = 0.0 ;    s5_9_2.up    = 0.0  ;      s5_9_2.l = 1.0;
      s6_9_2.lo = 0.0 ;    s6_9_2.up    = 0.0  ;      s6_9_2.l = 1.0;
      s7_9_2.lo = 0.0 ;    s7_9_2.up    = 0.0  ;      s7_9_2.l = 1.0;
      s8_9_2.lo = 0.0 ;    s8_9_2.up    = 0.0  ;      s8_9_2.l = 1.0;
      s9_9_2.lo = 0.0 ;    s9_9_2.up    = 0.0  ;      s9_9_2.l = 1.0;
     s10_9_2.lo = 0.0 ;   s10_9_2.up    = 0.0  ;     s10_9_2.l = 1.0;
     s11_9_2.lo = 0.0 ;   s11_9_2.up    = 0.0  ;     s11_9_2.l = 1.0;
     s12_9_2.lo = 0.0 ;   s12_9_2.up    = 0.0  ;     s12_9_2.l = 1.0;
     s13_9_2.lo = 0.0 ;   s13_9_2.up    = 0.0  ;     s13_9_2.l = 1.0;
     s14_9_2.lo = 0.0 ;   s14_9_2.up    = 0.0  ;     s14_9_2.l = 1.0;
     s15_9_2.lo = 0.0 ;   s15_9_2.up    = 0.0  ;     s15_9_2.l = 1.0;
       s10_2.lo = 0.0 ;     s10_2.up    = 0.0  ;       s10_2.l = 1.0;
    sm1_10_2.lo = 0.0 ;  sm1_10_2.up    = 0.0  ;    sm1_10_2.l = 1.0;
     s0_10_2.lo = 0.0 ;   s0_10_2.up    = 0.0  ;     s0_10_2.l = 1.0;
     s1_10_2.lo = 0.0 ;   s1_10_2.up    = 0.0  ;     s1_10_2.l = 1.0;
     s2_10_2.lo = 0.0 ;   s2_10_2.up    = 0.0  ;     s2_10_2.l = 1.0;
     s3_10_2.lo = 0.0 ;   s3_10_2.up    = 0.0  ;     s3_10_2.l = 1.0;
     s4_10_2.lo = 0.0 ;   s4_10_2.up    = 0.0  ;     s4_10_2.l = 1.0;
     s5_10_2.lo = 0.0 ;   s5_10_2.up    = 0.0  ;     s5_10_2.l = 1.0;
     s6_10_2.lo = 0.0 ;   s6_10_2.up    = 0.0  ;     s6_10_2.l = 1.0;
     s7_10_2.lo = 0.0 ;   s7_10_2.up    = 0.0  ;     s7_10_2.l = 1.0;
     s8_10_2.lo = 0.0 ;   s8_10_2.up    = 0.0  ;     s8_10_2.l = 1.0;
     s9_10_2.lo = 0.0 ;   s9_10_2.up    = 0.0  ;     s9_10_2.l = 1.0;
    s10_10_2.lo = 0.0 ;  s10_10_2.up    = 0.0  ;    s10_10_2.l = 1.0;
    s11_10_2.lo = 0.0 ;  s11_10_2.up    = 0.0  ;    s11_10_2.l = 1.0;
    s12_10_2.lo = 0.0 ;  s12_10_2.up    = 0.0  ;    s12_10_2.l = 1.0;
    s13_10_2.lo = 0.0 ;  s13_10_2.up    = 0.0  ;    s13_10_2.l = 1.0;
    s14_10_2.lo = 0.0 ;  s14_10_2.up    = 0.0  ;    s14_10_2.l = 1.0;
    s15_10_2.lo = 0.0 ;  s15_10_2.up    = 0.0  ;    s15_10_2.l = 1.0;
       s11_2.lo = 0.0 ;     s11_2.up    = 0.0  ;       s11_2.l = 1.0;
    sm1_11_2.lo = 0.0 ;  sm1_11_2.up    = 0.0  ;    sm1_11_2.l = 1.0;
     s0_11_2.lo = 0.0 ;   s0_11_2.up    = 0.0  ;     s0_11_2.l = 1.0;
     s1_11_2.lo = 0.0 ;   s1_11_2.up    = 0.0  ;     s1_11_2.l = 1.0;
     s2_11_2.lo = 0.0 ;   s2_11_2.up    = 0.0  ;     s2_11_2.l = 1.0;
     s3_11_2.lo = 0.0 ;   s3_11_2.up    = 0.0  ;     s3_11_2.l = 1.0;
     s4_11_2.lo = 0.0 ;   s4_11_2.up    = 10.0 ;     s4_11_2.l = 1.0;
     s5_11_2.lo = 0.0 ;   s5_11_2.up    = 0.0  ;     s5_11_2.l = 1.0;
     s6_11_2.lo = 0.0 ;   s6_11_2.up    = 0.0  ;     s6_11_2.l = 1.0;
     s7_11_2.lo = 0.0 ;   s7_11_2.up    = 10.0 ;     s7_11_2.l = 1.0;
     s8_11_2.lo = 0.0 ;   s8_11_2.up    = 0.0  ;     s8_11_2.l = 1.0;
     s9_11_2.lo = 0.0 ;   s9_11_2.up    = 0.0  ;     s9_11_2.l = 1.0;
    s10_11_2.lo = 0.0 ;  s10_11_2.up    = 0.0  ;    s10_11_2.l = 1.0;
    s11_11_2.lo = 0.0 ;  s11_11_2.up    = 0.0  ;    s11_11_2.l = 1.0;
    s12_11_2.lo = 0.0 ;  s12_11_2.up    = 0.0  ;    s12_11_2.l = 1.0;
    s13_11_2.lo = 0.0 ;  s13_11_2.up    = 0.0  ;    s13_11_2.l = 1.0;
    s14_11_2.lo = 0.0 ;  s14_11_2.up    = 0.0  ;    s14_11_2.l = 1.0;
    s15_11_2.lo = 0.0 ;  s15_11_2.up    = 0.0  ;    s15_11_2.l = 1.0;
       s12_2.lo = 0.0 ;     s12_2.up    = 10.0 ;       s12_2.l = 1.0;
    sm1_12_2.lo = 0.0 ;  sm1_12_2.up    = 0.0  ;    sm1_12_2.l = 1.0;
     s0_12_2.lo = 0.0 ;   s0_12_2.up    = 0.0  ;     s0_12_2.l = 1.0;
     s1_12_2.lo = 0.0 ;   s1_12_2.up    = 0.0  ;     s1_12_2.l = 1.0;
     s2_12_2.lo = 0.0 ;   s2_12_2.up    = 0.0  ;     s2_12_2.l = 1.0;
     s3_12_2.lo = 0.0 ;   s3_12_2.up    = 0.0  ;     s3_12_2.l = 1.0;
     s4_12_2.lo = 0.0 ;   s4_12_2.up    = 0.0  ;     s4_12_2.l = 1.0;
     s5_12_2.lo = 0.0 ;   s5_12_2.up    = 0.0  ;     s5_12_2.l = 1.0;
     s6_12_2.lo = 0.0 ;   s6_12_2.up    = 0.0  ;     s6_12_2.l = 1.0;
     s7_12_2.lo = 0.0 ;   s7_12_2.up    = 0.0  ;     s7_12_2.l = 1.0;
     s8_12_2.lo = 0.0 ;   s8_12_2.up    = 0.0  ;     s8_12_2.l = 1.0;
     s9_12_2.lo = 0.0 ;   s9_12_2.up    = 0.0  ;     s9_12_2.l = 1.0;
    s10_12_2.lo = 0.0 ;  s10_12_2.up    = 0.0  ;    s10_12_2.l = 1.0;
    s11_12_2.lo = 0.0 ;  s11_12_2.up    = 0.0  ;    s11_12_2.l = 1.0;
    s12_12_2.lo = 0.0 ;  s12_12_2.up    = 0.0  ;    s12_12_2.l = 1.0;
    s13_12_2.lo = 0.0 ;  s13_12_2.up    = 0.0  ;    s13_12_2.l = 1.0;
    s14_12_2.lo = 0.0 ;  s14_12_2.up    = 0.0  ;    s14_12_2.l = 1.0;
    s15_12_2.lo = 0.0 ;  s15_12_2.up    = 0.0  ;    s15_12_2.l = 1.0;
       s13_2.lo = 0.0 ;     s13_2.up    = 0.0  ;       s13_2.l = 1.0;
    sm1_13_2.lo = 0.0 ;  sm1_13_2.up    = 0.0  ;    sm1_13_2.l = 1.0;
     s0_13_2.lo = 0.0 ;   s0_13_2.up    = 0.0  ;     s0_13_2.l = 1.0;
     s1_13_2.lo = 0.0 ;   s1_13_2.up    = 0.0  ;     s1_13_2.l = 1.0;
     s2_13_2.lo = 0.0 ;   s2_13_2.up    = 0.0  ;     s2_13_2.l = 1.0;
     s3_13_2.lo = 0.0 ;   s3_13_2.up    = 0.0  ;     s3_13_2.l = 1.0;
     s4_13_2.lo = 0.0 ;   s4_13_2.up    = 0.0  ;     s4_13_2.l = 1.0;
     s5_13_2.lo = 0.0 ;   s5_13_2.up    = 10.0 ;     s5_13_2.l = 1.0;
     s6_13_2.lo = 0.0 ;   s6_13_2.up    = 0.0  ;     s6_13_2.l = 1.0;
     s7_13_2.lo = 0.0 ;   s7_13_2.up    = 0.0  ;     s7_13_2.l = 1.0;
     s8_13_2.lo = 0.0 ;   s8_13_2.up    = 0.0  ;     s8_13_2.l = 1.0;
     s9_13_2.lo = 0.0 ;   s9_13_2.up    = 0.0  ;     s9_13_2.l = 1.0;
    s10_13_2.lo = 0.0 ;  s10_13_2.up    = 0.0  ;    s10_13_2.l = 1.0;
    s11_13_2.lo = 0.0 ;  s11_13_2.up    = 0.0  ;    s11_13_2.l = 1.0;
    s12_13_2.lo = 0.0 ;  s12_13_2.up    = 0.0  ;    s12_13_2.l = 1.0;
    s13_13_2.lo = 0.0 ;  s13_13_2.up    = 0.0  ;    s13_13_2.l = 1.0;
    s14_13_2.lo = 0.0 ;  s14_13_2.up    = 0.0  ;    s14_13_2.l = 1.0;
    s15_13_2.lo = 0.0 ;  s15_13_2.up    = 0.0  ;    s15_13_2.l = 1.0;
       s14_2.lo = 0.0 ;     s14_2.up    = 10.0 ;       s14_2.l = 1.0;
    sm1_14_2.lo = 0.0 ;  sm1_14_2.up    = 0.0  ;    sm1_14_2.l = 1.0;
     s0_14_2.lo = 0.0 ;   s0_14_2.up    = 0.0  ;     s0_14_2.l = 1.0;
     s1_14_2.lo = 0.0 ;   s1_14_2.up    = 0.0  ;     s1_14_2.l = 1.0;
     s2_14_2.lo = 0.0 ;   s2_14_2.up    = 0.0  ;     s2_14_2.l = 1.0;
     s3_14_2.lo = 0.0 ;   s3_14_2.up    = 0.0  ;     s3_14_2.l = 1.0;
     s4_14_2.lo = 0.0 ;   s4_14_2.up    = 10.0 ;     s4_14_2.l = 1.0;
     s5_14_2.lo = 0.0 ;   s5_14_2.up    = 0.0  ;     s5_14_2.l = 1.0;
     s6_14_2.lo = 0.0 ;   s6_14_2.up    = 0.0  ;     s6_14_2.l = 1.0;
     s7_14_2.lo = 0.0 ;   s7_14_2.up    = 10.0 ;     s7_14_2.l = 1.0;
     s8_14_2.lo = 0.0 ;   s8_14_2.up    = 0.0  ;     s8_14_2.l = 1.0;
     s9_14_2.lo = 0.0 ;   s9_14_2.up    = 0.0  ;     s9_14_2.l = 1.0;
    s10_14_2.lo = 0.0 ;  s10_14_2.up    = 0.0  ;    s10_14_2.l = 1.0;
    s11_14_2.lo = 0.0 ;  s11_14_2.up    = 0.0  ;    s11_14_2.l = 1.0;
    s12_14_2.lo = 0.0 ;  s12_14_2.up    = 0.0  ;    s12_14_2.l = 1.0;
    s13_14_2.lo = 0.0 ;  s13_14_2.up    = 0.0  ;    s13_14_2.l = 1.0;
    s14_14_2.lo = 0.0 ;  s14_14_2.up    = 0.0  ;    s14_14_2.l = 1.0;
    s15_14_2.lo = 0.0 ;  s15_14_2.up    = 0.0  ;    s15_14_2.l = 1.0;
       s15_2.lo = 0.0 ;     s15_2.up    = 0.0  ;       s15_2.l = 1.0;
    sm1_15_2.lo = 0.0 ;  sm1_15_2.up    = 0.0  ;    sm1_15_2.l = 1.0;
     s0_15_2.lo = 0.0 ;   s0_15_2.up    = 0.0  ;     s0_15_2.l = 1.0;
     s1_15_2.lo = 0.0 ;   s1_15_2.up    = 0.0  ;     s1_15_2.l = 1.0;
     s2_15_2.lo = 0.0 ;   s2_15_2.up    = 0.0  ;     s2_15_2.l = 1.0;
     s3_15_2.lo = 0.0 ;   s3_15_2.up    = 0.0  ;     s3_15_2.l = 1.0;
     s4_15_2.lo = 0.0 ;   s4_15_2.up    = 0.0  ;     s4_15_2.l = 1.0;
     s5_15_2.lo = 0.0 ;   s5_15_2.up    = 0.0  ;     s5_15_2.l = 1.0;
     s6_15_2.lo = 0.0 ;   s6_15_2.up    = 0.0  ;     s6_15_2.l = 1.0;
     s7_15_2.lo = 0.0 ;   s7_15_2.up    = 0.0  ;     s7_15_2.l = 1.0;
     s8_15_2.lo = 0.0 ;   s8_15_2.up    = 10.0 ;     s8_15_2.l = 1.0;
     s9_15_2.lo = 0.0 ;   s9_15_2.up    = 0.0  ;     s9_15_2.l = 1.0;
    s10_15_2.lo = 0.0 ;  s10_15_2.up    = 0.0  ;    s10_15_2.l = 1.0;
    s11_15_2.lo = 0.0 ;  s11_15_2.up    = 0.0  ;    s11_15_2.l = 1.0;
    s12_15_2.lo = 0.0 ;  s12_15_2.up    = 0.0  ;    s12_15_2.l = 1.0;
    s13_15_2.lo = 0.0 ;  s13_15_2.up    = 0.0  ;    s13_15_2.l = 1.0;
    s14_15_2.lo = 0.0 ;  s14_15_2.up    = 0.0  ;    s14_15_2.l = 1.0;
    s15_15_2.lo = 0.0 ;  s15_15_2.up    = 0.0  ;    s15_15_2.l = 1.0;
        x1_1.lo = 0.0 ;      x1_1.up    = 1.0  ;        x1_1.l = 1.0;
        x2_1.lo = 0.0 ;      x2_1.up    = 1.0  ;        x2_1.l = 1.0;
        x3_1.lo = 0.0 ;      x3_1.up    = 1.0  ;        x3_1.l = 1.0;
        x4_1.lo = 0.0 ;      x4_1.up    = 1.0  ;        x4_1.l = 1.0;
        x1_2.lo = 0.0 ;      x1_2.up    = 1.0  ;        x1_2.l = 1.0;
        x2_2.lo = 0.0 ;      x2_2.up    = 1.0  ;        x2_2.l = 1.0;
        x3_2.lo = 0.0 ;      x3_2.up    = 1.0  ;        x3_2.l = 1.0;
        x4_2.lo = 0.0 ;      x4_2.up    = 0.0  ;        x4_2.l = 1.0;
        x1_3.lo = 0.0 ;      x1_3.up    = 1.0  ;        x1_3.l = 1.0;
        x2_3.lo = 0.0 ;      x2_3.up    = 1.0  ;        x2_3.l = 1.0;
        x3_3.lo = 0.0 ;      x3_3.up    = 1.0  ;        x3_3.l = 1.0;
        x4_3.lo = 0.0 ;      x4_3.up    = 1.0  ;        x4_3.l = 1.0;

Model model_ /all/;
Solve model_ using nlp minimazing obj;


display ym1_1.l ;display rm1_1.l ;display sm1_1.l ;display pm1_1.l ;
display ym1_m1_1.l ;display sm1_m1_1.l ;display bm1_m1_1.l ;display om1_m1_1.l ;
display pm1_m1_1.l ;display y0_m1_1.l ;display s0_m1_1.l ;display b0_m1_1.l ;
display o0_m1_1.l ;display p0_m1_1.l ;display y1_m1_1.l ;display s1_m1_1.l ;
display b1_m1_1.l ;display o1_m1_1.l ;display p1_m1_1.l ;display y2_m1_1.l ;
display s2_m1_1.l ;display b2_m1_1.l ;display o2_m1_1.l ;display p2_m1_1.l ;
display y3_m1_1.l ;display s3_m1_1.l ;display b3_m1_1.l ;display o3_m1_1.l ;
display p3_m1_1.l ;display y4_m1_1.l ;display s4_m1_1.l ;display b4_m1_1.l ;
display o4_m1_1.l ;display p4_m1_1.l ;display y5_m1_1.l ;display s5_m1_1.l ;
display b5_m1_1.l ;display o5_m1_1.l ;display p5_m1_1.l ;display y6_m1_1.l ;
display s6_m1_1.l ;display b6_m1_1.l ;display o6_m1_1.l ;display p6_m1_1.l ;
display y7_m1_1.l ;display s7_m1_1.l ;display b7_m1_1.l ;display o7_m1_1.l ;
display p7_m1_1.l ;display y8_m1_1.l ;display s8_m1_1.l ;display b8_m1_1.l ;
display o8_m1_1.l ;display p8_m1_1.l ;display y9_m1_1.l ;display s9_m1_1.l ;
display b9_m1_1.l ;display o9_m1_1.l ;display p9_m1_1.l ;display y10_m1_1.l ;
display s10_m1_1.l ;display b10_m1_1.l ;display o10_m1_1.l ;display p10_m1_1.l ;
display y11_m1_1.l ;display s11_m1_1.l ;display b11_m1_1.l ;display o11_m1_1.l ;
display p11_m1_1.l ;display y12_m1_1.l ;display s12_m1_1.l ;display b12_m1_1.l ;
display o12_m1_1.l ;display p12_m1_1.l ;display y13_m1_1.l ;display s13_m1_1.l ;
display b13_m1_1.l ;display o13_m1_1.l ;display p13_m1_1.l ;display y14_m1_1.l ;
display s14_m1_1.l ;display b14_m1_1.l ;display o14_m1_1.l ;display p14_m1_1.l ;
display y15_m1_1.l ;display s15_m1_1.l ;display b15_m1_1.l ;display o15_m1_1.l ;
display p15_m1_1.l ;display y0_1.l ;display r0_1.l ;display s0_1.l ;
display p0_1.l ;display ym1_0_1.l ;display sm1_0_1.l ;display bm1_0_1.l ;
display om1_0_1.l ;display pm1_0_1.l ;display y0_0_1.l ;display s0_0_1.l ;
display b0_0_1.l ;display o0_0_1.l ;display p0_0_1.l ;display y1_0_1.l ;
display s1_0_1.l ;display b1_0_1.l ;display o1_0_1.l ;display p1_0_1.l ;
display y2_0_1.l ;display s2_0_1.l ;display b2_0_1.l ;display o2_0_1.l ;
display p2_0_1.l ;display y3_0_1.l ;display s3_0_1.l ;display b3_0_1.l ;
display o3_0_1.l ;display p3_0_1.l ;display y4_0_1.l ;display s4_0_1.l ;
display b4_0_1.l ;display o4_0_1.l ;display p4_0_1.l ;display y5_0_1.l ;
display s5_0_1.l ;display b5_0_1.l ;display o5_0_1.l ;display p5_0_1.l ;
display y6_0_1.l ;display s6_0_1.l ;display b6_0_1.l ;display o6_0_1.l ;
display p6_0_1.l ;display y7_0_1.l ;display s7_0_1.l ;display b7_0_1.l ;
display o7_0_1.l ;display p7_0_1.l ;display y8_0_1.l ;display s8_0_1.l ;
display b8_0_1.l ;display o8_0_1.l ;display p8_0_1.l ;display y9_0_1.l ;
display s9_0_1.l ;display b9_0_1.l ;display o9_0_1.l ;display p9_0_1.l ;
display y10_0_1.l ;display s10_0_1.l ;display b10_0_1.l ;display o10_0_1.l ;
display p10_0_1.l ;display y11_0_1.l ;display s11_0_1.l ;display b11_0_1.l ;
display o11_0_1.l ;display p11_0_1.l ;display y12_0_1.l ;display s12_0_1.l ;
display b12_0_1.l ;display o12_0_1.l ;display p12_0_1.l ;display y13_0_1.l ;
display s13_0_1.l ;display b13_0_1.l ;display o13_0_1.l ;display p13_0_1.l ;
display y14_0_1.l ;display s14_0_1.l ;display b14_0_1.l ;display o14_0_1.l ;
display p14_0_1.l ;display y15_0_1.l ;display s15_0_1.l ;display b15_0_1.l ;
display o15_0_1.l ;display p15_0_1.l ;display y1_1.l ;display r1_1.l ;
display s1_1.l ;display p1_1.l ;display ym1_1_1.l ;display sm1_1_1.l ;
display bm1_1_1.l ;display om1_1_1.l ;display pm1_1_1.l ;display y0_1_1.l ;
display s0_1_1.l ;display b0_1_1.l ;display o0_1_1.l ;display p0_1_1.l ;
display y1_1_1.l ;display s1_1_1.l ;display b1_1_1.l ;display o1_1_1.l ;
display p1_1_1.l ;display y2_1_1.l ;display s2_1_1.l ;display b2_1_1.l ;
display o2_1_1.l ;display p2_1_1.l ;display y3_1_1.l ;display s3_1_1.l ;
display b3_1_1.l ;display o3_1_1.l ;display p3_1_1.l ;display y4_1_1.l ;
display s4_1_1.l ;display b4_1_1.l ;display o4_1_1.l ;display p4_1_1.l ;
display y5_1_1.l ;display s5_1_1.l ;display b5_1_1.l ;display o5_1_1.l ;
display p5_1_1.l ;display y6_1_1.l ;display s6_1_1.l ;display b6_1_1.l ;
display o6_1_1.l ;display p6_1_1.l ;display y7_1_1.l ;display s7_1_1.l ;
display b7_1_1.l ;display o7_1_1.l ;display p7_1_1.l ;display y8_1_1.l ;
display s8_1_1.l ;display b8_1_1.l ;display o8_1_1.l ;display p8_1_1.l ;
display y9_1_1.l ;display s9_1_1.l ;display b9_1_1.l ;display o9_1_1.l ;
display p9_1_1.l ;display y10_1_1.l ;display s10_1_1.l ;display b10_1_1.l ;
display o10_1_1.l ;display p10_1_1.l ;display y11_1_1.l ;display s11_1_1.l ;
display b11_1_1.l ;display o11_1_1.l ;display p11_1_1.l ;display y12_1_1.l ;
display s12_1_1.l ;display b12_1_1.l ;display o12_1_1.l ;display p12_1_1.l ;
display y13_1_1.l ;display s13_1_1.l ;display b13_1_1.l ;display o13_1_1.l ;
display p13_1_1.l ;display y14_1_1.l ;display s14_1_1.l ;display b14_1_1.l ;
display o14_1_1.l ;display p14_1_1.l ;display y15_1_1.l ;display s15_1_1.l ;
display b15_1_1.l ;display o15_1_1.l ;display p15_1_1.l ;display y2_1.l ;
display r2_1.l ;display s2_1.l ;display p2_1.l ;display ym1_2_1.l ;
display sm1_2_1.l ;display bm1_2_1.l ;display om1_2_1.l ;display pm1_2_1.l ;
display y0_2_1.l ;display s0_2_1.l ;display b0_2_1.l ;display o0_2_1.l ;
display p0_2_1.l ;display y1_2_1.l ;display s1_2_1.l ;display b1_2_1.l ;
display o1_2_1.l ;display p1_2_1.l ;display y2_2_1.l ;display s2_2_1.l ;
display b2_2_1.l ;display o2_2_1.l ;display p2_2_1.l ;display y3_2_1.l ;
display s3_2_1.l ;display b3_2_1.l ;display o3_2_1.l ;display p3_2_1.l ;
display y4_2_1.l ;display s4_2_1.l ;display b4_2_1.l ;display o4_2_1.l ;
display p4_2_1.l ;display y5_2_1.l ;display s5_2_1.l ;display b5_2_1.l ;
display o5_2_1.l ;display p5_2_1.l ;display y6_2_1.l ;display s6_2_1.l ;
display b6_2_1.l ;display o6_2_1.l ;display p6_2_1.l ;display y7_2_1.l ;
display s7_2_1.l ;display b7_2_1.l ;display o7_2_1.l ;display p7_2_1.l ;
display y8_2_1.l ;display s8_2_1.l ;display b8_2_1.l ;display o8_2_1.l ;
display p8_2_1.l ;display y9_2_1.l ;display s9_2_1.l ;display b9_2_1.l ;
display o9_2_1.l ;display p9_2_1.l ;display y10_2_1.l ;display s10_2_1.l ;
display b10_2_1.l ;display o10_2_1.l ;display p10_2_1.l ;display y11_2_1.l ;
display s11_2_1.l ;display b11_2_1.l ;display o11_2_1.l ;display p11_2_1.l ;
display y12_2_1.l ;display s12_2_1.l ;display b12_2_1.l ;display o12_2_1.l ;
display p12_2_1.l ;display y13_2_1.l ;display s13_2_1.l ;display b13_2_1.l ;
display o13_2_1.l ;display p13_2_1.l ;display y14_2_1.l ;display s14_2_1.l ;
display b14_2_1.l ;display o14_2_1.l ;display p14_2_1.l ;display y15_2_1.l ;
display s15_2_1.l ;display b15_2_1.l ;display o15_2_1.l ;display p15_2_1.l ;
display y3_1.l ;display r3_1.l ;display s3_1.l ;display p3_1.l ;
display ym1_3_1.l ;display sm1_3_1.l ;display bm1_3_1.l ;display om1_3_1.l ;
display pm1_3_1.l ;display y0_3_1.l ;display s0_3_1.l ;display b0_3_1.l ;
display o0_3_1.l ;display p0_3_1.l ;display y1_3_1.l ;display s1_3_1.l ;
display b1_3_1.l ;display o1_3_1.l ;display p1_3_1.l ;display y2_3_1.l ;
display s2_3_1.l ;display b2_3_1.l ;display o2_3_1.l ;display p2_3_1.l ;
display y3_3_1.l ;display s3_3_1.l ;display b3_3_1.l ;display o3_3_1.l ;
display p3_3_1.l ;display y4_3_1.l ;display s4_3_1.l ;display b4_3_1.l ;
display o4_3_1.l ;display p4_3_1.l ;display y5_3_1.l ;display s5_3_1.l ;
display b5_3_1.l ;display o5_3_1.l ;display p5_3_1.l ;display y6_3_1.l ;
display s6_3_1.l ;display b6_3_1.l ;display o6_3_1.l ;display p6_3_1.l ;
display y7_3_1.l ;display s7_3_1.l ;display b7_3_1.l ;display o7_3_1.l ;
display p7_3_1.l ;display y8_3_1.l ;display s8_3_1.l ;display b8_3_1.l ;
display o8_3_1.l ;display p8_3_1.l ;display y9_3_1.l ;display s9_3_1.l ;
display b9_3_1.l ;display o9_3_1.l ;display p9_3_1.l ;display y10_3_1.l ;
display s10_3_1.l ;display b10_3_1.l ;display o10_3_1.l ;display p10_3_1.l ;
display y11_3_1.l ;display s11_3_1.l ;display b11_3_1.l ;display o11_3_1.l ;
display p11_3_1.l ;display y12_3_1.l ;display s12_3_1.l ;display b12_3_1.l ;
display o12_3_1.l ;display p12_3_1.l ;display y13_3_1.l ;display s13_3_1.l ;
display b13_3_1.l ;display o13_3_1.l ;display p13_3_1.l ;display y14_3_1.l ;
display s14_3_1.l ;display b14_3_1.l ;display o14_3_1.l ;display p14_3_1.l ;
display y15_3_1.l ;display s15_3_1.l ;display b15_3_1.l ;display o15_3_1.l ;
display p15_3_1.l ;display y4_1.l ;display r4_1.l ;display s4_1.l ;
display p4_1.l ;display ym1_4_1.l ;display sm1_4_1.l ;display bm1_4_1.l ;
display om1_4_1.l ;display pm1_4_1.l ;display y0_4_1.l ;display s0_4_1.l ;
display b0_4_1.l ;display o0_4_1.l ;display p0_4_1.l ;display y1_4_1.l ;
display s1_4_1.l ;display b1_4_1.l ;display o1_4_1.l ;display p1_4_1.l ;
display y2_4_1.l ;display s2_4_1.l ;display b2_4_1.l ;display o2_4_1.l ;
display p2_4_1.l ;display y3_4_1.l ;display s3_4_1.l ;display b3_4_1.l ;
display o3_4_1.l ;display p3_4_1.l ;display y4_4_1.l ;display s4_4_1.l ;
display b4_4_1.l ;display o4_4_1.l ;display p4_4_1.l ;display y5_4_1.l ;
display s5_4_1.l ;display b5_4_1.l ;display o5_4_1.l ;display p5_4_1.l ;
display y6_4_1.l ;display s6_4_1.l ;display b6_4_1.l ;display o6_4_1.l ;
display p6_4_1.l ;display y7_4_1.l ;display s7_4_1.l ;display b7_4_1.l ;
display o7_4_1.l ;display p7_4_1.l ;display y8_4_1.l ;display s8_4_1.l ;
display b8_4_1.l ;display o8_4_1.l ;display p8_4_1.l ;display y9_4_1.l ;
display s9_4_1.l ;display b9_4_1.l ;display o9_4_1.l ;display p9_4_1.l ;
display y10_4_1.l ;display s10_4_1.l ;display b10_4_1.l ;display o10_4_1.l ;
display p10_4_1.l ;display y11_4_1.l ;display s11_4_1.l ;display b11_4_1.l ;
display o11_4_1.l ;display p11_4_1.l ;display y12_4_1.l ;display s12_4_1.l ;
display b12_4_1.l ;display o12_4_1.l ;display p12_4_1.l ;display y13_4_1.l ;
display s13_4_1.l ;display b13_4_1.l ;display o13_4_1.l ;display p13_4_1.l ;
display y14_4_1.l ;display s14_4_1.l ;display b14_4_1.l ;display o14_4_1.l ;
display p14_4_1.l ;display y15_4_1.l ;display s15_4_1.l ;display b15_4_1.l ;
display o15_4_1.l ;display p15_4_1.l ;display y5_1.l ;display r5_1.l ;
display s5_1.l ;display p5_1.l ;display ym1_5_1.l ;display sm1_5_1.l ;
display bm1_5_1.l ;display om1_5_1.l ;display pm1_5_1.l ;display y0_5_1.l ;
display s0_5_1.l ;display b0_5_1.l ;display o0_5_1.l ;display p0_5_1.l ;
display y1_5_1.l ;display s1_5_1.l ;display b1_5_1.l ;display o1_5_1.l ;
display p1_5_1.l ;display y2_5_1.l ;display s2_5_1.l ;display b2_5_1.l ;
display o2_5_1.l ;display p2_5_1.l ;display y3_5_1.l ;display s3_5_1.l ;
display b3_5_1.l ;display o3_5_1.l ;display p3_5_1.l ;display y4_5_1.l ;
display s4_5_1.l ;display b4_5_1.l ;display o4_5_1.l ;display p4_5_1.l ;
display y5_5_1.l ;display s5_5_1.l ;display b5_5_1.l ;display o5_5_1.l ;
display p5_5_1.l ;display y6_5_1.l ;display s6_5_1.l ;display b6_5_1.l ;
display o6_5_1.l ;display p6_5_1.l ;display y7_5_1.l ;display s7_5_1.l ;
display b7_5_1.l ;display o7_5_1.l ;display p7_5_1.l ;display y8_5_1.l ;
display s8_5_1.l ;display b8_5_1.l ;display o8_5_1.l ;display p8_5_1.l ;
display y9_5_1.l ;display s9_5_1.l ;display b9_5_1.l ;display o9_5_1.l ;
display p9_5_1.l ;display y10_5_1.l ;display s10_5_1.l ;display b10_5_1.l ;
display o10_5_1.l ;display p10_5_1.l ;display y11_5_1.l ;display s11_5_1.l ;
display b11_5_1.l ;display o11_5_1.l ;display p11_5_1.l ;display y12_5_1.l ;
display s12_5_1.l ;display b12_5_1.l ;display o12_5_1.l ;display p12_5_1.l ;
display y13_5_1.l ;display s13_5_1.l ;display b13_5_1.l ;display o13_5_1.l ;
display p13_5_1.l ;display y14_5_1.l ;display s14_5_1.l ;display b14_5_1.l ;
display o14_5_1.l ;display p14_5_1.l ;display y15_5_1.l ;display s15_5_1.l ;
display b15_5_1.l ;display o15_5_1.l ;display p15_5_1.l ;display y6_1.l ;
display r6_1.l ;display s6_1.l ;display p6_1.l ;display ym1_6_1.l ;
display sm1_6_1.l ;display bm1_6_1.l ;display om1_6_1.l ;display pm1_6_1.l ;
display y0_6_1.l ;display s0_6_1.l ;display b0_6_1.l ;display o0_6_1.l ;
display p0_6_1.l ;display y1_6_1.l ;display s1_6_1.l ;display b1_6_1.l ;
display o1_6_1.l ;display p1_6_1.l ;display y2_6_1.l ;display s2_6_1.l ;
display b2_6_1.l ;display o2_6_1.l ;display p2_6_1.l ;display y3_6_1.l ;
display s3_6_1.l ;display b3_6_1.l ;display o3_6_1.l ;display p3_6_1.l ;
display y4_6_1.l ;display s4_6_1.l ;display b4_6_1.l ;display o4_6_1.l ;
display p4_6_1.l ;display y5_6_1.l ;display s5_6_1.l ;display b5_6_1.l ;
display o5_6_1.l ;display p5_6_1.l ;display y6_6_1.l ;display s6_6_1.l ;
display b6_6_1.l ;display o6_6_1.l ;display p6_6_1.l ;display y7_6_1.l ;
display s7_6_1.l ;display b7_6_1.l ;display o7_6_1.l ;display p7_6_1.l ;
display y8_6_1.l ;display s8_6_1.l ;display b8_6_1.l ;display o8_6_1.l ;
display p8_6_1.l ;display y9_6_1.l ;display s9_6_1.l ;display b9_6_1.l ;
display o9_6_1.l ;display p9_6_1.l ;display y10_6_1.l ;display s10_6_1.l ;
display b10_6_1.l ;display o10_6_1.l ;display p10_6_1.l ;display y11_6_1.l ;
display s11_6_1.l ;display b11_6_1.l ;display o11_6_1.l ;display p11_6_1.l ;
display y12_6_1.l ;display s12_6_1.l ;display b12_6_1.l ;display o12_6_1.l ;
display p12_6_1.l ;display y13_6_1.l ;display s13_6_1.l ;display b13_6_1.l ;
display o13_6_1.l ;display p13_6_1.l ;display y14_6_1.l ;display s14_6_1.l ;
display b14_6_1.l ;display o14_6_1.l ;display p14_6_1.l ;display y15_6_1.l ;
display s15_6_1.l ;display b15_6_1.l ;display o15_6_1.l ;display p15_6_1.l ;
display y7_1.l ;display r7_1.l ;display s7_1.l ;display p7_1.l ;
display ym1_7_1.l ;display sm1_7_1.l ;display bm1_7_1.l ;display om1_7_1.l ;
display pm1_7_1.l ;display y0_7_1.l ;display s0_7_1.l ;display b0_7_1.l ;
display o0_7_1.l ;display p0_7_1.l ;display y1_7_1.l ;display s1_7_1.l ;
display b1_7_1.l ;display o1_7_1.l ;display p1_7_1.l ;display y2_7_1.l ;
display s2_7_1.l ;display b2_7_1.l ;display o2_7_1.l ;display p2_7_1.l ;
display y3_7_1.l ;display s3_7_1.l ;display b3_7_1.l ;display o3_7_1.l ;
display p3_7_1.l ;display y4_7_1.l ;display s4_7_1.l ;display b4_7_1.l ;
display o4_7_1.l ;display p4_7_1.l ;display y5_7_1.l ;display s5_7_1.l ;
display b5_7_1.l ;display o5_7_1.l ;display p5_7_1.l ;display y6_7_1.l ;
display s6_7_1.l ;display b6_7_1.l ;display o6_7_1.l ;display p6_7_1.l ;
display y7_7_1.l ;display s7_7_1.l ;display b7_7_1.l ;display o7_7_1.l ;
display p7_7_1.l ;display y8_7_1.l ;display s8_7_1.l ;display b8_7_1.l ;
display o8_7_1.l ;display p8_7_1.l ;display y9_7_1.l ;display s9_7_1.l ;
display b9_7_1.l ;display o9_7_1.l ;display p9_7_1.l ;display y10_7_1.l ;
display s10_7_1.l ;display b10_7_1.l ;display o10_7_1.l ;display p10_7_1.l ;
display y11_7_1.l ;display s11_7_1.l ;display b11_7_1.l ;display o11_7_1.l ;
display p11_7_1.l ;display y12_7_1.l ;display s12_7_1.l ;display b12_7_1.l ;
display o12_7_1.l ;display p12_7_1.l ;display y13_7_1.l ;display s13_7_1.l ;
display b13_7_1.l ;display o13_7_1.l ;display p13_7_1.l ;display y14_7_1.l ;
display s14_7_1.l ;display b14_7_1.l ;display o14_7_1.l ;display p14_7_1.l ;
display y15_7_1.l ;display s15_7_1.l ;display b15_7_1.l ;display o15_7_1.l ;
display p15_7_1.l ;display y8_1.l ;display r8_1.l ;display s8_1.l ;
display p8_1.l ;display ym1_8_1.l ;display sm1_8_1.l ;display bm1_8_1.l ;
display om1_8_1.l ;display pm1_8_1.l ;display y0_8_1.l ;display s0_8_1.l ;
display b0_8_1.l ;display o0_8_1.l ;display p0_8_1.l ;display y1_8_1.l ;
display s1_8_1.l ;display b1_8_1.l ;display o1_8_1.l ;display p1_8_1.l ;
display y2_8_1.l ;display s2_8_1.l ;display b2_8_1.l ;display o2_8_1.l ;
display p2_8_1.l ;display y3_8_1.l ;display s3_8_1.l ;display b3_8_1.l ;
display o3_8_1.l ;display p3_8_1.l ;display y4_8_1.l ;display s4_8_1.l ;
display b4_8_1.l ;display o4_8_1.l ;display p4_8_1.l ;display y5_8_1.l ;
display s5_8_1.l ;display b5_8_1.l ;display o5_8_1.l ;display p5_8_1.l ;
display y6_8_1.l ;display s6_8_1.l ;display b6_8_1.l ;display o6_8_1.l ;
display p6_8_1.l ;display y7_8_1.l ;display s7_8_1.l ;display b7_8_1.l ;
display o7_8_1.l ;display p7_8_1.l ;display y8_8_1.l ;display s8_8_1.l ;
display b8_8_1.l ;display o8_8_1.l ;display p8_8_1.l ;display y9_8_1.l ;
display s9_8_1.l ;display b9_8_1.l ;display o9_8_1.l ;display p9_8_1.l ;
display y10_8_1.l ;display s10_8_1.l ;display b10_8_1.l ;display o10_8_1.l ;
display p10_8_1.l ;display y11_8_1.l ;display s11_8_1.l ;display b11_8_1.l ;
display o11_8_1.l ;display p11_8_1.l ;display y12_8_1.l ;display s12_8_1.l ;
display b12_8_1.l ;display o12_8_1.l ;display p12_8_1.l ;display y13_8_1.l ;
display s13_8_1.l ;display b13_8_1.l ;display o13_8_1.l ;display p13_8_1.l ;
display y14_8_1.l ;display s14_8_1.l ;display b14_8_1.l ;display o14_8_1.l ;
display p14_8_1.l ;display y15_8_1.l ;display s15_8_1.l ;display b15_8_1.l ;
display o15_8_1.l ;display p15_8_1.l ;display y9_1.l ;display r9_1.l ;
display s9_1.l ;display p9_1.l ;display ym1_9_1.l ;display sm1_9_1.l ;
display bm1_9_1.l ;display om1_9_1.l ;display pm1_9_1.l ;display y0_9_1.l ;
display s0_9_1.l ;display b0_9_1.l ;display o0_9_1.l ;display p0_9_1.l ;
display y1_9_1.l ;display s1_9_1.l ;display b1_9_1.l ;display o1_9_1.l ;
display p1_9_1.l ;display y2_9_1.l ;display s2_9_1.l ;display b2_9_1.l ;
display o2_9_1.l ;display p2_9_1.l ;display y3_9_1.l ;display s3_9_1.l ;
display b3_9_1.l ;display o3_9_1.l ;display p3_9_1.l ;display y4_9_1.l ;
display s4_9_1.l ;display b4_9_1.l ;display o4_9_1.l ;display p4_9_1.l ;
display y5_9_1.l ;display s5_9_1.l ;display b5_9_1.l ;display o5_9_1.l ;
display p5_9_1.l ;display y6_9_1.l ;display s6_9_1.l ;display b6_9_1.l ;
display o6_9_1.l ;display p6_9_1.l ;display y7_9_1.l ;display s7_9_1.l ;
display b7_9_1.l ;display o7_9_1.l ;display p7_9_1.l ;display y8_9_1.l ;
display s8_9_1.l ;display b8_9_1.l ;display o8_9_1.l ;display p8_9_1.l ;
display y9_9_1.l ;display s9_9_1.l ;display b9_9_1.l ;display o9_9_1.l ;
display p9_9_1.l ;display y10_9_1.l ;display s10_9_1.l ;display b10_9_1.l ;
display o10_9_1.l ;display p10_9_1.l ;display y11_9_1.l ;display s11_9_1.l ;
display b11_9_1.l ;display o11_9_1.l ;display p11_9_1.l ;display y12_9_1.l ;
display s12_9_1.l ;display b12_9_1.l ;display o12_9_1.l ;display p12_9_1.l ;
display y13_9_1.l ;display s13_9_1.l ;display b13_9_1.l ;display o13_9_1.l ;
display p13_9_1.l ;display y14_9_1.l ;display s14_9_1.l ;display b14_9_1.l ;
display o14_9_1.l ;display p14_9_1.l ;display y15_9_1.l ;display s15_9_1.l ;
display b15_9_1.l ;display o15_9_1.l ;display p15_9_1.l ;display y10_1.l ;
display r10_1.l ;display s10_1.l ;display p10_1.l ;display ym1_10_1.l ;
display sm1_10_1.l ;display bm1_10_1.l ;display om1_10_1.l ;display pm1_10_1.l ;
display y0_10_1.l ;display s0_10_1.l ;display b0_10_1.l ;display o0_10_1.l ;
display p0_10_1.l ;display y1_10_1.l ;display s1_10_1.l ;display b1_10_1.l ;
display o1_10_1.l ;display p1_10_1.l ;display y2_10_1.l ;display s2_10_1.l ;
display b2_10_1.l ;display o2_10_1.l ;display p2_10_1.l ;display y3_10_1.l ;
display s3_10_1.l ;display b3_10_1.l ;display o3_10_1.l ;display p3_10_1.l ;
display y4_10_1.l ;display s4_10_1.l ;display b4_10_1.l ;display o4_10_1.l ;
display p4_10_1.l ;display y5_10_1.l ;display s5_10_1.l ;display b5_10_1.l ;
display o5_10_1.l ;display p5_10_1.l ;display y6_10_1.l ;display s6_10_1.l ;
display b6_10_1.l ;display o6_10_1.l ;display p6_10_1.l ;display y7_10_1.l ;
display s7_10_1.l ;display b7_10_1.l ;display o7_10_1.l ;display p7_10_1.l ;
display y8_10_1.l ;display s8_10_1.l ;display b8_10_1.l ;display o8_10_1.l ;
display p8_10_1.l ;display y9_10_1.l ;display s9_10_1.l ;display b9_10_1.l ;
display o9_10_1.l ;display p9_10_1.l ;display y10_10_1.l ;display s10_10_1.l ;
display b10_10_1.l ;display o10_10_1.l ;display p10_10_1.l ;display y11_10_1.l ;
display s11_10_1.l ;display b11_10_1.l ;display o11_10_1.l ;display p11_10_1.l ;
display y12_10_1.l ;display s12_10_1.l ;display b12_10_1.l ;display o12_10_1.l ;
display p12_10_1.l ;display y13_10_1.l ;display s13_10_1.l ;display b13_10_1.l ;
display o13_10_1.l ;display p13_10_1.l ;display y14_10_1.l ;display s14_10_1.l ;
display b14_10_1.l ;display o14_10_1.l ;display p14_10_1.l ;display y15_10_1.l ;
display s15_10_1.l ;display b15_10_1.l ;display o15_10_1.l ;display p15_10_1.l ;
display y11_1.l ;display r11_1.l ;display s11_1.l ;display p11_1.l ;
display ym1_11_1.l ;display sm1_11_1.l ;display bm1_11_1.l ;display om1_11_1.l ;
display pm1_11_1.l ;display y0_11_1.l ;display s0_11_1.l ;display b0_11_1.l ;
display o0_11_1.l ;display p0_11_1.l ;display y1_11_1.l ;display s1_11_1.l ;
display b1_11_1.l ;display o1_11_1.l ;display p1_11_1.l ;display y2_11_1.l ;
display s2_11_1.l ;display b2_11_1.l ;display o2_11_1.l ;display p2_11_1.l ;
display y3_11_1.l ;display s3_11_1.l ;display b3_11_1.l ;display o3_11_1.l ;
display p3_11_1.l ;display y4_11_1.l ;display s4_11_1.l ;display b4_11_1.l ;
display o4_11_1.l ;display p4_11_1.l ;display y5_11_1.l ;display s5_11_1.l ;
display b5_11_1.l ;display o5_11_1.l ;display p5_11_1.l ;display y6_11_1.l ;
display s6_11_1.l ;display b6_11_1.l ;display o6_11_1.l ;display p6_11_1.l ;
display y7_11_1.l ;display s7_11_1.l ;display b7_11_1.l ;display o7_11_1.l ;
display p7_11_1.l ;display y8_11_1.l ;display s8_11_1.l ;display b8_11_1.l ;
display o8_11_1.l ;display p8_11_1.l ;display y9_11_1.l ;display s9_11_1.l ;
display b9_11_1.l ;display o9_11_1.l ;display p9_11_1.l ;display y10_11_1.l ;
display s10_11_1.l ;display b10_11_1.l ;display o10_11_1.l ;display p10_11_1.l ;
display y11_11_1.l ;display s11_11_1.l ;display b11_11_1.l ;display o11_11_1.l ;
display p11_11_1.l ;display y12_11_1.l ;display s12_11_1.l ;display b12_11_1.l ;
display o12_11_1.l ;display p12_11_1.l ;display y13_11_1.l ;display s13_11_1.l ;
display b13_11_1.l ;display o13_11_1.l ;display p13_11_1.l ;display y14_11_1.l ;
display s14_11_1.l ;display b14_11_1.l ;display o14_11_1.l ;display p14_11_1.l ;
display y15_11_1.l ;display s15_11_1.l ;display b15_11_1.l ;display o15_11_1.l ;
display p15_11_1.l ;display y12_1.l ;display r12_1.l ;display s12_1.l ;
display p12_1.l ;display ym1_12_1.l ;display sm1_12_1.l ;display bm1_12_1.l ;
display om1_12_1.l ;display pm1_12_1.l ;display y0_12_1.l ;display s0_12_1.l ;
display b0_12_1.l ;display o0_12_1.l ;display p0_12_1.l ;display y1_12_1.l ;
display s1_12_1.l ;display b1_12_1.l ;display o1_12_1.l ;display p1_12_1.l ;
display y2_12_1.l ;display s2_12_1.l ;display b2_12_1.l ;display o2_12_1.l ;
display p2_12_1.l ;display y3_12_1.l ;display s3_12_1.l ;display b3_12_1.l ;
display o3_12_1.l ;display p3_12_1.l ;display y4_12_1.l ;display s4_12_1.l ;
display b4_12_1.l ;display o4_12_1.l ;display p4_12_1.l ;display y5_12_1.l ;
display s5_12_1.l ;display b5_12_1.l ;display o5_12_1.l ;display p5_12_1.l ;
display y6_12_1.l ;display s6_12_1.l ;display b6_12_1.l ;display o6_12_1.l ;
display p6_12_1.l ;display y7_12_1.l ;display s7_12_1.l ;display b7_12_1.l ;
display o7_12_1.l ;display p7_12_1.l ;display y8_12_1.l ;display s8_12_1.l ;
display b8_12_1.l ;display o8_12_1.l ;display p8_12_1.l ;display y9_12_1.l ;
display s9_12_1.l ;display b9_12_1.l ;display o9_12_1.l ;display p9_12_1.l ;
display y10_12_1.l ;display s10_12_1.l ;display b10_12_1.l ;display o10_12_1.l ;
display p10_12_1.l ;display y11_12_1.l ;display s11_12_1.l ;display b11_12_1.l ;
display o11_12_1.l ;display p11_12_1.l ;display y12_12_1.l ;display s12_12_1.l ;
display b12_12_1.l ;display o12_12_1.l ;display p12_12_1.l ;display y13_12_1.l ;
display s13_12_1.l ;display b13_12_1.l ;display o13_12_1.l ;display p13_12_1.l ;
display y14_12_1.l ;display s14_12_1.l ;display b14_12_1.l ;display o14_12_1.l ;
display p14_12_1.l ;display y15_12_1.l ;display s15_12_1.l ;display b15_12_1.l ;
display o15_12_1.l ;display p15_12_1.l ;display y13_1.l ;display r13_1.l ;
display s13_1.l ;display p13_1.l ;display ym1_13_1.l ;display sm1_13_1.l ;
display bm1_13_1.l ;display om1_13_1.l ;display pm1_13_1.l ;display y0_13_1.l ;
display s0_13_1.l ;display b0_13_1.l ;display o0_13_1.l ;display p0_13_1.l ;
display y1_13_1.l ;display s1_13_1.l ;display b1_13_1.l ;display o1_13_1.l ;
display p1_13_1.l ;display y2_13_1.l ;display s2_13_1.l ;display b2_13_1.l ;
display o2_13_1.l ;display p2_13_1.l ;display y3_13_1.l ;display s3_13_1.l ;
display b3_13_1.l ;display o3_13_1.l ;display p3_13_1.l ;display y4_13_1.l ;
display s4_13_1.l ;display b4_13_1.l ;display o4_13_1.l ;display p4_13_1.l ;
display y5_13_1.l ;display s5_13_1.l ;display b5_13_1.l ;display o5_13_1.l ;
display p5_13_1.l ;display y6_13_1.l ;display s6_13_1.l ;display b6_13_1.l ;
display o6_13_1.l ;display p6_13_1.l ;display y7_13_1.l ;display s7_13_1.l ;
display b7_13_1.l ;display o7_13_1.l ;display p7_13_1.l ;display y8_13_1.l ;
display s8_13_1.l ;display b8_13_1.l ;display o8_13_1.l ;display p8_13_1.l ;
display y9_13_1.l ;display s9_13_1.l ;display b9_13_1.l ;display o9_13_1.l ;
display p9_13_1.l ;display y10_13_1.l ;display s10_13_1.l ;display b10_13_1.l ;
display o10_13_1.l ;display p10_13_1.l ;display y11_13_1.l ;display s11_13_1.l ;
display b11_13_1.l ;display o11_13_1.l ;display p11_13_1.l ;display y12_13_1.l ;
display s12_13_1.l ;display b12_13_1.l ;display o12_13_1.l ;display p12_13_1.l ;
display y13_13_1.l ;display s13_13_1.l ;display b13_13_1.l ;display o13_13_1.l ;
display p13_13_1.l ;display y14_13_1.l ;display s14_13_1.l ;display b14_13_1.l ;
display o14_13_1.l ;display p14_13_1.l ;display y15_13_1.l ;display s15_13_1.l ;
display b15_13_1.l ;display o15_13_1.l ;display p15_13_1.l ;display y14_1.l ;
display r14_1.l ;display s14_1.l ;display p14_1.l ;display ym1_14_1.l ;
display sm1_14_1.l ;display bm1_14_1.l ;display om1_14_1.l ;display pm1_14_1.l ;
display y0_14_1.l ;display s0_14_1.l ;display b0_14_1.l ;display o0_14_1.l ;
display p0_14_1.l ;display y1_14_1.l ;display s1_14_1.l ;display b1_14_1.l ;
display o1_14_1.l ;display p1_14_1.l ;display y2_14_1.l ;display s2_14_1.l ;
display b2_14_1.l ;display o2_14_1.l ;display p2_14_1.l ;display y3_14_1.l ;
display s3_14_1.l ;display b3_14_1.l ;display o3_14_1.l ;display p3_14_1.l ;
display y4_14_1.l ;display s4_14_1.l ;display b4_14_1.l ;display o4_14_1.l ;
display p4_14_1.l ;display y5_14_1.l ;display s5_14_1.l ;display b5_14_1.l ;
display o5_14_1.l ;display p5_14_1.l ;display y6_14_1.l ;display s6_14_1.l ;
display b6_14_1.l ;display o6_14_1.l ;display p6_14_1.l ;display y7_14_1.l ;
display s7_14_1.l ;display b7_14_1.l ;display o7_14_1.l ;display p7_14_1.l ;
display y8_14_1.l ;display s8_14_1.l ;display b8_14_1.l ;display o8_14_1.l ;
display p8_14_1.l ;display y9_14_1.l ;display s9_14_1.l ;display b9_14_1.l ;
display o9_14_1.l ;display p9_14_1.l ;display y10_14_1.l ;display s10_14_1.l ;
display b10_14_1.l ;display o10_14_1.l ;display p10_14_1.l ;display y11_14_1.l ;
display s11_14_1.l ;display b11_14_1.l ;display o11_14_1.l ;display p11_14_1.l ;
display y12_14_1.l ;display s12_14_1.l ;display b12_14_1.l ;display o12_14_1.l ;
display p12_14_1.l ;display y13_14_1.l ;display s13_14_1.l ;display b13_14_1.l ;
display o13_14_1.l ;display p13_14_1.l ;display y14_14_1.l ;display s14_14_1.l ;
display b14_14_1.l ;display o14_14_1.l ;display p14_14_1.l ;display y15_14_1.l ;
display s15_14_1.l ;display b15_14_1.l ;display o15_14_1.l ;display p15_14_1.l ;
display y15_1.l ;display r15_1.l ;display s15_1.l ;display p15_1.l ;
display ym1_15_1.l ;display sm1_15_1.l ;display bm1_15_1.l ;display om1_15_1.l ;
display pm1_15_1.l ;display y0_15_1.l ;display s0_15_1.l ;display b0_15_1.l ;
display o0_15_1.l ;display p0_15_1.l ;display y1_15_1.l ;display s1_15_1.l ;
display b1_15_1.l ;display o1_15_1.l ;display p1_15_1.l ;display y2_15_1.l ;
display s2_15_1.l ;display b2_15_1.l ;display o2_15_1.l ;display p2_15_1.l ;
display y3_15_1.l ;display s3_15_1.l ;display b3_15_1.l ;display o3_15_1.l ;
display p3_15_1.l ;display y4_15_1.l ;display s4_15_1.l ;display b4_15_1.l ;
display o4_15_1.l ;display p4_15_1.l ;display y5_15_1.l ;display s5_15_1.l ;
display b5_15_1.l ;display o5_15_1.l ;display p5_15_1.l ;display y6_15_1.l ;
display s6_15_1.l ;display b6_15_1.l ;display o6_15_1.l ;display p6_15_1.l ;
display y7_15_1.l ;display s7_15_1.l ;display b7_15_1.l ;display o7_15_1.l ;
display p7_15_1.l ;display y8_15_1.l ;display s8_15_1.l ;display b8_15_1.l ;
display o8_15_1.l ;display p8_15_1.l ;display y9_15_1.l ;display s9_15_1.l ;
display b9_15_1.l ;display o9_15_1.l ;display p9_15_1.l ;display y10_15_1.l ;
display s10_15_1.l ;display b10_15_1.l ;display o10_15_1.l ;display p10_15_1.l ;
display y11_15_1.l ;display s11_15_1.l ;display b11_15_1.l ;display o11_15_1.l ;
display p11_15_1.l ;display y12_15_1.l ;display s12_15_1.l ;display b12_15_1.l ;
display o12_15_1.l ;display p12_15_1.l ;display y13_15_1.l ;display s13_15_1.l ;
display b13_15_1.l ;display o13_15_1.l ;display p13_15_1.l ;display y14_15_1.l ;
display s14_15_1.l ;display b14_15_1.l ;display o14_15_1.l ;display p14_15_1.l ;
display y15_15_1.l ;display s15_15_1.l ;display b15_15_1.l ;display o15_15_1.l ;
display p15_15_1.l ;display sm1_2.l ;display sm1_m1_2.l ;display s0_m1_2.l ;
display s1_m1_2.l ;display s2_m1_2.l ;display s3_m1_2.l ;display s4_m1_2.l ;
display s5_m1_2.l ;display s6_m1_2.l ;display s7_m1_2.l ;display s8_m1_2.l ;
display s9_m1_2.l ;display s10_m1_2.l ;display s11_m1_2.l ;display s12_m1_2.l ;
display s13_m1_2.l ;display s14_m1_2.l ;display s15_m1_2.l ;display s0_2.l ;
display sm1_0_2.l ;display s0_0_2.l ;display s1_0_2.l ;display s2_0_2.l ;
display s3_0_2.l ;display s4_0_2.l ;display s5_0_2.l ;display s6_0_2.l ;
display s7_0_2.l ;display s8_0_2.l ;display s9_0_2.l ;display s10_0_2.l ;
display s11_0_2.l ;display s12_0_2.l ;display s13_0_2.l ;display s14_0_2.l ;
display s15_0_2.l ;display s1_2.l ;display sm1_1_2.l ;display s0_1_2.l ;
display s1_1_2.l ;display s2_1_2.l ;display s3_1_2.l ;display s4_1_2.l ;
display s5_1_2.l ;display s6_1_2.l ;display s7_1_2.l ;display s8_1_2.l ;
display s9_1_2.l ;display s10_1_2.l ;display s11_1_2.l ;display s12_1_2.l ;
display s13_1_2.l ;display s14_1_2.l ;display s15_1_2.l ;display s2_2.l ;
display sm1_2_2.l ;display s0_2_2.l ;display s1_2_2.l ;display s2_2_2.l ;
display s3_2_2.l ;display s4_2_2.l ;display s5_2_2.l ;display s6_2_2.l ;
display s7_2_2.l ;display s8_2_2.l ;display s9_2_2.l ;display s10_2_2.l ;
display s11_2_2.l ;display s12_2_2.l ;display s13_2_2.l ;display s14_2_2.l ;
display s15_2_2.l ;display s3_2.l ;display sm1_3_2.l ;display s0_3_2.l ;
display s1_3_2.l ;display s2_3_2.l ;display s3_3_2.l ;display s4_3_2.l ;
display s5_3_2.l ;display s6_3_2.l ;display s7_3_2.l ;display s8_3_2.l ;
display s9_3_2.l ;display s10_3_2.l ;display s11_3_2.l ;display s12_3_2.l ;
display s13_3_2.l ;display s14_3_2.l ;display s15_3_2.l ;display s4_2.l ;
display sm1_4_2.l ;display s0_4_2.l ;display s1_4_2.l ;display s2_4_2.l ;
display s3_4_2.l ;display s4_4_2.l ;display s5_4_2.l ;display s6_4_2.l ;
display s7_4_2.l ;display s8_4_2.l ;display s9_4_2.l ;display s10_4_2.l ;
display s11_4_2.l ;display s12_4_2.l ;display s13_4_2.l ;display s14_4_2.l ;
display s15_4_2.l ;display s5_2.l ;display sm1_5_2.l ;display s0_5_2.l ;
display s1_5_2.l ;display s2_5_2.l ;display s3_5_2.l ;display s4_5_2.l ;
display s5_5_2.l ;display s6_5_2.l ;display s7_5_2.l ;display s8_5_2.l ;
display s9_5_2.l ;display s10_5_2.l ;display s11_5_2.l ;display s12_5_2.l ;
display s13_5_2.l ;display s14_5_2.l ;display s15_5_2.l ;display s6_2.l ;
display sm1_6_2.l ;display s0_6_2.l ;display s1_6_2.l ;display s2_6_2.l ;
display s3_6_2.l ;display s4_6_2.l ;display s5_6_2.l ;display s6_6_2.l ;
display s7_6_2.l ;display s8_6_2.l ;display s9_6_2.l ;display s10_6_2.l ;
display s11_6_2.l ;display s12_6_2.l ;display s13_6_2.l ;display s14_6_2.l ;
display s15_6_2.l ;display s7_2.l ;display sm1_7_2.l ;display s0_7_2.l ;
display s1_7_2.l ;display s2_7_2.l ;display s3_7_2.l ;display s4_7_2.l ;
display s5_7_2.l ;display s6_7_2.l ;display s7_7_2.l ;display s8_7_2.l ;
display s9_7_2.l ;display s10_7_2.l ;display s11_7_2.l ;display s12_7_2.l ;
display s13_7_2.l ;display s14_7_2.l ;display s15_7_2.l ;display s8_2.l ;
display sm1_8_2.l ;display s0_8_2.l ;display s1_8_2.l ;display s2_8_2.l ;
display s3_8_2.l ;display s4_8_2.l ;display s5_8_2.l ;display s6_8_2.l ;
display s7_8_2.l ;display s8_8_2.l ;display s9_8_2.l ;display s10_8_2.l ;
display s11_8_2.l ;display s12_8_2.l ;display s13_8_2.l ;display s14_8_2.l ;
display s15_8_2.l ;display s9_2.l ;display sm1_9_2.l ;display s0_9_2.l ;
display s1_9_2.l ;display s2_9_2.l ;display s3_9_2.l ;display s4_9_2.l ;
display s5_9_2.l ;display s6_9_2.l ;display s7_9_2.l ;display s8_9_2.l ;
display s9_9_2.l ;display s10_9_2.l ;display s11_9_2.l ;display s12_9_2.l ;
display s13_9_2.l ;display s14_9_2.l ;display s15_9_2.l ;display s10_2.l ;
display sm1_10_2.l ;display s0_10_2.l ;display s1_10_2.l ;display s2_10_2.l ;
display s3_10_2.l ;display s4_10_2.l ;display s5_10_2.l ;display s6_10_2.l ;
display s7_10_2.l ;display s8_10_2.l ;display s9_10_2.l ;display s10_10_2.l ;
display s11_10_2.l ;display s12_10_2.l ;display s13_10_2.l ;display s14_10_2.l ;
display s15_10_2.l ;display s11_2.l ;display sm1_11_2.l ;display s0_11_2.l ;
display s1_11_2.l ;display s2_11_2.l ;display s3_11_2.l ;display s4_11_2.l ;
display s5_11_2.l ;display s6_11_2.l ;display s7_11_2.l ;display s8_11_2.l ;
display s9_11_2.l ;display s10_11_2.l ;display s11_11_2.l ;display s12_11_2.l ;
display s13_11_2.l ;display s14_11_2.l ;display s15_11_2.l ;display s12_2.l ;
display sm1_12_2.l ;display s0_12_2.l ;display s1_12_2.l ;display s2_12_2.l ;
display s3_12_2.l ;display s4_12_2.l ;display s5_12_2.l ;display s6_12_2.l ;
display s7_12_2.l ;display s8_12_2.l ;display s9_12_2.l ;display s10_12_2.l ;
display s11_12_2.l ;display s12_12_2.l ;display s13_12_2.l ;display s14_12_2.l ;
display s15_12_2.l ;display s13_2.l ;display sm1_13_2.l ;display s0_13_2.l ;
display s1_13_2.l ;display s2_13_2.l ;display s3_13_2.l ;display s4_13_2.l ;
display s5_13_2.l ;display s6_13_2.l ;display s7_13_2.l ;display s8_13_2.l ;
display s9_13_2.l ;display s10_13_2.l ;display s11_13_2.l ;display s12_13_2.l ;
display s13_13_2.l ;display s14_13_2.l ;display s15_13_2.l ;display s14_2.l ;
display sm1_14_2.l ;display s0_14_2.l ;display s1_14_2.l ;display s2_14_2.l ;
display s3_14_2.l ;display s4_14_2.l ;display s5_14_2.l ;display s6_14_2.l ;
display s7_14_2.l ;display s8_14_2.l ;display s9_14_2.l ;display s10_14_2.l ;
display s11_14_2.l ;display s12_14_2.l ;display s13_14_2.l ;display s14_14_2.l ;
display s15_14_2.l ;display s15_2.l ;display sm1_15_2.l ;display s0_15_2.l ;
display s1_15_2.l ;display s2_15_2.l ;display s3_15_2.l ;display s4_15_2.l ;
display s5_15_2.l ;display s6_15_2.l ;display s7_15_2.l ;display s8_15_2.l ;
display s9_15_2.l ;display s10_15_2.l ;display s11_15_2.l ;display s12_15_2.l ;
display s13_15_2.l ;display s14_15_2.l ;display s15_15_2.l ;display x1_1.l ;
display x2_1.l ;display x3_1.l ;display x4_1.l ;display x1_2.l ;
display x2_2.l ;display x3_2.l ;display x4_2.l ;display x1_3.l ;
display x2_3.l ;display x3_3.l ;display x4_3.l ;display obj.l ;
