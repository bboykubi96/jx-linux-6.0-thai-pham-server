Include("\\script\\missions\\qianchonglou\\rule.lua")
Include("\\script\\missions\\qianchonglou\\challenger.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
IncludeLib("SETTING") 
function signup() 
if tbPlayerHandle:CheckDate() ~= 1 then 
local nAwardPoint = tbPlayerHandle:GetAwardPoint(nPoint) 
if nAwardPoint > 0 then 
return Talk(1, "","Ng��i c�n tr��c nh�n l�y tr��c ��ch t��ng th��ng m�i c� th� ti�p t�c tham gia .") 
end 
end 
if ST_IsTransLife() ~= 1 and GetLevel() < 120 then 
return Talk(1, "", format("%d c�p tr� xu�ng kh�ng th� tham gia n�n ho�t ��ng ", 120)) 
end 
local pDungeonType = DungeonType["endless tower"] 
local pChallenger = tbChallenger:new() 
pChallenger:Update() 
if pChallenger:GetPlayTime() <= 0 then 
return Talk(1, "","H�m nay th�i gi� c�a ng��i �� d�ng xong ") 
end 
if pDungeonType then 
local pDungeon = pDungeonType:new_dungeon(pDungeonType.TEMPLATE_MAP_ID, {pChallenger}) 
if pDungeon then 
pChallenger:Update() 
local nMapId, nX, nY = pDungeon:GetTowerPos() 
NewWorld(nMapId, nX, nY) 
else 
print("fail") 
end 
end 
end 

function give_award() 
local nAwardPoint = tbPlayerHandle:GetAwardPoint(nPoint) 
if nAwardPoint <= 0 then 
return Talk(1, "","# t��ng th��ng c�a ng��i tr� gi� kh�ng �� d�ng �� d�n t��ng ") 
end 
Msg2Player(format("Ng��i �� ��t ���c %d t��ng th��ng tr� gi� ��ch t��ng th��ng .", nAwardPoint)) 
tbPlayerHandle:SetAwardPoint(0) 
end 
-- script viet hoa By http://tranhba.com  t�t ng�y tr�ng l�u ch�c n�ng - Modified By DinhHQ - 20120402 
function dialog() 
do return end 
local szTitle = " m� ra ph� b�n sau , m�i nh� ch�i �em ��t ���c m�t ch�t tr� c�t ph�n , m�i l�n ph�t ra c�ng k�ch �em ti�u hao tr� c�t ph�n . gi�n d� kh�ng gi�ng nhau , ti�u hao tr� c�t ph�n c�ng kh�ng gi�ng nhau , c� th� th�ng qua con chu�t �i�m k�ch m�n �nh ch�ng t�i thay ��i gi�n d� c�p b�c . gi�n d� c�p b�c c�ng cao , ��nh tr�ng qu�i v�t ��ch c� h�i c�ng l�n . ��nh tr�ng qu�i v�t sau , �em ��t ���c t��ng th��ng , khi tr� c�t ph�n ph�n ti�u hao h�t sau , c�ng c� th� d�ng t��ng th��ng ph�n �� ��i gi�n d� . m�i l�n ��nh tr�ng s� l��ng nh�t ��nh ��ch qu�i v�t , c�ng c� th� ��t ���c t��ng ��i �ng ��ch gi�n d� , c� th� ��nh tr�ng chung quanh t�t c� ��ch nh�n . " 
local tbOpt = 
{ 
{"Ta mu�n tham gia ", signup}, 
{"D�n t��ng ", give_award}, 
{"H�y b� "} 
} 
CreateNewSayEx(szTitle, tbOpt) 
end 


Include("\\script\\misc\\eventsys\\type\\npc.lua")

-- script viet hoa By http://tranhba.com pEventType:Reg("Ch� �i�m quan ho�ng th�nh ti ,"Ng�y tr�ng l�u ", dialog, {}) 
