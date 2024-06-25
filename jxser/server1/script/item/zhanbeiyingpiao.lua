-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn ##zhanbeiyingpiao.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ##zhongchaolong 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2008-04-15 10:27:57 
-- script viet hoa By http://tranhba.com  chiÕn bÞ ng©n phiÕu 
-- script viet hoa By http://tranhba.com  vËt phÈm th­îng ®Ých nãi râ #“ bæn bang chiÕn bÞ c¬ kim sÏ gia t¨ng 1 v¹n ®iÓm ” 
-- script viet hoa By http://tranhba.com  sö dông chÆn chØ thêi gian #2008 n¨m 05 th¸ng 18 ngµy 24 ®iÓm 00 ph©n 
-- script viet hoa By http://tranhba.com  ph­¬ng ph¸p sö dông # bªn ph¶i kiÖn ®iÓm kÝch sö dông 
-- script viet hoa By http://tranhba.com  h¹n chÕ # chØ cã bang chñ míi cã thÓ sö dông vËt nµy phÈm . 
-- script viet hoa By http://tranhba.com  ghi chÐp sö dông chiÕn bÞ ng©n phiÕu LOG 
IncludeLib("SETTING"); 
if MODEL_GAMESERVER == 1 then 
IncludeLib("TONG") 
	Include("\\script\\tong\\tong_header.lua")
end 

function main(nItemIndex) 

local nItemData = GetItemParam(nItemIndex, 1); 
local nDate = tonumber(GetLocalDate("%Y%m%d")) 


if nDate >= nItemData then 
Msg2Player("VËt phÈm sö dông qu¸ h¹n , tù ®éng biÕn mÊt .") 
return 0; 
end 


local nBuildFund = 10000 
local _, nTongID = GetTongName() 
if(nTongID == 0) then 
Msg2Player("Kh«ng gia nhËp bang héi , kh«ng thÓ sö dông nªn ®¹o cô ."); 
return 1 
end 
local figure = TONGM_GetFigure(nTongID, GetName()) 
if (figure == TONG_MASTER)then 
WriteLog(format("[%s]\t%s\tName:%s\tAccount:%s\t AddTongBuildFund %d.","use zhanbeiyingpiao",GetLocalDate("%Y-%m-%d %H:%M"),GetName(), GetAccount(), nBuildFund)) 
TONG_ApplyAddWarBuildFund(nTongID, nBuildFund) 

return 0; 
else 
Msg2Player("Kh«ng ph¶i lµ bang chñ , kh«ng thÓ sö dông nªn ®¹o cô ."); 
return 1 
end 
end 

function GetDesc(nItemIndex) 

end
