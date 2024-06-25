-- script viet hoa By http://tranhba.com  sö dông ®Æc hiÖu râ rµng c©u hoµn ch©n vèn 
-- script viet hoa By http://tranhba.com 2006.08.29 
-- script viet hoa By http://tranhba.com 80 giê c¸ch tuyÕn bµy qu¶n thêi gian 
-- script viet hoa By http://tranhba.com  kinh nghiÖm v× nguyªn b¹ch c©u ®İch 2 lÇn 

Include("\\script\\global\\baijuwanhead.lua")

function main(itemindex) 
SetTaskTemp(AEXP_TEMPOFFLINETASKID, itemindex) 
str= 
{ "<#> thiªn tinh b¹ch c©u hoµn , sö dông sau ®¹t ®­îc <color=red>8 giê <color> ñy th¸c c¸ch tuyÕn . ®¹t ®­îc kinh nghiÖm lµ b×nh th­êng b¹ch c©u hoµn ®İch 5 lÇn ", 
"<#> sö dông thiªn tinh b¹ch c©u hoµn /confirmlevel", 
"<#> ®Ó cho ta suy nghÜ l¹i mét chót !/cancel", 
"<#> tra xĞt ta treo ky cßn thõa l¹i thêi gian /get_left_time", 
"<#> kÕt thóc treo ky ngo¹n ph¸p ®İch chi tiÕt /help" 
}; 
Say(str[1], 4,str[2],str[3],str[4],str[5]); 
return 1 
end 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n cÊp bËc lÇn n÷a x¸c nhËn 
function confirmlevel() 
str= 
{ "<#> cÊp bËc cña ng­¬i thÊp h¬n <color=red>50<color>. cho nªn , ë ë tuyÕn ñy th¸c tr¹ng th¸i h¹ , ng­¬i cã thÓ tiÕn hµnh mua b¸n giao dŞch cïng víi nhËn lÊy phóc duyªn ®iÓm , nh­ng lµ kh«ng thÓ ®¹t ®­îc <color=red> kinh nghiÖm trŞ gi¸ <color>. ng­¬i thËt muèn sö dông ®Æc biÖt b¹ch c©u hoµn sao ? #?", 
"<#> sö dông /use", 
"<#> ®Ó cho ta muèn muèn !/cancel", 
"<#> bëi v× ng­¬i kh«ng ph¶i lµ sung trŞ gi¸ kh¸ch hµng , cho nªn kh«ng thÓ sö dông c¸ch tuyÕn chøc n¨ng . xin/mêi sung trŞ gi¸ sau sö dông nªn vËt phÈm !", 
"<#> nhµ ch¬i cÇn 50 cÊp trë lªn cïng víi ®· chuyÓn sinh míi cã thÓ sö dông nªn vËt phÈm ." 
}; 

-- script viet hoa By http://tranhba.com  sung t¹p dông hé míi cã thÓ sö dông râ rµng c©u hoµn 
if (IsCharged()~=1) then 
Talk(1, "", str[4]); 
return 
end 

nLevel = GetLevel(); 

if (nLevel < AEXP_NEEDLEVEL or ST_IsTransLife() ~= 1) then 
Talk(1, "", str[5]); 
return 
end 
if (nLevel < AEXP_NEEDLEVEL) then 
Say(str[1], 2,str[2],str[3]); 
else 
use(); 
end 
end 

-- script viet hoa By http://tranhba.com  lùa chän sö dông thiªn tinh b¹ch c©u hoµn 
function use() 
local sparetime = GetTask(AEXP_TIANXING_TIME_TASKID); 
if (sparetime == nil) then 
sparetime = 0; 
end 

-- script viet hoa By http://tranhba.com showtime = floor(sparetime / (FRAME2TIME * 60)); -- script viet hoa By http://tranhba.com  cho dông hé ®Ò kú biÓu hiÖn ®Õn phót 
	if ((sparetime + AEXP_BIGCHANGE) > AEXP_MAXTIME) then
local hours, minutes = getFrame2MinAndSec(sparetime); 
Say("Thiªn tinh b¹ch c©u hoµn ñy th¸c cßn thõa l¹i thêi gian lµ <color=red>"..hours.."<color> giê <color=red>"..minutes.."<color> phót . kinh nghiÖm tİch lòy ®İch ñy th¸c thêi gian kh«ng thÓ v­ît qua <color=red>10000 giê <color>.", 0); 
else 
itemindex = GetTaskTemp(AEXP_TEMPOFFLINETASKID); 
if (IsMyItem(itemindex) ~= 1) then 
return 
end 

local g, d, p = GetItemProp(itemindex); 

if ( g ~= 6 
or d ~= 1 
or p ~= 2183) then 
return -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ ®Æc hiÖu râ rµng c©u 
end 

nresult = RemoveItemByIndex(itemindex); 

if (nresult == 1) then 
			ntotaltime = sparetime + AEXP_BIGCHANGE;
SetTask(AEXP_TIANXING_TIME_TASKID, ntotaltime); 
local hours, minutes = getFrame2MinAndSec(ntotaltime); 
Say("Thµnh c«ng sö dông , thiªn tinh b¹ch c©u hoµn ®İch ñy th¸c thêi gian lµ <color=red>"..hours.."<color> giê <color=red>"..minutes.."<color> phót ",0); 
writeUseBaiJulog("offlineitem_special", hours, minutes); 
else 
Say("Kh«ng cã trêi tinh b¹ch c©u hoµn cã thÓ sö dông ", 0); 
end 
end 
end 

-- script viet hoa By http://tranhba.com  lùa chän suy nghÜ mét chót n÷a 
function cancel() 
return 0 
end
