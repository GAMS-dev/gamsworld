* length 15 (-7,...,7) linear phase FIR filter

$Set N_big 300
$Set n_small 7

parameter  pi     ;  pi      = 4*arctan(1);
parameter  epsilon;  epsilon = 1.0e-5;
                     epsilon = 1.5e-5;
* epsilon can not be less then 1.3e-5;
parameter  step   ;  step    = 1/%N_big%;

Set NU /0*%N_big%/;
Set k  /0*%n_small%/;
Set inside(k) /1*%n_small%/;

parameter  Sp2[nu]; Sp2[nu] =0;
parameter  Ss2[nu]; Ss2[nu] =0;

parameter lo_lim,up_lim       ;

lo_lim=ceil(card(nu)*0.10)-1  ;
up_lim=ceil(card(nu)*0.80)    ;
loop(nu${(lo_lim < ord(nu)) and (ord(nu)<=up_lim)}, Sp2[nu] =1;);

lo_lim=ceil(card(nu)*0.30)+1  ;
up_lim=ceil(card(nu)*0.90)    ;
loop(nu${(lo_lim > ord(nu)) or  (ord(nu)>=up_lim)}, Ss2[nu] =1;);

positive variable rho;

variable
    power_bnd
    h_real[k],
    h_imag[k],
    u_real[k],
    u_imag[k],
    v_real[k],
    v_imag[k],
    H[nu]
    H2[nu]
    H4[nu]
    U[nu]
    V2[nu];

equation
      first[nu] ,
     second[nu] ,
      third[nu] ,
      forth[nu] ,
      fifth[nu] ,
     defobj     ,
   stopband     ,
   passband     ;

 first[nu]..
H[nu]  =e=
    h_real['0'] +
    2*
    sum{k$inside(k), (h_real[k]*cos(-2*pi*(ord(k)-1)*(ord(nu)-1)*step) -
                      h_imag[k]*sin(-2*pi*(ord(k)-1)*(ord(nu)-1)*step))};

second[nu]..
H2[nu] =e=
    h_real['0'] +
    2*
    sum{k$inside(k),(h_real[k]*cos(-4*pi*(ord(k)-1)*(ord(nu)-1)*step) -
                     h_imag[k]*sin(-4*pi*(ord(k)-1)*(ord(nu)-1)*step))};
 third[nu]..
H4[nu] =e=
    h_real['0'] +
    2*
    sum{k$inside(k),(h_real[k]*cos(-8*pi*(ord(k)-1)*(ord(nu)-1)*step)
                   - h_imag[k]*sin(-8*pi*(ord(k)-1)*(ord(nu)-1)*step))};
 forth[nu]..
U[nu]  =e=
    u_real['0'] +
    2*
    sum{k$inside(k), (u_real[k]*cos(-2*pi*(ord(k)-1)*(ord(nu)-1)*step) -
                      u_imag[k]*sin(-2*pi*(ord(k)-1)*(ord(nu)-1)*step))};
 fifth[nu]..
V2[nu]  =e=
    v_real['0'] +
    2*
    sum{k$inside(k),(v_real[k]*cos(-4*pi*(ord(k)-1)*(ord(nu)-1)*step) -
                     v_imag[k]*sin(-4*pi*(ord(k)-1)*(ord(nu)-1)*step))};

defobj.. power_bnd=e= rho;

passband..
    sqrt(sum{nu,(sqr(H[nu]+ U[nu]*H2[nu]+U[nu]*V2[nu]*H4[nu]-1)*Sp2[nu])})=l=
                                                       sqrt(0.7*%N_big%)*rho;
stopband..
    sqrt(sum{nu,(sqr(H[nu])*Ss2[nu])})=l=sqrt(0.4*%N_big%*epsilon);

h_real.l['0'] = 2;
u_real.l['0'] = 2;
v_real.l['0'] = 2;

u_real.fx[k]=0;
u_imag.fx[k]=0;
v_real.fx[k]=0;
v_imag.fx[k]=0;

h_real.l['0'] = 2;
u_real.fx['0'] = 2;
v_real.fx['0'] = 2;
********************************************
model coleman_5 /all/;
solve coleman_5 using nlp minimize power_bnd;

file demo /output/;  put demo;
Put "power_bnd =  ";     Put power_bnd.l:11:8;  Put /;

Put "k       h_real[k]  h_imag[k]  u_real[k]  u_imag[k]  v_real[k]  v_imag[k]";
 Put /;
Loop(k,put k.tl:6
Put h_real.l[k]:11:5 Put h_imag.l[k]:11:5;
Put u_real.l[k]:11:5 Put u_imag.l[k]:11:5;
Put v_real.l[k]:11:5 Put v_imag.l[k]:11:5;
Put /;); Put /;
Put "nu       H.l[nu]    H2[nu]    H4[nu]    U[nu]    V2[nu]    sp2[nu]   ss2[nu] ";
Put /;
Loop(nu,put nu.tl:6  put   H.l[nu]:10:5
                     put H2.l[nu]:10:5
                     put H4.l[nu]:10:5
                     put  U.l[nu]:10:5
                     put V2.l[nu]:10:5
                     put  sp2[nu]:10:5
                     put  ss2[nu]:10:5
put/;);Put /;Put /;
