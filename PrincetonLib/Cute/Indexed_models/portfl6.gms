* AMPL Model by Hande Y. Benson
*
* Copyright (C) 2001 Princeton University
* All Rights Reserved
*
* Permission to use, copy, modify, and distribute this software and
* its documentation for any purpose and without fee is hereby
* granted, provided that the above copyright notice appear in all
* copies and that the copyright notice and this
* permission notice appear in all supporting documentation.

*   Source:
*   DATASTREAM   Period: 15.1.91 to 15.3.96 (62 observations),
*   collected by D. Baudoux, July 1996.

*   SIF input: Ph. Toint, July 1996.

*   classification SLR2-MN-12-1

$Set NS 12
$Set NR 62
Set I              /i1*i%NS%/;
Set J              /j1*j%NR%/;

Parameter F[i,j] / i1.j1     0.02802144   ,
                   i1.j2    -0.000237     ,
                   i1.j3     0.01635846   ,
                   i1.j4     0.01119664   ,
                   i1.j5    -0.0063052    ,
                   i1.j6     0.00162501   ,
                   i1.j7     0.01506489   ,
                   i1.j8     0.01248192   ,
                   i1.j9     0.00819364   ,
                   i1.j10    0.00469729   ,
                   i1.j11    0.0141744    ,
                   i1.j12    0.02114737   ,
                   i1.j13    0.00566105   ,
                   i1.j14   -0.0045603    ,
                   i1.j15    0.01052255   ,
                   i1.j16    0.00701282   ,
                   i1.j17    0.00499437   ,
                   i1.j18    0.0          ,
                   i1.j19    0.00524953   ,
                   i1.j20    0.02764239   ,
                   i1.j21    0.0328613    ,
                   i1.j22    0.01121753   ,
                   i1.j23    0.01998054   ,
                   i1.j24    0.01507346   ,
                   i1.j25    0.00545113   ,
                   i1.j26    0.01265034   ,
                   i1.j27    0.00086154   ,
                   i1.j28    0.01629365   ,
                   i1.j29    0.02674088   ,
                   i1.j30   -0.0028283    ,
                   i1.j31    0.00608639   ,
                   i1.j32   -0.0120404    ,
                   i1.j33    0.0242554    ,
                   i1.j34    0.02048871   ,
                   i1.j35    0.02713002   ,
                   i1.j36    0.00382081   ,
                   i1.j37   -0.0174316    ,
                   i1.j38   -0.0057826    ,
                   i1.j39   -0.0075103    ,
                   i1.j40   -0.0137687    ,
                   i1.j41    0.00490366   ,
                   i1.j42    0.00430564   ,
                   i1.j43   -0.015834     ,
                   i1.j44   -0.0020909    ,
                   i1.j45    0.01344508   ,
                   i1.j46    0.01659775   ,
                   i1.j47   -0.0014688    ,
                   i1.j48    0.0115983    ,
                   i1.j49    0.01107383   ,
                   i1.j50    0.01687134   ,
                   i1.j51    0.01485068   ,
                   i1.j52    0.03430532   ,
                   i1.j53   -0.0043532    ,
                   i1.j54    0.0195711    ,
                   i1.j55    0.01179293   ,
                   i1.j56    0.00847671   ,
                   i1.j57    0.0146095    ,
                   i1.j58    0.01750579   ,
                   i1.j59    0.00833576   ,
                   i1.j60    0.02196482   ,
                   i1.j61   -0.0148144    ,
                   i1.j62    0.00907008   ,

                   i2.j1     0.06839808   ,
                   i2.j2     0.11464542   ,
                   i2.j3     0.02391108   ,
                   i2.j4     0.01730916   ,
                   i2.j5     0.03985465   ,
                   i2.j6    -0.0284541    ,
                   i2.j7     0.03014387   ,
                   i2.j8    -0.0043781    ,
                   i2.j9     0.04352908   ,
                   i2.j10   -0.0313116    ,
                   i2.j11   -0.0604625    ,
                   i2.j12    0.03727582   ,
                   i2.j13    0.01361736   ,
                   i2.j14   -0.0138246    ,
                   i2.j15    0.00565259   ,
                   i2.j16   -0.004328     ,
                   i2.j17   -0.0246133    ,
                   i2.j18    0.02714435   ,
                   i2.j19   -0.0513326    ,
                   i2.j20   -0.0578522    ,
                   i2.j21    0.11776573   ,
                   i2.j22   -0.0294416    ,
                   i2.j23    0.04846583   ,
                   i2.j24    0.0021062    ,
                   i2.j25    0.07112832   ,
                   i2.j26   -0.0261799    ,
                   i2.j27   -0.0217402    ,
                   i2.j28    0.01046127   ,
                   i2.j29    0.08218002   ,
                   i2.j30    0.06404283   ,
                   i2.j31   -0.0309792    ,
                   i2.j32   -0.03096      ,
                   i2.j33    0.06890906   ,
                   i2.j34   -0.0099322    ,
                   i2.j35    0.02470467   ,
                   i2.j36    0.01070497   ,
                   i2.j37   -0.0648169    ,
                   i2.j38   -0.0867818    ,
                   i2.j39   -0.0118189    ,
                   i2.j40   -0.0292303    ,
                   i2.j41   -0.0474585    ,
                   i2.j42    0.01299229   ,
                   i2.j43    0.02902949   ,
                   i2.j44    0.00934787   ,
                   i2.j45   -0.0394707    ,
                   i2.j46    0.02680211   ,
                   i2.j47   -0.0302386    ,
                   i2.j48   -0.0227665    ,
                   i2.j49    0.02188145   ,
                   i2.j50   -0.0726653    ,
                   i2.j51    0.06472895   ,
                   i2.j52    0.04080201   ,
                   i2.j53   -0.0176916    ,
                   i2.j54   -0.0174385    ,
                   i2.j55    0.11707885   ,
                   i2.j56   -0.0196384    ,
                   i2.j57    0.00977683   ,
                   i2.j58    0.04120185   ,
                   i2.j59   -0.0051549    ,
                   i2.j60    0.04551689   ,
                   i2.j61   -0.0252174    ,
                   i2.j62    0.01001894   ,

                   i3.j1     0.03009985   ,
                   i3.j2     0.00113202   ,
                   i3.j3     0.02014134   ,
                   i3.j4     0.00609629   ,
                   i3.j5     0.00041314   ,
                   i3.j6    -0.0022713    ,
                   i3.j7     0.01628035   ,
                   i3.j8     0.01568015   ,
                   i3.j9     0.00915592   ,
                   i3.j10   -0.0006622    ,
                   i3.j11    0.01722995   ,
                   i3.j12    0.01700326   ,
                   i3.j13    0.00634168   ,
                   i3.j14   -0.0091024    ,
                   i3.j15    0.0141967    ,
                   i3.j16    0.01805168   ,
                   i3.j17   -0.0075903    ,
                   i3.j18   -0.0169895    ,
                   i3.j19   -0.0010204    ,
                   i3.j20    0.0119382    ,
                   i3.j21    0.04706328   ,
                   i3.j22   -0.0065674    ,
                   i3.j23    0.00533721   ,
                   i3.j24    0.0316723    ,
                   i3.j25   -0.0015788    ,
                   i3.j26    0.04234509   ,
                   i3.j27    0.02123953   ,
                   i3.j28    0.02167813   ,
                   i3.j29    0.02929614   ,
                   i3.j30   -0.0015172    ,
                   i3.j31   -0.0125235    ,
                   i3.j32    0.03889626   ,
                   i3.j33    0.02053325   ,
                   i3.j34   -0.0012012    ,
                   i3.j35    0.01257767   ,
                   i3.j36    0.00841293   ,
                   i3.j37   -0.0258624    ,
                   i3.j38   -0.0102267    ,
                   i3.j39   -0.004479     ,
                   i3.j40   -0.0310854    ,
                   i3.j41   -0.0043269    ,
                   i3.j42    0.0192379    ,
                   i3.j43   -0.030522     ,
                   i3.j44    0.00311075   ,
                   i3.j45    0.0101588    ,
                   i3.j46    0.02429471   ,
                   i3.j47   -0.0176725    ,
                   i3.j48    0.01294056   ,
                   i3.j49    0.00420648   ,
                   i3.j50    0.00449915   ,
                   i3.j51    0.0          ,
                   i3.j52    0.06800865   ,
                   i3.j53   -0.0112316    ,
                   i3.j54    0.02515601   ,
                   i3.j55    0.02306449   ,
                   i3.j56    0.0073444    ,
                   i3.j57    0.01564303   ,
                   i3.j58    0.03084961   ,
                   i3.j59    0.01560227   ,
                   i3.j60    0.01436445   ,
                   i3.j61   -0.0139043    ,
                   i3.j62    0.01262528   ,

                   i4.j1     0.02765259   ,
                   i4.j2     0.00825095   ,
                   i4.j3     0.02300206   ,
                   i4.j4    -0.0109541    ,
                   i4.j5     0.0075051    ,
                   i4.j6    -0.0013018    ,
                   i4.j7     0.02042146   ,
                   i4.j8     0.01036122   ,
                   i4.j9     0.00786683   ,
                   i4.j10   -0.0013241    ,
                   i4.j11    0.02267969   ,
                   i4.j12    0.01487547   ,
                   i4.j13    0.00531164   ,
                   i4.j14   -0.0015382    ,
                   i4.j15    0.01232501   ,
                   i4.j16    0.021637     ,
                   i4.j17   -0.0068652    ,
                   i4.j18   -0.0156514    ,
                   i4.j19   -0.0011925    ,
                   i4.j20    0.03608384   ,
                   i4.j21    0.03060179   ,
                   i4.j22   -0.0001242    ,
                   i4.j23    0.01261183   ,
                   i4.j24    0.01822198   ,
                   i4.j25    0.0208484    ,
                   i4.j26    0.02921733   ,
                   i4.j27    0.01559901   ,
                   i4.j28    0.00265402   ,
                   i4.j29    0.03300293   ,
                   i4.j30    0.01390252   ,
                   i4.j31    0.02618702   ,
                   i4.j32    0.02305596   ,
                   i4.j33    0.00676091   ,
                   i4.j34   -0.0050875    ,
                   i4.j35    0.02495398   ,
                   i4.j36   -0.0082318    ,
                   i4.j37   -0.0199205    ,
                   i4.j38   -0.0122157    ,
                   i4.j39   -0.0138737    ,
                   i4.j40   -0.0156497    ,
                   i4.j41   -0.0069589    ,
                   i4.j42    0.01854347   ,
                   i4.j43   -0.0196348    ,
                   i4.j44   -0.0026452    ,
                   i4.j45   -0.0041136    ,
                   i4.j46    0.02315343   ,
                   i4.j47   -0.0198672    ,
                   i4.j48    0.01392878   ,
                   i4.j49   -0.0044366    ,
                   i4.j50    0.00977181   ,
                   i4.j51    0.00212687   ,
                   i4.j52    0.0311986    ,
                   i4.j53    0.00308721   ,
                   i4.j54    0.03221339   ,
                   i4.j55    0.01610098   ,
                   i4.j56   -0.0060155    ,
                   i4.j57    0.01156268   ,
                   i4.j58    0.03117856   ,
                   i4.j59    0.02853774   ,
                   i4.j60    0.01889475   ,
                   i4.j61   -0.0084619    ,
                   i4.j62    0.01389078   ,

                   i5.j1     0.01934344   ,
                   i5.j2    -0.0001824    ,
                   i5.j3     0.01368738   ,
                   i5.j4    -0.0011702    ,
                   i5.j5     0.0063987    ,
                   i5.j6    -0.0012536    ,
                   i5.j7     0.01631848   ,
                   i5.j8     0.00855757   ,
                   i5.j9     0.00629811   ,
                   i5.j10    0.00756259   ,
                   i5.j11    0.01708222   ,
                   i5.j12    0.01891594   ,
                   i5.j13    0.00524476   ,
                   i5.j14   -0.0021532    ,
                   i5.j15    0.00431571   ,
                   i5.j16    0.0098339    ,
                   i5.j17    0.00196399   ,
                   i5.j18    0.00236851   ,
                   i5.j19    0.01417746   ,
                   i5.j20    0.02771752   ,
                   i5.j21    0.01993433   ,
                   i5.j22    0.00774124   ,
                   i5.j23    0.01201704   ,
                   i5.j24    0.01525628   ,
                   i5.j25    0.02701902   ,
                   i5.j26    0.00641488   ,
                   i5.j27   -0.0007161    ,
                   i5.j28    0.00121838   ,
                   i5.j29    0.01281317   ,
                   i5.j30    0.03569157   ,
                   i5.j31    0.03316501   ,
                   i5.j32    0.02476882   ,
                   i5.j33    0.01933613   ,
                   i5.j34   -0.0151122    ,
                   i5.j35   -0.0032742    ,
                   i5.j36   -0.0117874    ,
                   i5.j37   -0.0197497    ,
                   i5.j38    0.00079793   ,
                   i5.j39   -0.0090359    ,
                   i5.j40   -0.0077774    ,
                   i5.j41    0.0058112    ,
                   i5.j42    0.0069869    ,
                   i5.j43   -0.0068717    ,
                   i5.j44   -0.0115544    ,
                   i5.j45    0.00686421   ,
                   i5.j46    0.0161998    ,
                   i5.j47   -0.009432     ,
                   i5.j48    0.02105545   ,
                   i5.j49    0.00866881   ,
                   i5.j50    0.0170584    ,
                   i5.j51    0.01658024   ,
                   i5.j52    0.02052897   ,
                   i5.j53   -0.0102431    ,
                   i5.j54    0.01558603   ,
                   i5.j55    0.01086556   ,
                   i5.j56    0.01153823   ,
                   i5.j57    0.01518881   ,
                   i5.j58    0.02004731   ,
                   i5.j59    0.01107311   ,
                   i5.j60    0.01026376   ,
                   i5.j61   -0.0163459    ,
                   i5.j62    0.00490451   ,

                   i6.j1     0.02026545   ,
                   i6.j2     0.02412925   ,
                   i6.j3     0.02670218   ,
                   i6.j4     0.00685114   ,
                   i6.j5     0.00436018   ,
                   i6.j6    -0.0003288    ,
                   i6.j7     0.01644953   ,
                   i6.j8     0.01831952   ,
                   i6.j9     0.01716356   ,
                   i6.j10   -0.0061246    ,
                   i6.j11    0.01024964   ,
                   i6.j12    0.02626665   ,
                   i6.j13    0.00958273   ,
                   i6.j14   -0.001622     ,
                   i6.j15    0.0159456    ,
                   i6.j16    0.00527126   ,
                   i6.j17   -0.0166735    ,
                   i6.j18   -0.025704     ,
                   i6.j19    0.00830207   ,
                   i6.j20   -0.1286899    ,
                   i6.j21    0.06852863   ,
                   i6.j22   -0.0098919    ,
                   i6.j23   -0.0326849    ,
                   i6.j24    0.01682627   ,
                   i6.j25   -0.0275797    ,
                   i6.j26   -0.0260791    ,
                   i6.j27    0.08026138   ,
                   i6.j28    0.04569663   ,
                   i6.j29    0.06344316   ,
                   i6.j30    0.02979956   ,
                   i6.j31    0.04064994   ,
                   i6.j32    0.01009655   ,
                   i6.j33    0.01584007   ,
                   i6.j34   -0.0668351    ,
                   i6.j35    0.0445981    ,
                   i6.j36    0.00965304   ,
                   i6.j37   -0.0387893    ,
                   i6.j38    0.04251449   ,
                   i6.j39    0.00283502   ,
                   i6.j40   -0.0290312    ,
                   i6.j41   -0.0475923    ,
                   i6.j42   -0.0070546    ,
                   i6.j43   -0.0179988    ,
                   i6.j44    0.01344507   ,
                   i6.j45   -0.0137426    ,
                   i6.j46    0.00554952   ,
                   i6.j47   -0.0219556    ,
                   i6.j48    0.00705348   ,
                   i6.j49   -0.0832572    ,
                   i6.j50   -0.0902205    ,
                   i6.j51    0.04980283   ,
                   i6.j52    0.07888147   ,
                   i6.j53   -0.0188265    ,
                   i6.j54    0.05618347   ,
                   i6.j55    0.06146955   ,
                   i6.j56   -0.0185803    ,
                   i6.j57    0.01385571   ,
                   i6.j58    0.04288407   ,
                   i6.j59    0.0279033    ,
                   i6.j60    0.07149137   ,
                   i6.j61    0.00892353   ,
                   i6.j62   -0.0082346    ,

                   i7.j1     0.02575342   ,
                   i7.j2     0.04711538   ,
                   i7.j3     0.04213856   ,
                   i7.j4     0.00156648   ,
                   i7.j5     0.04701857   ,
                   i7.j6    -0.0128839    ,
                   i7.j7     0.02269933   ,
                   i7.j8     0.00268196   ,
                   i7.j9     0.02979155   ,
                   i7.j10   -0.0151365    ,
                   i7.j11    0.00081848   ,
                   i7.j12    0.06069968   ,
                   i7.j13   -0.0102801    ,
                   i7.j14   -0.0141954    ,
                   i7.j15   -0.0088682    ,
                   i7.j16    0.02879164   ,
                   i7.j17   -0.0216998    ,
                   i7.j18   -0.0183082    ,
                   i7.j19   -0.0087868    ,
                   i7.j20    0.04911805   ,
                   i7.j21    0.06639076   ,
                   i7.j22    0.03177555   ,
                   i7.j23    0.02006112   ,
                   i7.j24    0.00975647   ,
                   i7.j25    0.10423007   ,
                   i7.j26   -0.010197     ,
                   i7.j27    0.01517472   ,
                   i7.j28    0.040661     ,
                   i7.j29    0.09204718   ,
                   i7.j30    0.075359     ,
                   i7.j31   -0.0047691    ,
                   i7.j32   -0.0071033    ,
                   i7.j33    0.02237111   ,
                   i7.j34    0.01449517   ,
                   i7.j35   -0.0150544    ,
                   i7.j36   -0.0181191    ,
                   i7.j37    0.01805729   ,
                   i7.j38   -0.0015568    ,
                   i7.j39    0.0053461    ,
                   i7.j40   -0.0277516    ,
                   i7.j41    0.00586828   ,
                   i7.j42   -0.0188615    ,
                   i7.j43   -0.0192241    ,
                   i7.j44    0.009359     ,
                   i7.j45   -0.0105551    ,
                   i7.j46    0.02764189   ,
                   i7.j47   -0.0143381    ,
                   i7.j48   -0.0082625    ,
                   i7.j49    0.00481108   ,
                   i7.j50    0.08875394   ,
                   i7.j51    0.05749222   ,
                   i7.j52    0.05203367   ,
                   i7.j53   -0.0166313    ,
                   i7.j54   -0.0419138    ,
                   i7.j55   -0.0565902    ,
                   i7.j56   -0.0079726    ,
                   i7.j57   -0.0460882    ,
                   i7.j58    0.04327144   ,
                   i7.j59   -0.0362028    ,
                   i7.j60   -0.0009689    ,
                   i7.j61   -0.0056484    ,
                   i7.j62    0.00556576   ,

                   i8.j1     0.01944241   ,
                   i8.j2    -0.0001799    ,
                   i8.j3     0.01340651   ,
                   i8.j4    -0.0015981    ,
                   i8.j5     0.0084482    ,
                   i8.j6    -0.0003527    ,
                   i8.j7     0.01270289   ,
                   i8.j8     0.00749129   ,
                   i8.j9     0.00717621   ,
                   i8.j10    0.00429221   ,
                   i8.j11    0.01931789   ,
                   i8.j12    0.0208805    ,
                   i8.j13    0.0122392    ,
                   i8.j14   -0.0060861    ,
                   i8.j15    0.01232854   ,
                   i8.j16    0.00701669   ,
                   i8.j17    0.00448502   ,
                   i8.j18    0.00039866   ,
                   i8.j19    0.01235355   ,
                   i8.j20    0.0371595    ,
                   i8.j21    0.0224685    ,
                   i8.j22    0.00853749   ,
                   i8.j23    0.02164152   ,
                   i8.j24    0.01433821   ,
                   i8.j25    0.03395369   ,
                   i8.j26    0.0005496    ,
                   i8.j27    0.00205987   ,
                   i8.j28    0.00356311   ,
                   i8.j29    0.02239519   ,
                   i8.j30    0.02758114   ,
                   i8.j31    0.04185351   ,
                   i8.j32    0.02545069   ,
                   i8.j33    0.0194659    ,
                   i8.j34   -0.014977     ,
                   i8.j35    0.00411921   ,
                   i8.j36   -0.0118846    ,
                   i8.j37   -0.0260699    ,
                   i8.j38   -0.0097793    ,
                   i8.j39   -0.0127247    ,
                   i8.j40   -0.0138505    ,
                   i8.j41    0.00429157   ,
                   i8.j42    0.01786986   ,
                   i8.j43   -0.0171108    ,
                   i8.j44   -0.0081542    ,
                   i8.j45    0.00593762   ,
                   i8.j46    0.01381592   ,
                   i8.j47   -0.0106845    ,
                   i8.j48    0.01985384   ,
                   i8.j49    0.01020926   ,
                   i8.j50    0.01952169   ,
                   i8.j51    0.02056397   ,
                   i8.j52    0.02473456   ,
                   i8.j53   -0.0103614    ,
                   i8.j54    0.01671624   ,
                   i8.j55    0.01351589   ,
                   i8.j56    0.00889043   ,
                   i8.j57    0.01487755   ,
                   i8.j58    0.02683807   ,
                   i8.j59    0.01081704   ,
                   i8.j60    0.01298278   ,
                   i8.j61   -0.022308     ,
                   i8.j62    0.00526547   ,

                   i9.j1     0.03257355   ,
                   i9.j2     0.11882583   ,
                   i9.j3     0.0200098    ,
                   i9.j4     0.00994581   ,
                   i9.j5     0.04788101   ,
                   i9.j6    -0.023203     ,
                   i9.j7     0.02328976   ,
                   i9.j8    -0.0285306    ,
                   i9.j9     0.01515152   ,
                   i9.j10   -0.0187389    ,
                   i9.j11   -0.0351782    ,
                   i9.j12    0.04382249   ,
                   i9.j13    0.01976048   ,
                   i9.j14    0.0000652    ,
                   i9.j15    0.00978601   ,
                   i9.j16   -0.0084636    ,
                   i9.j17   -0.0374014    ,
                   i9.j18   -0.0066337    ,
                   i9.j19   -0.0414991    ,
                   i9.j20    0.02509598   ,
                   i9.j21    0.06727235   ,
                   i9.j22    0.03385535   ,
                   i9.j23    0.0318039    ,
                   i9.j24    0.01803119   ,
                   i9.j25    0.04092867   ,
                   i9.j26   -0.0186249    ,
                   i9.j27   -0.0076148    ,
                   i9.j28   -0.0016527    ,
                   i9.j29    0.09317725   ,
                   i9.j30    0.04970254   ,
                   i9.j31   -0.0021639    ,
                   i9.j32   -0.0077451    ,
                   i9.j33    0.03382422   ,
                   i9.j34   -0.0108723    ,
                   i9.j35   -0.0003053    ,
                   i9.j36    0.00463222   ,
                   i9.j37   -0.0396736    ,
                   i9.j38   -0.0400464    ,
                   i9.j39   -0.016379     ,
                   i9.j40   -0.0098904    ,
                   i9.j41   -0.0321688    ,
                   i9.j42    0.01481136   ,
                   i9.j43   -0.005114     ,
                   i9.j44   -0.0292249    ,
                   i9.j45   -0.0286768    ,
                   i9.j46    0.03834375   ,
                   i9.j47   -0.0092614    ,
                   i9.j48   -0.0008335    ,
                   i9.j49   -0.014421     ,
                   i9.j50   -0.0623375    ,
                   i9.j51    0.02637348   ,
                   i9.j52    0.05629201   ,
                   i9.j53   -0.0117171    ,
                   i9.j54   -0.0052961    ,
                   i9.j55    0.07478219   ,
                   i9.j56   -0.0229678    ,
                   i9.j57    0.00530076   ,
                   i9.j58    0.03977533   ,
                   i9.j59    0.00440966   ,
                   i9.j60    0.04653715   ,
                   i9.j61   -0.0302045    ,
                   i9.j62   -0.0035146    ,

                   i10.j1   0.02936247    ,
                   i10.j2   0.02728753    ,
                   i10.j3   0.01895524    ,
                   i10.j4   0.02426429    ,
                   i10.j5  -0.0079572     ,
                   i10.j6  -0.0007959     ,
                   i10.j7   0.03278387    ,
                   i10.j8  -0.0042126     ,
                   i10.j9   0.01608771    ,
                   i10.j10 -0.0134287     ,
                   i10.j11  0.01224441    ,
                   i10.j12  0.0277158     ,
                   i10.j13  0.01154154    ,
                   i10.j14 -0.0000565     ,
                   i10.j15  0.01739818    ,
                   i10.j16  0.01421354    ,
                   i10.j17 -0.0241966     ,
                   i10.j18 -0.0285554     ,
                   i10.j19 -0.0282975     ,
                   i10.j20 -0.083264      ,
                   i10.j21  0.03474878    ,
                   i10.j22 -0.0091473     ,
                   i10.j23  0.02921277    ,
                   i10.j24  0.03329852    ,
                   i10.j25  0.00214044    ,
                   i10.j26  0.02699496    ,
                   i10.j27 -0.021606      ,
                   i10.j28 -0.0312352     ,
                   i10.j29  0.07112818    ,
                   i10.j30 -0.0417093     ,
                   i10.j31  0.09619381    ,
                   i10.j32  0.00996696    ,
                   i10.j33  0.04349692    ,
                   i10.j34 -0.0438425     ,
                   i10.j35  0.00419287    ,
                   i10.j36  0.02622986    ,
                   i10.j37 -0.0362526     ,
                   i10.j38 -0.003085      ,
                   i10.j39 -0.0045062     ,
                   i10.j40 -0.0205606     ,
                   i10.j41 -0.0288991     ,
                   i10.j42  0.02540138    ,
                   i10.j43 -0.0243807     ,
                   i10.j44  0.0041841     ,
                   i10.j45  0.00393836    ,
                   i10.j46  0.01091591    ,
                   i10.j47 -0.0323941     ,
                   i10.j48 -0.0103458     ,
                   i10.j49  0.00099841    ,
                   i10.j50 -0.0562074     ,
                   i10.j51  0.0586224     ,
                   i10.j52  0.03905103    ,
                   i10.j53 -0.0012433     ,
                   i10.j54  0.04589181    ,
                   i10.j55  0.02250717    ,
                   i10.j56 -0.0007407     ,
                   i10.j57  0.0114906     ,
                   i10.j58  0.0482672     ,
                   i10.j59  0.02911506    ,
                   i10.j60  0.02470034    ,
                   i10.j61  0.00525668    ,
                   i10.j62  0.00579451    ,

                   i11.j1   0.0142632     ,
                   i11.j2   0.02913527    ,
                   i11.j3   0.00045297    ,
                   i11.j4  -0.0110172     ,
                   i11.j5   0.00610407    ,
                   i11.j6   0.02745336    ,
                   i11.j7   0.01660762    ,
                   i11.j8   0.01974878    ,
                   i11.j9   0.0011392     ,
                   i11.j10 -0.0152905     ,
                   i11.j11  0.00137224    ,
                   i11.j12  0.04046159    ,
                   i11.j13  0.01122972    ,
                   i11.j14 -0.0300932     ,
                   i11.j15  0.07110043    ,
                   i11.j16  0.02401848    ,
                   i11.j17 -0.0161092     ,
                   i11.j18 -0.0216779     ,
                   i11.j19 -0.0265765     ,
                   i11.j20 -0.0605873     ,
                   i11.j21  0.00856515    ,
                   i11.j22 -0.0087101     ,
                   i11.j23  0.03675771    ,
                   i11.j24 -0.0057913     ,
                   i11.j25  0.00028415    ,
                   i11.j26  0.04552234    ,
                   i11.j27  0.0116832     ,
                   i11.j28 -0.002417      ,
                   i11.j29  0.06218872    ,
                   i11.j30  0.0644405     ,
                   i11.j31  0.01547711    ,
                   i11.j32 -0.0056861     ,
                   i11.j33  0.03572692    ,
                   i11.j34  0.01895492    ,
                   i11.j35  0.02731691    ,
                   i11.j36  0.00391517    ,
                   i11.j37 -0.0623984     ,
                   i11.j38 -0.0530907     ,
                   i11.j39  0.00024404    ,
                   i11.j40 -0.0496492     ,
                   i11.j41 -0.0034015     ,
                   i11.j42  0.00772798    ,
                   i11.j43  0.00134202    ,
                   i11.j44 -0.0003191     ,
                   i11.j45  0.01589632    ,
                   i11.j46  0.02193175    ,
                   i11.j47 -0.0211536     ,
                   i11.j48  0.00986305    ,
                   i11.j49 -0.0356454     ,
                   i11.j50 -0.0262546     ,
                   i11.j51  0.01305068    ,
                   i11.j52  0.04276746    ,
                   i11.j53 -0.04001       ,
                   i11.j54  0.02436634    ,
                   i11.j55  0.04495887    ,
                   i11.j56 -0.0062248     ,
                   i11.j57  0.00411447    ,
                   i11.j58  0.02287322    ,
                   i11.j59  0.0187145     ,
                   i11.j60  0.01414485    ,
                   i11.j61 -0.0208345     ,
                   i11.j62 -0.0014776     ,

                   i12.j1   0.04961332    ,
                   i12.j2   0.10977209    ,
                   i12.j3   0.04399932    ,
                   i12.j4  -0.0011856     ,
                   i12.j5   0.04759078    ,
                   i12.j6  -0.0030388     ,
                   i12.j7   0.02769167    ,
                   i12.j8  -0.0027146     ,
                   i12.j9   0.02207884    ,
                   i12.j10 -0.0142039     ,
                   i12.j11 -0.0637882     ,
                   i12.j12  0.01581788    ,
                   i12.j13  0.0276185     ,
                   i12.j14  0.03916249    ,
                   i12.j15  0.01596138    ,
                   i12.j16 -0.006546      ,
                   i12.j17 -0.0384127     ,
                   i12.j18  0.00045683    ,
                   i12.j19 -0.121106      ,
                   i12.j20  0.01876118    ,
                   i12.j21  0.06550317    ,
                   i12.j22  0.01441183    ,
                   i12.j23  0.04188729    ,
                   i12.j24  0.00322029    ,
                   i12.j25  0.08396028    ,
                   i12.j26  0.00564501    ,
                   i12.j27  0.00358885    ,
                   i12.j28 -0.041766      ,
                   i12.j29  0.07382422    ,
                   i12.j30  0.10782392    ,
                   i12.j31 -0.0317326     ,
                   i12.j32 -0.055244      ,
                   i12.j33  0.08599692    ,
                   i12.j34 -0.0217804     ,
                   i12.j35  0.03927492    ,
                   i12.j36  0.05519274    ,
                   i12.j37 -0.0400785     ,
                   i12.j38 -0.0666771     ,
                   i12.j39 -0.005139      ,
                   i12.j40  0.0202388     ,
                   i12.j41 -0.0702606     ,
                   i12.j42  0.02115788    ,
                   i12.j43  0.01612974    ,
                   i12.j44 -0.0542889     ,
                   i12.j45 -0.0285207     ,
                   i12.j46  0.08278316    ,
                   i12.j47  0.01565405    ,
                   i12.j48 -0.0458125     ,
                   i12.j49 -0.0263263     ,
                   i12.j50 -0.0636084     ,
                   i12.j51  0.02148485    ,
                   i12.j52  0.05500192    ,
                   i12.j53 -0.0387375     ,
                   i12.j54  0.03604668    ,
                   i12.j55  0.1128135     ,
                   i12.j56 -0.0066382     ,
                   i12.j57 -0.0038363     ,
                   i12.j58  0.03565365    ,
                   i12.j59 -0.0019992     ,
                   i12.j60  0.05372596    ,
                   i12.j61 -0.0050188     ,
                   i12.j62  0.02036761    /;
Parameter R[j]  /     j1    0.012902     ,
                      j2    0.02191627   ,
                      j3    0.02529557   ,
                      j4    0.01689461   ,
                      j5    0.01766878   ,
                      j6    0.00898333   ,
                      j7   -0.0095882    ,
                      j8    0.01011323   ,
                      j9    0.01608763   ,
                      j10  -0.0054741    ,
                      j11  -0.0157507    ,
                      j12  -0.0107545    ,
                      j13   0.03731084   ,
                      j14   0.01240882   ,
                      j15   0.01225673   ,
                      j16  -0.0025362    ,
                      j17  -0.0103346    ,
                      j18  -0.0232057    ,
                      j19  -0.0133208    ,
                      j20   0.00670737   ,
                      j21  -0.0440761    ,
                      j22   0.05370387   ,
                      j23  -0.0092435    ,
                      j24   0.01189763   ,
                      j25   0.0304517    ,
                      j26   0.02651453   ,
                      j27  -0.0029588    ,
                      j28   0.02141482   ,
                      j29   0.02622693   ,
                      j30   0.03818196   ,
                      j31   0.03508255   ,
                      j32  -0.012888     ,
                      j33   0.03195557   ,
                      j34   0.0095065    ,
                      j35   0.00443152   ,
                      j36   0.03302082   ,
                      j37  -0.0122789    ,
                      j38  -0.0318221    ,
                      j39   0.00174459   ,
                      j40  -0.0280738    ,
                      j41  -0.0258027    ,
                      j42  -0.0279576    ,
                      j43  -0.0085528    ,
                      j44  -0.0051912    ,
                      j45   0.01035991   ,
                      j46   0.0225581    ,
                      j47  -0.0040109    ,
                      j48  -0.0211052    ,
                      j49   0.004952     ,
                      j50  -0.057615     ,
                      j51   0.01198616   ,
                      j52   0.06502385   ,
                      j53  -0.0087326    ,
                      j54   0.01490852   ,
                      j55   0.04636842   ,
                      j56   0.03240216   ,
                      j57  -0.0259597    ,
                      j58   0.00359585   ,
                      j59   0.03484614   ,
                      j60   0.03204345   ,
                      j61   0.00328904   ,
                      j62   0.00321269   /;

Variable S[i] , f_obj ;

Equation cons1 , Def_obj ;

cons1.. sum{i,s[i] } - 1 =e= 0;

Def_obj..  f_obj =e= sum{j, sqr(sum {i,(s[i]*F[i,j])} - R[j]) };

S.lo[i] = 0.0 ;
S.up[i] = 1.0 ;
S.l[i]  = 1/%NS% ;

Model portfl6 /all/;

Solve portfl6  using nlp minimazing f_obj ;

display f_obj.l;

display s.l;
