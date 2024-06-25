Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\item\\shengdan_jieri\\200811\\head.lua");

tb_strawberry_award = 
{ 
{szName="3 cÊp huyÒn tinh qu¸ng th¹ch ", tbProp={6, 1, 147, 3, 0, 0}, nRate = 3}, 
{szName="4 cÊp huyÒn tinh qu¸ng th¹ch ", tbProp={6, 1, 147, 4, 0, 0}, nRate = 2}, 
{szName="5 cÊp huyÒn tinh qu¸ng th¹ch ", tbProp={6, 1, 147, 5, 0, 0}, nRate = 0.8}, 
{szName=" hµn thiÕt vinh dù lÖnh bµi ", tbProp={6, 1, 1257, 1, 0, 0}, nRate = 5}, 
{szName=" ®ång xanh vinh dù lÖnh bµi ", tbProp={6, 1, 1256, 1, 0, 0}, nRate = 2}, 
{szName=" b¹c tr¾ng vinh dù lÖnh bµi ", tbProp={6, 1, 1255, 1, 0, 0}, nRate = 0.8}, 
{szName=" hoµng kim vinh dù lÖnh bµi ", tbProp={6, 1, 1254, 1, 0, 0}, nRate = 0.05}, 
{szName=" vâ l©m bÝ tÞch ", tbProp={6, 1, 26, 1, 0, 0}, nRate = 0.05}, 
{szName=" TÈy Tñy Kinh ", tbProp={6, 1, 22, 1, 0, 0}, nRate = 0.05}, 
{szName=" m©m nÕu t©m tr¶i qua ", tbProp={6, 1, 12, 1, 0, 0}, nRate = 1}, 
{szName=" thiÕt La H¸n ", tbProp={6, 1, 23, 1, 0, 0}, nRate = 2}, 
{szName=" thÇn bÝ ®¹i bao tiÒn l× x× ", tbProp={6, 1, 402,1, 0, 0}, nRate = 6}, 
{szName=" ®Þnh n­íc « sa ph¸t quan ", tbProp={0, 160}, nQuality = 1, nRate = 0.006}, 
{szName=" ®Þnh n­íc lôa máng xanh tr­êng sam ", tbProp={0, 159}, nQuality = 1, nRate = 0.01}, 
{szName=" ®Þnh n­íc ng©n tµm ®ai l­ng ", tbProp={0, 163}, nQuality = 1, nRate = 0.1}, 
{szName=" ®Þnh n­íc xÝch quyªn mÒm ngoa ", tbProp={0, 161}, nQuality = 1, nRate = 0.04}, 
{szName=" ®Þnh n­íc tö ®»ng hé cæ tay ", tbProp={0, 162}, nQuality = 1, nRate = 0.1}, 
{szName="1 danh väng ", nRepute = 1, nRate = 30}, 
{szName="2 danh väng ", nRepute = 2, nRate = 25}, 
{szName="3 danh väng ", nRepute = 3, nRate = 19}, 
{szName="10 danh väng ", nRepute = 10, nRate = 2.494}, 
{szName="50 danh väng ", nRepute = 50, nRate = 0.5}, 
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

	if (50 + GetTask(christmas_getexp_taskid) <= GetTask(christmas_bingjing_taskid))	then
		SetTask(christmas_getexp_taskid, 50 + GetTask(christmas_getexp_taskid));
AddOwnExp(500000); 
tbAwardTemplet:GiveAwardByList(tb_strawberry_award, "2008 gi¸ng sinh ho¹t ®éng - b¸nh ngät "); 
else 
Say("§¹i hiÖp ®· ®¹t ®­îc cao nhÊt kinh nghiÖm , cho nªn kh«ng thÓ sö dông n÷a b¸nh cake .", 0); 
return 1; 
end 
end