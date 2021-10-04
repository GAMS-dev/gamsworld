Set I /i1*i14/;
Set BUS[i] /i1*i14/ ;
Alias(i,i1);
Alias(i,i2);
Alias(i,i3);
Alias(i,i4);

Set j /j1*j10/;
Set k /k1*k16/;

Set BRANCH(i,i1);

      BRANCH['i1','i2']=yes  ;
      BRANCH['i1','i5']=yes  ;
      BRANCH['i2','i3']=yes  ;
      BRANCH['i2','i4']=yes  ;
      BRANCH['i2','i5']=yes  ;
      BRANCH['i3','i4']=yes  ;
      BRANCH['i4','i5']=yes  ;
      BRANCH['i4','i7']=yes  ;
      BRANCH['i4','i9']=yes  ;
      BRANCH['i5','i6']=yes  ;
      BRANCH['i6','i11']=yes ;
      BRANCH['i6','i12']=yes ;
      BRANCH['i6','i13']=yes ;
      BRANCH['i7','i8']=yes  ;
      BRANCH['i7','i9']=yes  ;
      BRANCH['i9','i10']=yes ;
      BRANCH['i9','i14']=yes ;
     BRANCH['i10','i11']=yes ;
     BRANCH['i12','i13']=yes ;
     BRANCH['i13','i14']=yes ;



Parameter p_gen_upper /1.10/ ;
* upper percentual limit on active power generation
Parameter deg_2_rad;  deg_2_rad = 3.14159/180;
* conversion from degrees to radians
Parameter bmva ; bmva = 100 ;
* base MVA rating



* bus parameters

Parameter bus_type[i], bus_name[i], bus_voltage[i], bus_angle0[i],
          bus_p_gen[i], bus_q_gen[i], bus_q_min[i], bus_q_max[i],
          bus_p_load[i], bus_q_load[i], bus_g_shunt[i], bus_b_shunt[i],
          bus_b_shunt_min[i], bus_b_shunt_max[i], bus_b_dispatch[i], bus_area[i];

* bus_type       {BUS};            # type SL = 3, PV = 2, PQ = 0
* bus_name       {BUS} symbolic;   # name
* bus_voltage    {BUS};            # voltage
* bus_angle0     {BUS};            # initial angle
* bus_p_gen      {BUS};            # active power generation
* bus_q_gen      {BUS};            # reactive power generation
* bus_q_min      {BUS};            # reactive power generation lower limit
* bus_q_max      {BUS};            # reactive power generation upper limit
* bus_p_load     {BUS};            # active power load
* bus_q_load     {BUS};            # reactive power load
* bus_g_shunt    {BUS};            # shunt condutance
* bus_b_shunt    {BUS};            # shunt susceptance
* bus_b_shunt_min{BUS};            # shunt susceptance lower limit
* bus_b_shunt_max{BUS};            # shunt susceptance upper limit
* bus_b_dispatch {BUS};            # flag indicator of a dispatchable inductor/capacitor bank
* bus_area       {BUS};            # area

  bus_type['i1'] = 3 ;
  bus_type['i2'] = 2 ;
  bus_type['i3'] = 2 ;
  bus_type['i4'] = 0 ;
  bus_type['i5'] = 0 ;
  bus_type['i6'] = 2 ;
  bus_type['i7'] = 0 ;
  bus_type['i8'] = 2 ;
  bus_type['i9'] = 0 ;
  bus_type['i10']= 0 ;
  bus_type['i11']= 0 ;
  bus_type['i12']= 0 ;
  bus_type['i13']= 0 ;
  bus_type['i14']= 0 ;

*bus_name['i1'] =   '------------'  ;
*bus_name['i2'] =   '------------'  ;
*bus_name['i3'] =   '------------'  ;
*bus_name['i4'] =   '------------'  ;
*bus_name['i5'] =   '------------'  ;
*bus_name['i6'] =   '------------'  ;
*bus_name['i7'] =   '------------'  ;
*bus_name['i8'] =   '------------'  ;
*bus_name['i9'] =   '------------'  ;
*bus_name['i10']=   '------------'  ;
*bus_name['i11']=   '------------'  ;
*bus_name['i12']=   '------------'  ;
*bus_name['i13']=   '------------'  ;
*bus_name['i14']=   '------------'  ;

  bus_voltage['i1'] =   1.0600          ;
  bus_voltage['i2'] =   1.0450          ;
  bus_voltage['i3'] =   1.0100          ;
  bus_voltage['i4'] =   1.0190          ;
  bus_voltage['i5'] =   1.0200          ;
  bus_voltage['i6'] =   1.0700          ;
  bus_voltage['i7'] =   1.0620          ;
  bus_voltage['i8'] =   1.0900          ;
  bus_voltage['i9'] =   1.0560          ;
  bus_voltage['i10']=   1.0510          ;
  bus_voltage['i11']=   1.0570          ;
  bus_voltage['i12']=   1.0550          ;
  bus_voltage['i13']=   1.0500          ;
  bus_voltage['i14']=   1.0360          ;

  bus_angle0['i1'] =   0.00            ;
  bus_angle0['i2'] =   0.00            ;
  bus_angle0['i3'] =   0.00            ;
  bus_angle0['i4'] =   0.00            ;
  bus_angle0['i5'] =   0.00            ;
  bus_angle0['i6'] =   0.00            ;
  bus_angle0['i7'] =   0.00            ;
  bus_angle0['i8'] =   0.00            ;
  bus_angle0['i9'] =   0.00            ;
  bus_angle0['i10']=   0.00            ;
  bus_angle0['i11']=   0.00            ;
  bus_angle0['i12']=   0.00            ;
  bus_angle0['i13']=   0.00            ;
  bus_angle0['i14']=   0.00            ;

  bus_p_gen['i1'] =    232.40         ;
  bus_p_gen['i2'] =     40.00         ;
  bus_p_gen['i3'] =      0.00         ;
  bus_p_gen['i4'] =      0.00         ;
  bus_p_gen['i5'] =      0.00         ;
  bus_p_gen['i6'] =      0.00         ;
  bus_p_gen['i7'] =      0.00         ;
  bus_p_gen['i8'] =      0.00         ;
  bus_p_gen['i9'] =      0.00         ;
  bus_p_gen['i10']=      0.00         ;
  bus_p_gen['i11']=      0.00         ;
  bus_p_gen['i12']=      0.00         ;
  bus_p_gen['i13']=      0.00         ;
  bus_p_gen['i14']=      0.00         ;

  bus_q_gen['i1'] =      -16.90       ;
  bus_q_gen['i2'] =       42.40       ;
  bus_q_gen['i3'] =       23.40       ;
  bus_q_gen['i4'] =        0.00       ;
  bus_q_gen['i5'] =        0.00       ;
  bus_q_gen['i6'] =       12.20       ;
  bus_q_gen['i7'] =        0.00       ;
  bus_q_gen['i8'] =       17.40       ;
  bus_q_gen['i9'] =        0.00       ;
  bus_q_gen['i10']=        0.00       ;
  bus_q_gen['i11']=        0.00       ;
  bus_q_gen['i12']=        0.00       ;
  bus_q_gen['i13']=        0.00       ;
  bus_q_gen['i14']=        0.00       ;

  bus_q_min['i1'] =       -9999.00    ;
  bus_q_min['i2'] =         -40.00    ;
  bus_q_min['i3'] =           0.00    ;
  bus_q_min['i4'] =           0.00    ;
  bus_q_min['i5'] =           0.00    ;
  bus_q_min['i6'] =          -6.00    ;
  bus_q_min['i7'] =           0.00    ;
  bus_q_min['i8'] =          -6.00    ;
  bus_q_min['i9'] =           0.00    ;
  bus_q_min['i10']=           0.00    ;
  bus_q_min['i11']=           0.00    ;
  bus_q_min['i12']=           0.00    ;
  bus_q_min['i13']=           0.00    ;
  bus_q_min['i14']=           0.00    ;

  bus_q_max['i1'] =       9999.00     ;
  bus_q_max['i2'] =         50.00     ;
  bus_q_max['i3'] =         40.00     ;
  bus_q_max['i4'] =          0.00     ;
  bus_q_max['i5'] =          0.00     ;
  bus_q_max['i6'] =         24.00     ;
  bus_q_max['i7'] =          0.00     ;
  bus_q_max['i8'] =         24.00     ;
  bus_q_max['i9'] =          0.00     ;
  bus_q_max['i10']=          0.00     ;
  bus_q_max['i11']=          0.00     ;
  bus_q_max['i12']=          0.00     ;
  bus_q_max['i13']=          0.00     ;
  bus_q_max['i14']=          0.00     ;

  bus_p_load['i1'] =         0.00      ;
  bus_p_load['i2'] =        21.70      ;
  bus_p_load['i3'] =        94.20      ;
  bus_p_load['i4'] =        47.80      ;
  bus_p_load['i5'] =         7.60      ;
  bus_p_load['i6'] =        11.20      ;
  bus_p_load['i7'] =         0.00      ;
  bus_p_load['i8'] =         0.00      ;
  bus_p_load['i9'] =        29.50      ;
  bus_p_load['i10']=         9.00      ;
  bus_p_load['i11']=         3.50      ;
  bus_p_load['i12']=         6.10      ;
  bus_p_load['i13']=        13.50      ;
  bus_p_load['i14']=        14.90      ;

  bus_q_load['i1'] =          0.00     ;
  bus_q_load['i2'] =         12.70     ;
  bus_q_load['i3'] =         19.00     ;
  bus_q_load['i4'] =          3.90     ;
  bus_q_load['i5'] =          1.60     ;
  bus_q_load['i6'] =          7.50     ;
  bus_q_load['i7'] =          0.00     ;
  bus_q_load['i8'] =          0.00     ;
  bus_q_load['i9'] =         16.60     ;
  bus_q_load['i10']=          5.80     ;
  bus_q_load['i11']=          1.80     ;
  bus_q_load['i12']=          1.60     ;
  bus_q_load['i13']=          5.80     ;
  bus_q_load['i14']=          5.00     ;

  bus_g_shunt['i1'] =         0.0000    ;
  bus_g_shunt['i2'] =         0.0000    ;
  bus_g_shunt['i3'] =         0.0000    ;
  bus_g_shunt['i4'] =         0.0000    ;
  bus_g_shunt['i5'] =         0.0000    ;
  bus_g_shunt['i6'] =         0.0000    ;
  bus_g_shunt['i7'] =         0.0000    ;
  bus_g_shunt['i8'] =         0.0000    ;
  bus_g_shunt['i9'] =         0.0000    ;
  bus_g_shunt['i10']=         0.0000    ;
  bus_g_shunt['i11']=         0.0000    ;
  bus_g_shunt['i12']=         0.0000    ;
  bus_g_shunt['i13']=         0.0000    ;
  bus_g_shunt['i14']=         0.0000    ;

  bus_b_shunt['i1'] =          0.0000   ;
  bus_b_shunt['i2'] =          0.0000   ;
  bus_b_shunt['i3'] =          0.0000   ;
  bus_b_shunt['i4'] =          0.0000   ;
  bus_b_shunt['i5'] =          0.0000   ;
  bus_b_shunt['i6'] =          0.0000   ;
  bus_b_shunt['i7'] =          0.0000   ;
  bus_b_shunt['i8'] =          0.0000   ;
  bus_b_shunt['i9'] =          0.1900   ;
  bus_b_shunt['i10']=          0.0000   ;
  bus_b_shunt['i11']=          0.0000   ;
  bus_b_shunt['i12']=          0.0000   ;
  bus_b_shunt['i13']=          0.0000   ;
  bus_b_shunt['i14']=          0.0000   ;

  bus_b_shunt_min['i1'] =           0.0000  ;
  bus_b_shunt_min['i2'] =           0.0000  ;
  bus_b_shunt_min['i3'] =           0.0000  ;
  bus_b_shunt_min['i4'] =           0.0000  ;
  bus_b_shunt_min['i5'] =           0.0000  ;
  bus_b_shunt_min['i6'] =           0.0000  ;
  bus_b_shunt_min['i7'] =           0.0000  ;
  bus_b_shunt_min['i8'] =           0.0000  ;
  bus_b_shunt_min['i9'] =          -1.0000  ;
  bus_b_shunt_min['i10']=           0.0000  ;
  bus_b_shunt_min['i11']=           0.0000  ;
  bus_b_shunt_min['i12']=           0.0000  ;
  bus_b_shunt_min['i13']=           0.0000  ;
  bus_b_shunt_min['i14']=           0.0000  ;

  bus_b_shunt_max['i1'] =         0.0000    ;
  bus_b_shunt_max['i2'] =         0.0000    ;
  bus_b_shunt_max['i3'] =         0.0000    ;
  bus_b_shunt_max['i4'] =         0.0000    ;
  bus_b_shunt_max['i5'] =         0.0000    ;
  bus_b_shunt_max['i6'] =         0.0000    ;
  bus_b_shunt_max['i7'] =         0.0000    ;
  bus_b_shunt_max['i8'] =         0.0000    ;
  bus_b_shunt_max['i9'] =         1.0000    ;
  bus_b_shunt_max['i10']=         0.0000    ;
  bus_b_shunt_max['i11']=         0.0000    ;
  bus_b_shunt_max['i12']=         0.0000    ;
  bus_b_shunt_max['i13']=         0.0000    ;
  bus_b_shunt_max['i14']=         0.0000    ;

  bus_b_dispatch['i1'] =        0          ;
  bus_b_dispatch['i2'] =        0          ;
  bus_b_dispatch['i3'] =        0          ;
  bus_b_dispatch['i4'] =        0          ;
  bus_b_dispatch['i5'] =        0          ;
  bus_b_dispatch['i6'] =        0          ;
  bus_b_dispatch['i7'] =        0          ;
  bus_b_dispatch['i8'] =        0          ;
  bus_b_dispatch['i9'] =        0          ;
  bus_b_dispatch['i10']=        0          ;
  bus_b_dispatch['i11']=        0          ;
  bus_b_dispatch['i12']=        0          ;
  bus_b_dispatch['i13']=        0          ;
  bus_b_dispatch['i14']=        0          ;

  bus_area['i1'] =         0         ;
  bus_area['i2'] =         0         ;
  bus_area['i3'] =         0         ;
  bus_area['i4'] =         0         ;
  bus_area['i5'] =         0         ;
  bus_area['i6'] =         0         ;
  bus_area['i7'] =         0         ;
  bus_area['i8'] =         0         ;
  bus_area['i9'] =         0         ;
  bus_area['i10']=         0         ;
  bus_area['i11']=         0         ;
  bus_area['i12']=         0         ;
  bus_area['i13']=         0         ;
  bus_area['i14']=         0         ;

bus_p_gen[i]   = bus_p_gen[i]/bmva       ;
bus_p_load[i]  = bus_p_load[i]/bmva      ;



* branch parameters

Parameter branch_type[i,i1], branch_r[i,i1], branch_x[i,i1],branch_c[i,i1],
          branch_tap[i,i1],branch_tap_min[i,i1], branch_tap_max[i,i1],
          branch_shf0[i,i1],branch_shf_min[i,i1],branch_shf_max[i,i1];

*branch_from   {BRANCH};          # "from" bus
*branch_to     {BRANCH};          # "to" bus
*branch_type   {BRANCH};          # type 0=transmission line 1=fixed ratio transformer 2=OLTC 4=phase shifter
*branch_r      {BRANCH};          # branch resistance
*branch_x      {BRANCH};          # branch reactance
*branch_c      {BRANCH};          # branch capacitance
*branch_tap    {BRANCH};          # on phase transformer tap ratio
*branch_tap_min{BRANCH};          # on phase transformer tap ratio lower limit
*branch_tap_max{BRANCH};          # on phase transformer tap ratio upper limit
*branch_shf0   {BRANCH};          # phase shifter initial angle
*branch_shf_min{BRANCH};          # phase shifter angle lower limit
*branch_shf_max{BRANCH};          # phase shifter angle upper limit

branch_type['i1','i2']  = 0 ;
branch_type['i1','i5']  = 0 ;
branch_type['i2','i3']  = 0 ;
branch_type['i2','i4']  = 0 ;
branch_type['i2','i5']  = 0 ;
branch_type['i3','i4']  = 0 ;
branch_type['i4','i5']  = 0 ;
branch_type['i4','i7']  = 1 ;
branch_type['i4','i9']  = 1 ;
branch_type['i5','i6']  = 1 ;
branch_type['i6','i11'] = 0 ;
branch_type['i6','i12'] = 0 ;
branch_type['i6','i13'] = 0 ;
branch_type['i7','i8']  = 0 ;
branch_type['i7','i9']  = 0 ;
branch_type['i9','i10'] = 0 ;
branch_type['i9','i14'] = 0 ;
branch_type['i10','i11']= 0 ;
branch_type['i12','i13']= 0 ;
branch_type['i13','i14']= 0 ;

branch_r['i1','i2']  =               0.019380    ;
branch_r['i1','i5']  =               0.054030    ;
branch_r['i2','i3']  =               0.046990    ;
branch_r['i2','i4']  =               0.058110    ;
branch_r['i2','i5']  =               0.056950    ;
branch_r['i3','i4']  =               0.067010    ;
branch_r['i4','i5']  =               0.013350    ;
branch_r['i4','i7']  =               0.000000    ;
branch_r['i4','i9']  =               0.000000    ;
branch_r['i5','i6']  =               0.000000    ;
branch_r['i6','i11'] =               0.094980    ;
branch_r['i6','i12'] =               0.122910    ;
branch_r['i6','i13'] =               0.066150    ;
branch_r['i7','i8']  =               0.000000    ;
branch_r['i7','i9']  =               0.000000    ;
branch_r['i9','i10'] =               0.031810    ;
branch_r['i9','i14'] =               0.127110    ;
branch_r['i10','i11']=               0.082050    ;
branch_r['i12','i13']=               0.220920    ;
branch_r['i13','i14']=               0.170930    ;

branch_x['i1','i2']  =               0.059170    ;
branch_x['i1','i5']  =               0.223040    ;
branch_x['i2','i3']  =               0.197970    ;
branch_x['i2','i4']  =               0.176320    ;
branch_x['i2','i5']  =               0.173880    ;
branch_x['i3','i4']  =               0.171030    ;
branch_x['i4','i5']  =               0.042110    ;
branch_x['i4','i7']  =               0.209120    ;
branch_x['i4','i9']  =               0.556180    ;
branch_x['i5','i6']  =               0.252020    ;
branch_x['i6','i11'] =               0.198900    ;
branch_x['i6','i12'] =               0.255810    ;
branch_x['i6','i13'] =               0.130270    ;
branch_x['i7','i8']  =               0.176150    ;
branch_x['i7','i9']  =               0.110010    ;
branch_x['i9','i10'] =               0.084500    ;
branch_x['i9','i14'] =               0.270380    ;
branch_x['i10','i11']=               0.192070    ;
branch_x['i12','i13']=               0.199880    ;
branch_x['i13','i14']=               0.348020    ;

branch_c['i1','i2']  =               0.052800    ;
branch_c['i1','i5']  =               0.049200    ;
branch_c['i2','i3']  =               0.043800    ;
branch_c['i2','i4']  =               0.037400    ;
branch_c['i2','i5']  =               0.034000    ;
branch_c['i3','i4']  =               0.034600    ;
branch_c['i4','i5']  =               0.012800    ;
branch_c['i4','i7']  =               0.000000    ;
branch_c['i4','i9']  =               0.000000    ;
branch_c['i5','i6']  =               0.000000    ;
branch_c['i6','i11'] =               0.000000    ;
branch_c['i6','i12'] =               0.000000    ;
branch_c['i6','i13'] =               0.000000    ;
branch_c['i7','i8']  =               0.000000    ;
branch_c['i7','i9']  =               0.000000    ;
branch_c['i9','i10'] =               0.000000    ;
branch_c['i9','i14'] =               0.000000    ;
branch_c['i10','i11']=               0.000000    ;
branch_c['i12','i13']=               0.000000    ;
branch_c['i13','i14']=               0.000000    ;

branch_tap['i1','i2']  =                1.0000     ;
branch_tap['i1','i5']  =                1.0000     ;
branch_tap['i2','i3']  =                1.0000     ;
branch_tap['i2','i4']  =                1.0000     ;
branch_tap['i2','i5']  =                1.0000     ;
branch_tap['i3','i4']  =                1.0000     ;
branch_tap['i4','i5']  =                1.0000     ;
branch_tap['i4','i7']  =                0.9780     ;
branch_tap['i4','i9']  =                0.9690     ;
branch_tap['i5','i6']  =                0.9320     ;
branch_tap['i6','i11'] =                1.0000     ;
branch_tap['i6','i12'] =                1.0000     ;
branch_tap['i6','i13'] =                1.0000     ;
branch_tap['i7','i8']  =                1.0000     ;
branch_tap['i7','i9']  =                1.0000     ;
branch_tap['i9','i10'] =                1.0000     ;
branch_tap['i9','i14'] =                1.0000     ;
branch_tap['i10','i11']=                1.0000     ;
branch_tap['i12','i13']=                1.0000     ;
branch_tap['i13','i14']=                1.0000     ;

branch_tap_min['i1','i2']  =                1.0000     ;
branch_tap_min['i1','i5']  =                1.0000     ;
branch_tap_min['i2','i3']  =                1.0000     ;
branch_tap_min['i2','i4']  =                1.0000     ;
branch_tap_min['i2','i5']  =                1.0000     ;
branch_tap_min['i3','i4']  =                1.0000     ;
branch_tap_min['i4','i5']  =                1.0000     ;
branch_tap_min['i4','i7']  =                1.0000     ;
branch_tap_min['i4','i9']  =                1.0000     ;
branch_tap_min['i5','i6']  =                1.0000     ;
branch_tap_min['i6','i11'] =                1.0000     ;
branch_tap_min['i6','i12'] =                1.0000     ;
branch_tap_min['i6','i13'] =                1.0000     ;
branch_tap_min['i7','i8']  =                1.0000     ;
branch_tap_min['i7','i9']  =                1.0000     ;
branch_tap_min['i9','i10'] =                1.0000     ;
branch_tap_min['i9','i14'] =                1.0000     ;
branch_tap_min['i10','i11']=                1.0000     ;
branch_tap_min['i12','i13']=                1.0000     ;
branch_tap_min['i13','i14']=                1.0000     ;

branch_tap_max['i1','i2']  =                 1.0000    ;
branch_tap_max['i1','i5']  =                 1.0000    ;
branch_tap_max['i2','i3']  =                 1.0000    ;
branch_tap_max['i2','i4']  =                 1.0000    ;
branch_tap_max['i2','i5']  =                 1.0000    ;
branch_tap_max['i3','i4']  =                 1.0000    ;
branch_tap_max['i4','i5']  =                 1.0000    ;
branch_tap_max['i4','i7']  =                 1.0000    ;
branch_tap_max['i4','i9']  =                 1.0000    ;
branch_tap_max['i5','i6']  =                 1.0000    ;
branch_tap_max['i6','i11'] =                 1.0000    ;
branch_tap_max['i6','i12'] =                 1.0000    ;
branch_tap_max['i6','i13'] =                 1.0000    ;
branch_tap_max['i7','i8']  =                 1.0000    ;
branch_tap_max['i7','i9']  =                 1.0000    ;
branch_tap_max['i9','i10'] =                 1.0000    ;
branch_tap_max['i9','i14'] =                 1.0000    ;
branch_tap_max['i10','i11']=                 1.0000    ;
branch_tap_max['i12','i13']=                 1.0000    ;
branch_tap_max['i13','i14']=                 1.0000    ;

branch_shf0['i1','i2']  =                 0.00      ;
branch_shf0['i1','i5']  =                 0.00      ;
branch_shf0['i2','i3']  =                 0.00      ;
branch_shf0['i2','i4']  =                 0.00      ;
branch_shf0['i2','i5']  =                 0.00      ;
branch_shf0['i3','i4']  =                 0.00      ;
branch_shf0['i4','i5']  =                 0.00      ;
branch_shf0['i4','i7']  =                10.00      ;
branch_shf0['i4','i9']  =                 0.00      ;
branch_shf0['i5','i6']  =                 0.00      ;
branch_shf0['i6','i11'] =                 0.00      ;
branch_shf0['i6','i12'] =                 0.00      ;
branch_shf0['i6','i13'] =                 0.00      ;
branch_shf0['i7','i8']  =                 0.00      ;
branch_shf0['i7','i9']  =                 0.00      ;
branch_shf0['i9','i10'] =                 0.00      ;
branch_shf0['i9','i14'] =                 0.00      ;
branch_shf0['i10','i11']=                 0.00      ;
branch_shf0['i12','i13']=                 0.00      ;
branch_shf0['i13','i14']=                 0.00      ;

branch_shf_min['i1','i2']  =                    0.00   ;
branch_shf_min['i1','i5']  =                    0.00   ;
branch_shf_min['i2','i3']  =                    0.00   ;
branch_shf_min['i2','i4']  =                    0.00   ;
branch_shf_min['i2','i5']  =                    0.00   ;
branch_shf_min['i3','i4']  =                    0.00   ;
branch_shf_min['i4','i5']  =                    0.00   ;
branch_shf_min['i4','i7']  =                  -15.00   ;
branch_shf_min['i4','i9']  =                    0.00   ;
branch_shf_min['i5','i6']  =                    0.00   ;
branch_shf_min['i6','i11'] =                    0.00   ;
branch_shf_min['i6','i12'] =                    0.00   ;
branch_shf_min['i6','i13'] =                    0.00   ;
branch_shf_min['i7','i8']  =                    0.00   ;
branch_shf_min['i7','i9']  =                    0.00   ;
branch_shf_min['i9','i10'] =                    0.00   ;
branch_shf_min['i9','i14'] =                    0.00   ;
branch_shf_min['i10','i11']=                    0.00   ;
branch_shf_min['i12','i13']=                    0.00   ;
branch_shf_min['i13','i14']=                    0.00   ;

branch_shf_max['i1','i2']  =                   0.00    ;
branch_shf_max['i1','i5']  =                   0.00    ;
branch_shf_max['i2','i3']  =                   0.00    ;
branch_shf_max['i2','i4']  =                   0.00    ;
branch_shf_max['i2','i5']  =                   0.00    ;
branch_shf_max['i3','i4']  =                   0.00    ;
branch_shf_max['i4','i5']  =                   0.00    ;
branch_shf_max['i4','i7']  =                  15.00    ;
branch_shf_max['i4','i9']  =                   0.00    ;
branch_shf_max['i5','i6']  =                   0.00    ;
branch_shf_max['i6','i11'] =                   0.00    ;
branch_shf_max['i6','i12'] =                   0.00    ;
branch_shf_max['i6','i13'] =                   0.00    ;
branch_shf_max['i7','i8']  =                   0.00    ;
branch_shf_max['i7','i9']  =                   0.00    ;
branch_shf_max['i9','i10'] =                   0.00    ;
branch_shf_max['i9','i14'] =                   0.00    ;
branch_shf_max['i10','i11']=                   0.00    ;
branch_shf_max['i12','i13']=                   0.00    ;
branch_shf_max['i13','i14']=                   0.00    ;


branch_shf_min[i,i1] =  branch_shf_min[i,i1]* deg_2_rad ;
branch_shf_max[i,i1] =  branch_shf_max[i,i1]* deg_2_rad ;


* matrix YBUS
Set YBUS[i,i1] ;     YBUS[i,i1]$(ord(i)eq ord(i1))= yes ;
                     YBUS[i,i1]$(branch[i,i1])    = yes ;
                     YBUS[i,i1]$(branch[i1,i])    = yes ;


Parameter B[i2,i3] ;

          B[i2,i3]$(ord(i2) eq ord(i3)) = 0;

          B[i2,i3]$(ord(i2) ne ord(i3)) = sum{(i,i1)$BRANCH[i,i1], 1/branch_x[i,i1]} +
                                          sum{(i1,i)$BRANCH[i1,i], 1/branch_x[i1,i]};

          B[i2,i3]$(ord(i2) ne ord(i3))  =
  (1/branch_x[i2,i3])$(BRANCH[i2,i3]) +
  (1/branch_x[i3,i2])$(BRANCH[i3,i2]);


Variable bus_angle[i] , p_gen[i] , branch_shf[i,i1] , branch_p_flow[i,i1] , active_power ;

* bus_angle  -> bus angles
* branch_shf -> phase shifter angles
* branch_p_flow -> final active direct flow, used to output data

Equation
Eq_1[i] ,
Eq_2[i] ,
Eq_3_1[i] ,
Eq_3_2[i]  ,
Def_obj ;

* active power generation

*Eq_1[i].. p_gen[i] =e=
*       bus_p_load[i] +
*       sum{(i1,i2)$YBUS(i1,i2)  ,(B[i1,i2]*(bus_angle[i1] - bus_angle[i2] +
*       sum{(i3,i4)$BRANCH(i3,i4),( branch_shf[i3,i4])}+
*       sum{(i4,i3)$BRANCH(i4,i3),(-branch_shf[i4,i3])}
*                                        ))};



Eq_1[i].. p_gen[i] =e=
       bus_p_load[i] +
       sum{(i2)$YBUS(i,i2)  ,(B[i,i2]*(bus_angle[i] - bus_angle[i2] +
       sum{(i4)$BRANCH(i,i4),( branch_shf[i,i4])}+
       sum{(i4)$BRANCH(i4,i),(-branch_shf[i4,i])}


                                        ))};




* problem definition


Eq_2[i]$(bus_type[i] eq 0)..
       bus_p_gen[i] - bus_p_load[i] -
       sum{(i2)$YBUS(i,i2)  ,(B[i,i2]*(bus_angle[i] - bus_angle[i2] +
       sum{(i4)$BRANCH(i,i4),( branch_shf[i,i4])}+
       sum{(i4)$BRANCH(i4,i),(-branch_shf[i4,i])}

                            )       )            } =e= 0;




Eq_3_2[i]$((bus_type[i] eq 2) or (bus_type[i] eq 3))..
                            bus_p_load[i] +
       sum{(i2)$YBUS(i,i2)  ,(B[i,i2]*(bus_angle[i] - bus_angle[i2] +
       sum{(i4)$BRANCH(i,i4),( branch_shf[i,i4])}+
       sum{(i4)$BRANCH(i4,i),(-branch_shf[i4,i])}

                                  )       )            }

                                            =l=  p_gen_upper*bus_p_gen[i];

Eq_3_1[i]$((bus_type[i] eq 2) or (bus_type[i] eq 3))..
  0 =l=                     bus_p_load[i] +
       sum{(i2)$YBUS(i,i2)  ,(B[i,i2]*(bus_angle[i] - bus_angle[i2] +
       sum{(i4)$BRANCH(i,i4),( branch_shf[i,i4])}+
       sum{(i4)$BRANCH(i4,i),(-branch_shf[i4,i])}

                            )       )            }
            ;



Def_obj.. active_power =e=
       sum{i$((bus_type[i] eq 2) or (bus_type[i] eq 3)), bus_p_load[i]} +
       sum{(i1,i2)$YBUS(i1,i2)  ,(B[i1,i2]*(bus_angle[i1] - bus_angle[i2] +
       sum{(i3,i4)$BRANCH(i3,i4),( branch_shf[i3,i4])}+
       sum{(i4,i3)$BRANCH(i4,i3),(-branch_shf[i4,i3])}
                            )       )     }         ;

* data initialization

bus_angle.l[i]   = bus_angle0[i]*deg_2_rad ;
branch_shf.l[i,i1]     = -branch_shf0[i,i1]   * deg_2_rad ;

* fixing variables
bus_angle.fx[i]$(bus_type[i] eq 3) =  bus_angle0[i]*deg_2_rad ;
* slack angle fixed
branch_shf.fx[i,i1]$(branch_type[i,i1] eq 4) = -branch_shf0[i,i1]   * deg_2_rad ;
* phase shifters are branch_type 4

branch_shf.lo[i,i1] = branch_shf_min[i,i1];
branch_shf.up[i,i1] = branch_shf_max[i,i1];

Model dcopf /all /;

Solve dcopf using nlp minimazing active_power;




Display active_power.l ;
