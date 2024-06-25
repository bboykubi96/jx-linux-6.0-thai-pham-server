-- script viet hoa By http://tranhba.com  sö dông kü n¨ng râ rµng c©u hoµn ch©n vèn 
-- script viet hoa By http://tranhba.com 2004.11.24 
Include("\\script\\global\\baijuwanhead.lua")

function main(itemindex) 
SetTaskTemp(AEXP_TEMPOFFLINETASKID, itemindex) 
str= 
{ "<#> kü n¨ng b¹ch c©u hoµn , sö dông ®em ®¹t ®­îc <color=red>8 giê <color> ñy th¸c .", 
"<#> sö dông kü n¨ng b¹ch c©u hoµn /use", 
"<#> nhiÖm vô suy nghÜ l¹i mét chót !/cancel", 
"<#> xem ta cßn thõa l¹i treo ky thêi gian /get_left_time", 
"<#> lùa chän kü n¨ng c¸ch tuyÕn nh­ cò treo ky /#selectofflineskill('cancel')", 
"<#> giíi thiÖu treo ky ngo¹n ph¸p ®Ých chi tiÕt /help" 
}; 
Say(str[1], 4,str[2],str[3],str[4],str[5]); 
return 1 
end 

-- script viet hoa By http://tranhba.com  lùa chän sö dông kü n¨ng b¹ch c©u hoµn 
function use() 
local sparetime = GetTask(AEXP_SMALL_SKILL_TASKID); 
if (sparetime == nil) then 
sparetime = 0; 
end 

	if ((sparetime + AEXP_SKILLCHANGE) > AEXP_MAXTIME) then
local hours, minutes = getFrame2MinAndSec(sparetime); 
Say("Ngµi ®Ých c¸ch tuyÕn treo ky cßn thõa l¹i thêi gian lµ <color=red>"..hours.."<color>gi?color=red>"..minutes.."<color> phót . kü n¨ng ñy th¸c mÖt mái tÝnh giê ®ang lóc kh«ng thÓ v­ît qua <color=red>10000 giê color>.", 0); 
else 
itemindex = GetTaskTemp(AEXP_TEMPOFFLINETASKID); 
if (IsMyItem(itemindex) ~= 1) then 
return 
end 

nresult = RemoveItemByIndex(itemindex); 

if (nresult == 1) then 
			ntotaltime = sparetime + AEXP_SKILLCHANGE;
SetTask(AEXP_SMALL_SKILL_TASKID, ntotaltime); 
local hours, minutes = getFrame2MinAndSec(ntotaltime); 
Say("Thµnh c«ng sö dông , ngµi ®Ých c¸ch tuyÕn treo ky thêi gian lµ <color=red>"..hours.."<color>gi?color=red>"..minutes.."<color> ph©n ",0); 
writeUseBaiJulog("skillofflineitem_small", hours, minutes); 
else 
Say("Kh«ng cã kü n¨ng b¹ch c©u hoµn , cã thÓ sö dông ", 0); 
end 
end 
end 

-- script viet hoa By http://tranhba.com  lùa chän suy nghÜ mét chót n÷a 
function cancel() 
return 0 
end
