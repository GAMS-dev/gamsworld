Set I /i1*i162/;
Set BUS[i] /i1*i162/ ;
Alias(i,i1);
Alias(i,i2);
Alias(i,i3);
Alias(i,i4);
Alias(i,k);
Alias(i,m);

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

Parameter bus_type[i], bus_name[i], bus_voltage0[i], bus_angle0[i],
          bus_p_gen[i], bus_q_gen[i], bus_q_min[i], bus_q_max[i],
          bus_p_load[i], bus_q_load[i], bus_g_shunt[i], bus_b_shunt0[i],
          bus_b_shunt_min[i], bus_b_shunt_max[i], bus_b_dispatch[i], bus_area[i];


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

  bus_voltage0['i1'] =   1.0600          ;
  bus_voltage0['i2'] =   1.0450          ;
  bus_voltage0['i3'] =   1.0100          ;
  bus_voltage0['i4'] =   1.0190          ;
  bus_voltage0['i5'] =   1.0200          ;
  bus_voltage0['i6'] =   1.0700          ;
  bus_voltage0['i7'] =   1.0620          ;
  bus_voltage0['i8'] =   1.0900          ;
  bus_voltage0['i9'] =   1.0560          ;
  bus_voltage0['i10']=   1.0510          ;
  bus_voltage0['i11']=   1.0570          ;
  bus_voltage0['i12']=   1.0550          ;
  bus_voltage0['i13']=   1.0500          ;
  bus_voltage0['i14']=   1.0360          ;

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

  bus_b_shunt0['i1'] =          0.0000   ;
  bus_b_shunt0['i2'] =          0.0000   ;
  bus_b_shunt0['i3'] =          0.0000   ;
  bus_b_shunt0['i4'] =          0.0000   ;
  bus_b_shunt0['i5'] =          0.0000   ;
  bus_b_shunt0['i6'] =          0.0000   ;
  bus_b_shunt0['i7'] =          0.0000   ;
  bus_b_shunt0['i8'] =          0.0000   ;
  bus_b_shunt0['i9'] =          0.1900   ;
  bus_b_shunt0['i10']=          0.0000   ;
  bus_b_shunt0['i11']=          0.0000   ;
  bus_b_shunt0['i12']=          0.0000   ;
  bus_b_shunt0['i13']=          0.0000   ;
  bus_b_shunt0['i14']=          0.0000   ;

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


* branch data

Parameter branch_type[i,i1], branch_r[i,i1], branch_x[i,i1],branch_c[i,i1],
          branch_tap0[i,i1],branch_tap_min0[i,i1], branch_tap_max0[i,i1],
          branch_def[i,i1],branch_def_min[i,i1],branch_def_max[i,i1];

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

branch_tap0['i1','i2']  =                1.0000     ;
branch_tap0['i1','i5']  =                1.0000     ;
branch_tap0['i2','i3']  =                1.0000     ;
branch_tap0['i2','i4']  =                1.0000     ;
branch_tap0['i2','i5']  =                1.0000     ;
branch_tap0['i3','i4']  =                1.0000     ;
branch_tap0['i4','i5']  =                1.0000     ;
branch_tap0['i4','i7']  =                0.9780     ;
branch_tap0['i4','i9']  =                0.9690     ;
branch_tap0['i5','i6']  =                0.9320     ;
branch_tap0['i6','i11'] =                1.0000     ;
branch_tap0['i6','i12'] =                1.0000     ;
branch_tap0['i6','i13'] =                1.0000     ;
branch_tap0['i7','i8']  =                1.0000     ;
branch_tap0['i7','i9']  =                1.0000     ;
branch_tap0['i9','i10'] =                1.0000     ;
branch_tap0['i9','i14'] =                1.0000     ;
branch_tap0['i10','i11']=                1.0000     ;
branch_tap0['i12','i13']=                1.0000     ;
branch_tap0['i13','i14']=                1.0000     ;

branch_tap_min0['i1','i2']  =                1.0000     ;
branch_tap_min0['i1','i5']  =                1.0000     ;
branch_tap_min0['i2','i3']  =                1.0000     ;
branch_tap_min0['i2','i4']  =                1.0000     ;
branch_tap_min0['i2','i5']  =                1.0000     ;
branch_tap_min0['i3','i4']  =                1.0000     ;
branch_tap_min0['i4','i5']  =                1.0000     ;
branch_tap_min0['i4','i7']  =                1.0000     ;
branch_tap_min0['i4','i9']  =                1.0000     ;
branch_tap_min0['i5','i6']  =                1.0000     ;
branch_tap_min0['i6','i11'] =                1.0000     ;
branch_tap_min0['i6','i12'] =                1.0000     ;
branch_tap_min0['i6','i13'] =                1.0000     ;
branch_tap_min0['i7','i8']  =                1.0000     ;
branch_tap_min0['i7','i9']  =                1.0000     ;
branch_tap_min0['i9','i10'] =                1.0000     ;
branch_tap_min0['i9','i14'] =                1.0000     ;
branch_tap_min0['i10','i11']=                1.0000     ;
branch_tap_min0['i12','i13']=                1.0000     ;
branch_tap_min0['i13','i14']=                1.0000     ;

branch_tap_max0['i1','i2']  =                 1.0000    ;
branch_tap_max0['i1','i5']  =                 1.0000    ;
branch_tap_max0['i2','i3']  =                 1.0000    ;
branch_tap_max0['i2','i4']  =                 1.0000    ;
branch_tap_max0['i2','i5']  =                 1.0000    ;
branch_tap_max0['i3','i4']  =                 1.0000    ;
branch_tap_max0['i4','i5']  =                 1.0000    ;
branch_tap_max0['i4','i7']  =                 1.0000    ;
branch_tap_max0['i4','i9']  =                 1.0000    ;
branch_tap_max0['i5','i6']  =                 1.0000    ;
branch_tap_max0['i6','i11'] =                 1.0000    ;
branch_tap_max0['i6','i12'] =                 1.0000    ;
branch_tap_max0['i6','i13'] =                 1.0000    ;
branch_tap_max0['i7','i8']  =                 1.0000    ;
branch_tap_max0['i7','i9']  =                 1.0000    ;
branch_tap_max0['i9','i10'] =                 1.0000    ;
branch_tap_max0['i9','i14'] =                 1.0000    ;
branch_tap_max0['i10','i11']=                 1.0000    ;
branch_tap_max0['i12','i13']=                 1.0000    ;
branch_tap_max0['i13','i14']=                 1.0000    ;

branch_def['i1','i2']  =                 0.00      ;
branch_def['i1','i5']  =                 0.00      ;
branch_def['i2','i3']  =                 0.00      ;
branch_def['i2','i4']  =                 0.00      ;
branch_def['i2','i5']  =                 0.00      ;
branch_def['i3','i4']  =                 0.00      ;
branch_def['i4','i5']  =                 0.00      ;
branch_def['i4','i7']  =                10.00      ;
branch_def['i4','i9']  =                 0.00      ;
branch_def['i5','i6']  =                 0.00      ;
branch_def['i6','i11'] =                 0.00      ;
branch_def['i6','i12'] =                 0.00      ;
branch_def['i6','i13'] =                 0.00      ;
branch_def['i7','i8']  =                 0.00      ;
branch_def['i7','i9']  =                 0.00      ;
branch_def['i9','i10'] =                 0.00      ;
branch_def['i9','i14'] =                 0.00      ;
branch_def['i10','i11']=                 0.00      ;
branch_def['i12','i13']=                 0.00      ;
branch_def['i13','i14']=                 0.00      ;

branch_def_min['i1','i2']  =                    0.00   ;
branch_def_min['i1','i5']  =                    0.00   ;
branch_def_min['i2','i3']  =                    0.00   ;
branch_def_min['i2','i4']  =                    0.00   ;
branch_def_min['i2','i5']  =                    0.00   ;
branch_def_min['i3','i4']  =                    0.00   ;
branch_def_min['i4','i5']  =                    0.00   ;
branch_def_min['i4','i7']  =                  -15.00   ;
branch_def_min['i4','i9']  =                    0.00   ;
branch_def_min['i5','i6']  =                    0.00   ;
branch_def_min['i6','i11'] =                    0.00   ;
branch_def_min['i6','i12'] =                    0.00   ;
branch_def_min['i6','i13'] =                    0.00   ;
branch_def_min['i7','i8']  =                    0.00   ;
branch_def_min['i7','i9']  =                    0.00   ;
branch_def_min['i9','i10'] =                    0.00   ;
branch_def_min['i9','i14'] =                    0.00   ;
branch_def_min['i10','i11']=                    0.00   ;
branch_def_min['i12','i13']=                    0.00   ;
branch_def_min['i13','i14']=                    0.00   ;

branch_def_max['i1','i2']  =                   0.00    ;
branch_def_max['i1','i5']  =                   0.00    ;
branch_def_max['i2','i3']  =                   0.00    ;
branch_def_max['i2','i4']  =                   0.00    ;
branch_def_max['i2','i5']  =                   0.00    ;
branch_def_max['i3','i4']  =                   0.00    ;
branch_def_max['i4','i5']  =                   0.00    ;
branch_def_max['i4','i7']  =                  15.00    ;
branch_def_max['i4','i9']  =                   0.00    ;
branch_def_max['i5','i6']  =                   0.00    ;
branch_def_max['i6','i11'] =                   0.00    ;
branch_def_max['i6','i12'] =                   0.00    ;
branch_def_max['i6','i13'] =                   0.00    ;
branch_def_max['i7','i8']  =                   0.00    ;
branch_def_max['i7','i9']  =                   0.00    ;
branch_def_max['i9','i10'] =                   0.00    ;
branch_def_max['i9','i14'] =                   0.00    ;
branch_def_max['i10','i11']=                   0.00    ;
branch_def_max['i12','i13']=                   0.00    ;
branch_def_max['i13','i14']=                   0.00    ;

Parameter branch_g[i,i1] ; branch_g[i,i1]$branch[i,i1] = branch_r[i,i1]/(sqr(branch_r[i,i1])+sqr(branch_x[i,i1]));
Parameter branch_b[i,i1] ; branch_b[i,i1]$branch[i,i1] =-branch_x[i,i1]/(sqr(branch_r[i,i1])+sqr(branch_x[i,i1]));

* limites on voltage and taps
* tap limits

Parameter branch_tap_min / 0.85 /;
Parameter branch_tap_max / 1.15/ ;


* voltage limits
Set t /t0*t3/ ;
Parameter bus_voltage_min(t) / t0 0.85 , t1 0.85 , t2 0.92 , t3 0.92 / ;
Parameter bus_voltage_max(t) / t0 1.15 , t1 1.15 , t2 1.08 , t3 1.08 / ;

* matrix YBUS
Set YBUS[i,i1] ;     YBUS[i,i1]$(ord(i)eq ord(i1))= yes ;
                     YBUS[i,i1]$(branch[i,i1])    = yes ;
                     YBUS[i,i1]$(branch[i1,i])    = yes ;




Variables reactive_generation , inductive_generation , capacitive_generation ,
          bus_voltage(i) , bus_b_shunt(i) , bus_angle(i) , branch_tap ,
          voltage_profile , reactive_power ,
          p_g(i) , q_g(i) , p_d(i,i1) , q_d(i,i1) , p_r(i,i1) , q_r(i,i1) ,
          G(i,i1) , B(i,i1) , losses ;

* auxiliar variables

*p_g - final active power generation, used to output data
*q_g - final reactive power generation, used to output data
*p_d - final active direct flow, used to output data
*q_d - final reactive direct flow, used to output data
*p_r - final active reverse flow, used to output data
*q_r - final reactive reverse flow, used to output data

Equation
          Eq_1        , Eq_2        , Eq_3 ,
          Eq_4_1(k,m) , Eq_4_2(k,m) , Eq_5_1(k,m) , Eq_5_2(k,m) ,
          Eq_8_1(k) , Eq_8_2(k) ,
          Def_obj_1 , Def_obj_2 , Def_obj ;

Eq_4_1(k,m)$((YBUS(k,m))and (ord(k) eq ord(m))) ..
G(k,m) =e= bus_g_shunt[k] +
                            sum{i$BRANCH(k,i), branch_g[k,i]*sqr(branch_tap[k,i])}+
                            sum{i$BRANCH(i,k), branch_g[i,k]                     };
Eq_4_2(k,m)$((YBUS(k,m))and(ord(k) ne ord(m)))..
G(k,m) =e=
 (sum{(i,i1)$(BRANCH(i,i1)and(ord(i)=ord(k))and(ord(i1)=ord(m))  ),
                            (-branch_g[i,i1]*cos(branch_def[i,i1])-
                              branch_b[i,i1]*sin(branch_def[i,i1]))*branch_tap[i,i1]}
 +sum{(i1,i)$(BRANCH(i1,i)and(ord(i)=ord(k))and(ord(i1)=ord(m))  ),
                            (-branch_g[i1,i]*cos(branch_def[i1,i])+
                              branch_b[i1,i]*sin(branch_def[i1,i]))*branch_tap[i1,i]});

Eq_5_1(k,m)$((YBUS(k,m))and(ord(k) eq ord(m)))..
B(k,m) =e= (bus_b_shunt[k] +
                           sum{i$BRANCH(k,i), (branch_b[k,i]*sqr(branch_tap[k,i]) + branch_c[k,i]/2)}+
                           sum{i$BRANCH(i,k), (branch_b[i,k]+branch_c[i,k]/2)} );

Eq_5_2(k,m)$((YBUS(k,m))and(ord(k) ne ord(m)))..

B(k,m) =e=
 (sum{(i,i1)$(BRANCH(i,i1)and(ord(i)=ord(k))and(ord(i1)=ord(m))  ),
                            ( branch_g[i,i1]*sin(branch_def[i,i1])-
                              branch_b[i,i1]*cos(branch_def[i,i1]))*branch_tap[i,i1]}
 +sum{(i1,i)$(BRANCH(i,i1)and(ord(i)=ord(k))and(ord(i1)=ord(m))  ),
                            (-branch_g[i1,i]*sin(branch_def[i1,i])-
                              branch_b[i1,i]*cos(branch_def[i1,i]))*branch_tap[i1,i]} );


* important information
Eq_1..
reactive_generation =e=  sum{k,
                           abs(bus_q_load[k] + sum{m$YBUS(k,m),
                          (bus_voltage[k]*bus_voltage[m]*
                          (G[k,m]*sin(bus_angle[k]-bus_angle[m])-
                           B[k,m]*cos(bus_angle[k]-bus_angle[m])))})};
Eq_2..
inductive_generation =e=  sum{k,
                           min(bus_q_load[k] + sum{m$YBUS(k,m),
                          (bus_voltage[k]*bus_voltage[m]*
                          (G[k,m]*sin(bus_angle[k]-bus_angle[m])-
                           B[k,m]*cos(bus_angle[k]-bus_angle[m])))},0)};
Eq_3..
capacitive_generation =e=  sum{k,
                           max(bus_q_load[k] + sum{m$YBUS(k,m),
                          (bus_voltage[k]*bus_voltage[m]*
                          (G[k,m]*sin(bus_angle[k]-bus_angle[m])-
                           B[k,m]*cos(bus_angle[k]-bus_angle[m])))},0)};

* objectives

Def_obj.. losses =e= sum{(k,m)$BRANCH(k,m),
                                              (branch_g[k,m]*
 ( sqr(bus_voltage[k])*sqr(branch_tap[k,m]) +
   sqr(bus_voltage[m])-
 2*bus_voltage[k]*bus_voltage[m]*branch_tap[k,m]*cos(bus_angle[k]-bus_angle[m])
  )                                           )}
;

Def_obj_1.. voltage_profile =e= sum{i,sqr(bus_voltage[i]-1)};

Def_obj_2.. reactive_power =e=  sum{k$((BUS(k)) and ((bus_type[k] eq 2) or (bus_type[k] eq 3))),
     sqr( bus_q_load[k] + sum{m$YBUS(k,m), (bus_voltage[k]*bus_voltage[m]*
                   (G[k,m]*sin(bus_angle[k]-bus_angle[m])-
                    B[k,m]*cos(bus_angle[k]-bus_angle[m])))})};

* constraints

Eq_8_1(k)$((bus_type[k] eq 2)or(bus_type[k] eq 3))..
   bus_q_min[k] =l= bus_q_load[k] + sum{m$YBUS(k,m),
                          (bus_voltage[k]*bus_voltage[m]*
                          (G[k,m]*sin(bus_angle[k]-bus_angle[m])-
                           B[k,m]*cos(bus_angle[k]-bus_angle[m])))} ;

Eq_8_2(k)$((bus_type[k] eq 2)or(bus_type[k] eq 3))..
                    bus_q_load[k] + sum{m$YBUS(k,m),
                          (bus_voltage[k]*bus_voltage[m]*
                          (G[k,m]*sin(bus_angle[k]-bus_angle[m])-
                           B[k,m]*cos(bus_angle[k]-bus_angle[m])))} =l= bus_q_max[k];


* data scaling and initialization

bus_voltage.lo(i)$(bus_type[i] eq 0) = bus_voltage_min('t0');
bus_voltage.up(i)$(bus_type[i] eq 0) = bus_voltage_min('t0');
bus_voltage.lo(i)$(bus_type[i] eq 1) = bus_voltage_min('t1');
bus_voltage.up(i)$(bus_type[i] eq 1) = bus_voltage_min('t1');
bus_voltage.lo(i)$(bus_type[i] eq 2) = bus_voltage_min('t2');
bus_voltage.up(i)$(bus_type[i] eq 2) = bus_voltage_min('t2');
bus_voltage.lo(i)$(bus_type[i] eq 3) = bus_voltage_min('t3');
bus_voltage.up(i)$(bus_type[i] eq 3) = bus_voltage_min('t3');

bus_b_shunt.lo[i] = bus_b_shunt_min[i];
bus_b_shunt.up[i] = bus_b_shunt_max[i];

branch_tap.lo[i,i1]$(branch[i,i1]) = branch_tap_min ;
branch_tap.up[i,i1]$(branch[i,i1]) = branch_tap_max ;

* fixing variables
bus_angle.fx[i]$(bus_type[i] eq 3) =  0 ;
* slack angle fixed

branch_tap.fx[i,i1]$((branch(i,i1)) and
                    ((branch_type[i,i1] eq 4)or
                     (branch_type[i,i1] eq 3)or
                     (branch_type[i,i1] eq 0))
                    ) = 1;
* phase shifters are branch_type 4


Model ropf4 /all /;

Solve ropf4 using dnlp minimazing losses;

Display losses.l ;
