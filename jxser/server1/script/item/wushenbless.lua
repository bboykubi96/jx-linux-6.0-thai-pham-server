-- script viet hoa By http://tranhba.com  vò thÇn ban phóc 
-- script viet hoa By http://tranhba.com wushenbless.lua 
-- script viet hoa By http://tranhba.com  sö dông sau nh­ng ®¹t ®­îc 2 giê ( hÖ thèng thêi gian ) ë tèng kim # tin/th¬ khiÕn cho # x«ng quan # liªn cuéc so tµi # d· tÈu # huy hoµng chi trong ®ªm ®é cèng hiÕn gÊp ®«i tr¹ng th¸i 
-- script viet hoa By http://tranhba.com Task2509 

function main(nItemIdx) 
local nItemTime = GetItemParam(nItemIdx,1); 
local nCurTime = GetCurServerTime(); -- script viet hoa By http://tranhba.com  gi©y 
if (nItemTime < nCurTime) then 
Msg2Player("C¸i nµy vËt phÈm ®· qua liÔu h÷u hiÖu kú , kh«ng thÓ sö dông n÷a liÔu . "); 
return 0; 
end; 
	local nEndTime = nCurTime + 2*60*60;
SetTask(2509, nEndTime); 
Msg2Player("Ngµi ®¹t ®­îc 2 canh giê ë tèng kim ®¹i chiÕn # tin/th¬ khiÕn cho nhiÖm vô # thêi gian khiªu chiÕn # vâ l©m liªn cuéc so tµi # d· tÈu nhiÖm vô # huy hoµng chi trong ®ªm së lÊy ®­îc ®é cèng hiÕn gÊp béi ®Ých tr¹ng th¸i . ") 
end; 

function GetDesc(nItemIdx) 

	local nYear = GetItemParam(nItemIdx, 2) + 2000;
local nMonth = GetItemParam(nItemIdx, 3); 
local nDate = GetItemParam(nItemIdx, 4); 

return " sö dông kú h¹n #<color=blue>"..nYear.." n¨m "..nMonth.." th¸ng "..nDate.." ngµy " 
end 
