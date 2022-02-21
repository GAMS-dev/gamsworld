*option loqo_options $loqo_options" convex";
*length 27 (-13,...,13) linear phase FIR filter

$Set N_big 1000
$Set n_small 13

parameter      pi;  pi      = 4*arctan(1);

***************************************************************
*          FIRST VARIANT     (on line now )
parameter epsilon;  epsilon =      4.0e-4;

*          SECOND VARIANT    (also change  equation "passband" please)
*parameter epsilon;  epsilon =      1.0e-4;
***************************************************************

parameter step;  step =      1/%N_big%;

set NU /0*%N_big%/;
set k /0*%n_small%/;
set inside_k(k) /1*%n_small%/;

parameter lo_lim,up_lim       ;
lo_lim=ceil(card(nu)*0.20)+1  ;
up_lim=ceil(card(nu)*0.80)-1  ;

parameter  Sw2[nu];
parameter  Sw2[nu]; Sw2[nu]=1;
loop(nu$(ord(nu)<lo_lim), Sw2[nu]=0);
loop(nu$(ord(nu)>up_lim), Sw2[nu]=0);

lo_lim=ceil(card(nu)*0.10)+1  ;
up_lim=ceil(card(nu)*0.90)-1  ;

parameter  Sm2[nu];   Sm2[nu]=0;
loop(nu$(ord(nu)<lo_lim),Sm2[nu]=1);
loop(nu$(ord(nu)>up_lim),Sm2[nu]=1);

lo_lim=ceil(card(nu)*0.40)-1  ;
up_lim=ceil(card(nu)*0.60)+1  ;

loop(nu$((ord(nu)>lo_lim)and(ord(nu)<up_lim)), Sm2[nu]=1);

lo_lim=ceil(card(nu)*0.30)  ;
up_lim=ceil(card(nu)*0.70)  ;
parameter  St2[nu]; St2[nu]=0;
loop(nu$(ord(nu)<lo_lim),St2[nu]=1);
loop(nu$(ord(nu)>up_lim),St2[nu]=1);

positive variable rho;
variable          power_bnd,
                  hw[k]    ,
                  hm[k]    ,
                  ht[k]    ,
                  H_big_w[nu],
                  H_big_m[nu],
                  H_big_t[nu];
equation
  first[nu],
 second[nu],
  third[nu],
     defobj,

  passband,
  wooferband,
  middleband,
  tweet_band,
  defobj;

first[nu]..
          H_big_w[nu]=e=hw['0']+2*sum{k$inside_k(k),
                        (hw[k]*cos(-2*pi*(ord(k)-1)*(ord(nu)-1)*step))};
second[nu]..
          H_big_m[nu]=e=hm['0']+2*sum{k$inside_k(k),
                        (hm[k]*cos(-2*pi*(ord(k)-1)*(ord(nu)-1)*step))};
third[nu]..
          H_big_t[nu]=e=ht['0']+2*sum{k$inside_k(k),
                        (ht[k]*cos(-2*pi*(ord(k)-1)*(ord(nu)-1)*step))};

*                     FIRST VARIANT  (on line now )
****************************************************************************
passband..     sqrt(sum{nu,sqr(H_big_w[nu]+H_big_m[nu]+H_big_t[nu]-1)})=l=
                                              sqrt(%N_big%)*sqrt(epsilon);
*                     SECOND VARIANT
****************************************************************************
*passband..    sqrt(1+sum{nu,sqr(H_big_w[nu]+H_big_m[nu]+H_big_t[nu]-1)})=l=
*                                             sqrt(%N_big%*epsilon+1 );
****************************************************************************

wooferband.. sqrt(sum{nu,(sqr(H_big_w[nu])*Sw2[nu])})  =l= sqrt(0.6*%N_big%)*rho;
middleband.. sqrt(sum{nu,(sqr(H_big_m[nu])*Sm2[nu])})  =l= sqrt(0.4*%N_big%)*rho;
tweet_band.. sqrt(sum{nu,(sqr(H_big_t[nu])*St2[nu])})  =l= sqrt(0.6*%N_big%)*rho;
defobj..   power_bnd=e= rho;

hw.l['0'] = 0.1;
hm.l['0'] = 0.1;
ht.l['0'] = 0.1;

 hw.lo[k] = -0.5 ;
 hm.lo[k] = -0.5 ;
 ht.lo[k] = -0.5 ;
 hw.up[k] =  0.5 ;
 hm.up[k] =  0.5 ;
 ht.up[k] =  0.5 ;

********************************************
model coleman_3 /all/;
solve coleman_3 using nlp minimize power_bnd;
display power_bnd.l;
