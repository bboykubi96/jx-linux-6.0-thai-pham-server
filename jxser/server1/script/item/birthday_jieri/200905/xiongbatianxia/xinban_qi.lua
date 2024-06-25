-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn in tê nÕt b¶n ViÖt Nam b¶n - b¶n míi kú 
-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn ##xinban_qi.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ## tö kh«ng ph¶i lµ ng­ 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2009-05-21 16:15:54 

-- script viet hoa By http://tranhba.com  ====================================================== 

Include("\\script\\event\\birthday_jieri\\200905\\class.lua");
Include("\\script\\lib\\awardtemplet.lua")

local tbAward = 
{ 
[1] = {szName = " kÕ nghiÖp kim bµi ", tbProp = {6, 1, 2075, 1, 0, 0}, nRate = 1.000000}, 
[2] = {szName = " méng long kim bµi ", tbProp = {6, 1, 2076, 1, 0, 0}, nRate = 1.000000}, 
[3] = {szName = " minh huyÔn kim bµi ", tbProp = {6, 1, 2077, 1, 0, 0}, nRate = 1.000000}, 
[4] = {szName = " ®Şa ph¸ch kim bµi ", tbProp = {6, 1, 2078, 1, 0, 0}, nRate = 1.000000}, 
[5] = {szName = " v« trÇn kim bµi ", tbProp = {6, 1, 2079, 1, 0, 0}, nRate = 1.000000}, 
[6] = {szName = " bİch h¶i kim bµi ", tbProp = {6, 1, 2080, 1, 0, 0}, nRate = 1.000000}, 
[7] = {szName = " vô huyÔn kim bµi ", tbProp = {6, 1, 2081, 1, 0, 0}, nRate = 1.000000}, 
[8] = {szName = " ma lµ kim bµi ", tbProp = {6, 1, 2082, 1, 0, 0}, nRate = 1.000000}, 
[9] = {szName = " khiªu chiÕn lÔ tói ", tbProp = {6, 1, 2006, 1, 0, 0}, nRate = 20.000000}, 
[10] = {szName = " tiªn th¶o lé ", tbProp = {6, 1, 71, 1, 0, 0}, nRate = 11.966000}, 
[11] = {szName = " ®Æc hiÖu tiªn th¶o lé ", tbProp = {6, 1, 1181, 1, 0, 0}, nRate = 5.000000}, 
[12] = {szName = " kim tª ", tbProp = {4, 979, 1, 1, 0, 0}, nRate = 1.000000}, 
[13] = {szName = " ngµn n¨m hµ thñ « ", tbProp = {6, 1, 2074, 1, 0, 0}, nRate = 1.000000}, 
[14] = {szName = " kim quang B¾c Kinh chi méng ", nQuality = 1, tbProp = {0, 197}, nRate = 0.001000}, 
[15] = {szName = " kim quang nh· ®iÓn chi hån ", nQuality = 1, tbProp = {0, 202}, nRate = 0.001000}, 
[16] = {szName = " Thiªn S¬n tuyÕt liªn ", tbProp = {6, 1, 1431, 1, 0, 0}, nRate = 0.030000}, 
[17] = {szName = " huyÒn thËt ®an ", tbProp = {6, 1, 1678, 1, 0, 0}, nRate = 0.010000, tbParam = {1500000000}}, 
[18] = {szName = " m¸u thËt ®an ", tbProp = {6, 1, 1677, 1, 0, 0}, nRate = 0.020000, tbParam = {1000000000}}, 
[19] = {szName = " b¹ch thËt ®an ", tbProp = {6, 1, 1676, 1, 0, 0}, nRate = 0.200000, tbParam = {500000000}}, 
[20] = {szName = " thÇn bİ qu¸ng th¹ch ", tbProp = {6, 1, 398, 1, 0, 0}, nRate = 1.000000}, 
[21] = {szName = " tö thñy tinh ", tbProp = {4, 239, 1, 1, 0, 0}, nRate = 7.000000}, 
[22] = {szName = " lam thñy tinh ", tbProp = {4, 238, 1, 1, 0, 0}, nRate = 7.000000}, 
[23] = {szName = " n­íc biÕc tinh ", tbProp = {4, 240, 1, 1, 0, 0}, nRate = 7.000000}, 
[24] = {szName = " tinh hång b¶o th¹ch ", tbProp = {4, 353, 1, 1, 0, 0}, nRate = 4.000000}, 
[25] = {szName = " thiÕt La H¸n ", tbProp = {6, 1, 23, 1, 0, 0}, nRate = 10.000000}, 
[26] = {szName = " m©m nÕu t©m tr¶i qua ", tbProp = {6, 1, 12, 1, 0, 0}, nRate = 2.000000}, 
[27] = {szName = "6 cÊp huyÒn tinh qu¸ng th¹ch ", tbProp = {6, 1, 147, 6, 0, 0}, nRate = 5.000000}, 
[28] = {szName = "7 cÊp huyÒn tinh qu¸ng th¹ch ", tbProp = {6, 1, 147, 7, 0, 0}, nRate = 4.000000}, 
[29] = {szName = "8 cÊp huyÒn tinh qu¸ng th¹ch ", tbProp = {6, 1, 147, 8, 0, 0}, nRate = 1.000000}, 
[30] = {szName = " long ph­îng vÜ ", tbProp = {6, 1, 2060, 8, 0, 0}, nRate = 0.5, nExpiredTime = tbBirthday0905.tbTask.item_expiredtime2}, 
[31] = {szName = " kÕ nghiÖp chi b¹ch hæ v« song trõ m¶nh vôn (1/6)", tbProp = {4, 1146, 1, 1, 0, 0}, nRate = 0.005000}, 
[32] = {szName = " kÕ nghiÖp chi b¹ch hæ v« song trõ m¶nh vôn (2/6)", tbProp = {4, 1147, 1, 1, 0, 0}, nRate = 0.005000}, 
[33] = {szName = " kÕ nghiÖp chi b¹ch hæ v« song trõ m¶nh vôn (3/6)", tbProp = {4, 1148, 1, 1, 0, 0}, nRate = 0.005000}, 
[34] = {szName = " kÕ nghiÖp chi b¹ch hæ v« song trõ m¶nh vôn (4/6)", tbProp = {4, 1149, 1, 1, 0, 0}, nRate = 0.005000}, 
[35] = {szName = " kÕ nghiÖp chi b¹ch hæ v« song trõ m¶nh vôn (5/6)", tbProp = {4, 1150, 1, 1, 0, 0}, nRate = 0.005000}, 
[36] = {szName = " kÕ nghiÖp chi b¹ch hæ v« song trõ m¶nh vôn (6/6)", tbProp = {4, 1151, 1, 1, 0, 0}, nRate = 0.005000}, 
[37] = {szName = " minh huyÔn chi hñ cèt hé cæ tay m¶nh vôn (1/6)", tbProp = {4, 1194, 1, 1, 0, 0}, nRate = 0.004000}, 
[38] = {szName = " minh huyÔn chi hñ cèt hé cæ tay m¶nh vôn (2/6)", tbProp = {4, 1195, 1, 1, 0, 0}, nRate = 0.004000}, 
[39] = {szName = " minh huyÔn chi hñ cèt hé cæ tay m¶nh vôn (3/6)", tbProp = {4, 1196, 1, 1, 0, 0}, nRate = 0.004000}, 
[40] = {szName = " minh huyÔn chi hñ cèt hé cæ tay m¶nh vôn (4/6)", tbProp = {4, 1197, 1, 1, 0, 0}, nRate = 0.004000}, 
[41] = {szName = " minh huyÔn chi hñ cèt hé cæ tay m¶nh vôn (5/6)", tbProp = {4, 1198, 1, 1, 0, 0}, nRate = 0.004000}, 
[42] = {szName = " minh huyÔn chi hñ cèt hé cæ tay m¶nh vôn (6/6)", tbProp = {4, 1199, 1, 1, 0, 0}, nRate = 0.004000}, 
[43] = {szName = " ®Şch hi chi chã tİch da hé cæ tay m¶nh vôn (1/6)", tbProp = {4, 1091, 1, 1, 0, 0}, nRate = 0.010000}, 
[44] = {szName = " ®Şch hi chi chã tİch da hé cæ tay m¶nh vôn (2/6)", tbProp = {4, 1092, 1, 1, 0, 0}, nRate = 0.010000}, 
[45] = {szName = " ®Şch hi chi chã tİch da hé cæ tay m¶nh vôn (3/6)", tbProp = {4, 1093, 1, 1, 0, 0}, nRate = 0.010000}, 
[46] = {szName = " ®Şch hi chi chã tİch da hé cæ tay m¶nh vôn (4/6)", tbProp = {4, 1094, 1, 1, 0, 0}, nRate = 0.010000}, 
[47] = {szName = " ®Şch hi chi chã tİch da hé cæ tay m¶nh vôn (5/6)", tbProp = {4, 1095, 1, 1, 0, 0}, nRate = 0.010000}, 
[48] = {szName = " ®Şch hi chi chã tİch da hé cæ tay m¶nh vôn (6/6)", tbProp = {4, 1096, 1, 1, 0, 0}, nRate = 0.010000}, 
[49] = {szName = " bèn v« İch chi hé ph¸p ®ai l­ng m¶nh vôn (1/6)", tbProp = {4, 1134, 1, 1, 0, 0}, nRate = 0.004000}, 
[50] = {szName = " bèn v« İch chi hé ph¸p ®ai l­ng m¶nh vôn (2/6)", tbProp = {4, 1135, 1, 1, 0, 0}, nRate = 0.004000}, 
[51] = {szName = " bèn v« İch chi hé ph¸p ®ai l­ng m¶nh vôn (3/6)", tbProp = {4, 1136, 1, 1, 0, 0}, nRate = 0.004000}, 
[52] = {szName = " bèn v« İch chi hé ph¸p ®ai l­ng m¶nh vôn (4/6)", tbProp = {4, 1137, 1, 1, 0, 0}, nRate = 0.004000}, 
[53] = {szName = " bèn v« İch chi hé ph¸p ®ai l­ng m¶nh vôn (5/6)", tbProp = {4, 1138, 1, 1, 0, 0}, nRate = 0.004000}, 
[54] = {szName = " bèn v« İch chi hé ph¸p ®ai l­ng m¶nh vôn (6/6)", tbProp = {4, 1139, 1, 1, 0, 0}, nRate = 0.004000}, 
[55] = {szName = " v« gian chi phÊt v©n ti mang m¶nh vôn (1/6)", tbProp = {4, 1158, 1, 1, 0, 0}, nRate = 0.008000}, 
[56] = {szName = " v« gian chi phÊt v©n ti mang m¶nh vôn (2/6)", tbProp = {4, 1159, 1, 1, 0, 0}, nRate = 0.008000}, 
[57] = {szName = " v« gian chi phÊt v©n ti mang m¶nh vôn (3/6)", tbProp = {4, 1160, 1, 1, 0, 0}, nRate = 0.008000}, 
[58] = {szName = " v« gian chi phÊt v©n ti mang m¶nh vôn (4/6)", tbProp = {4, 1161, 1, 1, 0, 0}, nRate = 0.008000}, 
[59] = {szName = " v« gian chi phÊt v©n ti mang m¶nh vôn (5/6)", tbProp = {4, 1162, 1, 1, 0, 0}, nRate = 0.008000}, 
[60] = {szName = " v« gian chi phÊt v©n ti mang m¶nh vôn (6/6)", tbProp = {4, 1163, 1, 1, 0, 0}, nRate = 0.008000}, 
[61] = {szName = " b¨ng hµn lßng tiÕn yªu trõ m¶nh vôn (1/6)", tbProp = {4, 1206, 1, 1, 0, 0}, nRate = 0.004000}, 
[62] = {szName = " b¨ng hµn lßng tiÕn yªu trõ m¶nh vôn (2/6)", tbProp = {4, 1207, 1, 1, 0, 0}, nRate = 0.004000}, 
[63] = {szName = " b¨ng hµn lßng tiÕn yªu trõ m¶nh vôn (3/6)", tbProp = {4, 1208, 1, 1, 0, 0}, nRate = 0.004000}, 
[64] = {szName = " b¨ng hµn lßng tiÕn yªu trõ m¶nh vôn (4/6)", tbProp = {4, 1209, 1, 1, 0, 0}, nRate = 0.004000}, 
[65] = {szName = " b¨ng hµn lßng tiÕn yªu trõ m¶nh vôn (5/6)", tbProp = {4, 1210, 1, 1, 0, 0}, nRate = 0.004000}, 
[66] = {szName = " b¨ng hµn lßng tiÕn yªu trõ m¶nh vôn (6/6)", tbProp = {4, 1211, 1, 1, 0, 0}, nRate = 0.004000}, 
[67] = {szName = " l¨ng nh¹c c¬n giËn l«i ph¸p giíi m¶nh vôn (1/6)", tbProp = {4, 1260, 1, 1, 0, 0}, nRate = 0.030000}, 
[68] = {szName = " l¨ng nh¹c c¬n giËn l«i ph¸p giíi m¶nh vôn (2/6)", tbProp = {4, 1261, 1, 1, 0, 0}, nRate = 0.030000}, 
[69] = {szName = " l¨ng nh¹c c¬n giËn l«i ph¸p giíi m¶nh vôn (3/6)", tbProp = {4, 1262, 1, 1, 0, 0}, nRate = 0.030000}, 
[70] = {szName = " l¨ng nh¹c c¬n giËn l«i ph¸p giíi m¶nh vôn (4/6)", tbProp = {4, 1263, 1, 1, 0, 0}, nRate = 0.030000}, 
[71] = {szName = " l¨ng nh¹c c¬n giËn l«i ph¸p giíi m¶nh vôn (5/6)", tbProp = {4, 1264, 1, 1, 0, 0}, nRate = 0.030000}, 
[72] = {szName = " l¨ng nh¹c c¬n giËn l«i ph¸p giíi m¶nh vôn (6/6)", tbProp = {4, 1265, 1, 1, 0, 0}, nRate = 0.030000}, 
[73] = {szName = " tª hoµng lµn giã / phong th¸i tuyÕt tr¾ng v©n ®ai l­ng m¶nh vôn (1/6)", tbProp = {4, 1176, 1, 1, 0, 0}, nRate = 0.003000}, 
[74] = {szName = " tª hoµng lµn giã / phong th¸i tuyÕt tr¾ng v©n ®ai l­ng m¶nh vôn (2/6)", tbProp = {4, 1177, 1, 1, 0, 0}, nRate = 0.003000}, 
[75] = {szName = " tª hoµng lµn giã / phong th¸i tuyÕt tr¾ng v©n ®ai l­ng m¶nh vôn (3/6)", tbProp = {4, 1178, 1, 1, 0, 0}, nRate = 0.003000}, 
[76] = {szName = " tª hoµng lµn giã / phong th¸i tuyÕt tr¾ng v©n ®ai l­ng m¶nh vôn (4/6)", tbProp = {4, 1179, 1, 1, 0, 0}, nRate = 0.003000}, 
[77] = {szName = " tª hoµng lµn giã / phong th¸i tuyÕt tr¾ng v©n ®ai l­ng m¶nh vôn (5/6)", tbProp = {4, 1180, 1, 1, 0, 0}, nRate = 0.003000}, 
[78] = {szName = " tª hoµng lµn giã / phong th¸i tuyÕt tr¾ng v©n ®ai l­ng m¶nh vôn (6/6)", tbProp = {4, 1181, 1, 1, 0, 0}, nRate = 0.003000}, 
[79] = {szName = " s­¬ng tinh chi giã m¸t lò mang m¶nh vôn (1/6)", tbProp = {4, 1272, 1, 1, 0, 0}, nRate = 0.007000}, 
[80] = {szName = " s­¬ng tinh chi giã m¸t lò mang m¶nh vôn (2/6)", tbProp = {4, 1273, 1, 1, 0, 0}, nRate = 0.007000}, 
[81] = {szName = " s­¬ng tinh chi giã m¸t lò mang m¶nh vôn (3/6)", tbProp = {4, 1274, 1, 1, 0, 0}, nRate = 0.007000}, 
[82] = {szName = " s­¬ng tinh chi giã m¸t lò mang m¶nh vôn (4/6)", tbProp = {4, 1275, 1, 1, 0, 0}, nRate = 0.007000}, 
[83] = {szName = " s­¬ng tinh chi giã m¸t lò mang m¶nh vôn (5/6)", tbProp = {4, 1276, 1, 1, 0, 0}, nRate = 0.007000}, 
[84] = {szName = " s­¬ng tinh chi giã m¸t lò mang m¶nh vôn (6/6)", tbProp = {4, 1277, 1, 1, 0, 0}, nRate = 0.007000}, 
[85] = {szName = " ma s¸t chi tµn d­¬ng ¸nh m¸u gi¸p m¶nh vôn (1/6)", tbProp = {4, 1097, 1, 1, 0, 0}, nRate = 0.004000}, 
[86] = {szName = " ma s¸t chi tµn d­¬ng ¸nh m¸u gi¸p m¶nh vôn (2/6)", tbProp = {4, 1098, 1, 1, 0, 0}, nRate = 0.004000}, 
[87] = {szName = " ma s¸t chi tµn d­¬ng ¸nh m¸u gi¸p m¶nh vôn (3/6)", tbProp = {4, 1099, 1, 1, 0, 0}, nRate = 0.004000}, 
[88] = {szName = " ma s¸t chi tµn d­¬ng ¸nh m¸u gi¸p m¶nh vôn (4/6)", tbProp = {4, 1100, 1, 1, 0, 0}, nRate = 0.004000}, 
[89] = {szName = " ma s¸t chi tµn d­¬ng ¸nh m¸u gi¸p m¶nh vôn (5/6)", tbProp = {4, 1101, 1, 1, 0, 0}, nRate = 0.004000}, 
[90] = {szName = " ma s¸t chi tµn d­¬ng ¸nh m¸u gi¸p m¶nh vôn (6/6)", tbProp = {4, 1102, 1, 1, 0, 0}, nRate = 0.004000}, 
[91] = {szName = " bèn v« İch chi hµng ma giíi ®ao m¶nh vôn (1/9) /9)", tbProp = {4, 585, 1, 1, 0, 0}, nRate = 0.030000}, 
[92] = {szName = " bèn v« İch chi hµng ma giíi ®ao m¶nh vôn (2/9) /9)", tbProp = {4, 586, 1, 1, 0, 0}, nRate = 0.030000}, 
[93] = {szName = " bèn v« İch chi hµng ma giíi ®ao m¶nh vôn (3/9) /9)", tbProp = {4, 587, 1, 1, 0, 0}, nRate = 0.030000}, 
[94] = {szName = " bèn v« İch chi hµng ma giíi ®ao m¶nh vôn (4/9) /9)", tbProp = {4, 588, 1, 1, 0, 0}, nRate = 0.030000}, 
[95] = {szName = " bèn v« İch chi hµng ma giíi ®ao m¶nh vôn (5/9) /9)", tbProp = {4, 589, 1, 1, 0, 0}, nRate = 0.030000}, 
[96] = {szName = " bèn v« İch chi hµng ma giíi ®ao m¶nh vôn (6/9) /9)", tbProp = {4, 590, 1, 1, 0, 0}, nRate = 0.030000}, 
[97] = {szName = " bèn v« İch chi hµng ma giíi ®ao m¶nh vôn (7/9) /9)", tbProp = {4, 591, 1, 1, 0, 0}, nRate = 0.030000}, 
[98] = {szName = " bèn v« İch chi hµng ma giíi ®ao m¶nh vôn (8/9) /9)", tbProp = {4, 592, 1, 1, 0, 0}, nRate = 0.030000}, 
[99] = {szName = " bèn v« İch chi hµng ma giíi ®ao m¶nh vôn (9/9) /9)", tbProp = {4, 593, 1, 1, 0, 0}, nRate = 0.030000}, 
[100] = {szName = " phôc ma chi tİm bÇm c«n m¶nh vôn (1/9) /9)", tbProp = {4, 576, 1, 1, 0, 0}, nRate = 0.020000}, 
[101] = {szName = " phôc ma chi tİm bÇm c«n m¶nh vôn (2/9) /9)", tbProp = {4, 577, 1, 1, 0, 0}, nRate = 0.020000}, 
[102] = {szName = " phôc ma chi tİm bÇm c«n m¶nh vôn (3/9) /9)", tbProp = {4, 578, 1, 1, 0, 0}, nRate = 0.020000}, 
[103] = {szName = " phôc ma chi tİm bÇm c«n m¶nh vôn (4/9) /9)", tbProp = {4, 579, 1, 1, 0, 0}, nRate = 0.020000}, 
[104] = {szName = " phôc ma chi tİm bÇm c«n m¶nh vôn (5/9) /9)", tbProp = {4, 580, 1, 1, 0, 0}, nRate = 0.020000}, 
[105] = {szName = " phôc ma chi tİm bÇm c«n m¶nh vôn (6/9) /9)", tbProp = {4, 581, 1, 1, 0, 0}, nRate = 0.020000}, 
[106] = {szName = " phôc ma chi tİm bÇm c«n m¶nh vôn (7/9) /9)", tbProp = {4, 582, 1, 1, 0, 0}, nRate = 0.020000}, 
[107] = {szName = " phôc ma chi tİm bÇm c«n m¶nh vôn (8/9) /9)", tbProp = {4, 583, 1, 1, 0, 0}, nRate = 0.020000}, 
[108] = {szName = " phôc ma chi tİm bÇm c«n m¶nh vôn (9/9) /9)", tbProp = {4, 584, 1, 1, 0, 0}, nRate = 0.020000}, 
[109] = {szName = " lay trêi chi ngåi long giµy lİnh m¶nh vôn (1/6)", tbProp = {4, 1031, 1, 1, 0, 0}, nRate = 0.040000}, 
[110] = {szName = " lay trêi chi ngåi long giµy lİnh m¶nh vôn (2/6)", tbProp = {4, 1032, 1, 1, 0, 0}, nRate = 0.040000}, 
[111] = {szName = " lay trêi chi ngåi long giµy lİnh m¶nh vôn (3/6)", tbProp = {4, 1033, 1, 1, 0, 0}, nRate = 0.040000}, 
[112] = {szName = " lay trêi chi ngåi long giµy lİnh m¶nh vôn (4/6)", tbProp = {4, 1034, 1, 1, 0, 0}, nRate = 0.040000}, 
[113] = {szName = " lay trêi chi ngåi long giµy lİnh m¶nh vôn (5/6)", tbProp = {4, 1035, 1, 1, 0, 0}, nRate = 0.040000}, 
[114] = {szName = " lay trêi chi ngåi long giµy lİnh m¶nh vôn (6/6)", tbProp = {4, 1036, 1, 1, 0, 0}, nRate = 0.040000}, 
[115] = {szName = " minh huyÔn chi tµ s¸t ®éc nhËn m¶nh vôn (1/9) /9)", tbProp = {4, 648, 1, 1, 0, 0}, nRate = 0.020000}, 
[116] = {szName = " minh huyÔn chi tµ s¸t ®éc nhËn m¶nh vôn (2/9) /9)", tbProp = {4, 649, 1, 1, 0, 0}, nRate = 0.020000}, 
[117] = {szName = " minh huyÔn chi tµ s¸t ®éc nhËn m¶nh vôn (3/9) /9)", tbProp = {4, 650, 1, 1, 0, 0}, nRate = 0.020000}, 
[118] = {szName = " minh huyÔn chi tµ s¸t ®éc nhËn m¶nh vôn (4/9) /9)", tbProp = {4, 651, 1, 1, 0, 0}, nRate = 0.020000}, 
[119] = {szName = " minh huyÔn chi tµ s¸t ®éc nhËn m¶nh vôn (5/9) /9)", tbProp = {4, 652, 1, 1, 0, 0}, nRate = 0.020000}, 
[120] = {szName = " minh huyÔn chi tµ s¸t ®éc nhËn m¶nh vôn (6/9) /9)", tbProp = {4, 653, 1, 1, 0, 0}, nRate = 0.020000}, 
[121] = {szName = " minh huyÔn chi tµ s¸t ®éc nhËn m¶nh vôn (7/9) /9)", tbProp = {4, 654, 1, 1, 0, 0}, nRate = 0.020000}, 
[122] = {szName = " minh huyÔn chi tµ s¸t ®éc nhËn m¶nh vôn (8/9) /9)", tbProp = {4, 655, 1, 1, 0, 0}, nRate = 0.020000}, 
[123] = {szName = " minh huyÔn chi tµ s¸t ®éc nhËn m¶nh vôn (9/9) /9)", tbProp = {4, 656, 1, 1, 0, 0}, nRate = 0.020000}, 
[124] = {szName = " hoa vò ®Çy trêi m¶nh vôn (1/9) /9)", tbProp = {4, 657, 1, 1, 0, 0}, nRate = 0.004000}, 
[125] = {szName = " hoa vò ®Çy trêi m¶nh vôn (2/9) /9)", tbProp = {4, 658, 1, 1, 0, 0}, nRate = 0.004000}, 
[126] = {szName = " hoa vò ®Çy trêi m¶nh vôn (3/9) /9)", tbProp = {4, 659, 1, 1, 0, 0}, nRate = 0.004000}, 
[127] = {szName = " hoa vò ®Çy trêi m¶nh vôn (4/9) /9)", tbProp = {4, 660, 1, 1, 0, 0}, nRate = 0.004000}, 
[128] = {szName = " hoa vò ®Çy trêi m¶nh vôn (5/9) /9)", tbProp = {4, 661, 1, 1, 0, 0}, nRate = 0.004000}, 
[129] = {szName = " hoa vò ®Çy trêi m¶nh vôn (6/9) /9)", tbProp = {4, 662, 1, 1, 0, 0}, nRate = 0.004000}, 
[130] = {szName = " hoa vò ®Çy trêi m¶nh vôn (7/9) /9)", tbProp = {4, 663, 1, 1, 0, 0}, nRate = 0.004000}, 
[131] = {szName = " hoa vò ®Çy trêi m¶nh vôn (8/9) /9)", tbProp = {4, 664, 1, 1, 0, 0}, nRate = 0.004000}, 
[132] = {szName = " hoa vò ®Çy trêi m¶nh vôn (9/9) /9)", tbProp = {4, 665, 1, 1, 0, 0}, nRate = 0.004000}, 
[133] = {szName = " b¨ng hµn chi ®¹n chØ phi ®ao m¶nh vôn (1/9)", tbProp = {4, 980, 1, 1, 0, 0}, nRate = 0.030000}, 
[134] = {szName = " b¨ng hµn chi ®¹n chØ phi ®ao m¶nh vôn (2/9)", tbProp = {4, 981, 1, 1, 0, 0}, nRate = 0.030000}, 
[135] = {szName = " b¨ng hµn chi ®¹n chØ phi ®ao m¶nh vôn (3/9)", tbProp = {4, 982, 1, 1, 0, 0}, nRate = 0.030000}, 
[136] = {szName = " b¨ng hµn chi ®¹n chØ phi ®ao m¶nh vôn (4/9)", tbProp = {4, 983, 1, 1, 0, 0}, nRate = 0.030000}, 
[137] = {szName = " b¨ng hµn chi ®¹n chØ phi ®ao m¶nh vôn (5/9)", tbProp = {4, 984, 1, 1, 0, 0}, nRate = 0.030000}, 
[138] = {szName = " b¨ng hµn chi ®¹n chØ phi ®ao m¶nh vôn (6/9)", tbProp = {4, 985, 1, 1, 0, 0}, nRate = 0.030000}, 
[139] = {szName = " b¨ng hµn chi ®¹n chØ phi ®ao m¶nh vôn (7/9)", tbProp = {4, 986, 1, 1, 0, 0}, nRate = 0.030000}, 
[140] = {szName = " b¨ng hµn chi ®¹n chØ phi ®ao m¶nh vôn (8/9)", tbProp = {4, 987, 1, 1, 0, 0}, nRate = 0.030000}, 
[141] = {szName = " b¨ng hµn chi ®¹n chØ phi ®ao m¶nh vôn (9/9)", tbProp = {4, 988, 1, 1, 0, 0}, nRate = 0.030000}, 
[142] = {szName = " bay tinh ®o¹t hån m¶nh vôn (1/9) /9)", tbProp = {4, 666, 1, 1, 0, 0}, nRate = 0.020000}, 
[143] = {szName = " bay tinh ®o¹t hån m¶nh vôn (2/9) /9)", tbProp = {4, 667, 1, 1, 0, 0}, nRate = 0.020000}, 
[144] = {szName = " bay tinh ®o¹t hån m¶nh vôn (3/9) /9)", tbProp = {4, 668, 1, 1, 0, 0}, nRate = 0.020000}, 
[145] = {szName = " bay tinh ®o¹t hån m¶nh vôn (4/9) /9)", tbProp = {4, 669, 1, 1, 0, 0}, nRate = 0.020000}, 
[146] = {szName = " bay tinh ®o¹t hån m¶nh vôn (5/9) /9)", tbProp = {4, 670, 1, 1, 0, 0}, nRate = 0.020000}, 
[147] = {szName = " bay tinh ®o¹t hån m¶nh vôn (6/9) /9)", tbProp = {4, 671, 1, 1, 0, 0}, nRate = 0.020000}, 
[148] = {szName = " bay tinh ®o¹t hån m¶nh vôn (7/9) /9)", tbProp = {4, 672, 1, 1, 0, 0}, nRate = 0.020000}, 
[149] = {szName = " bay tinh ®o¹t hån m¶nh vôn (8/9) /9)", tbProp = {4, 673, 1, 1, 0, 0}, nRate = 0.020000}, 
[150] = {szName = " bay tinh ®o¹t hån m¶nh vôn (9/9) /9)", tbProp = {4, 674, 1, 1, 0, 0}, nRate = 0.020000}, 
[151] = {szName = " t¾m gièng ngäc trõ m¶nh vôn (1/6) /6)", tbProp = {4, 801, 1, 1, 0, 0}, nRate = 0.020000}, 
[152] = {szName = " t¾m gièng ngäc trõ m¶nh vôn (2/6) /6)", tbProp = {4, 802, 1, 1, 0, 0}, nRate = 0.020000}, 
[153] = {szName = " t¾m gièng ngäc trõ m¶nh vôn (3/6) /6)", tbProp = {4, 803, 1, 1, 0, 0}, nRate = 0.020000}, 
[154] = {szName = " t¾m gièng ngäc trõ m¶nh vôn (4/6) /6)", tbProp = {4, 804, 1, 1, 0, 0}, nRate = 0.020000}, 
[155] = {szName = " t¾m gièng ngäc trõ m¶nh vôn (5/6) /6)", tbProp = {4, 805, 1, 1, 0, 0}, nRate = 0.020000}, 
[156] = {szName = " t¾m gièng ngäc trõ m¶nh vôn (6/6) /6)", tbProp = {4, 806, 1, 1, 0, 0}, nRate = 0.020000}, 
[157] = {szName = " hång truy mÒm # giµy m¶nh vôn (1/6) /6)", tbProp = {4, 807, 1, 1, 0, 0}, nRate = 0.030000}, 
[158] = {szName = " hång truy mÒm # giµy m¶nh vôn (2/6) /6)", tbProp = {4, 808, 1, 1, 0, 0}, nRate = 0.030000}, 
[159] = {szName = " hång truy mÒm # giµy m¶nh vôn (3/6) /6)", tbProp = {4, 809, 1, 1, 0, 0}, nRate = 0.030000}, 
[160] = {szName = " hång truy mÒm # giµy m¶nh vôn (4/6) /6)", tbProp = {4, 810, 1, 1, 0, 0}, nRate = 0.030000}, 
[161] = {szName = " hång truy mÒm # giµy m¶nh vôn (5/6) /6)", tbProp = {4, 811, 1, 1, 0, 0}, nRate = 0.030000}, 
[162] = {szName = " hång truy mÒm # giµy m¶nh vôn (6/6) /6)", tbProp = {4, 812, 1, 1, 0, 0}, nRate = 0.030000}, 
[163] = {szName = " v« gian chi û thiªn kiÕm m¶nh vôn (1/9) /9)", tbProp = {4, 621, 1, 1, 0, 0}, nRate = 0.020000}, 
[164] = {szName = " v« gian chi û thiªn kiÕm m¶nh vôn (2/9) /9)", tbProp = {4, 622, 1, 1, 0, 0}, nRate = 0.020000}, 
[165] = {szName = " v« gian chi û thiªn kiÕm m¶nh vôn (3/9) /9)", tbProp = {4, 623, 1, 1, 0, 0}, nRate = 0.020000}, 
[166] = {szName = " v« gian chi û thiªn kiÕm m¶nh vôn (4/9) /9)", tbProp = {4, 624, 1, 1, 0, 0}, nRate = 0.020000}, 
[167] = {szName = " v« gian chi û thiªn kiÕm m¶nh vôn (5/9) /9)", tbProp = {4, 625, 1, 1, 0, 0}, nRate = 0.020000}, 
[168] = {szName = " v« gian chi û thiªn kiÕm m¶nh vôn (6/9) /9)", tbProp = {4, 626, 1, 1, 0, 0}, nRate = 0.020000}, 
[169] = {szName = " v« gian chi û thiªn kiÕm m¶nh vôn (7/9) /9)", tbProp = {4, 627, 1, 1, 0, 0}, nRate = 0.020000}, 
[170] = {szName = " v« gian chi û thiªn kiÕm m¶nh vôn (8/9) /9)", tbProp = {4, 628, 1, 1, 0, 0}, nRate = 0.020000}, 
[171] = {szName = " v« gian chi û thiªn kiÕm m¶nh vôn (9/9) /9)", tbProp = {4, 629, 1, 1, 0, 0}, nRate = 0.020000}, 
[172] = {szName = " tª hoµng chi ph­îng nghi ®ao m¶nh vôn (1/9) /9)", tbProp = {4, 630, 1, 1, 0, 0}, nRate = 0.020000}, 
[173] = {szName = " tª hoµng chi ph­îng nghi ®ao m¶nh vôn (2/9) /9)", tbProp = {4, 631, 1, 1, 0, 0}, nRate = 0.020000}, 
[174] = {szName = " tª hoµng chi ph­îng nghi ®ao m¶nh vôn (3/9) /9)", tbProp = {4, 632, 1, 1, 0, 0}, nRate = 0.020000}, 
[175] = {szName = " tª hoµng chi ph­îng nghi ®ao m¶nh vôn (4/9) /9)", tbProp = {4, 633, 1, 1, 0, 0}, nRate = 0.020000}, 
[176] = {szName = " tª hoµng chi ph­îng nghi ®ao m¶nh vôn (5/9) /9)", tbProp = {4, 634, 1, 1, 0, 0}, nRate = 0.020000}, 
[177] = {szName = " tª hoµng chi ph­îng nghi ®ao m¶nh vôn (6/9) /9)", tbProp = {4, 635, 1, 1, 0, 0}, nRate = 0.020000}, 
[178] = {szName = " tª hoµng chi ph­îng nghi ®ao m¶nh vôn (7/9) /9)", tbProp = {4, 636, 1, 1, 0, 0}, nRate = 0.020000}, 
[179] = {szName = " tª hoµng chi ph­îng nghi ®ao m¶nh vôn (8/9) /9)", tbProp = {4, 637, 1, 1, 0, 0}, nRate = 0.020000}, 
[180] = {szName = " tª hoµng chi ph­îng nghi ®ao m¶nh vôn (9/9) /9)", tbProp = {4, 638, 1, 1, 0, 0}, nRate = 0.020000}, 
[181] = {szName = " tª hoµng chi b¨ng tung cÈm cæ tay m¶nh vôn (1/6)", tbProp = {4, 1055, 1, 1, 0, 0}, nRate = 0.030000}, 
[182] = {szName = " tª hoµng chi b¨ng tung cÈm cæ tay m¶nh vôn (2/6)", tbProp = {4, 1056, 1, 1, 0, 0}, nRate = 0.030000}, 
[183] = {szName = " tª hoµng chi b¨ng tung cÈm cæ tay m¶nh vôn (3/6)", tbProp = {4, 1057, 1, 1, 0, 0}, nRate = 0.030000}, 
[184] = {szName = " tª hoµng chi b¨ng tung cÈm cæ tay m¶nh vôn (4/6)", tbProp = {4, 1058, 1, 1, 0, 0}, nRate = 0.030000}, 
[185] = {szName = " tª hoµng chi b¨ng tung cÈm cæ tay m¶nh vôn (5/6)", tbProp = {4, 1059, 1, 1, 0, 0}, nRate = 0.030000}, 
[186] = {szName = " tª hoµng chi b¨ng tung cÈm cæ tay m¶nh vôn (6/6)", tbProp = {4, 1060, 1, 1, 0, 0}, nRate = 0.030000}, 
[187] = {szName = " u minh sóng m¶nh vôn (1/9) /9)", tbProp = {4, 684, 1, 1, 0, 0}, nRate = 0.020000}, 
[188] = {szName = " u minh sóng m¶nh vôn (2/9) /9)", tbProp = {4, 685, 1, 1, 0, 0}, nRate = 0.020000}, 
[189] = {szName = " u minh sóng m¶nh vôn (3/9) /9)", tbProp = {4, 686, 1, 1, 0, 0}, nRate = 0.020000}, 
[190] = {szName = " u minh sóng m¶nh vôn (4/9) /9)", tbProp = {4, 687, 1, 1, 0, 0}, nRate = 0.020000}, 
[191] = {szName = " u minh sóng m¶nh vôn (5/9) /9)", tbProp = {4, 688, 1, 1, 0, 0}, nRate = 0.020000}, 
[192] = {szName = " u minh sóng m¶nh vôn (6/9) /9)", tbProp = {4, 689, 1, 1, 0, 0}, nRate = 0.020000}, 
[193] = {szName = " u minh sóng m¶nh vôn (7/9) /9)", tbProp = {4, 690, 1, 1, 0, 0}, nRate = 0.020000}, 
[194] = {szName = " u minh sóng m¶nh vôn (8/9) /9)", tbProp = {4, 691, 1, 1, 0, 0}, nRate = 0.020000}, 
[195] = {szName = " u minh sóng m¶nh vôn (9/9) /9)", tbProp = {4, 692, 1, 1, 0, 0}, nRate = 0.020000}, 
[196] = {szName = " ma lµ chi s¬n h¶i bay hång lı m¶nh vôn (1/6) /6)", tbProp = {4, 873, 1, 1, 0, 0}, nRate = 0.040000}, 
[197] = {szName = " ma lµ chi s¬n h¶i bay hång lı m¶nh vôn (1/6) /6)", tbProp = {4, 874, 1, 1, 0, 0}, nRate = 0.040000}, 
[198] = {szName = " ma lµ chi s¬n h¶i bay hång lı m¶nh vôn (1/6) /6)", tbProp = {4, 875, 1, 1, 0, 0}, nRate = 0.040000}, 
[199] = {szName = " ma lµ chi s¬n h¶i bay hång lı m¶nh vôn (1/6) /6)", tbProp = {4, 876, 1, 1, 0, 0}, nRate = 0.040000}, 
[200] = {szName = " ma lµ chi s¬n h¶i bay hång lı m¶nh vôn (1/6) /6)", tbProp = {4, 877, 1, 1, 0, 0}, nRate = 0.040000}, 
[201] = {szName = " ma lµ chi s¬n h¶i bay hång lı m¶nh vôn (1/6) /6)", tbProp = {4, 878, 1, 1, 0, 0}, nRate = 0.040000}, 
[202] = {szName = " cïng thï chi hµng long c¸i y m¶nh vôn (1/6) /6)", tbProp = {4, 849, 1, 1, 0, 0}, nRate = 0.080000}, 
[203] = {szName = " cïng thï chi hµng long c¸i y m¶nh vôn (2/6) /6)", tbProp = {4, 850, 1, 1, 0, 0}, nRate = 0.080000}, 
[204] = {szName = " cïng thï chi hµng long c¸i y m¶nh vôn (3/6) /6)", tbProp = {4, 851, 1, 1, 0, 0}, nRate = 0.080000}, 
[205] = {szName = " cïng thï chi hµng long c¸i y m¶nh vôn (4/6) /6)", tbProp = {4, 852, 1, 1, 0, 0}, nRate = 0.080000}, 
[206] = {szName = " cïng thï chi hµng long c¸i y m¶nh vôn (5/6) /6)", tbProp = {4, 853, 1, 1, 0, 0}, nRate = 0.080000}, 
[207] = {szName = " cïng thï chi hµng long c¸i y m¶nh vôn (6/6) /6)", tbProp = {4, 854, 1, 1, 0, 0}, nRate = 0.080000}, 
[208] = {szName = " cïng thï chi kh¸ng long hé thñ m¶nh vôn (1/6) /6)", tbProp = {4, 855, 1, 1, 0, 0}, nRate = 0.020000}, 
[209] = {szName = " cïng thï chi kh¸ng long hé thñ m¶nh vôn (2/6) /6)", tbProp = {4, 856, 1, 1, 0, 0}, nRate = 0.020000}, 
[210] = {szName = " cïng thï chi kh¸ng long hé thñ m¶nh vôn (3/6) /6)", tbProp = {4, 857, 1, 1, 0, 0}, nRate = 0.020000}, 
[211] = {szName = " cïng thï chi kh¸ng long hé thñ m¶nh vôn (4/6) /6)", tbProp = {4, 858, 1, 1, 0, 0}, nRate = 0.020000}, 
[212] = {szName = " cïng thï chi kh¸ng long hé thñ m¶nh vôn (5/6) /6)", tbProp = {4, 859, 1, 1, 0, 0}, nRate = 0.020000}, 
[213] = {szName = " cïng thï chi kh¸ng long hé thñ m¶nh vôn (6/6) /6)", tbProp = {4, 860, 1, 1, 0, 0}, nRate = 0.020000}, 
[214] = {szName = " xanh biÕc ngäc tr­îng m¶nh vôn (1/9) /9)", tbProp = {4, 675, 1, 1, 0, 0}, nRate = 0.020000}, 
[215] = {szName = " xanh biÕc ngäc tr­îng m¶nh vôn (2/9) /9)", tbProp = {4, 676, 1, 1, 0, 0}, nRate = 0.020000}, 
[216] = {szName = " xanh biÕc ngäc tr­îng m¶nh vôn (3/9) /9)", tbProp = {4, 677, 1, 1, 0, 0}, nRate = 0.020000}, 
[217] = {szName = " xanh biÕc ngäc tr­îng m¶nh vôn (4/9) /9)", tbProp = {4, 678, 1, 1, 0, 0}, nRate = 0.020000}, 
[218] = {szName = " xanh biÕc ngäc tr­îng m¶nh vôn (5/9) /9)", tbProp = {4, 679, 1, 1, 0, 0}, nRate = 0.020000}, 
[219] = {szName = " xanh biÕc ngäc tr­îng m¶nh vôn (6/9) /9)", tbProp = {4, 680, 1, 1, 0, 0}, nRate = 0.020000}, 
[220] = {szName = " xanh biÕc ngäc tr­îng m¶nh vôn (7/9) /9)", tbProp = {4, 681, 1, 1, 0, 0}, nRate = 0.020000}, 
[221] = {szName = " xanh biÕc ngäc tr­îng m¶nh vôn (8/9) /9)", tbProp = {4, 682, 1, 1, 0, 0}, nRate = 0.020000}, 
[222] = {szName = " xanh biÕc ngäc tr­îng m¶nh vôn (9/9) /9)", tbProp = {4, 683, 1, 1, 0, 0}, nRate = 0.020000}, 
[223] = {szName = " hoµng kim - l«i khung chi hµn tïng b¨ng b¸ch quan m¶nh vôn (1/6)", tbProp = {4, 1004, 1, 1, 0, 0}, nRate = 0.005000}, 
[224] = {szName = " hoµng kim - l«i khung chi hµn tïng b¨ng b¸ch quan m¶nh vôn (2/6)", tbProp = {4, 1005, 1, 1, 0, 0}, nRate = 0.005000}, 
[225] = {szName = " hoµng kim - l«i khung chi hµn tïng b¨ng b¸ch quan m¶nh vôn (3/6)", tbProp = {4, 1006, 1, 1, 0, 0}, nRate = 0.005000}, 
[226] = {szName = " hoµng kim - l«i khung chi hµn tïng b¨ng b¸ch quan m¶nh vôn (4/6)", tbProp = {4, 1007, 1, 1, 0, 0}, nRate = 0.005000}, 
[227] = {szName = " hoµng kim - l«i khung chi hµn tïng b¨ng b¸ch quan m¶nh vôn (5/6)", tbProp = {4, 1008, 1, 1, 0, 0}, nRate = 0.005000}, 
[228] = {szName = " hoµng kim - l«i khung chi hµn tïng b¨ng b¸ch quan m¶nh vôn (6/6)", tbProp = {4, 1009, 1, 1, 0, 0}, nRate = 0.005000}, 
[229] = {szName = " ngµn n¨m hµn thiÕt m¶nh vôn (1/9) /9)", tbProp = {4, 702, 1, 1, 0, 0}, nRate = 0.020000}, 
[230] = {szName = " ngµn n¨m hµn thiÕt m¶nh vôn (2/9) /9)", tbProp = {4, 703, 1, 1, 0, 0}, nRate = 0.020000}, 
[231] = {szName = " ngµn n¨m hµn thiÕt m¶nh vôn (3/9) /9)", tbProp = {4, 704, 1, 1, 0, 0}, nRate = 0.020000}, 
[232] = {szName = " ngµn n¨m hµn thiÕt m¶nh vôn (4/9) /9)", tbProp = {4, 705, 1, 1, 0, 0}, nRate = 0.020000}, 
[233] = {szName = " ngµn n¨m hµn thiÕt m¶nh vôn (5/9) /9)", tbProp = {4, 706, 1, 1, 0, 0}, nRate = 0.020000}, 
[234] = {szName = " ngµn n¨m hµn thiÕt m¶nh vôn (6/9) /9)", tbProp = {4, 707, 1, 1, 0, 0}, nRate = 0.020000}, 
[235] = {szName = " ngµn n¨m hµn thiÕt m¶nh vôn (7/9) /9)", tbProp = {4, 708, 1, 1, 0, 0}, nRate = 0.020000}, 
[236] = {szName = " ngµn n¨m hµn thiÕt m¶nh vôn (8/9) /9)", tbProp = {4, 709, 1, 1, 0, 0}, nRate = 0.020000}, 
[237] = {szName = " ngµn n¨m hµn thiÕt m¶nh vôn (9/9) /9)", tbProp = {4, 710, 1, 1, 0, 0}, nRate = 0.020000}, 
[238] = {szName = " thËt vò kiÕm m¶nh vôn (1/9) /9)", tbProp = {4, 693, 1, 1, 0, 0}, nRate = 0.008000}, 
[239] = {szName = " thËt vò kiÕm m¶nh vôn (2/9) /9)", tbProp = {4, 694, 1, 1, 0, 0}, nRate = 0.008000}, 
[240] = {szName = " thËt vò kiÕm m¶nh vôn (3/9) /9)", tbProp = {4, 695, 1, 1, 0, 0}, nRate = 0.008000}, 
[241] = {szName = " thËt vò kiÕm m¶nh vôn (4/9) /9)", tbProp = {4, 696, 1, 1, 0, 0}, nRate = 0.008000}, 
[242] = {szName = " thËt vò kiÕm m¶nh vôn (5/9) /9)", tbProp = {4, 697, 1, 1, 0, 0}, nRate = 0.008000}, 
[243] = {szName = " thËt vò kiÕm m¶nh vôn (6/9) /9)", tbProp = {4, 698, 1, 1, 0, 0}, nRate = 0.008000}, 
[244] = {szName = " thËt vò kiÕm m¶nh vôn (7/9) /9)", tbProp = {4, 699, 1, 1, 0, 0}, nRate = 0.008000}, 
[245] = {szName = " thËt vò kiÕm m¶nh vôn (8/9) /9)", tbProp = {4, 700, 1, 1, 0, 0}, nRate = 0.008000}, 
[246] = {szName = " thËt vò kiÕm m¶nh vôn (9/9) /9)", tbProp = {4, 701, 1, 1, 0, 0}, nRate = 0.008000}, 
[247] = {szName = " l¨ng nh¹c chi v« cùc huyÒn ngäc béi m¶nh vôn (1/6) /6)", tbProp = {4, 879, 1, 1, 0, 0}, nRate = 0.020000}, 
[248] = {szName = " l¨ng nh¹c chi v« cùc huyÒn ngäc béi m¶nh vôn (2/6) /6)", tbProp = {4, 880, 1, 1, 0, 0}, nRate = 0.020000}, 
[249] = {szName = " l¨ng nh¹c chi v« cùc huyÒn ngäc béi m¶nh vôn (3/6) /6)", tbProp = {4, 881, 1, 1, 0, 0}, nRate = 0.020000}, 
[250] = {szName = " l¨ng nh¹c chi v« cùc huyÒn ngäc béi m¶nh vôn (4/6) /6)", tbProp = {4, 882, 1, 1, 0, 0}, nRate = 0.020000}, 
[251] = {szName = " l¨ng nh¹c chi v« cùc huyÒn ngäc béi m¶nh vôn (5/6) /6)", tbProp = {4, 883, 1, 1, 0, 0}, nRate = 0.020000}, 
[252] = {szName = " l¨ng nh¹c chi v« cùc huyÒn ngäc béi m¶nh vôn (6/6) /6)", tbProp = {4, 884, 1, 1, 0, 0}, nRate = 0.020000}, 

}; 

function main(nItemIdx) 
local n_item_date = tonumber(FormatTime2String("%Y%m%d%H%M",ITEM_GetExpiredTime(nItemIdx))); 
local n_cur_date = tonumber(GetLocalDate("%Y%m%d%H%M")); 
if n_cur_date > n_item_date then 
Msg2Player("VËt phÈm qu¸ sö dông kú , tù ®éng biÕn mÊt .") 
return 0; 
end 

local bRet, szFailMsg = tbBirthday0905:IsPlayerEligible(); 

if bRet ~= 1 then 
Talk(2, "", szFailMsg,"Ngµi kh«ng ®ñ ®iÒu kiÖn nhËn lÊy vËt nµy phÈm "); 
return 1; 
end 

if CalcFreeItemCellCount() < 10 then 
Talk(1,"", format("Trang bŞ chç trèng ch­a ®ñ %d chç trèng , xin/mêi söa sang mét chót .", 10)); 
return 1 
end 

if tbBirthday0905.tbTask:get_task(tbBirthday0905.tbTask.tsk_zhuhe_maxexp) == 0 or tbBirthday0905.tbTask:get_task(tbBirthday0905.tbTask.tsk_zhuhe_maxexp) == nil then 
tbBirthday0905.tbTask:add_zhuhe_maxexp(); 
end 

if (tbBirthday0905.tbTask:get_task(tbBirthday0905.tbTask.tsk_zhuhe_curexp) >= tbBirthday0905.tbTask:get_task(tbBirthday0905.tbTask.tsk_zhuhe_maxexp)) then 
Msg2Player("§· ®¹t ®­îc cao nhÊt kinh nghiÖm th­îng h¹n ."); 
return 1; 
end 

local n_rand = random(1, 100); 
local n_sum = 0; 
local n_exp = 0; 
for i = 1, getn(tbBirthday0905.tbxinbanqi_addexp) do 
		n_sum = n_sum + tbBirthday0905.tbxinbanqi_addexp[i][2];
if (n_sum >= n_rand) then 
n_exp = tbBirthday0905.tbxinbanqi_addexp[i][1]; 
break 
end 
end 

AddOwnExp(n_exp); 
tbBirthday0905.tbTask:add_task(tbBirthday0905.tbTask.tsk_zhuhe_curexp, floor(n_exp / tbBirthday0905.expbase)); 
Msg2Player(format("§¹t ®­îc kh«ng ®iÖp gia kinh nghiÖm %d.", n_exp )); 

tbAwardTemplet:GiveAwardByList(%tbAward, "birthday_jieri zhuhe"); 
end 
