-- script viet hoa By http://tranhba.com  sö dông kü n¨ng râ rµng c©u hoµn ch©n vèn 
-- script viet hoa By http://tranhba.com 2004.11.24 
Include("\\script\\global\\baijuwanhead.lua")

function main(itemindex) 
SetTaskTemp(AEXP_TEMPOFFLINETASKID, itemindex) 
str= 
{ "<#> mét viªn kü n¨ng râ rµng c©u hoµn , sö dông sau nh­ng ®¹t ®­îc <color=red>8 giê <color> ®Ých c¸ch tuyÕn bµy qu¶n thêi gian . ", 
"<#> sö dông kü n¨ng râ rµng c©u hoµn /use", 
"<#> ta suy nghÜ mét chót n÷a /cancel", 
"<#> tuÇn tra ta cßn thõa l¹i c¸ch tuyÕn bµy qu¶n thêi gian /get_left_time", 
"<#> lùa chän c¸ch tuyÕn bµy qu¶n kü n¨ng /#selectofflineskill('cancel')", 
"<#> liªn quan tíi c¸ch tuyÕn bµy qu¶n cÆn kÏ giíi thiÖu /help" 
}; 
Say(str[1], 4,str[2],str[3],str[4],str[5]); 
return 1 
end 

-- script viet hoa By http://tranhba.com  lùa chän sö dông kü n¨ng râ rµng c©u hoµn 
function use() 
local sparetime = GetTask(AEXP_SKILL_TIME_TASKID); 
if (sparetime == nil) then 
sparetime = 0; 
end 

	if ((sparetime + AEXP_SKILLCHANGE) > AEXP_MAXTIME) then
local hours, minutes = getFrame2MinAndSec(sparetime); 
Say("Ng­¬i tr­íc m¾t ®Ých c¸ch tuyÕn kü n¨ng bµy qu¶n cßn thõa l¹i thêi gian lµ <color=red>"..hours.."<color> giê <color=red>"..minutes.."<color> phót , mµ ng­¬i c¸ch tuyÕn kü n¨ng bµy qu¶n thêi gian mÖt mái kÕ kh«ng thÓ v­ît qua <color=red>10000 giê <color> , mêi/xin ng­¬i qu¸ mét ®o¹n thêi gian sö dông n÷a kü n¨ng râ rµng c©u hoµn . ", 0); 
else 
itemindex = GetTaskTemp(AEXP_TEMPOFFLINETASKID); 
if (IsMyItem(itemindex) ~= 1) then 
return 
end 

nresult = RemoveItemByIndex(itemindex); 

if (nresult == 1) then 
			ntotaltime = sparetime + AEXP_SKILLCHANGE;
SetTask(AEXP_SKILL_TIME_TASKID, ntotaltime); 
local hours, minutes = getFrame2MinAndSec(ntotaltime); 
Say("Sö dông thµnh c«ng , ng­¬i cßn thõa l¹i c¸ch tuyÕn kü n¨ng bµy qu¶n thêi gian lµ <color=red>"..hours.."<color> giê <color=red>"..minutes.."<color> phót ",0); 
writeUseBaiJulog("skillofflineitem_normal", hours, minutes); 
else 
Say("Kh«ng cã kü n¨ng râ rµng c©u hoµn cã thÓ sö dông ", 0); 
end 
end 
end 

-- script viet hoa By http://tranhba.com  lùa chän suy nghÜ mét chót n÷a 
function cancel() 
return 0 
end
