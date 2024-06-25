Include("\\script\\trip\\define.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")

-- script viet hoa By http://tranhba.com local nExchangeTaskId = 2906 
-- script viet hoa By http://tranhba.com local nExchangeTaskId_Date = 2907 
local tbXunJinYuPai = {szName = " huyÒn kim ngäc bµi ", tbProp = {6, 1, 3035, 1, 0, 0},} 
local POINT2EXP_RATE = 3000 

tbTripBattlePoint2Exp = {} 



function tbTripBattlePoint2Exp:DialogMain() 
local szTitle = format(" liªn tiÕp server cèng hiÕn cïng kinh nghiÖm ®æi ®Ých tû lÖ lµ :%d", %POINT2EXP_RATE) 
local tbOpt = 
{ 
{"KiÓm tra liªn tiÕp server cèng hiÕn ", self.QueryPoint,{self}}, 
{"§æi kinh nghiÖm ", self.ToExp,{self}}, 
{"KÕt thóc ®èi tho¹i "}, 
} 
CreateNewSayEx(szTitle, tbOpt) 
end 


function tbTripBattlePoint2Exp:QueryPoint() 
local nTaskValue = GetTask(%TSK_TRIP_BATTLE_POINT) 
local szName = GetName() 
local szTitle = format("<npc><color=yellow>%s<color> liªn tiÕp server cèng hiÕn lµ <color=yellow>%d<color>", szName, nTaskValue) 
local tbOpt = 
{ 
{"Trë vÒ ", self.DialogMain, {self}}, 
{"BiÕt !"}, 
} 
CreateNewSayEx(szTitle, tbOpt) 
end 

function tbTripBattlePoint2Exp:ToExp() 

local nMaxValue = GetTask(%TSK_TRIP_BATTLE_POINT) 
if nMaxValue <= 0 then 
return Talk(1, "","Xin lçi ng­¬i liªn tiÕp server cèng hiÕn ®· ®æi xong råi ") 
end 

g_AskClientNumberEx(0, nMaxValue, format("Cßn l¹i %d cã thÓ ®æi ", nMaxValue), {self.GetExp, {self}}) 
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
