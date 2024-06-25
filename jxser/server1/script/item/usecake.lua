-- script viet hoa By http://tranhba.com  ViÖt Nam hai tuÇn lÔ n¨m ho¹t ®éng b¸nh ngät 
-- script viet hoa By http://tranhba.com fmz 
-- script viet hoa By http://tranhba.com 200705 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com 2007-06-02 
-- script viet hoa By http://tranhba.com edit by Fmz, gia t¨ng ®¹t ®­îc kinh nghiÖm th­îng h¹n 
TSK_ACT2YEARS_EXP_MAX = 1919 
function main(nItemIndex) 
local nDate = tonumber(GetLocalDate("%y%m%d")) 
if nDate > 70731 then 
Say("Nªn bÝnh ®· qua kú , kh«ng thÓ sö dông !",0) 
return 0 
end 
local nCurAddExp = GetTask(TSK_ACT2YEARS_EXP_MAX) 
if nCurAddExp >= 400000000 then 
Say("§· ®¹t lín nhÊt h¹n chÕ , kh«ng thÓ sö dông nªn vËt phÈm liÔu .",0) 
return 1 
end 
local szItemName = GetItemName(nItemIndex) 
local nExpNum,nItemID = 0 
local g, d, p = GetItemProp( nItemIndex ) 
if p == 1442 then 
nExpNum = 200000 
elseif p == 1443 then 
nExpNum = 500000 
elseif p == 1444 then 
nExpNum = 1000000 
end 
if (IsMyItem(nItemIndex) ~= 1) then 
return 1 
end 

RemoveItemByIndex(nItemIndex); 
AddOwnExp( nExpNum ) 
WriteLog(format("[ sö dông %s]\t%s\tName:%s\tAccount:%s\t gia t¨ng %s kinh nghiÖm trÞ gi¸ .",szItemName, 
GetLocalDate("%Y-%m-%d %H:%M"),GetName(), GetAccount(),nExpNum)); 
    SetTask(TSK_ACT2YEARS_EXP_MAX,nCurAddExp+nExpNum)
return 0 
end 
-- script viet hoa By http://tranhba.com 
