-- script viet hoa By http://tranhba.com  sö dông kü n¨ng râ rµng c©u hoµn ch©n vèn 
-- script viet hoa By http://tranhba.com 2004.11.24 
Include("\\script\\global\\baijuwanhead.lua")

function main(itemindex) 
SetTaskTemp(AEXP_TEMPOFFLINETASKID, itemindex) 
str= 
{ "<#>1 viªn ®Æc biÖt kü n¨ng râ rµng c©u hoµn , sö dông sau ®em ®¹t ®­îc <color=red>8 giê <color> ñy th¸c . lµ mét lo¹i kü n¨ng b¹ch c©u hoµn ®Ých gÊp hai hiÖu qu¶ .", 
"<#> sö dông ®Æc biÖt kü n¨ng b¹ch c©u hoµn /use", 
"<#> ®Ó cho ta muèn muèn !/cancel", 
"<#> xem mét chót ta cßn thõa l¹i treo ky thêi gian /get_left_time", 
"<#> lùa chän c¸ch tuyÕn treo ky kü n¨ng /#selectofflineskill('cancel')", 
"<#> giíi thiÖu treo ky ngo¹n ph¸p ®Ých chi tiÕt /help" 
}; 
Say(str[1], 4,str[2],str[3],str[4],str[5]); 
return 1 
end 

-- script viet hoa By http://tranhba.com  lùa chän sö dông kü n¨ng râ rµng c©u hoµn 
function use() 
local sparetime = GetTask(AEXP_SPECIAL_SKILL_TASKID); 
if (sparetime == nil) then 
sparetime = 0; 
end 

	if ((sparetime + AEXP_SPECIALSKILLCHANGE) > AEXP_MAXTIME) then
local hours, minutes = getFrame2MinAndSec(sparetime); 
Say("Ngµi ®Ých c¸ch tuyÕn treo ky cßn thõa l¹i thêi gian lµ <color=red>"..hours.."<color>gi?color=red>"..minutes.."<color> phót . kü n¨ng ñy th¸c mÖt mái tÝnh giê ®ang lóc kh«ng thÓ v­ît qua <color=red>10000 giê color>.", 0); 
else 
itemindex = GetTaskTemp(AEXP_TEMPOFFLINETASKID); 
if (IsMyItem(itemindex) ~= 1) then 
return 
end 

nresult = RemoveItemByIndex(itemindex); 

if (nresult == 1) then 
			ntotaltime = sparetime + AEXP_SPECIALSKILLCHANGE;
SetTask(AEXP_SPECIAL_SKILL_TASKID, ntotaltime); 
local hours, minutes = getFrame2MinAndSec(ntotaltime); 
Say("Sö dông thµnh c«ng , ngµi ®Ých c¸ch tuyÕn treo ky thêi gian lµ <color=red>"..hours.."<color> giê <color=red>"..minutes.."<color> phót ",0); 
writeUseBaiJulog("skillofflineitem_special", hours, minutes); 
else 
Say("Kh«ng cã ®Æc biÖt kü n¨ng b¹ch c©u hoµn , cã thÓ sö dông ", 0); 
end 
end 
end 

-- script viet hoa By http://tranhba.com  lùa chän suy nghÜ mét chót n÷a 
function cancel() 
return 0 
end
