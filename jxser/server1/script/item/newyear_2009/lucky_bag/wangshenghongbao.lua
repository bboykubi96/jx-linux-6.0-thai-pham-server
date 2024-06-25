Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\item\\newyear_2009\\head.lua");

tb_wangshenghongbao_award = 
{ 
{szName="1 danh väng ", nRepute = 1, nRate = 25}, 
{szName="2 danh väng ", nRepute = 2, nRate = 20}, 
{szName="3 danh väng ", nRepute = 3, nRate = 15}, 
{szName="10 danh väng ", nRepute = 10, nRate = 3}, 
{szName="50 danh väng ", nRepute = 50, nRate = 0.1}, 
{szName="3 cÊp huyÒn tinh qu¸ng th¹ch ", tbProp={6, 1, 147, 3, 0, 0}, nRate = 5}, 
{szName="4 cÊp huyÒn tinh qu¸ng th¹ch ", tbProp={6, 1, 147, 4, 0, 0}, nRate = 3}, 
{szName="5 cÊp huyÒn tinh qu¸ng th¹ch ", tbProp={6, 1, 147, 5, 0, 0}, nRate = 2}, 
{szName=" t©m t©m t­¬ng Ên phï ", tbProp={6, 1, 18, 1, 0, 0}, nRate = 3}, 
{szName=" nhanh chãng hoµn ", tbProp={6, 0, 6, 1, 0, 0}, nRate = 5}, 
{szName=" ®¹i lùc hoµn ", tbProp={6, 0, 3, 1, 0, 0}, nRate = 5}, 
{szName=" vâ l©m bİ tŞch ", tbProp={6, 1, 26, 1, 0, 0}, nRate = 0.1}, 
{szName=" TÈy Tñy Kinh ", tbProp={6, 1, 22, 1, 0, 0}, nRate = 0.1}, 
{szName=" m©m nÕu t©m tr¶i qua ", tbProp={6, 1, 12, 1, 0, 0}, nRate = 1}, 
{szName=" thiÕt La H¸n ", tbProp={6, 1, 23, 1, 0, 0}, nRate = 3}, 
{szName=" thÇn bİ ®¹i bao tiÒn l× x× ", tbProp={6, 1, 402,1, 0, 0}, nRate = 7.779}, 
{szName=" ®Şnh n­íc « sa ph¸t quan ", tbProp={0, 160}, nQuality = 1, nRate = 0.008}, 
{szName=" ®Şnh n­íc lôa máng xanh tr­êng sam ", tbProp={0, 159}, nQuality = 1, nRate = 0.01}, 
{szName=" ®Şnh n­íc ng©n tµm ®ai l­ng ", tbProp={0, 163}, nQuality = 1, nRate = 0.1}, 
{szName=" ®Şnh n­íc xİch quyªn mÒm ngoa ", tbProp={0, 161}, nQuality = 1, nRate = 0.015}, 
{szName=" ®Şnh n­íc tö ®»ng hé cæ tay ", tbProp={0, 162}, nQuality = 1, nRate = 0.2}, 
{szName=" nhu t×nh c©n qu¾c nghª th­êng ", tbProp={0, 190}, nQuality = 1, nRate = 0.008}, 
{szName=" nhu t×nh tuÖ t©m ngäc béi ", tbProp={0, 193}, nQuality = 1, nRate = 0.07}, 
{szName=" nhu t×nh ph­îng nghi chiÕc nhÉn ", tbProp={0, 192}, nQuality = 1, nRate = 0.3}, 
{szName=" nhu t×nh thôc n÷ gi©y chuyÒn ", tbProp={0, 191}, nQuality = 1, nRate = 0.4}, 
{szName=" hiÖp cèt t×nh nghÜa kÕt ", tbProp={0, 189}, nQuality = 1, nRate = 0.01}, 
{szName=" hiÖp cèt thiÕt huyÕt sam ", tbProp={0, 186}, nQuality = 1, nRate = 0.1}, 
{szName=" hiÖp cèt ®an t©m giíi ", tbProp={0, 188}, nQuality = 1, nRate = 0.3}, 
{szName=" hiÖp cèt ®a t×nh hoµn ", tbProp={0, 187}, nQuality = 1, nRate = 0.4}, 
}; 

tb_tree_itemid = 
{ 
[1] = 1917, 
[2] = 1918, 
}; 

tb_openhongbao_mapid = 
{ 
[11] = 1, 
[1] = 1, 
[37] = 1, 
[176] = 1, 
[162] = 1, 
[78] = 1, 
[80] = 1, 
[174] = 1, 
[121] = 1, 
[153] = 1, 
[101] = 1, 
[99] = 1, 
[100] = 1, 
[20] = 1, 
[53] = 1, 
[54] = 1, 
[175] = 1, 
[55] = 1, 
}; 

function main() 
newyear0901_resettask(); 

local ndate = tonumber(GetLocalDate("%Y%m%d")); 
if (ndate >= newyear0901_lazhu_expiredtime) then 
Msg2Player("Nªn vËt phÈm ®· qua kú ."); 
return 0; 
end 

if (GetLevel() < 50 or GetExtPoint(0) < 1) then 
Say("§¹i hiÖp nh­ cò ch­a ®ñ 50 cÊp hoÆc lµ nh­ cò kh«ng sung trŞ gi¸ , cho nªn kh«ng thÓ sö dông h­ng v­îng bao tiÒn l× x× .", 0); 
return 1; 
end 

local subworld, x, y = GetWorldPos(); 
if (tb_openhongbao_mapid[subworld] == nil) then 
Say("H­ng v­îng bao tiÒn l× x× chØ ë thµnh phè cïng th«n trÊn sö dông .", 0); 
return 1; 
end 

if (CalcFreeItemCellCount() < 20) then 
Say("§¹i hiÖp ®İch trang bŞ ®· ®Çy !", 0); 
return 1; 
end 

	if (100 + GetTask(newyear0901_TSK_GetExp_Hongbao) <= GetTask(newyear0901_TSK_GetExpUpLimit))	then
		SetTask(newyear0901_TSK_GetExp_Hongbao, 100 + GetTask(newyear0901_TSK_GetExp_Hongbao));
AddOwnExp(1000000); 

subworld = SubWorldID2Idx(subworld); 
local n_tree_idx = random(1, 2); 
local n_itemid = tb_tree_itemid[n_tree_idx]; 
local nItemIdx = DropItem(subworld, x * 32, y * 32, -1, 6, 1, n_itemid, 1, 0, 0, 0); 

tbAwardTemplet:GiveAwardByList(tb_wangshenghongbao_award,"H­ng v­îng bao tiÒn l× x× "); 
else 
Say("§¹i hiÖp ®· ®¹t kinh nghiÖm cao nhÊt th­îng h¹n , cho nªn kh«ng thÓ sö dông n÷a h­ng v­îng hång bao .", 0); 
return 1; 
end 
end