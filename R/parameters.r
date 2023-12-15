###default initial state at plantation
initSeedling.def <- c(1.31,0.5,0.0431969,0.2,NA)
names(initSeedling.def) <- c("H","dbh","BA","hc","Ac")

###default parameters
speciesNam <- c("pisy","piab","beal","fasy","pipi","eugl","rops",'popu','eugrur','piab(DE)','quil')
pCROB <- matrix(NA,53,11,dimnames = list(NULL,speciesNam))
rownames(pCROB) <-  c("cR","rhow","sla","k","vf","vr","c","mf","mr","mw",
                      "z","beta0","betab","betas","rhof2","s1","kRein","s0scale","x","aETS",
                      "alfar1","alfar2","alfar3","alfar4","alfar5","sarShp","S_branchMod","conifers=1 or decidous=2","p0_ref","ETS_ref",
                      "thetaMax","H0max","gamma","kH","decayVp1","decayVp2","decayVp3","ksi","sla0","tsla","zb","aHdom","bHdom","decayVp4",
                      "fAa","fAb","fAc","minDdeadWood","minPerDeadWood",
                      "int_kRein(siteType)","slope_kRein(siteType)",
                      "int_cR(siteType)","slope_cR(siteType)")

pCROB[,1] <- c(0.22406007,195.16571750,20.00788979,0.25003240,3.90739583,0.90777990,
               0.29990356,0.40000000,0.50000000,0.03002172,1.79017546,0.28690180,
               0.39976573,0.38006730,180.23481660,0.01052194,855.00952220,0.97559558,
               0.80000000,0.68700000,0.40000000,0.44000000,0.47000000,0.64000000,
               0.84000000,1.00000000,1.00000000,1.00000000,1.40000000,1250.00000000,
               0.00000000, 33.00000000,0.03000000,0.00066900, -2.65300000,0.05500000,
               -0.03000000,0.07000000,20.00788979,0.00000000,1,2.7801,0.9395,1.191,1,2.5,0.8,
               9.999,.66,-9999,-9999,-9999,-9999)
pCROB[,2] <- c(1.585611e-01,1.833353e+02,2.002536e+01,2.503559e-01,9.728822e+00,1.764810e+00,
               2.694873e-01,4.000000e-01,5.000000e-01,3.005746e-02,1.700265e+00,2.567875e-01,
               4.996872e-01,4.660972e-01,2.000728e+02,5.568057e-03,1.037631e+03,4.001300e-01,
               6.000000e-01,8.740000e-01,1.000000e-01,2.800000e-01,3.800000e-01,4.800000e-01,
               5.800000e-01,2.000000e+00,2.000000e+00,1.000000e+00,1.400000e+00,1.250000e+03,
               0.000000e+00,3.700000e+01,3.000000e-02,3.270000e-04,-2.948000e+00,5.900000e-02,
               -3.000000e-02,8.000000e-02,2.002536e+01,0.000000e+00,1,4.1263,0.9428,0.912,1,2.5,0.8,
               9.999,.60,-9999,-9999,-9999,-9999)
pCROB[,3] <- c(0.17815383,216.13110400, 40.56651551,0.31592870,0.96149996,1.43787917,
               0.21899819,0.40000000,0.50000000,0.03011309,1.94740316,0.49585742,
               0.38946665,0.48527250,101.14578740,0.02440534,1064.46260000,0.40215544,
               0.80000000,0.00000000,0.35000000,0.50000000,0.64000000,0.75000000,
               0.94000000,1.00000000,1.00000000,2.00000000,1.40000000,1250.00000000,
               0.00000000,37.00000000,0.03000000,0.00064400,-3.32400000,0.13500000,
               -0.03000000,0.01500000,40.56651551,0.00000000,1,0,1.1,1.091,1,2.5,0.8,
               9.999,.46,-9999,-9999,-9999,-9999)
pCROB[,4] <- c(0.051373436,237.3752612,70.02066135,0.260359518,0.995872355,2.440734706,
               0.204425121,0.214669016,0.232497872,0.020088308,1.824284786,0.255251397,
               0.49275261,0.499718235,84.96898479,0.005122671,1198.33993,0.291132061,
               0.714362708,0.022261418,0.762233938,0.818117344,1.029416503,1.216454381,
               1.639228693,1,2,1,1.4,1250,0.023087644,20.44251845, 0.156912624,0.00064042,
               -2.948,0.059,-0.03,0.035899753,20.00788979,0,0.962722532,0,1.1,1.091,1,2.5,0.8,
               0.0,0.0,-9999,-9999,-9999,-9999)
pCROB[,5] <- c(0.171957818,209.0229816,23.71281362,0.266767788,3.737717029,
               0.790676722,0.271752441,0.30457009,0.408766119,0.030313391,
               1.772685322,0.335725909,0.395104574,0.498882207,108.1921489,
               0.010613253,672.0397721,0.59577223,0.72,0,0.13,0.33,0.47,0.64,
               0.84,1,1,1,1.4,1250,0,31.84393167,0.029203385,0.000470316,-2.653,
               0.055,-0.03,0.070339277,40.56651551,0,1,0,1.1,1.091,1,2.5,0.8,
               0.0,0.0,-9999,-9999,-9999,-9999)
pCROB[,6] <- c(0.249890074,206.5401424,25.88562561,0.277189578,1.961241368,
               0.401903238,0.200401373,0.204382944,0.494691668,0.020416294,
               1.857322021,0.202280325,0.297151745,0.338423507,299.9190356,
               0.015274673,1375.98069,0.34921536,0.989359517,0.966436454,
               0.100677828,0.249044302,0.682600508,0.796402043,0.899747353,
               1,1,2,3.1,5800,0.034559685,35.16093143,0.060732907,0.000962956,
               -3.324,0.135,-0.03,0.0322303,40.96937266,2.987999562,1.195552315,0.1149,1.1508,1.091,1,2.5,0.8,
               0.0,0.0,-9999,-9999,-9999,-9999)
pCROB[,7] <- c(0.24661449,257.6439127,45.75561945,0.287913095,0.902917082,
               0.765202712,0.287631614,0.411514267,0.266476959,0.02155216,
               1.841235333,0.326855546,0.490491576,0.200111981,104.6723355,
               0.015663807,1180.852387,0.535847359,0.900084211,0.919714248,
               0.331516085,0.566954087,0.694243495,0.768673015,0.843102534,
               1,1,2,1.5,2855,0.047822508,21.98403388,0.061856656,0.000105076,
               -3.324,0.135,-0.03,0.011098704,45.75561945,0,0.958581963,0,1.1,1.091,1,2.5,0.8,
               0.0,0.0,-9999,-9999,-9999,-9999)
pCROB[,8] <- c(0.0552574805543716,146.1815811,59.47661807,0.293587959,0.989521945,
               0.766409722,0.207791519,0.228413058,0.281946456,0.021923979,
               1.971003606,0.299262023,0.348366895,0.445408413,157.6778994,
               0.016181779,1315.101353,0.318597647,0.944661382,
               0.003504272,0.297756481,0.380447231,0.428789134,
               0.468428346,0.597870642,1,1,2,1.5,2855,0.048016582,
               24.97203048,0.038961807,0.000412673,-3.324,0.135,-0.03,
               0.031652341,59.47661807,0,0.818727858,0,1.1,1.091,1,2.5,0.8,
               0.0,0.0,-9999,-9999,-9999,-9999) #Populus is based on a small dataset

pCROB[,9] <- c(0.204117167,183.1185505,26.02424445,0.222587319,1.004187457,0.404366253,
               0.205109392,0.399223504,0.361811051,0.02145648,1.75957705,0.256080148,
               0.388792131,0.282923723,298.2159489,0.015950268,617.3465727,0.896917787,
               0.989982075,0.951355453,0.2035587077,0.219406227,0.35113714,0.506901017,
               0.893191014,1,1,2,3.1,5800,0.014469428,39.69879172,0.045439925,0.000897902,
               -3.324,0.135,-0.03,0.058115759,40.0468376,2.968459454,1.189177125,0.1149,1.1508,1.091,1,2.5,0.8,
               0.0,0.0,-9999,-9999,-9999,-9999) # Eucalyptus grandis x Eucalyptus urophylla

pCROB[,10] <- c(0.10526535,193.6178231,20.35997692,0.252108283,8.899772817,1.7002118,
                0.256725807,0.366805028,0.403013306,0.035836092,2.264734968,0.218809847,
                0.498045663,0.356462001,328.5303151,0.00862637,1088.116952,0.457069088,
                0.736733264,0.626269764,0.125490446,0.27708523,0.330812236,0.495824023,
                0.623558177,2,2,1,1.4,1250,0.016323047,28.21344371,0.123708827,0.000242806,
                -2.948,0.059,-0.03,0.044022402,20.02536,0,1.085732672,4.1263,0.9428,0.912,1,2.5,0.8,
                0.0,0.0,-9999,-9999,-9999,-9999) # Picea abies in Germany

pCROB[,11] <- c(0.05,400,26,0.33,2.5,0.25,0.25,0.45,0.45,0.020088308,2,1.1,0.5,0.3,150,0.0117,
                600,0.291132061,0.714362708,0.022261418,0.1,0.13,0.16,0.19,0.21,1,2,1,1.5,2855,
                0.023087644,20.44251845,0.156912624,0.00064042,-2.948,0.059,-0.03,0.035899753,
                26,0,1,2.7801,0.9395,1.191,1,2.5,0.8,0,0,-9999,-9999,-9999,-9999) # Quercus ilex in Spain (Literature-based/guessed)

pPREL = c(413.000000, 0.450000, 0.118000, 3.000000, 0.745700, 10.930000, -3.063000, 17.720000,
          -0.102700, 0.036730, 0.777900, 0.500000, -0.364000, 0.271500, 0.835100, 0.073480,
          0.999600, 0.442800, 1.200000, 0.330000, 4.970496, 0.000000, 0.000000, 160.000000,
          0.000000, 0.000000, 20.000000, -999.000000, -999.000000, -999.000000)
pPRELESeugl = c(413,0.45,0.118,3,1.004588094,2.187171797,-9.937886741,23.33402032,-0.078699766,
                0.05678157,0.43569651,0.5,-0.364,0.216867322,0.886165542,0.076537373,0.250944646,
                2.484834199,1.2,0.33,0.992544622,0,0,160,0,0,20,-999,-999,-999)
pPRELESpiabDE <- c(614.544134,0.392,0.155,1.312411455,0.820124449,5.650375927,
                  -3.19169985,17.45828968,-0.158842341,0.033324665,0.650491581,0.5,-0.364,0.119428078,
                  0.899640533,0.163152905,0.999200597,0.623269245,1.2,0.33,4.35800751,
                  0,0,200,0,0,-7.9532,-999,-999,-999) # Picea abies in Germany (siteID DE-Tha)
pPRELESfasy <- c(943.4729981,0.358,0.156,2.13588811,0.710401999,15.53840697,3.43708684,10.75103013,
                 -0.325620279,0.012187446,0.365334323,0.5,-0.364,0.230181468,0.712259738,0.102780391,0.999244122,
                0.622317794,1.2,0.33,5.201515182,0,0,200,0,0,1.8857,-999,-999,-999) # Fagus
pPRELES.Df.DBF <- c(600,0.192,0.088,4.965306799,0.723914797,12.58078446,2.987248049,12.36089352,
                    -0.214970139,0.019216213,0.257387576,0.5,-0.364,0.279942541,0.678182346,0.036205559,
                    0.000912058,0.976139923,1.2,0.33,4.970496,
                    0,0,200,0,0,0,-999,-999,-999) # cold continental deciduous broad-leaf
pPRELESpipi<-c(991,0.337,0.04,3,0.783982507431094,5.40766132920764,-8.72893919193914,26.7630451523391,
              -0.119582403900148,0.034855279860314,0.791474635592007,0.5,-0.364,0.230837102742928,0.756951384503756,
               0.098397649465536,0.999515961301202,0.195616291162648,1.2,0.33,6.16,0,0,200,
               0,0,0,-999,-999,-999) # Pinus pinaster Maritime pine, Multi-site calibration, siteID FR-LBr	and IT-SRo

####prepare preles parameters default values matrix for the species in pCROB
# pPRELESall <- matrix(NA, nrow = length(pPREL),ncol(pCROB))
pLUEtrees <- c(rep(pPREL[5],3),pPRELESfasy[5],pPRELESpipi[5],
               pPRELESeugl[5],pPRELES.Df.DBF[5],pPRELES.Df.DBF[5],
               pPRELESeugl[5],pPRELESpiabDE[5],pPRELES.Df.DBF[5])
names(pLUEtrees) <- colnames(pCROB)
pLUEgv <- pPREL[5]

####default ECM model parameters
parsECMmod <- c(0.14, 2, 1, 0.5, 2.66, 43.27474, -0.02002, 3.389821, 0.02788, 0.4239, -0.3023, -26.14)
names(parsECMmod) <- c("h_M","s_H","phi_M","ksi_M","gamma_M","int_CN","p_ETS","p_st","p1_rhoMcalc","p2_rhoMcalc","p3_rhoMcalc","p4_rhoMcalc")

pYAS = c(4.897147e-01, 4.913873e+00, 2.419735e-01, 9.487642e-02, 4.362893e-01, 2.499740e-01,
         9.151269e-01, 9.925823e-01, 8.385374e-02, 1.147678e-02, 6.083150e-04, 4.761282e-04,
         6.603773e-02, 7.713417e-04, 1.040174e-01, 6.488076e-01, -1.548718e-01, -1.956802e-02,
         -9.171713e-01, -4.035943e-04, -1.670727e-04, 9.059805e-02, -2.144096e-04, 4.877247e-02,
         -7.913602e-05, 3.518549e-02, -2.089906e-04, -1.808920e+00, -1.172547e+00, -1.253595e+01,
         4.596472e-03, 1.302583e-03, -4.389227e-01, 1.267467e+00, 2.569142e-01)

parsAWEN <- matrix(NA,12,11,dimnames = list(NULL,speciesNam))
parsAWEN[,1] <- c(0.518000,0.177300,0.088700,0.216000,0.474660,0.019012,0.078308,
                  0.430248,0.670000,0.022500,0.007500,0.285000)
parsAWEN[,2] <- c(0.482600,0.131700,0.065800,0.319900,0.474660,0.019012,
                  0.078308,0.430248,0.665000,0.017500,0.002500,0.305000)
parsAWEN[,3] <- c(0.407900,0.198000,0.099000,0.295100,0.474660,0.019012,
                  0.078308,0.430248,0.715000,0.015000,0.000000,0.275000)
parsAWEN[,4] <- c(0.407900,0.198000,0.099000,0.295100,0.474660,0.019012,
                  0.078308,0.430248,0.715000,0.015000,0.000000,0.275000)
parsAWEN[,5] <- c(0.518000,0.177300,0.088700,0.216000,0.474660,0.019012,0.078308,
                  0.430248,0.670000,0.022500,0.007500,0.285000)
#parsAWEN[,6] <- c(0.407900,0.198000,0.099000,0.295100,0.474660,0.019012,
#                  0.078308,0.430248,0.715000,0.015000,0.000000,0.275000)
parsAWEN[,6] <- c(0.360000,0.281200,0.098800,0.260000,
                  0.650000,0.022200,0.007800,0.320000,
                  0.750000,0.030000,0.000000,0.220000)
parsAWEN[,7] <- c(0.407900,0.198000,0.099000,0.295100,0.474660,0.019012,
                  0.078308,0.430248,0.715000,0.015000,0.000000,0.275000)
parsAWEN[,8] <- c(0.407900,0.198000,0.099000,0.295100,0.474660,0.019012,
                  0.078308,0.430248,0.715000,0.015000,0.000000,0.275000)
parsAWEN[,9] <- c(0.360000,0.281200,0.098800,0.260000,
                  0.650000,0.022200,0.007800,0.320000,
                  0.750000,0.030000,0.000000,0.220000)
parsAWEN[,10] <- c(0.482600,0.131700,0.065800,0.319900,0.474660,0.019012,
                  0.078308,0.430248,0.665000,0.017500,0.002500,0.305000)
parsAWEN[,11] <- c(0.407900,0.198000,0.099000,0.295100,0.474660,0.019012,
                  0.078308,0.430248,0.715000,0.015000,0.000000,0.275000)  

pHcM <- matrix(NA,7,11,dimnames = list(NULL,speciesNam))
###parameters Hcmodel pisy
pHcM[,1] <- c(1.4628,-0.256007,0.017293,-0.089891,0.213387,-0.079094,-0.062191)
###parameters Hcmodel piab
pHcM[,2] <- c(2.896205,-0.166704,0.046865,-0.056031,-1.238669,-0.418347,0.)
###parameters Hcmodel beal
pHcM[,3] <- c(2.069897,-0.229419,-0.09421,-0.041302,-0.110002,-0.17425,0.)
###parameters Hcmodel fasy
pHcM[1:5,4] <- c(1.26813,-0.21981,-0.1405,0.50624,-0.3196)
###parameters Hcmodel pipi
pHcM[,5] <- c(1.4628,-0.256007,0.017293,-0.089891,0.213387,-0.079094,-0.062191)
###parameters Hcmodel eugl
pHcM[1:5,6] <- c(-1.067271, -0.017684, 0.07708,	-0.619978,0.045046)
###parameters Hcmodel rops
pHcM[1:3,7] <- c(0.04237,-0.13308,0.31382)
###parameters Hcmodel poplus
pHcM[1:3,8] <- c(0.04237,-0.13308,0.31382)
###parameters Hcmodel eugl
pHcM[1:5,9] <- c(-1.067271, -0.017684, 0.07708,	-0.619978,0.045046)
###parameters Hcmodel piab(DE)
pHcM[,10] <- c(2.896205,-0.166704,0.046865,-0.056031,-1.238669,-0.418347,0.)
###parameters Hcmodel quil (copy from eugl, since they are both evergreen)
pHcM[1:5,11] <- c(-1.067271, -0.017684, 0.07708,	-0.619978,0.045046)

litterSizeDef <- matrix(0.,3,11,dimnames = list(NULL,speciesNam))
litterSizeDef[1,] <- c(10,10,5,10,10,7,7,7,7,10,7)
litterSizeDef[2,] <- 2

ClCut_birch <- matrix(NA,2,4)
ClCut_birch[1,] <- c(30.0,60,28.5,60)
ClCut_birch[2,] <- c(28.5,60,27.0,60)
ClCut_pine <- matrix(NA,3,4)
ClCut_pine[1,] <- c(29.0,70,26.0,80)
ClCut_pine[2,] <- c(27.5,80,25.0,90)
ClCut_pine[3,] <- c(24.0,90,23.5,100)
ClCut_spruce <- matrix(NA,2,4)
ClCut_spruce[1,] <- c(30,60,28.0,70)
ClCut_spruce[2,] <- c(28,70,26.5,80)

pTapio <- array(NA,dim = c(5,2,3,20),dimnames = list(
  c("sType1","sType2","sType3","sType4","sType5"),
  c("conifers","deciduous"),
  c("South","Centre","North"),
  c("ETSthrd1","ETSthrd2","HthinStart","HthinLim", ###ets threshold, Height at which thinning start, Height limit for young and mature stands
    "p1BAlimL","p2BAlimL","p3BAlimL","p4BAlimL", ## "pars for BA lower limit 
    "p1BAlimU","p2BAlimU","p3BAlimU","p4BAlimU", ## "pars for BA upper limit
    "p1BAthdL","p2BAthdL","p3BAthdL","p4BAthdL",
    "p1BAthdU","p2BAthdU","p3BAthdU","p4BAthdU")
))
# siteType 1, Conifers, South 
pTapio[1,1,1,1:4] <- c(1200, 1000, 12, 22)
pTapio[1,1,1,5:8] <- c(0.0065,-0.477,11.528,-58.573) # BA lower limit
pTapio[1,1,1,9:12] <- c(0.0217,-1.3014, 26.1605,-139.9652) # BA upper limit
pTapio[1,1,1,13:16] <- c(-0.0057,0.1962,-0.7216,3.676) # thinning result lower limit
pTapio[1,1,1,17:20] <- c(-0.0017,-0.0149,2.8612,-12.016) # thinning result upper limit
# siteType 2, Conifers, South 
pTapio[2,1,1,1:4] <- pTapio[1,1,1,1:4]
pTapio[2,1,1,5:8] <- pTapio[1,1,1,5:8]
pTapio[2,1,1,9:12] <- pTapio[1,1,1,9:12]
pTapio[2,1,1,13:16] <- pTapio[1,1,1,13:16]
pTapio[2,1,1,17:20] <- pTapio[1,1,1,17:20]
# siteType 3, Conifers, South 
pTapio[3,1,1,1:4] <- c(1200, 1000, 12, 22)
pTapio[3,1,1,5:8] <- c(0.0136,-0.8275,16.8331,-86.8898)
pTapio[3,1,1,9:12] <- c(0.0055,-0.4037, 9.6217, -42.7914)
pTapio[3,1,1,13:16] <- c(0.0035,-0.2522,5.8948,-27.1735)
pTapio[3,1,1,17:20] <- c(0.004,-0.2739,6.2448,-25.0071)
# siteType 4, Conifers, South 
pTapio[4,1,1,1:4] <- c(1200, 1000, 12, 22)
pTapio[4,1,1,5:8] <- c(0.0172,-1.0366,20.7971,-112.6921)
pTapio[4,1,1,9:12] <- c(0.0205,-1.2298,24.4869,-131.893)
pTapio[4,1,1,13:16] <- c(0.0039,-0.2531,5.5522,-24.8401)
pTapio[4,1,1,17:20] <- c(0.0056,-0.3488,7.3062,-31.0563)
# siteType 5, Conifers, South 
pTapio[5,1,1,1:4] <- c(1200, 1000, 12, 20)
pTapio[5,1,1,5:8] <- c(0.0361,-2.0295,38.1227,-215.8859)
pTapio[5,1,1,9:12] <- c(0.024,-1.3352,24.8669,-129.3155)
pTapio[5,1,1,13:16] <- c(0.0041,-0.2876,6.5443,-34.1293)
pTapio[5,1,1,17:20] <- c(-0.0022,0.0162,1.7219,-5.2895)

# siteType 1, Conifers, Centre
pTapio[1,1,2,1:4] <- c(1200, 1000, 12, 22) 
pTapio[1,1,2,5:8] <- c(0.0148,-0.917,18.9964,-102.7895)
pTapio[1,1,2,9:12] <- c(0.0065,-0.417,9.2542,-37.964)
pTapio[1,1,2,13:16] <- c(-0.0028,0.0648,1.1361,-5.1042)
pTapio[1,1,2,17:20] <- c(-0.0037,0.1034,0.5924,1.3166)
# siteType 2, Conifers, Centre
pTapio[2,1,2,1:4] <- pTapio[1,1,2,1:4]
pTapio[2,1,2,5:8] <- pTapio[1,1,2,5:8]
pTapio[2,1,2,9:12] <- pTapio[1,1,2,9:12]
pTapio[2,1,2,13:16] <- pTapio[1,1,2,13:16]
pTapio[2,1,2,17:20] <- pTapio[1,1,2,17:20]
# siteType 3, Conifers, Centre
pTapio[3,1,2,1:4] <- c(1200, 1000, 12, 22)
pTapio[3,1,2,5:8] <- c(-0.0039,0.1205,0.0526,9.4873)
pTapio[3,1,2,9:12] <- c(0.0017,-0.1779,5.2159,-16.3943)
pTapio[3,1,2,13:16] <- c(0.003,-0.2163,5.1283,-22.5895)
pTapio[3,1,2,17:20] <- c(0.,-0.06,2.56,-5.93)
# siteType 4, Conifers, Centre
pTapio[4,1,2,1:4] <- c(1200, 1000, 12, 22)
pTapio[4,1,2,5:8] <- c(0.0104,-0.6375,13.0333,-65.08)
pTapio[4,1,2,9:12] <- c(0.013,-0.7691,15.2844,-75.0335)
pTapio[4,1,2,13:16] <- c(-0.0029,0.0891,-0.0114,3.8855)
pTapio[4,1,2,17:20] <- c(-0.0003,-0.0485,2.4,-6.322)
# siteType 5, Conifers, Centre
pTapio[5,1,2,1:4] <- c(1200, 1000, 12, 20)
pTapio[5,1,2,5:8] <- c(0.0019,-0.2334,6.768,-36.3391)
pTapio[5,1,2,9:12] <- c(0.0032,-0.2773,7.1288,-33.069)
pTapio[5,1,2,13:16] <- c(0.0006,-0.0836,2.6292,-10.7439)
pTapio[5,1,2,17:20] <- c(0.002,-0.1369,3.235,-9.7256)

# siteType 1, Conifers, North
pTapio[1,1,3,1:4] <- c(1200,1000, 12,20)
pTapio[1,1,3,5:8] <- c(0.0124,-0.7773,16.0731,-85.0627)
pTapio[1,1,3,9:12] <- c(0.0008,-0.1382,4.6256,-14.9918)
pTapio[1,1,3,13:16] <- c(-0.0012,-0.0215,2.1508,-7.3283)
pTapio[1,1,3,17:20] <- c(-0.0009,-0.0581,3.1324,-11.6985)
# siteType 2, Conifers, North
pTapio[2,1,3,1:4] <- pTapio[1,1,3,1:4]
pTapio[2,1,3,5:8] <- pTapio[1,1,3,5:8]
pTapio[2,1,3,9:12] <- pTapio[1,1,3,9:12]
pTapio[2,1,3,13:16] <- pTapio[1,1,3,13:16]
pTapio[2,1,3,17:20] <- pTapio[1,1,3,17:20]
# siteType 3, Conifers, North
pTapio[3,1,3,1:4] <- c(1200,1000, 12,20)
pTapio[3,1,3,5:8] <- c(0.0096,-0.6216,13.2572,-70.1743)
pTapio[3,1,3,9:12] <- c(0.0108,-0.6459,12.9423,-60.9902)
pTapio[3,1,3,13:16] <- c(0.0035,-0.222,4.7985,-19.2557)
pTapio[3,1,3,17:20] <- c(-0.0018,0.0226,1.1971,0.74)
# siteType 4, Conifers, North
pTapio[4,1,3,1:4] <- c(1200,1000, 12,20)
pTapio[4,1,3,5:8] <- c(0.007,-0.4997,11.3779,-62.2418)
pTapio[4,1,3,9:12] <- c(0.0082,-0.5371,11.5501,-57.0208)
pTapio[4,1,3,13:16] <- c(0.0024,-0.1809,4.3659,-19.5257)
pTapio[4,1,3,17:20] <- c(0.0029,-0.2165,5.1838,-22.5281)
# siteType 5, Conifers, North
pTapio[5,1,3,1:4] <- c(1200,1000, 12,18)
pTapio[5,1,3,5:8] <- c(0.0333,-1.7214,29.6032,-151.5683)
pTapio[5,1,3,9:12] <- c(0.0017,-0.2492,6.9717,-33.7336)
pTapio[5,1,3,13:16] <- c(-0.0036,0.1081,-0.3487,4.0072)
pTapio[5,1,3,17:20] <- c(-0.0013,-0.0302,2.2698,-8.4412)


# siteType 1, deciduous, South (Betula pendula, MT+)
pTapio[1,2,1,1:4] <- c(1200, 1000, 12, 20)
pTapio[1,2,1,5:8] <- c(0.0256,-1.3818,25.1827,-135.0807)
pTapio[1,2,1,9:12] <- c(0.0228,-1.2193,22.1586,-113.7665)
pTapio[1,2,1,13:16] <- c(0.0041,-0.2614,5.9211,-32.5066)
pTapio[1,2,1,17:20] <- c(0.0058,-0.3344,6.9561,-35.7195)

# siteType 1, deciduous, North (Betula pubescens, rich peatland)
pTapio[1,2,3,1:4] <- c(1200, 1000, 12, 18)
pTapio[1,2,3,5:8] <- c(-0.0021,0.0434,0.9886,-2.3733)
pTapio[1,2,3,9:12] <- c(0.004,-0.2371,5.4213,-23.7473)
pTapio[1,2,3,13:16] <- c(-0.0009,0.004,1.0047,-3.9108)
pTapio[1,2,3,17:20] <- c(-0.0032,0.1153,-0.6963,7.0914)

# siteType 1, deciduous, centre=south
pTapio[1,2,2,] <- pTapio[1,2,1,]
# siteType 2:5, deciduous, Northand northsouth
pTapio[2,2,1,] <- pTapio[3,2,1,] <- pTapio[4,2,1,] <- 
  pTapio[5,2,1,] <- pTapio[1,2,1,]
pTapio[2,2,2,] <- pTapio[3,2,2,] <- pTapio[4,2,2,] <- 
  pTapio[5,2,2,] <- pTapio[1,2,2,]
pTapio[2,2,3,] <- pTapio[3,2,3,] <- pTapio[4,2,3,] <- 
  pTapio[5,2,3,] <- pTapio[1,2,3,]



#parameters for tapioClearcut subroutine
ccTapio <- array(NA,dim = c(5,3,3,5),dimnames = list(
  c("sType1","sType2","sType3","sType4","sType5"),
  c("pine","spruce", "betula pendula"),
  c("South","Centre","North"),
  c("ETSthrd1","ETSthrd2", ###ets threshold, 
    "dbhLimL", "dbhLimU", ###dbh limits lower and upper
    "ageLim") ### age limit
))

# siteType 1-5, pine, South 
ccTapio[1,1,1,1:5] <- c(1200, 1000, 26, 32, 70)
ccTapio[2,1,1,1:5] <- ccTapio[1,1,1,1:5]
ccTapio[3,1,1,1:5] <- ccTapio[1,1,1,1:5]
ccTapio[4,1,1,1:5] <- c(1200, 1000, 25, 30, 80)
ccTapio[5,1,1,1:5] <- c(1200, 1000, 22, 26, 90)

# siteType 1-5, pine, Centre
ccTapio[1,1,2,1:5] <- c(1200, 1000, 24, 28, 80)
ccTapio[2,1,2,1:5] <- ccTapio[1,1,2,1:5]
ccTapio[3,1,2,1:5] <- ccTapio[1,1,2,1:5]
ccTapio[4,1,2,1:5] <- c(1200, 1000, 23, 27, 90)
ccTapio[5,1,2,1:5] <- c(1200, 1000, 22, 25, 100)

# siteType 1-5, pine, North
ccTapio[1,1,3,1:5] <- c(1200, 1000, 23, 27, 90)
ccTapio[2,1,3,1:5] <- ccTapio[1,1,3,1:5]
ccTapio[3,1,3,1:5] <- ccTapio[1,1,3,1:5]
ccTapio[4,1,3,1:5] <- c(1200, 1000, 22, 26, 100)
ccTapio[5,1,3,1:5] <- c(1200, 1000, 21, 25, 120)

# siteType 1-5, spruce, South 
ccTapio[1,2,1,1:5] <- c(1200, 1000, 28, 32, 60)
ccTapio[2,2,1,1:5] <- ccTapio[1,2,1,1:5]
ccTapio[3,2,1,1:5] <- c(1200, 1000, 26, 30, 70)
ccTapio[4,2,1,1:5] <- c(1200, 1000, 999, 999, 999) # no values in Tapio rules
ccTapio[5,2,1,1:5] <- c(1200, 1000, 999, 999, 999) # no values in Tapio rules

# siteType 1-5, spruce, Centre
ccTapio[1,2,2,1:5] <- c(1200, 1000, 26, 30, 70)
ccTapio[2,2,2,1:5] <- ccTapio[1,2,2,1:5]
ccTapio[3,2,2,1:5] <- c(1200, 1000, 25, 28, 80)
ccTapio[4,2,2,1:5] <- c(1200, 1000, 999, 999, 999) # no values in Tapio rules
ccTapio[5,2,2,1:5] <- c(1200, 1000, 999, 999, 999) # no values in Tapio rules

# siteType 1-5, spruce, North
ccTapio[1,2,3,1:5] <- c(1200, 1000, 23, 26, 100)
ccTapio[2,2,3,1:5] <- ccTapio[1,2,3,1:5]
ccTapio[3,2,3,1:5] <- c(1200, 1000, 22, 25, 110)
ccTapio[4,2,3,1:5] <- c(1200, 1000, 999, 999, 999) # no values in Tapio rules
ccTapio[5,2,3,1:5] <- c(1200, 1000, 999, 999, 999) # no values in Tapio rules

# siteType 1-5, Betula pendula, South 
ccTapio[1,3,1,1:5] <- c(1200, 1000, 28, 32, 60)
ccTapio[2,3,1,1:5] <- ccTapio[1,3,1,1:5]
ccTapio[3,3,1,1:5] <- c(1200, 1000, 27, 30, 60)
ccTapio[4,3,1,1:5] <- c(1200, 1000, 999, 999, 60)
ccTapio[5,3,1,1:5] <- c(1200, 1000, 999, 999, 60)

# siteType 1-5, Betula pendula, Centre
ccTapio[1,3,2,1:5] <- c(1200, 1000, 27, 30, 60)
ccTapio[2,3,2,1:5] <- ccTapio[1,3,2,1:5]
ccTapio[3,3,2,1:5] <- c(1200, 1000, 26, 28, 60)
ccTapio[4,3,2,1:5] <- c(1200, 1000, 999, 999, 60)
ccTapio[5,3,2,1:5] <- c(1200, 1000, 999, 999, 60)

# siteType 1-5, Betula pendula, North
ccTapio[1,3,3,1:5] <- c(1200, 1000, 21, 23, 60)
ccTapio[2,3,3,1:5] <- ccTapio[1,3,3,1:5]
ccTapio[3,3,3,1:5] <- c(1200, 1000, 21, 23, 60)
ccTapio[4,3,3,1:5] <- c(1200, 1000, 999, 999, 60)
ccTapio[5,3,3,1:5] <- c(1200, 1000, 999, 999, 60)


# parameters for tapioFirstThin subroutine
# no thinning types included
ftTapio <- array(NA,dim = c(5,3,3,7),dimnames = list(
  c("sType1","sType2","sType3","sType4","sType5"),
  c("pine","spruce", "betula pendula"),
  c("SouthCentre","North early", "North late"), ### different parameters for early and late first thinning in Northern Finland
  #  c("selection", "low", "only one"), # thinning type
  c("ETSthrd", ###ets threshold, 
    "thinMin-%", ### how many % over the upper thinning result there needs to be wood to do the thinning (1 is 100 %)
    "hLimL", "hLimU", ###height limits lower and upper
    "densL", "densU", ### thinning result lower and upper
    "hNext") ### height limit to change to tapioFirstThin subroutine 
))
# hNext = hLimU + 10 %

#siteType 1-5, pine, South & Centre Finland
ftTapio[1,1,1,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)
ftTapio[2,1,1,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)
ftTapio[3,1,1,1:7] <- c(1000, 0.2, 13, 15, 900, 1100, 16.5)
ftTapio[4,1,1,1:7] <- c(1000, 0.2, 13, 15, 900, 1100, 16.5)
ftTapio[5,1,1,1:7] <- c(1000, 0.2, 11, 13, 800, 1000, 14.3)

#siteType 1-5, pine, North Finland early
ftTapio[1,1,2,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)
ftTapio[2,1,2,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)
ftTapio[3,1,2,1:7] <- c(1000, 0.2, 10, 12, 1100, 1400, 15.4)
ftTapio[4,1,2,1:7] <- c(1000, 0.2, 10, 12, 900, 1100, 15.4)
ftTapio[5,1,2,1:7] <- c(1000, 0.2, 10, 12, 800, 1000, 15.4)

#siteType 1-5, pine, North Finland late
ftTapio[1,1,3,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)
ftTapio[2,1,3,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)
ftTapio[3,1,3,1:7] <- c(1000, 0.2, 12, 14, 900, 1100, 15.4)
ftTapio[4,1,3,1:7] <- c(1000, 0.2, 12, 14, 700, 900, 15.4)
ftTapio[5,1,3,1:7] <- c(1000, 0.2, 12, 14, 600, 800, 15.4)

#siteType 1-5, spruce, South & Centre Finland
ftTapio[1,2,1,1:7] <- c(1000, 0.2, 13, 16, 900, 1100, 17.6)
ftTapio[2,2,1,1:7] <- c(1000, 0.2, 13, 16, 900, 1100, 17.6)
ftTapio[3,2,1,1:7] <- c(1000, 0.2, 13, 16, 900, 1100, 17.6)
ftTapio[4,2,1,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)
ftTapio[5,2,1,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)

#siteType 1-5, spruce, North Finland early
ftTapio[1,2,2,1:7] <- c(1000, 0.2, 10, 12, 1100, 1400, 15.4)
ftTapio[2,2,2,1:7] <- c(1000, 0.2, 10, 12, 1100, 1400, 15.4)
ftTapio[3,2,2,1:7] <- c(1000, 0.2, 10, 12, 1100, 1400, 15.4)
ftTapio[4,2,2,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)
ftTapio[5,2,2,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)

#siteType 1-5, spruce, North Finland late
ftTapio[1,2,3,1:7] <- c(1000, 0.2, 12, 14, 900, 1100, 15.4)
ftTapio[2,2,3,1:7] <- c(1000, 0.2, 12, 14, 900, 1100, 15.4)
ftTapio[3,2,3,1:7] <- c(1000, 0.2, 12, 14, 900, 1100, 15.4)
ftTapio[4,2,3,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)
ftTapio[5,2,3,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)

#siteType 1-5, Betula pendula, South & Centre Finland
ftTapio[1,3,1,1:7] <- c(1000, 0.2, 13, 15, 700, 800, 16.5)
ftTapio[2,3,1,1:7] <- c(1000, 0.2, 13, 15, 700, 800, 16.5)
ftTapio[3,3,1,1:7] <- c(1000, 0.2, 13, 15, 700, 800, 16.5)
ftTapio[4,3,1,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)
ftTapio[5,3,1,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)

#siteType 1-5, Betula pendula, North Finland early
ftTapio[1,3,2,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)
ftTapio[2,3,2,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)
ftTapio[3,3,2,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)
ftTapio[4,3,2,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)
ftTapio[5,3,2,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)

#siteType 1-5, Betula pendula, North Finland late
ftTapio[1,3,3,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)
ftTapio[2,3,3,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)
ftTapio[3,3,3,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)
ftTapio[4,3,3,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)
ftTapio[5,3,3,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)

# parameters for tapioTend subroutine
# exception: dense sown pine stands (VT) 3-4 m 2500-3000 - not included now
tTapio <- array(NA,dim = c(5,3,2,7),dimnames = list(
  c("sType1","sType2","sType3","sType4","sType5"),
  c("pine","spruce", "betula pendula"),
  c("SouthCentre","North"), 
  c("ETSthrd", ###ets threshold, 
    "thinMin-%", ### how many % over the upper thinning result there needs to be wood to do the thinning (1 is 100 %)
    "hLimL", "hLimU", ###height limits lower and upper
    "densL", "densU", ### thinning result lower and upper
    "hNext") ### height limit to change to tapioFirstThin subroutine 
))
# hNext = 70 % of hLimL of ftTapio

#siteType 1-5, pine, South & Centre Finland
tTapio[1,1,1,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)
tTapio[2,1,1,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)
tTapio[3,1,1,1:7] <- c(1000, 0.2, 5, 7, 2000, 2200, 9.1)
tTapio[4,1,1,1:7] <- c(1000, 0.2, 5, 7, 2000, 2200, 9.1)
tTapio[5,1,1,1:7] <- c(1000, 0.2, 3, 5, 2000, 2200, 7.7)

#siteType 1-5, pine, North Finland 
tTapio[1,1,2,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)
tTapio[2,1,2,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)
tTapio[3,1,2,1:7] <- c(1000, 0.2, 3, 5, 2000, 2200, 7)
tTapio[4,1,2,1:7] <- c(1000, 0.2, 3, 5, 2000, 2200, 7)
tTapio[5,1,2,1:7] <- c(1000, 0.2, 3, 5, 2000, 2200, 7)

#siteType 1-5, spruce, South & Centre Finland
tTapio[1,2,1,1:7] <- c(1000, 0.2, 3, 4, 1800, 2000, 9.1)
tTapio[2,2,1,1:7] <- c(1000, 0.2, 3, 4, 1800, 2000, 9.1)
tTapio[3,2,1,1:7] <- c(1000, 0.2, 3, 4, 1800, 2000, 9.1)
tTapio[4,2,1,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)
tTapio[5,2,1,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)

#siteType 1-5, spruce, North Finland 
tTapio[1,2,2,1:7] <- c(1000, 0.2, 2, 4, 1800, 2000, 7)
tTapio[2,2,2,1:7] <- c(1000, 0.2, 2, 4, 1800, 2000, 7)
tTapio[3,2,2,1:7] <- c(1000, 0.2, 2, 4, 1800, 2000, 7)
tTapio[4,2,2,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)
tTapio[5,2,2,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)

#siteType 1-5, Betula pendula, South & Centre Finland
tTapio[1,3,1,1:7] <- c(1000, 0.2, 4, 5, 1600, 1600, 9.1)
tTapio[2,3,1,1:7] <- c(1000, 0.2, 4, 5, 1600, 1600, 9.1)
tTapio[3,3,1,1:7] <- c(1000, 0.2, 4, 5, 1600, 1600, 9.1)
tTapio[4,3,1,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)
tTapio[5,3,1,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)

#siteType 1-5, Betula pubescens, North Finland 
tTapio[1,3,2,1:7] <- c(1000, 0.2, 4, 7, 2000, 2500, 7)
tTapio[2,3,2,1:7] <- c(1000, 0.2, 4, 7, 2000, 2500, 7)
tTapio[3,3,2,1:7] <- c(1000, 0.2, 4, 7, 2000, 2500, 7)
tTapio[4,3,2,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)
tTapio[5,3,2,1:7] <- c(1000, 0.2, 999, 999, 99999, 99999, 999)

###default value for the Hc model selection. 1 uses the pipemodel: HcPipeMod() function
HcModV_def <- 1
