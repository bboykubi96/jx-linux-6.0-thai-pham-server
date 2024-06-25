Include("\\script\\trip\\define.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")

-- script viet hoa By http://tranhba.com local nExchangeTaskId = 2906 
-- script viet hoa By http://tranhba.com local nExchangeTaskId_Date = 2907 
local tbXunJinYuPai = {szName = " huy�n kim ng�c b�i ", tbProp = {6, 1, 3035, 1, 0, 0},} 
local POINT2EXP_RATE = 3000 

tbTripBattlePoint2Exp = {} 



function tbTripBattlePoint2Exp:DialogMain() 
local szTitle = format(" li�n ti�p server c�ng hi�n c�ng kinh nghi�m ��i ��ch t� l� l� :%d", %POINT2EXP_RATE) 
local tbOpt = 
{ 
{"Ki�m tra li�n ti�p server c�ng hi�n ", self.QueryPoint,{self}}, 
{"��i kinh nghi�m ", self.ToExp,{self}}, 
{"K�t th�c ��i tho�i "}, 
} 
CreateNewSayEx(szTitle, tbOpt) 
end 


function tbTripBattlePoint2Exp:QueryPoint() 
local nTaskValue = GetTask(%TSK_TRIP_BATTLE_POINT) 
local szName = GetName() 
local szTitle = format("<npc><color=yellow>%s<color> li�n ti�p server c�ng hi�n l� <color=yellow>%d<color>", szName, nTaskValue) 
local tbOpt = 
{ 
{"Tr� v� ", self.DialogMain, {self}}, 
{"Bi�t !"}, 
} 
CreateNewSayEx(szTitle, tbOpt) 
end 

function tbTripBattlePoint2Exp:ToExp() 

local nMaxValue = GetTask(%TSK_TRIP_BATTLE_POINT) 
if nMaxValue <= 0 then 
return Talk(1, "","Xin l�i ng��i li�n ti�p server c�ng hi�n �� ��i xong r�i ") 
end 

g_AskClientNumberEx(0, nMaxValue, format("C�n l�i %d c� th� ��i ", nMaxValue), {self.GetExp, {self}}) 
end 

function tbTripBattlePoint2Exp:GetExp(nValue) 
local nCurValue = GetTask(%TSK_TRIP_BATTLE_POINT) 
if nCurValue < nValue then 
nValue = nCurValue 
end 
if nValue <= 0 then 
return 
end 
SetTask(%TSK_TRIP_BATTLE_POINT, nCurValue - nValue) 

local nAddExp = nValue * %POINT2EXP_RATE 

tbAwardTemplet:Give( {nExp_tl = nAddExp}, 1, {"TRIP", "EXCHANGE EXP"}) 
end 
