*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem:
*   ********
*   A problem of water resource management in Canada, which may be
*   formulated as
*
*   Min  SUM   SUM  (T(i,j)- R(i,j))^2 + (O(i,j)-R(N+i,j))^2)
*       i=1,N j=1,5
*
*   subject to
*
*   T(i+1,1)-T(i,1)+O(i,1)        =  G(i,1)
*   T(i+1,2)-T(i,2)-O(i,1)+O(i,2) =  G(i,2)
*   T(i+1,3)-T(i,3)-O(i,2)+O(i,3) =  G(i,3)
*   T(i+1,4)-T(i,4)-O(i,3)+O(i,4) =  G(i,4)
*   T(i+1,5)-T(i,5)-O(i,4)+O(i,5) =  G(i,5)
*
*   i=1,N and T(N+1,j) = T(1,j)  for j=1,5
*
*   O(i,2)-a*((T(i,2)/480.8+T(i,3)/4.6)/2-543.4)^2 *
*   (T(i,2)/480.8-T(i,3)/4.6)^.5=0
*   O(i,3)-b*((T(i,3)/4.6-543.4)^2*(T(i,3)/4.6-T(i,4)/105.15)^0.5) = 0
*   O(i,4)-c*(T(i,4)/105.15-550.11)^2.2 = 0
*
*   where T(i,j) and O(i,j) are variables, R(i,j) are given and
*   a=.0841168  b=.1280849 and c=0.2605.
*
*   Extra variables
*
*   v(i,2) = T(i,2) / 961.6 + T(i,3) / 9.2 - 543.4
*   w(i,2) = T(i,2) / 480.8 - T(i,3) / 4.6
*   v(i,3) = T(i,3) / 4.6 - 543.4
*   w(i,3) = T(i,3) / 4.6 - T(i,4) / 105.15
*   v(i,4) = T(i,4) / 105.15 - 550.11
*
*   are introduced so that the nonlinear constraints may be rewritten as
*
*   O(i,2)-a*v(i,2)^2 * w(i,2)^0.5 = 0 ; w(i,2) > 0
*   O(i,3)-b*v(i,3)^2 * w(i,3)^0.5 = 0 ; w(i,3) > 0
*   O(i,4)-c*v(i,4)^2.2 = 0 ; v(i,4) > 0
*
*   Source:
*   S Jafar Sadjadi
*   Dept. of Systems Design Engineering
*   University of Waterloo
*   Ontario, N2L 3G1 Canada
*   SIF input: Nick Gould and Jafar Sadjadi, November 1995
*   classification QOR2-RN-90-78
* Target value S_hat and O_hat
* Defining the variables
*  Objective function groups
* Linear Constraints
* Nonlinear constraints
* Artificial linear constraints
$offdigit;
        Parameter     n  ;      n  = 6;
        Parameter   nm1  ;    nm1  = -1 + (6);
        Parameter   np1  ;    np1  = 1 + (6);
        Parameter    nn  ;     nn  = 2 * (6);
        Parameter  s1s1  ;   s1s1  = 202761.072;
        Parameter  s1s2  ;   s1s2  = 277791.816;
        Parameter  s1s3  ;   s1s3  = 2636.996;
        Parameter  s1s4  ;   s1s4  = 59987.0235;
        Parameter  s1s5  ;   s1s5  = 19490.4;
        Parameter  s2s1  ;   s2s1  = 202703.646;
        Parameter  s2s2  ;   s2s2  = 277849.512;
        Parameter  s2s3  ;   s2s3  = 2638.1;
        Parameter  s2s4  ;   s2s4  = 59998.59;
        Parameter  s2s5  ;   s2s5  = 19555.2;
        Parameter  s3s1  ;   s3s1  = 202720.536;
        Parameter  s3s2  ;   s3s2  = 277955.288;
        Parameter  s3s3  ;   s3s3  = 2639.894;
        Parameter  s3s4  ;   s3s4  = 60046.959;
        Parameter  s3s5  ;   s3s5  = 19597.6;
        Parameter  s4s1  ;   s4s1  = 202808.364;
        Parameter  s4s2  ;   s4s2  = 278104.336;
        Parameter  s4s3  ;   s4s3  = 2640.906;
        Parameter  s4s4  ;   s4s4  = 60074.298;
        Parameter  s4s5  ;   s4s5  = 19652.8;
        Parameter  s5s1  ;   s5s1  = 202916.46;
        Parameter  s5s2  ;   s5s2  = 278224.536;
        Parameter  s5s3  ;   s5s3  = 2641.458;
        Parameter  s5s4  ;   s5s4  = 60091.122;
        Parameter  s5s5  ;   s5s5  = 19708.8;
        Parameter  s6s1  ;   s6s1  = 202953.618;
        Parameter  s6s2  ;   s6s2  = 278277.424;
        Parameter  s6s3  ;   s6s3  = 2641.458;
        Parameter  s6s4  ;   s6s4  = 60082.71;
        Parameter  s6s5  ;   s6s5  = 19706.4;
        Parameter  o1o1  ;   o1o1  = 83.728;
        Parameter  o1o2  ;   o1o2  = 174.665;
        Parameter  o1o3  ;   o1o3  = 180.539;
        Parameter  o1o4  ;   o1o4  = 211.558;
        Parameter  o1o5  ;   o1o5  = 232.252;
        Parameter  o2o1  ;   o2o1  = 83.789;
        Parameter  o2o2  ;   o2o2  = 173.255;
        Parameter  o2o3  ;   o2o3  = 179.917;
        Parameter  o2o4  ;   o2o4  = 210.585;
        Parameter  o2o5  ;   o2o5  = 215.254;
        Parameter  o3o1  ;   o3o1  = 82.916;
        Parameter  o3o2  ;   o3o2  = 173.721;
        Parameter  o3o3  ;   o3o3  = 182.676;
        Parameter  o3o4  ;   o3o4  = 207.838;
        Parameter  o3o5  ;   o3o5  = 203.855;
        Parameter  o4o1  ;   o4o1  = 80.134;
        Parameter  o4o2  ;   o4o2  = 178.654;
        Parameter  o4o3  ;   o4o3  = 185.917;
        Parameter  o4o4  ;   o4o4  = 206.416;
        Parameter  o4o5  ;   o4o5  = 186.308;
        Parameter  o5o1  ;   o5o1  = 65.345;
        Parameter  o5o2  ;   o5o2  = 188.01;
        Parameter  o5o3  ;   o5o3  = 192.568;
        Parameter  o5o4  ;   o5o4  = 204.3;
        Parameter  o5o5  ;   o5o5  = 201.1;
        Parameter  o6o1  ;   o6o1  = 72.005;
        Parameter  o6o2  ;   o6o2  = 193.833;
        Parameter  o6o3  ;   o6o3  = 196.651;
        Parameter  o6o4  ;   o6o4  = 204.25;
        Parameter  o6o5  ;   o6o5  = 241.079;
        Parameter   npi  ;    npi  = (6) + (6);
        Parameter   kp1  ;    kp1  = 1 + (5);
        Parameter   jm1  ;    jm1  = -1 + (5);
        Parameter     c  ;      c  = 1.0 / (105.15);

Variable t1_1 , o1_1 , t1_2 , o1_2 ,t1_3 ,
         o1_3 , t1_4 , o1_4 , t1_5 ,o1_5 ,
         v1_2 , w1_2 , v1_3 , w1_3 ,v1_4 ,
         t2_1 , o2_1 , t2_2 , o2_2 ,t2_3 ,
         o2_3 , t2_4 , o2_4 , t2_5 ,o2_5 ,
         v2_2 , w2_2 , v2_3 , w2_3 ,v2_4 ,
         t3_1 , o3_1 , t3_2 , o3_2 ,t3_3 ,
         o3_3 , t3_4 , o3_4 , t3_5 ,o3_5 ,
         v3_2 , w3_2 , v3_3 , w3_3 ,v3_4 ,
         t4_1 , o4_1 , t4_2 , o4_2 ,t4_3 ,
         o4_3 , t4_4 , o4_4 , t4_5 ,o4_5 ,
         v4_2 , w4_2 , v4_3 , w4_3 ,v4_4 ,
         t5_1 , o5_1 , t5_2 , o5_2 ,t5_3 ,
         o5_3 , t5_4 , o5_4 , t5_5 ,o5_5 ,
         v5_2 , w5_2 , v5_3 , w5_3 ,v5_4 ,
         t6_1 , o6_1 , t6_2 , o6_2 ,t6_3 ,
         o6_3 , t6_4 , o6_4 , t6_5 ,o6_5 ,
         v6_2 , w6_2 , v6_3 , w6_3 ,v6_4 , obj ;

Equation   consg1_1 , consg1_2 , consg1_3 , consg1_4 ,
           consg1_5 , consg2_1 , consg2_2 , consg2_3 ,
           consg2_4 , consg2_5 , consg3_1 , consg3_2 ,
           consg3_3 , consg3_4 , consg3_5 , consg4_1 ,
           consg4_2 , consg4_3 , consg4_4 , consg4_5 ,
           consg5_1 , consg5_2 , consg5_3 , consg5_4 ,
           consg5_5 , consg6_1 , consg6_2 , consg6_3 ,
           consg6_4 , consg6_5 , consa1_1 , consa1_2 ,
           consa1_3 , consv1_2 , consw1_2 , consv1_3 ,
           consw1_3 , consv1_4 , consa2_1 , consa2_2 ,
           consa2_3 , consv2_2 , consw2_2 , consv2_3 ,
           consw2_3 , consv2_4 , consa3_1 , consa3_2 ,
           consa3_3 , consv3_2 , consw3_2 , consv3_3 ,
           consw3_3 , consv3_4 , consa4_1 , consa4_2 ,
           consa4_3 , consv4_2 , consw4_2 , consv4_3 ,
           consw4_3 , consv4_4 , consa5_1 , consa5_2 ,
           consa5_3 , consv5_2 , consw5_2 , consv5_3 ,
           consw5_3 , consv5_4 , consa6_1 , consa6_2 ,
           consa6_3 , consv6_2 , consw6_2 , consv6_3 ,
           consw6_3 , consv6_4 , Def_obj ;

consg1_1.. t2_1 - t1_1 + o1_1 + 22.0  =e=  0;
consg1_2.. t2_2 - t1_2 + o1_2 - o1_1 + 1.0  =e=  0;
consg1_3.. t2_3 - t1_3 + o1_3 - o1_2 - 3.0  =e=  0;
consg1_4.. t2_4 - t1_4 + o1_4 - o1_3 + 27.2  =e=  0;
consg1_5.. t2_5 - t1_5 + o1_5 - o1_4 - 51.5  =e=  0;
consg2_1.. t3_1 - t2_1 + o2_1 - 44.0  =e=  0;
consg2_2.. t3_2 - t2_2 + o2_2 - o2_1 - 162.0  =e=  0;
consg2_3.. t3_3 - t2_3 + o2_3 - o2_2 - 8.0  =e=  0;
consg2_4.. t3_4 - t2_4 + o2_4 - o2_3 - 12.5  =e=  0;
consg2_5.. t3_5 - t2_5 + o2_5 - o2_4 - 53.5  =e=  0;
consg3_1.. t4_1 - t3_1 + o3_1 + 11.0  =e=  0;
consg3_2.. t4_2 - t3_2 + o3_2 - o3_1 - 60.0  =e=  0;
consg3_3.. t4_3 - t3_3 + o3_3 - o3_2 - 10.0  =e=  0;
consg3_4.. t4_4 - t3_4 + o3_4 - o3_3 - 18.0  =e=  0;
consg3_5.. t4_5 - t3_5 + o3_5 - o3_4 - 39.0  =e=  0;
consg4_1.. t5_1 - t4_1 + o4_1 - 124.0  =e=  0;
consg4_2.. t5_2 - t4_2 + o4_2 - o4_1 - 246.0  =e=  0;
consg4_3.. t5_3 - t4_3 + o4_3 - o4_2 - 6.0  =e=  0;
consg4_4.. t5_4 - t4_4 + o4_4 - o4_3 - 9.7  =e=  0;
consg4_5.. t5_5 - t4_5 + o4_5 - o4_4 - 17.2  =e=  0;
consg5_1.. t6_1 - t5_1 + o5_1 - 127.0  =e=  0;
consg5_2.. t6_2 - t5_2 + o5_2 - o5_1 - 175.0  =e=  0;
consg5_3.. t6_3 - t5_3 + o5_3 - o5_2 - 3.0  =e=  0;
consg5_4.. t6_4 - t5_4 + o5_4 - o5_3 - 10.0  =e=  0;
consg5_5.. t6_5 - t5_5 + o5_5 - o5_4 - 30.2  =e=  0;
consg6_1.. t1_1 - t6_1 + o6_1 - 78.0  =e=  0;
consg6_2.. t1_2 - t6_2 + o6_2 - o6_1 - 156.0  =e=  0;
consg6_3.. t1_3 - t6_3 + o6_3 - o6_2 - 3.0  =e=  0;
consg6_4.. t1_4 - t6_4 + o6_4 - o6_3 - 14.0  =e=  0;
consg6_5.. t1_5 - t6_5 + o6_5 - o6_4 - 23.2  =e=  0;
consa1_1.. 0.0841168 * sqr(v1_2) * sqrt(w1_2) - o1_2  =e=  0;
consa1_2.. 0.1280849 * sqr(v1_3) * sqrt(w1_3) - o1_3  =e=  0;
consa1_3.. 0.2605 * exp(log(v1_4)*2.2) - o1_4  =e=  0;
consv1_2.. -v1_2 + 0.0010399334442595673*t1_2 + 0.10869565217391305*t1_3 - 543.4  =e=  0;
consw1_2.. -w1_2 + 0.0020798668885191347*t1_2 - 0.2173913043478261*t1_3  =e=  0;
consv1_3.. -v1_3 + 0.2173913043478261*t1_3 - 543.4  =e=  0;
consw1_3.. -w1_3 + 0.2173913043478261*t1_3 - 0.009510223490252021*t1_4  =e=  0;
consv1_4.. -v1_4 + 0.009510223490252021*t1_4 - 550.11  =e=  0;
consa2_1.. 0.0841168 * sqr(v2_2) * sqrt(w2_2) - o2_2  =e=  0;
consa2_2.. 0.1280849 * sqr(v2_3) * sqrt(w2_3) - o2_3  =e=  0;
consa2_3.. 0.2605 * exp(log(v2_4)*2.2) - o2_4  =e=  0;
consv2_2.. -v2_2 + 0.0010399334442595673*t2_2 + 0.10869565217391305*t2_3 - 543.4  =e=  0;
consw2_2.. -w2_2 + 0.0020798668885191347*t2_2 - 0.2173913043478261*t2_3  =e=  0;
consv2_3.. -v2_3 + 0.2173913043478261*t2_3 - 543.4  =e=  0;
consw2_3.. -w2_3 + 0.2173913043478261*t2_3 - 0.009510223490252021*t2_4  =e=  0;
consv2_4.. -v2_4 + 0.009510223490252021*t2_4 - 550.11  =e=  0;
consa3_1.. 0.0841168 * sqr(v3_2) * sqrt(w3_2) - o3_2  =e=  0;
consa3_2.. 0.1280849 * sqr(v3_3) * sqrt(w3_3) - o3_3  =e=  0;
consa3_3.. 0.2605 * exp(log(v3_4)*2.2) - o3_4  =e=  0;
consv3_2.. -v3_2 + 0.0010399334442595673*t3_2 + 0.10869565217391305*t3_3 - 543.4  =e=  0;
consw3_2.. -w3_2 + 0.0020798668885191347*t3_2 - 0.2173913043478261*t3_3  =e=  0;
consv3_3.. -v3_3 + 0.2173913043478261*t3_3 - 543.4  =e=  0;
consw3_3.. -w3_3 + 0.2173913043478261*t3_3 - 0.009510223490252021*t3_4  =e=  0;
consv3_4.. -v3_4 + 0.009510223490252021*t3_4 - 550.11  =e=  0;
consa4_1.. 0.0841168 * sqr(v4_2) * sqrt(w4_2) - o4_2  =e=  0;
consa4_2.. 0.1280849 * sqr(v4_3) * sqrt(w4_3) - o4_3  =e=  0;
consa4_3.. 0.2605 * exp(log(v4_4)*2.2) - o4_4  =e=  0;
consv4_2.. -v4_2 + 0.0010399334442595673*t4_2 + 0.10869565217391305*t4_3 - 543.4  =e=  0;
consw4_2.. -w4_2 + 0.0020798668885191347*t4_2 - 0.2173913043478261*t4_3  =e=  0;
consv4_3.. -v4_3 + 0.2173913043478261*t4_3 - 543.4  =e=  0;
consw4_3.. -w4_3 + 0.2173913043478261*t4_3 - 0.009510223490252021*t4_4  =e=  0;
consv4_4.. -v4_4 + 0.009510223490252021*t4_4 - 550.11  =e=  0;
consa5_1.. 0.0841168 * sqr(v5_2) * sqrt(w5_2) - o5_2  =e=  0;
consa5_2.. 0.1280849 * sqr(v5_3) * sqrt(w5_3) - o5_3  =e=  0;
consa5_3.. 0.2605 * exp(log(v5_4)*2.2) - o5_4  =e=  0;
consv5_2.. -v5_2 + 0.0010399334442595673*t5_2 + 0.10869565217391305*t5_3 - 543.4  =e=  0;
consw5_2.. -w5_2 + 0.0020798668885191347*t5_2 - 0.2173913043478261*t5_3  =e=  0;
consv5_3.. -v5_3 + 0.2173913043478261*t5_3 - 543.4  =e=  0;
consw5_3.. -w5_3 + 0.2173913043478261*t5_3 - 0.009510223490252021*t5_4  =e=  0;
consv5_4.. -v5_4 + 0.009510223490252021*t5_4 - 550.11  =e=  0;
consa6_1.. 0.0841168 * sqr(v6_2) * sqrt(w6_2) - o6_2  =e=  0;
consa6_2.. 0.1280849 * sqr(v6_3) * sqrt(w6_3) - o6_3  =e=  0;
consa6_3.. 0.2605 * exp(log(v6_4)*2.2) - o6_4  =e=  0;
consv6_2.. -v6_2 + 0.0010399334442595673*t6_2 + 0.10869565217391305*t6_3 - 543.4  =e=  0;
consw6_2.. -w6_2 + 0.0020798668885191347*t6_2 - 0.2173913043478261*t6_3  =e=  0;
consv6_3.. -v6_3 + 0.2173913043478261*t6_3 - 543.4  =e=  0;
consw6_3.. -w6_3 + 0.2173913043478261*t6_3 - 0.009510223490252021*t6_4  =e=  0;
consv6_4.. -v6_4 + 0.009510223490252021*t6_4 - 550.11  =e=  0;

Def_obj..
obj =e= {(t1_1 - 202761.072)*(t1_1 - 202761.072) + (o1_1 -
         232.252)*(o1_1 - 232.252) + (t1_2 - 277791.816)*(t1_2 -
         277791.816) + (o1_2 - 174.665)*(o1_2 - 174.665) + (t1_3 -
         2636.996)*(t1_3 - 2636.996) + (o1_3 - 180.539)*(o1_3 -
         180.539) + (t1_4 - 59987.0235)*(t1_4 - 59987.0235) + (o1_4 -
         211.558)*(o1_4 - 211.558) + (t1_5 - 19490.4)*(t1_5 - 19490.4)+
         (o1_5 - 232.252)*(o1_5 - 232.252) + (t2_1 -
         202703.646)*(t2_1 - 202703.646) + (o2_1 - 83.789)*(o2_1 -
         83.789) + (t2_2 - 277849.512)*(t2_2 - 277849.512) + (o2_2 -
         173.255)*(o2_2 - 173.255) + (t2_3 - 2638.1)*(t2_3 - 2638.1) +
         (o2_3 - 179.917)*(o2_3 - 179.917) + (t2_4 - 59998.59)*(t2_4 -
         59998.59) + (o2_4 - 210.585)*(o2_4 - 210.585) + (t2_5 -
         19555.2)*(t2_5 - 19555.2) + (o2_5 - 215.254)*(o2_5 - 215.254)+
         (t3_1 - 202720.536)*(t3_1 - 202720.536) + (o3_1 -
         82.916)*(o3_1 - 82.916) + (t3_2 - 277955.288)*(t3_2 -
         277955.288) + (o3_2 - 173.721)*(o3_2 - 173.721) + (t3_3 -
         2639.894)*(t3_3 - 2639.894) + (o3_3 - 182.676)*(o3_3 -
         182.676) + (t3_4 - 60046.959)*(t3_4 - 60046.959) + (o3_4 -
         207.838)*(o3_4 - 207.838) + (t3_5 - 19597.6)*(t3_5 - 19597.6)+
         (o3_5 - 203.855)*(o3_5 - 203.855) + (t4_1 -
         202808.364)*(t4_1 - 202808.364) + (o4_1 - 80.134)*(o4_1 -
         80.134) + (t4_2 - 278104.336)*(t4_2 - 278104.336) + (o4_2 -
         178.654)*(o4_2 - 178.654) + (t4_3 - 2640.906)*(t4_3 -
         2640.906) + (o4_3 - 185.917)*(o4_3 - 185.917) + (t4_4 -
         60074.298)*(t4_4 - 60074.298) + (o4_4 - 206.416)*(o4_4 -
         206.416) + (t4_5 - 19652.8)*(t4_5 - 19652.8) + (o4_5 -
         186.308)*(o4_5 - 186.308) + (t5_1 - 202916.46)*(t5_1 -
         202916.46) + (o5_1 - 65.345)*(o5_1 - 65.345) + (t5_2 -
         278224.536)*(t5_2 - 278224.536) + (o5_2 - 188.01)*(o5_2 -
         188.01) + (t5_3 - 2641.458)*(t5_3 - 2641.458) + (o5_3 -
         192.568)*(o5_3 - 192.568) + (t5_4 - 60091.122)*(t5_4 -
         60091.122) + (o5_4 - 204.3)*(o5_4 - 204.3) + (t5_5 -
         19708.8)*(t5_5 - 19708.8) + (o5_5 - 201.1)*(o5_5 - 201.1) +
         (t6_1 - 202953.618)*(t6_1 - 202953.618) + (o6_1 -
         72.005)*(o6_1 - 72.005) + (t6_2 - 278277.424)*(t6_2 -
         278277.424) + (o6_2 - 193.833)*(o6_2 - 193.833) + (t6_3 -
         2641.458)*(t6_3 - 2641.458) + (o6_3 - 196.651)*(o6_3 -
         196.651) + (t6_4 - 60082.71)*(t6_4 - 60082.71) + (o6_4 -
         204.25)*(o6_4 - 204.25) + (t6_5 - 19706.4)*(t6_5 - 19706.4) +
         (o6_5 - 241.079)*(o6_5 - 241.079)}/1000;

 w1_2.lo = 0.0001 ;
 w1_3.lo = 0.0001 ;
 v1_4.lo = 0.0001 ;
 w2_2.lo = 0.0001 ;
 w2_3.lo = 0.0001 ;
 v2_4.lo = 0.0001 ;
 w3_2.lo = 0.0001 ;
 w3_3.lo = 0.0001 ;
 v3_4.lo = 0.0001 ;
 w4_2.lo = 0.0001 ;
 w4_3.lo = 0.0001 ;
 v4_4.lo = 0.0001 ;
 w5_2.lo = 0.0001 ;
 w5_3.lo = 0.0001 ;
 v5_4.lo = 0.0001 ;
 w6_2.lo = 0.0001 ;
 w6_3.lo = 0.0001 ;
 v6_4.lo = 0.0001 ;
 t1_1.l = 1.0  ; o1_1.l = 1.0  ; t1_2.l = 1.0  ;
 o1_2.l = 1.0  ; t1_3.l = 1.0  ; o1_3.l = 1.0  ;
 t1_4.l = 1.0  ; o1_4.l = 1.0  ; t1_5.l = 1.0  ;
 o1_5.l = 1.0  ; v1_2.l = 1.0  ; w1_2.l = 1.0  ;
 v1_3.l = 1.0  ; w1_3.l = 1.0  ; v1_4.l = 1.0  ;
 t2_1.l = 1.0  ; o2_1.l = 1.0  ; t2_2.l = 1.0  ;
 o2_2.l = 1.0  ; t2_3.l = 1.0  ; o2_3.l = 1.0  ;
 t2_4.l = 1.0  ; o2_4.l = 1.0  ; t2_5.l = 1.0  ;
 o2_5.l = 1.0  ; v2_2.l = 1.0  ; w2_2.l = 1.0  ;
 v2_3.l = 1.0  ; w2_3.l = 1.0  ; v2_4.l = 1.0  ;
 t3_1.l = 1.0  ; o3_1.l = 1.0  ; t3_2.l = 1.0  ;
 o3_2.l = 1.0  ; t3_3.l = 1.0  ; o3_3.l = 1.0  ;
 t3_4.l = 1.0  ; o3_4.l = 1.0  ; t3_5.l = 1.0  ;
 o3_5.l = 1.0  ; v3_2.l = 1.0  ; w3_2.l = 1.0  ;
 v3_3.l = 1.0  ; w3_3.l = 1.0  ; v3_4.l = 1.0  ;
 t4_1.l = 1.0  ; o4_1.l = 1.0  ; t4_2.l = 1.0  ;
 o4_2.l = 1.0  ; t4_3.l = 1.0  ; o4_3.l = 1.0  ;
 t4_4.l = 1.0  ; o4_4.l = 1.0  ; t4_5.l = 1.0  ;
 o4_5.l = 1.0  ; v4_2.l = 1.0  ; w4_2.l = 1.0  ;
 v4_3.l = 1.0  ; w4_3.l = 1.0  ; v4_4.l = 1.0  ;
 t5_1.l = 1.0  ; o5_1.l = 1.0  ; t5_2.l = 1.0  ;
 o5_2.l = 1.0  ; t5_3.l = 1.0  ; o5_3.l = 1.0  ;
 t5_4.l = 1.0  ; o5_4.l = 1.0  ; t5_5.l = 1.0  ;
 o5_5.l = 1.0  ; v5_2.l = 1.0  ; w5_2.l = 1.0  ;
 v5_3.l = 1.0  ; w5_3.l = 1.0  ; v5_4.l = 1.0  ;
 t6_1.l = 1.0  ; o6_1.l = 1.0  ; t6_2.l = 1.0  ;
 o6_2.l = 1.0  ; t6_3.l = 1.0  ; o6_3.l = 1.0  ;
 t6_4.l = 1.0  ; o6_4.l = 1.0  ; t6_5.l = 1.0  ;
 o6_5.l = 1.0  ; v6_2.l = 1.0  ; w6_2.l = 1.0  ;
 v6_3.l = 1.0  ; w6_3.l = 1.0  ; v6_4.l = 1.0  ;

Model lakes /all/ ;

Solve lakes  using nlp minimazing obj ;
obj.l=1000*obj.l;
display t1_1.l ; display o1_1.l ; display t1_2.l ;
display o1_2.l ; display t1_3.l ; display o1_3.l ;
display t1_4.l ; display o1_4.l ; display t1_5.l ;
display o1_5.l ; display v1_2.l ; display w1_2.l ;
display v1_3.l ; display w1_3.l ; display v1_4.l ;
display t2_1.l ; display o2_1.l ; display t2_2.l ;
display o2_2.l ; display t2_3.l ; display o2_3.l ;
display t2_4.l ; display o2_4.l ; display t2_5.l ;
display o2_5.l ; display v2_2.l ; display w2_2.l ;
display v2_3.l ; display w2_3.l ; display v2_4.l ;
display t3_1.l ; display o3_1.l ; display t3_2.l ;
display o3_2.l ; display t3_3.l ; display o3_3.l ;
display t3_4.l ; display o3_4.l ; display t3_5.l ;
display o3_5.l ; display v3_2.l ; display w3_2.l ;
display v3_3.l ; display w3_3.l ; display v3_4.l ;
display t4_1.l ; display o4_1.l ; display t4_2.l ;
display o4_2.l ; display t4_3.l ; display o4_3.l ;
display t4_4.l ; display o4_4.l ; display t4_5.l ;
display o4_5.l ; display v4_2.l ; display w4_2.l ;
display v4_3.l ; display w4_3.l ; display v4_4.l ;
display t5_1.l ; display o5_1.l ; display t5_2.l ;
display o5_2.l ; display t5_3.l ; display o5_3.l ;
display t5_4.l ; display o5_4.l ; display t5_5.l ;
display o5_5.l ; display v5_2.l ; display w5_2.l ;
display v5_3.l ; display w5_3.l ; display v5_4.l ;
display t6_1.l ; display o6_1.l ; display t6_2.l ;
display o6_2.l ; display t6_3.l ; display o6_3.l ;
display t6_4.l ; display o6_4.l ; display t6_5.l ;
display o6_5.l ; display v6_2.l ; display w6_2.l ;
display v6_3.l ; display w6_3.l ; display v6_4.l ;
display obj.l ;
