Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\item\\shengdan_jieri\\200811\\head.lua");

tb_chocolate_award = 
{ 
{szName="1 danh väng ", nRepute = 1, nRate = 9.8545}, 
{szName="2 danh väng ", nRepute = 2, nRate = 23}, 
{szName="3 danh väng ", nRepute = 3, nRate = 25}, 
{szName="10 danh väng ", nRepute = 10, nRate = 8}, 
{szName="50 danh väng ", nRepute = 50, nRate = 1}, 
{szName=" ®Þnh n­íc « sa ph¸t quan ", tbProp={0, 160}, nQuality = 1, nRate = 0.006}, 
{szName=" ®Þnh n­íc lôa máng xanh tr­êng sam ", tbProp={0, 159}, nQuality = 1, nRate = 0.02}, 
{szName=" ®Þnh n­íc ng©n tµm ®ai l­ng ", tbProp={0, 163}, nQuality = 1, nRate = 0.1}, 
{szName=" ®Þnh n­íc xÝch quyªn mÒm ngoa ", tbProp={0, 161}, nQuality = 1, nRate = 0.04}, 
{szName=" ®Þnh n­íc tö ®»ng hé cæ tay ", tbProp={0, 162}, nQuality = 1, nRate = 0.1}, 
{szName=" an bang b¨ng tinh th¹ch gi©y chuyÒn ", tbProp={0, 164}, nQuality = 1, nRate = 0.005}, 
{szName=" an bang m¸u gµ th¹ch chiÕc nhÉn ", tbProp={0, 167}, nQuality = 1, nRate = 0.015}, 
{szName=" an bang hoa cóc th¹ch chiÕc nhÉn ", tbProp={0, 165}, nQuality = 1, nRate = 0.015}, 
{szName=" an bang ®iÒn hoµng th¹ch ngäc béi ", tbProp={0, 166}, nQuality = 1, nRate = 0.02}, 
{szName=" ®éng s¸t phØ thóy ngäc h¹ng vßng ", tbProp={0, 146}, nQuality = 1, nRate = 0.007}, 
{szName=" ®éng s¸t b¹ch kim tó ph­îng giíi ", tbProp={0, 145}, nQuality = 1, nRate = 0.007}, 
{szName=" ®éng s¸t b¹ch kim ®iªu long giíi ", tbProp={0, 143}, nQuality = 1, nRate = 0.007}, 
{szName=" ®éng s¸t b¹ch ngäc cµn kh«n béi ", tbProp={0, 144}, nQuality = 1, nRate = 0.007}, 
{szName="6 liÒn huyÒn tinh qu¸ng th¹ch ", tbProp={6, 1, 147, 6, 0, 0}, nRate = 1}, 
{szName="7 liÒn huyÒn tinh qu¸ng th¹ch ", tbProp={6, 1, 147, 7, 0, 0}, nRate = 0.2}, 
{szName="8 liÒn huyÒn tinh qu¸ng th¹ch ", tbProp={6, 1, 147, 8, 0, 0}, nRate = 0.05}, 
{szName=" tiÓu b¨ng tinh ", tbProp={6, 1, 1850, 1, 0, 0}, nRate = 0.07, nExpiredTime = 20090111}, 
{szName=" thÇn bÝ qu¸ng th¹ch ", tbProp={6, 1, 398, 1, 0, 0}, nRate = 0.002}, 
{szName=" mµu tr¾ng c©y nÕn ", tbProp={6, 1, 1851, 1, 0, 0}, nRate = 6, nExpiredTime = 20090111}, 
{szName=" mµu xanh l¸ c©y c©y nÕn ", tbProp={6, 1, 1852, 1, 0, 0}, nRate = 3, nExpiredTime = 20090111}, 
{szName=" m¾t to thÇn chïy m¶nh vôn (1/9) /9)", tbProp={4, 594, 1, 1, 0, 0}, nRate = 0.0015}, 
{szName=" m¾t to thÇn chïy m¶nh vôn (3/9) /9)", tbProp={4, 596, 1, 1, 0, 0}, nRate = 0.0015}, 
{szName=" m¾t to thÇn chïy m¶nh vôn (5/9) /9)", tbProp={4, 598, 1, 1, 0, 0}, nRate = 0.0015}, 
{szName=" m¾t to thÇn chïy m¶nh vôn (6/9) /9)", tbProp={4, 599, 1, 1, 0, 0}, nRate = 0.0015}, 
{szName=" m¾t to thÇn chïy m¶nh vôn (8/9) /9)", tbProp={4, 601, 1, 1, 0, 0}, nRate = 0.0015}, 
{szName=" b¨ng hµn ®¹n chØ phi ®ao m¶nh vôn (2/9)", tbProp={4, 981, 1, 1, 0, 0}, nRate = 0.005}, 
{szName=" b¨ng hµn ®¹n chØ phi ®ao m¶nh vôn (3/9)", tbProp={4, 982, 1, 1, 0, 0}, nRate = 0.005}, 
{szName=" b¨ng hµn ®¹n chØ phi ®ao m¶nh vôn (4/9)", tbProp={4, 983, 1, 1, 0, 0}, nRate = 0.005}, 
{szName=" b¨ng hµn ®¹n chØ phi ®ao m¶nh vôn (7/9)", tbProp={4, 986, 1, 1, 0, 0}, nRate = 0.005}, 
{szName=" b¨ng hµn ®¹n chØ phi ®ao m¶nh vôn (9/9)", tbProp={4, 988, 1, 1, 0, 0}, nRate = 0.005}, 
{szName=" bèn kh«ng hµng ma giíi ®ao m¶nh vôn (1/9) /9)", tbProp={4, 585, 1, 1, 0, 0}, nRate = 0.005}, 
{szName=" bèn kh«ng hµng ma giíi ®ao m¶nh vôn (4/9) /9)", tbProp={4, 588, 1, 1, 0, 0}, nRate = 0.005}, 
{szName=" bèn kh«ng hµng ma giíi ®ao m¶nh vôn (6/9) /9)", tbProp={4, 590, 1, 1, 0, 0}, nRate = 0.005}, 
{szName=" bèn kh«ng hµng ma giíi ®ao m¶nh vôn (8/9) /9)", tbProp={4, 592, 1, 1, 0, 0}, nRate = 0.005}, 
{szName=" bèn kh«ng hµng ma giíi ®ao m¶nh vôn (9/9) /9)", tbProp={4, 593, 1, 1, 0, 0}, nRate = 0.005}, 
{szName=" u minh sóng m¶nh vôn (2/9) /9)", tbProp={4, 685, 1, 1, 0, 0}, nRate = 0.008}, 
{szName=" u minh sóng m¶nh vôn (3/9) /9)", tbProp={4, 686, 1, 1, 0, 0}, nRate = 0.008}, 
{szName=" u minh sóng m¶nh vôn (5/9) /9)", tbProp={4, 688, 1, 1, 0, 0}, nRate = 0.008}, 
{szName=" u minh sóng m¶nh vôn (6/9) /9)", tbProp={4, 689, 1, 1, 0, 0}, nRate = 0.008}, 
{szName=" u minh sóng m¶nh vôn (9/9) /9)", tbProp={4, 692, 1, 1, 0, 0}, nRate = 0.008}, 
{szName=" ngµn n¨m hµn thiÕt m¶nh vôn (3/9) /9)", tbProp={4, 704, 1, 1, 0, 0}, nRate = 0.004}, 
{szName=" ngµn n¨m hµn thiÕt m¶nh vôn (4/9) /9)", tbProp={4, 705, 1, 1, 0, 0}, nRate = 0.004}, 
{szName=" ngµn n¨m hµn thiÕt m¶nh vôn (5/9) /9)", tbProp={4, 706, 1, 1, 0, 0}, nRate = 0.004}, 
{szName=" ngµn n¨m hµn thiÕt m¶nh vôn (7/9) /9)", tbProp={4, 708, 1, 1, 0, 0}, nRate = 0.004}, 
{szName=" ngµn n¨m hµn thiÕt m¶nh vôn (9/9) /9)", tbProp={4, 710, 1, 1, 0, 0}, nRate = 0.004}, 
{szName=" t¾m gièng ngäc trõ m¶nh vôn (2/6) /6)", tbProp={4, 802, 1, 1, 0, 0}, nRate = 0.005}, 
{szName=" t¾m gièng ngäc trõ m¶nh vôn (4/6) /6)", tbProp={4, 804, 1, 1, 0, 0}, nRate = 0.005}, 
{szName=" t¾m gièng ngäc trõ m¶nh vôn (5/6) /6)", tbProp={4, 805, 1, 1, 0, 0}, nRate = 0.005}, 
{szName=" t¾m gièng ngäc trõ m¶nh vôn (6/6) /6)", tbProp={4, 806, 1, 1, 0, 0}, nRate = 0.005}, 
{szName=" tª hoµng ph­îng nghi ®ao m¶nh vôn (1/9) /9)", tbProp={4, 630, 1, 1, 0, 0}, nRate = 0.01}, 
{szName=" tª hoµng ph­îng nghi ®ao m¶nh vôn (3/9) /9)", tbProp={4, 632, 1, 1, 0, 0}, nRate = 0.01}, 
{szName=" tª hoµng ph­îng nghi ®ao m¶nh vôn (4/9) /9)", tbProp={4, 633, 1, 1, 0, 0}, nRate = 0.01}, 
{szName=" tª hoµng ph­îng nghi ®ao m¶nh vôn (6/9) /9)", tbProp={4, 635, 1, 1, 0, 0}, nRate = 0.01}, 
{szName=" u l«ng kim xµ d©y cét tãc m¶nh vôn (2/6) /6)", tbProp={4, 826, 1, 1, 0, 0}, nRate = 0.007}, 
{szName=" u l«ng kim xµ d©y cét tãc m¶nh vôn (3/6) /6)", tbProp={4, 827, 1, 1, 0, 0}, nRate = 0.007}, 
{szName=" u l«ng kim xµ d©y cét tãc m¶nh vôn (4/6) /6)", tbProp={4, 828, 1, 1, 0, 0}, nRate = 0.007}, 
{szName=" u l«ng kim xµ d©y cét tãc m¶nh vôn (6/6) /6)", tbProp={4, 830, 1, 1, 0, 0}, nRate = 0.007}, 
{szName=" cïng thï kh¸ng long hé cæ tay m¶nh vôn (1/6) /6)", tbProp={4, 855, 1, 1, 0, 0}, nRate = 0.003}, 
{szName=" cïng thï kh¸ng long hé cæ tay m¶nh vôn (2/6) /6)", tbProp={4, 856, 1, 1, 0, 0}, nRate = 0.003}, 
{szName=" cïng thï kh¸ng long hé cæ tay m¶nh vôn (3/6) /6)", tbProp={4, 857, 1, 1, 0, 0}, nRate = 0.003}, 
{szName=" cïng thï kh¸ng long hé cæ tay m¶nh vôn (5/6) /6)", tbProp={4, 859, 1, 1, 0, 0}, nRate = 0.003}, 
{szName=" ngù long Thiªn m«n thóc yªu hoµn m¶nh vôn (1/6)", tbProp={4, 1152, 1, 1, 0, 0}, nRate = 0.007}, 
{szName=" ngù long Thiªn m«n thóc yªu hoµn m¶nh vôn (3/6)", tbProp={4, 1154, 1, 1, 0, 0}, nRate = 0.007}, 
{szName=" ngù long Thiªn m«n thóc yªu hoµn m¶nh vôn (5/6)", tbProp={4, 1156, 1, 1, 0, 0}, nRate = 0.007}, 
{szName=" ngù long Thiªn m«n thóc yªu hoµn m¶nh vôn (6/6)", tbProp={4, 1157, 1, 1, 0, 0}, nRate = 0.007}, 
{szName=" l¨ng nh¹c v« cùc huyÒn ngäc béi m¶nh vôn (1/6) /6)", tbProp={4, 879, 1, 1, 0, 0}, nRate = 0.003}, 
{szName=" l¨ng nh¹c v« cùc huyÒn ngäc béi m¶nh vôn (2/6) /6)", tbProp={4, 880, 1, 1, 0, 0}, nRate = 0.003}, 
{szName=" l¨ng nh¹c v« cùc huyÒn ngäc béi m¶nh vôn (4/6) /6)", tbProp={4, 882, 1, 1, 0, 0}, nRate = 0.003}, 
{szName=" hµn thiÕt vinh dù lÖnh bµi ", tbProp={6, 1, 1257, 1, 0, 0}, nRate = 10}, 
{szName=" ®ång xanh vinh dù lÖnh bµi ", tbProp={6, 1, 1256, 1, 0, 0}, nRate = 1}, 
{szName=" b¹c tr¾ng vinh dù lÖnh bµi ", tbProp={6, 1, 1255, 1, 0, 0}, nRate = 1}, 
{szName=" hoµng kim vinh dù lÖnh bµi ", tbProp={6, 1, 1254, 1, 0, 0}, nRate = 0.02}, 
{szName=" vâ l©m bÝ tÞch h", tbProp={6, 1, 26, 1, 0, 0}, nRate = 0.1}, 
{szName=" TÈy Tñy Kinh ", tbProp={6, 1, 22, 1, 0, 0}, nRate = 0.1}, 
{szName=" m©m nÕu t©m tr¶i qua ", tbProp={6, 1, 12, 1, 0, 0}, nRate = 2}, 
{szName=" thiÕt La H¸n ", tbProp={6, 1, 23, 1, 0, 0}, nRate = 5}, 
{szName=" thÇn bÝ ®¹i bao tiÒn l× x× ", tbProp={6, 1, 402,1, 0, 0}, nRate = 3}, 

}; 

function main(nItemIndex) 
christmas_resettask(); 
if GetItemParam(nItemIndex, 1) ~= 0 and GetItemParam(nItemIndex, 1) <= tonumber(GetLocalDate("%Y%m%d")) then 
Talk(1,"","Nªn vËt phÈm ®· qua kú ") 
return 0 
end 
if (CalcFreeItemCellCount() < 20) then 
Say("§¹i hiÖp ®Ých trang bÞ ®· ®Çy !", 0); 
return 1; 
end 
	if (100 + GetTask(christmas_getexp_taskid) <= GetTask(christmas_bingjing_taskid))	then
		SetTask(christmas_getexp_taskid, 100 + GetTask(christmas_getexp_taskid));
AddOwnExp(1000000); 
tbAwardTemplet:GiveAwardByList(tb_chocolate_award, "Ho# #ng gi#g sinh 2008_B#h Kem Socola"); 
else 
Say("§¹i hiÖp ®· ®Õn ®¹t cao nhÊt kinh nghiÖm th­îng h¹n , kh«ng thÓ tiÕp tôc sö dông b¸nh cake .", 0); 
return 1; 
end 
end