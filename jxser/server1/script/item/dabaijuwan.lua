-- script viet hoa By http://tranhba.com  sö dông râ rµng c©u hoµn ch©n vèn 
-- script viet hoa By http://tranhba.com 2004.11.24 
Include("\\script\\global\\baijuwanhead.lua")

function main(itemindex) 
SetTaskTemp(AEXP_TEMPOFFLINETASKID, itemindex) 
str= 
{ "<#> mét viªn râ rµng c©u hoµn , sö dông sau nh­ng ®¹t ®­îc <color=red>8 giê <color> ®Ých c¸ch tuyÕn bµy qu¶n thêi gian . ", 
"<#> sö dông râ rµng c©u hoµn /confirmlevel", 
"<#> ta suy nghÜ mét chót n÷a /cancel", 
"<#> tuÇn tra ta cßn thõa l¹i c¸ch tuyÕn bµy qu¶n thêi gian /get_left_time", 
"<#> liªn quan tíi c¸ch tuyÕn bµy qu¶n cÆn kÏ giíi thiÖu /help" 
}; 
Say(str[1], 4,str[2],str[3],str[4],str[5]); 
return 1 
end 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n cÊp bËc lÇn n÷a x¸c nhËn 
function confirmlevel() 
str= 
{ "<#> bëi v× ng­¬i ®Ých cÊp bËc thÊp h¬n <color=red>50 cÊp <color> , cho nªn c¸ch tuyÕn bµy qu¶n tr¹ng th¸i bªn trong , ng­¬i cã thÓ tiÕn hµnh bµy s¹p giao dÞch , nh­ng sÏ kh«ng ®¹t ®­îc <color=red> kinh nghiÖm trÞ gi¸ <color> . ng­¬i nhÊt ®Þnh ph¶i sö dông râ rµng c©u hoµn sao ? ", 
"<#> x¸c ®Þnh /use", 
"<#> ta suy nghÜ mét chót n÷a /cancel", 
"<#> bëi v× ng­¬i kh«ng ph¶i lµ sung trÞ gi¸ dông hé , cho nªn kh«ng thÓ sö dông c¸ch tuyÕn bµy qu¶n chøc n¨ng . mêi/xin ng­¬i sung trÞ gi¸ sau sö dông n÷a nªn vËt phÈm . " 
}; 

-- script viet hoa By http://tranhba.com  sung t¹p dông hé míi cã thÓ sö dông râ rµng c©u hoµn 
if (IsCharged()~=1) then 
Talk(1, "", str[4]); 
return 
end 

nLevel = GetLevel(); 
if (nLevel < AEXP_NEEDLEVEL) then 
Say(str[1], 2,str[2],str[3]); 
else 
use(); 
end 
end 

-- script viet hoa By http://tranhba.com  lùa chän sö dông râ rµng c©u hoµn 
function use() 
sparetime = GetTask(AEXP_TASKID); 
if (sparetime == nil) then 
sparetime = 0; 
end 

-- script viet hoa By http://tranhba.com showtime = floor(sparetime / (FRAME2TIME * 60)); -- script viet hoa By http://tranhba.com  cho dông hé ®Ò kú biÓu hiÖn ®Õn phót 
	if ((sparetime + AEXP_BIGCHANGE) > AEXP_MAXTIME) then
local hours, minutes = getFrame2MinAndSec(sparetime); 
Say("Ng­¬i tr­íc m¾t ®Ých râ rµng c©u hoµn c¸ch tuyÕn kinh nghiÖm bµy qu¶n cßn thõa l¹i thêi gian lµ <color=red>"..hours.."<color> giê <color=red>"..minutes.."<color> phót , mµ ng­¬i c¸ch tuyÕn kinh nghiÖm bµy qu¶n thêi gian mÖt mái kÕ kh«ng thÓ v­ît qua <color=red>10000 giê <color> , mêi/xin ng­¬i qu¸ mét ®o¹n thêi gian sö dông n÷a râ rµng c©u hoµn . ", 0); 
else 
itemindex = GetTaskTemp(AEXP_TEMPOFFLINETASKID); 
if (IsMyItem(itemindex) ~= 1) then 
return 
end 

biggeneraltype,bigdetailtype,bigpartype = GetItemProp(itemindex); 

if ( biggeneraltype ~= AEXP_BIG_NGENTYPE 
or bigdetailtype ~= AEXP_BIG_DETAILTYPE 
or bigpartype ~= AEXP_BIG_PARTYPE) then 
return 
end 

nresult = RemoveItemByIndex(itemindex); 

if (nresult == 1) then 
			ntotaltime = sparetime + AEXP_BIGCHANGE;
SetTask(AEXP_TASKID, ntotaltime); 
local hours, minutes = getFrame2MinAndSec(ntotaltime); 
Say("Sö dông thµnh c«ng , ng­¬i cßn thõa l¹i râ rµng c©u hoµn c¸ch tuyÕn bµy qu¶n thêi gian lµ <color=red>"..hours.."<color> giê <color=red>"..minutes.."<color> phót ",0); 
writeUseBaiJulog("offlineitem_normal", hours, minutes); 
else 
Say("Kh«ng cã râ rµng c©u hoµn cã thÓ sö dông ", 0); 
end 
end 
end 

-- script viet hoa By http://tranhba.com  lùa chän suy nghÜ mét chót n÷a 
function cancel() 
return 0 
end
