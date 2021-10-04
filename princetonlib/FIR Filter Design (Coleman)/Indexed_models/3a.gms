$Set m  53
Set i /i1*i%m%/;
Set inside1(i)  /i14*i40/;
Alias(i,ii);
Alias(i,k) ;
Set inside2(ii) /i14*i40/;
Set setabs1(i,k)  /i27.i27,i26.i28,i25.i29,i24.i30,i23.i31,i22.i32,i21.i33,
                   i20.i34,i19.i35,i18.i36,i17.i37,i16.i38,i15.i39,i14.i40,
                   i28.i28,i29.i29,i30.i30,i31.i31,i32.i32,i33.i33,i34.i34,
                   i35.i35,i36.i36,i37.i37,i38.i38,i39.i39,i40.i40 /;

Set setabs2(ii,k) /i27.i27,i26.i28,i25.i29,i24.i30,i23.i31,i22.i32,i21.i33,
                   i20.i34,i19.i35,i18.i36,i17.i37,i16.i38,i15.i39,i14.i40,
                   i28.i28,i29.i29,i30.i30,i31.i31,i32.i32,i33.i33,i34.i34,
                   i35.i35,i36.i36,i37.i37,i38.i38,i39.i39,i40.i40 /;

Set right(i)    /i28*i40/;

parameter  pi ;  pi = 4*arctan(1) ;

parameter epsi ; epsi = 1.0e-4      ;

parameter sinc_w(i) ; sinc_w(i) = 0.6 ;
sinc_w(i)$(ord(i) ne 27) = (sin(2*pi*(ord(i)-27)*0.8)/(pi*(ord(i)-27)))     ;

parameter sinc_m(i) ; sinc_m(i) = 0.4 ;
sinc_m(i)$(ord(i) ne 27) = ( sin(2*pi*(ord(i)-27)*0.1)/(pi*(ord(i)-27) ) +
                             sin(2*pi*(ord(i)-27)*0.6)/(pi*(ord(i)-27))   ) ;

parameter sinc_t(i) ; sinc_t(i) = 0.6 ;
sinc_t(i)$(ord(i) ne 27) = (sin(2*pi*(ord(i)-27)*0.3)/(pi*(ord(i)-27)))     ;

Positive Variable Rho ;
         Variable hw(i) ,  hm(i) ,  ht(i) , power_bnd ;

Equation passband , woof_band , mid_band , tweet_band , Def_obj ;

passband..
    sqrt(sqr(hw('i27')+hm('i27')+ht('i27')-1) +
    2*sum{i$right(i), sqr(hw[i]+hm[i]+ht[i]  ) })
                                                  =l= sqrt(epsi);
woof_band..
    sqrt( sum{(i,ii)$((inside1(i))and(inside2(ii))),
              sum{k$setabs1(i,k),hw[k]} * sum{k$setabs2(ii,k),hw[k]} *
              sum(k$(ord(k)+27=ord(i)+ord(ii)),sinc_w[k]) })

                                                  =l= sqrt(0.6)*rho;
mid_band..
    sqrt( sum{(i,ii)$((inside1(i))and(inside2(ii))),
              sum{k$setabs1(i,k),hm[k]} * sum{k$setabs2(ii,k),hm[k]} *
              sum(k$(ord(k)+27=ord(i)+ord(ii)),sinc_m[k]) })
                                                  =l= sqrt(0.4)*rho;
tweet_band..
    sqrt( sum{(i,ii)$((inside1(i))and(inside2(ii))),
              sum{k$setabs1(i,k),ht[k]} * sum{k$setabs2(ii,k),ht[k]} *
              sum(k$(ord(k)+27=ord(i)+ord(ii)),sinc_t[k]) })
                                                  =l=sqrt(0.6)*rho;

hw.l['i27'] = 2;
hm.l['i27'] = 2;
ht.l['i27'] = 2;

Def_obj..  power_bnd =e= rho;

Model coleman3a /all/;

solve coleman3a using nlp minimazizing power_bnd;
display sinc_w;
display sinc_m;
display sinc_t;
display  hw.l ;
display  hm.l ;
display  ht.l ;
display  power_bnd.l ;
