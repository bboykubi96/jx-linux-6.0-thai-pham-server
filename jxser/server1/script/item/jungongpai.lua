-- script viet hoa By http://tranhba.com zero 2007-07-30 
IncludeLib("SETTING"); 
JUNGONGPAI_exp={ 
100000, 
{2000000,30}, 
{3000000,40}, 
{5000000,30}} 
function main(nItem) 
local nEndYear= GetItemParam(nItem, 1); 
local nMonthDay= GetItemParam(nItem, 2); 

if( nEndYear < tonumber(GetLocalDate("%Y")) or nMonthDay < tonumber(GetLocalDate("%m%d")) ) then 
Say("Tèng kim c«ng trËn bµi ë nhËn lÊy sau ngµy kÕ 24 ®iÓm tr­íc sö dông , nªn c«ng trËn bµi ®· qua kú . ",0) 
return 0; 
end 



local prob = JUNGONGPAI_exp[1]; 
local sum = 0; 
local num = random(1,prob); 
for i = 2,getn(JUNGONGPAI_exp) do 
local odds = JUNGONGPAI_exp[i][2]; 
		sum = sum + odds * prob/100;
if num < sum then 
AddOwnExp(JUNGONGPAI_exp[i][1]) 
Msg2Player(format("Bëi v× sö dông tèng kim c«ng trËn bµi lÊy ®­îc %d kinh nghiÖm ",JUNGONGPAI_exp[i][1])) 
WriteLog(format("[ tèng kim c«ng trËn bµi ]\t date:%s \t Account:%s \t Name:%s \t sö dông tèng kim c«ng trËn bµi lÊy ®­îc %d ®Ých kinh nghiÖm \t",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),JUNGONGPAI_exp[i][1])); 
break; 
end 
end 
end 

function GetDesc(nItem) 
local nEndYear= GetItemParam(nItem, 1); 
local nMonthDay= GetItemParam(nItem, 2); 
local nEndMonth=floor(nMonthDay/100); 
local nEndDay=mod(nMonthDay,100); 
return " sö dông chÆn chØ nhËt kú :"..nEndYear.." n¨m "..nEndMonth.." th¸ng "..nEndDay.." ngµy "; 
end
