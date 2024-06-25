
Include("\\script\\task\\task_addplayerexp.lua");

function main(nItemIdx) 
-- script viet hoa By http://tranhba.com  mÖt nhäc tr¹ng th¸i 
	local nDate = (GetItemParam(nItemIdx, 2)+2000) * 10000 + GetItemParam(nItemIdx, 3);
local nCurDate = tonumber(GetLocalDate("%Y%m%d")); 
if (nCurDate > nDate) then 
Say("Nªn vËt phÈm ®· qua sö dông kú !", 0); 
return 0; 
else 
if (GetTiredDegree() == 2) then 
Say("§ang ®øng ë mái mÖt tr¹ng th¸i , kh«ng thÓ sö dông nªn vËt phÈm .", 0); 
return 1; 
else 
local nExp= GetItemParam(nItemIdx, 1) * 1000; 
tl_addPlayerExp(nExp); 
Msg2Player(format("Ngµi ®¹t ®­îc %d kinh nghiÖm trÞ gi¸ ", nExp)); 
WriteLog(format("[ mÖt mái kÕ d· tÈu ]\t%s\tName:%s\tAccount:%s\t ®¹t ®­îc %d kinh nghiÖm trÞ gi¸ .", 
GetLocalDate("%Y%m%d %X"), 
GetName(), 
GetAccount(), 
nExp)); 
return 0; 
end; 
end; 
return 1; 
end; 

function GetDesc(nItemIdx) 
local nExp= GetItemParam(nItemIdx, 1) * 1000; 
	local nYear = (GetItemParam(nItemIdx, 2)+2000)
local nMMDD = GetItemParam(nItemIdx, 3) 
local nMonth = floor(nMMDD / 100); 
local nDate = mod(nMMDD , 100); 

return format("# kinh nghiÖm trÞ gi¸ : %d<enter> thêi gian sö dông : %d-%d-%d", nExp, nYear, nMonth,nDate); 
end;
