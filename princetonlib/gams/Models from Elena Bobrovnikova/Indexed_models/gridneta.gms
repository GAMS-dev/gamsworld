* gridneta.mod  OBR2-MY-V60-V96
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs);
* modified to permit variable problem sizes and bound choices by David M. Gay.

* Ref.: Ph.Toint and D.Tuyttens, On Large Scale Nonlinear Network Optimization,
* Mathematical Programming B, vol.48(1), pp. 125-159, 1990.

* Params L, a, c, ibounds, and r give what the ref. calls
* problem P(L,a,c,ibounds,r).
* The default settings give P(2,1,2,0,.1).

* Number of variables: 60 (with default settings)
* Number of constraints: 96 (with default settings)
* Objective partially separable
* Objective convex (?)
* Linear constraints

$Set M 5
$Set M_1 4
Set I      /i0*i%M%/;
Set j(i)  /i0*i%M%/;
Set K   /k0*k1/;

Alias(i,ii);
Alias(j,jj);
Alias(k,kk);

Set A[i,j,k] ;
A[i,j,k]=Yes$(((ord(i)-1 lt %M%) and (ord(k) eq 2)) or
              ((ord(j)-1 lt %M%) and (ord(k) eq 1))   ) ;
Parameter L ; L =  2;

Parameter  cc ; cc = 2   ;
Parameter  aa ; aa = 1   ;
Parameter  rr ; rr = 0.1 ;

Parameter  alpha[i,j,k] ;
           alpha[i,j,k]=1;

           alpha['i0','i1','k1']=2;
           alpha['i0','i2','k0']=2;
           alpha['i1','i0','k1']=2;
           alpha['i1','i1','k0']=2;
           alpha['i1','i1','k1']=2;
           alpha['i1','i2','k1']=2;

           alpha['i2','i1','k0']=2;
           alpha['i2','i1','k1']=2;
           alpha['i2','i2','k0']=2;
           alpha['i2','i2','k1']=2;
           alpha['i2','i3','k1']=2;
           alpha['i2','i4','k0']=2;

           alpha['i3','i0','k0']=2;

           alpha['i3','i1','k0']=2;
           alpha['i3','i1','k1']=2;
           alpha['i3','i2','k0']=2;
           alpha['i3','i2','k1']=2;
           alpha['i3','i3','k0']=2;
           alpha['i3','i4','k0']=2;

           alpha['i4','i1','k1']=2;

           alpha['i0','i3','k1']=4;
           alpha['i0','i4','k0']=4;
           alpha['i1','i3','k0']=4;
           alpha['i1','i3','k1']=4;
           alpha['i1','i4','k1']=4;

           alpha['i2','i3','k1']=4;
           alpha['i2','i4','k1']=4;
           alpha['i3','i0','k1']=4;

           alpha['i3','i3','k1']=4;
           alpha['i3','i4','k1']=4;

           alpha['i4','i1','k0']=4;
           alpha['i4','i2','k0']=4;
           alpha['i4','i3','k0']=4;
           alpha['i4','i3','k1']=4;
           alpha['i4','i4','k0']=4;
           alpha['i4','i4','k1']=4;

Parameter sign[i,j,k];
sign['i0','i0','k0']  = -1 ; sign['i0','i0','k1']  =  1 ;
sign['i0','i1','k0']  =  1 ; sign['i0','i1','k1']  = -1 ;
sign['i0','i2','k0']  = -1 ; sign['i0','i2','k1']  =  1 ;
sign['i0','i3','k0']  =  1 ; sign['i0','i3','k1']  = -1 ;
sign['i0','i4','k0']  = -1 ; sign['i0','i4','k1']  =  1 ;
sign['i0','i5','k0']  =  1 ;
sign['i1','i0','k0']  = -1 ; sign['i1','i0','k1']  =  1 ;
sign['i1','i1','k0']  =  1 ; sign['i1','i1','k1']  = -1 ;
sign['i1','i2','k0']  = -1 ; sign['i1','i2','k1']  =  1 ;
sign['i1','i3','k0']  =  1 ; sign['i1','i3','k1']  = -1 ;
sign['i1','i4','k0']  = -1 ; sign['i1','i4','k1']  =  1 ;
sign['i1','i5','k0']  =  1 ;
sign['i2','i0','k0']  = -1 ; sign['i2','i0','k1']  =  1 ;
sign['i2','i1','k0']  =  1 ; sign['i2','i1','k1']  = -1 ;
sign['i2','i2','k0']  = -1 ; sign['i2','i2','k1']  =  1 ;
sign['i2','i3','k0']  =  1 ; sign['i2','i3','k1']  = -1 ;
sign['i2','i4','k0']  = -1 ; sign['i2','i4','k1']  =  1 ;
sign['i2','i5','k0']  =  1 ;
sign['i3','i0','k0']  = -1 ; sign['i3','i0','k1']  =  1 ;
sign['i3','i1','k0']  =  1 ; sign['i3','i1','k1']  = -1 ;
sign['i3','i2','k0']  = -1 ; sign['i3','i2','k1']  =  1 ;
sign['i3','i3','k0']  =  1 ; sign['i3','i3','k1']  = -1 ;
sign['i3','i4','k0']  = -1 ; sign['i3','i4','k1']  =  1 ;
sign['i3','i5','k0']  = -1;
sign['i4','i0','k0']  = -1 ; sign['i4','i0','k1']  =  1 ;
sign['i4','i1','k0']  =  1 ; sign['i4','i1','k1']  = -1 ;
sign['i4','i2','k0']  = -1 ; sign['i4','i2','k1']  =  1 ;
sign['i4','i3','k0']  =  1 ; sign['i4','i3','k1']  = -1 ;
sign['i4','i4','k0']  = -1 ; sign['i4','i4','k1']  =  1 ;
sign['i4','i5','k0']  =  1;
                             sign['i5','i0','k1']  = -1 ;
                             sign['i5','i1','k1']  =  1 ;
                             sign['i5','i2','k1']  = -1 ;
                             sign['i5','i3','k1']  =  1 ;
                             sign['i5','i4','k1']  = -1 ;


Variable x[i,j,k],Cost ;
Equation Def_obj ;

Def_obj.. Cost =e= (1/100) *    sum{(i,j,k)$A[i,j,k],alpha[i,j,k]*x[i,j,k]*x[i,j,k]}+
                   (1/100) *aa*(sum{(i,j,k)$(A[i,j,k]),
                   sqrt(1 + sqr(x[i,j,k]) + sqr(x[i,j,k]-
                   sum((ii)$((ord(ii)eq ord(i))and(ord(k)eq 1)and(ord(j)eq %M%) ),x[ii+1,'i%M%','k0']   )-
                   sum((ii)$((ord(ii)eq ord(i))and(ord(k)eq 1)and(ord(j)ne %M%) ),x[ii+1,j,'k1']        )-
                   sum((jj)$((ord(jj)eq ord(j))and(ord(k)eq 2)and(ord(i)eq %M%) ),x['i0',jj+1,'k0']     )-
                   sum((jj)$((ord(jj)eq ord(j))and(ord(k)eq 2)and(ord(i)eq %M_1%) ),x['i%m%',j,'k1']    )-
                   sum((ii,jj)$((ord(jj)eq ord(j))and(ord(k)eq 2)and(ord(i)lt %M_1%) ),x[i+1,j,'k1']    )
) )
                                })
                           +
 (1/1200)*power((10+sum{(i,j,k)$A[i,j,k], sign[i,j,k]*x[i,j,k]} ),4)
 ;

x.lo[i,j,k]=0.00;
Model gridneta /all/;
Solve gridneta using nlp minimazing Cost;

display Cost.l;
