Include("\\script\\missions\\zhaojingling\\prepare\\preparegame.lua")

PrepareGame.nPassTime = 0 -- script viet hoa By http://tranhba.com  mçi trµng ghi danh b¾t ®Çu ®Õn b©y giê ®i qua thêi gian 


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
Msg2Map(PREPARE_MAP,"HuÊn luyÖn míi méc nh©n tranh tµi ®· b¾t ®Çu ") 
AddGlobalNews("Hoµng thµnh huÊn luyÖn cung ghi danh b¾t ®Çu , xin/mêi c¸c vÞ ®¹i hiÖp nhanh ®i tr­íc khi an chØ ®iÓm quan chç tham gia ghi danh ") 
end 

function PrepareGame:OnTime(nTimerId, nParam) 
if SubWorldID2Idx(PREPARE_MAP) <= 0 then 
return 0, 0 
end 

	self.nPassTime = self.nPassTime + 60
local nRestTime = PREPARETIME * 60 - self.nPassTime 
if nRestTime > 0 then 
Msg2Map(PREPARE_MAP, format("Cßn cã %d phót t×m kiÕm méc nh©n ho¹t ®éng ®em b¾t ®Çu ", floor(nRestTime / 60))) 
return 60 * 18, 0 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  më ra tranh tµi , ®em nhµ ch¬i truyÒn tèng vµo ®Êu tr­êng -- script viet hoa By http://tranhba.com - 
self:GoToGame() 
	DynamicExecute("\\script\\missions\\zhaojingling\\game\\gametimer.lua", "Game:InitTimer")
return 0, 0 
end 
