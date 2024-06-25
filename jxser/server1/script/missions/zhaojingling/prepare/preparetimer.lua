Include("\\script\\missions\\zhaojingling\\prepare\\preparegame.lua")

PrepareGame.nPassTime = 0 -- script viet hoa By http://tranhba.com  m�i tr�ng ghi danh b�t ��u ��n b�y gi� �i qua th�i gian 


function PrepareGame:InitTimer() 
if SubWorldID2Idx(PREPARE_MAP) <= 0 then 
return 
end 

if self.nTimeIndex then 
DelTimer(self.nTimeIndex) 
end 

self.nPassTime = 0 
local nTime = 1 * 60 
self.nTimeIndex = AddTimer(nTime * 18, "PrepareGame:OnTime", 0) 
Msg2Map(PREPARE_MAP,"Hu�n luy�n m�i m�c nh�n tranh t�i �� b�t ��u ") 
AddGlobalNews("Ho�ng th�nh hu�n luy�n cung ghi danh b�t ��u , xin/m�i c�c v� ��i hi�p nhanh �i tr��c khi an ch� �i�m quan ch� tham gia ghi danh ") 
end 

function PrepareGame:OnTime(nTimerId, nParam) 
if SubWorldID2Idx(PREPARE_MAP) <= 0 then 
return 0, 0 
end 

	self.nPassTime = self.nPassTime + 60
local nRestTime = PREPARETIME * 60 - self.nPassTime 
if nRestTime > 0 then 
Msg2Map(PREPARE_MAP, format("C�n c� %d ph�t t�m ki�m m�c nh�n ho�t ��ng �em b�t ��u ", floor(nRestTime / 60))) 
return 60 * 18, 0 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  m� ra tranh t�i , �em nh� ch�i truy�n t�ng v�o ��u tr��ng -- script viet hoa By http://tranhba.com - 
self:GoToGame() 
	DynamicExecute("\\script\\missions\\zhaojingling\\game\\gametimer.lua", "Game:InitTimer")
return 0, 0 
end 
