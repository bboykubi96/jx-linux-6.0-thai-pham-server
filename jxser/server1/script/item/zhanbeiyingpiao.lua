-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##zhanbeiyingpiao.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ##zhongchaolong 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2008-04-15 10:27:57 
-- script viet hoa By http://tranhba.com  chi�n b� ng�n phi�u 
-- script viet hoa By http://tranhba.com  v�t ph�m th��ng ��ch n�i r� #� b�n bang chi�n b� c� kim s� gia t�ng 1 v�n �i�m � 
-- script viet hoa By http://tranhba.com  s� d�ng ch�n ch� th�i gian #2008 n�m 05 th�ng 18 ng�y 24 �i�m 00 ph�n 
-- script viet hoa By http://tranhba.com  ph��ng ph�p s� d�ng # b�n ph�i ki�n �i�m k�ch s� d�ng 
-- script viet hoa By http://tranhba.com  h�n ch� # ch� c� bang ch� m�i c� th� s� d�ng v�t n�y ph�m . 
-- script viet hoa By http://tranhba.com  ghi ch�p s� d�ng chi�n b� ng�n phi�u LOG 
IncludeLib("SETTING"); 
if MODEL_GAMESERVER == 1 then 
IncludeLib("TONG") 
	Include("\\script\\tong\\tong_header.lua")
end 

function main(nItemIndex) 

local nItemData = GetItemParam(nItemIndex, 1); 
local nDate = tonumber(GetLocalDate("%Y%m%d")) 


if nDate >= nItemData then 
Msg2Player("V�t ph�m s� d�ng qu� h�n , t� ��ng bi�n m�t .") 
return 0; 
end 


local nBuildFund = 10000 
local _, nTongID = GetTongName() 
if(nTongID == 0) then 
Msg2Player("Kh�ng gia nh�p bang h�i , kh�ng th� s� d�ng n�n ��o c� ."); 
return 1 
end 
local figure = TONGM_GetFigure(nTongID, GetName()) 
if (figure == TONG_MASTER)then 
WriteLog(format("[%s]\t%s\tName:%s\tAccount:%s\t AddTongBuildFund %d.","use zhanbeiyingpiao",GetLocalDate("%Y-%m-%d %H:%M"),GetName(), GetAccount(), nBuildFund)) 
TONG_ApplyAddWarBuildFund(nTongID, nBuildFund) 

return 0; 
else 
Msg2Player("Kh�ng ph�i l� bang ch� , kh�ng th� s� d�ng n�n ��o c� ."); 
return 1 
end 
end 

function GetDesc(nItemIndex) 

end
