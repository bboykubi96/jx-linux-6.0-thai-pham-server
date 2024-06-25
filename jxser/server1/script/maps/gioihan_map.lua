Include("\\script\\maps\\newworldscript_default.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\global\\playerlist.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\lib\\awardtemplet.lua")
tbNewSkillMap = {};
tbNewSkillMap.MapId_Am_Exp		= {10,143,150,151,181,198,199,200,201,202,203,204,205,207,224,320,75,93,124,144,152,225,226,227,321,322,340,342,875,997,998,995,319};	-- A�͵�ͼID
tbNewSkillMap.MapId_70		= {9,27,55,69,72,76,94,120,123,129130,142,149,169,206,319,995,996};	-- A�͵�ͼID
tbNewSkillMap.MapId_80		= {10,143,150,151,181,198,199,200,201,202,203,204,205,207,224,320};	-- A�͵�ͼID
tbNewSkillMap.MapId_90		= {75,93,124,144,152,225,226,227,321,322,340,342,875,997,998};	-- A�͵�ͼID
tbNewSkillMap.MapId_VIP		= {998,997};	-- A�͵�ͼID
function tbNewSkillMap:checkMapAmExp()	
	
	local nSubWorldID = SubWorldIdx2ID();
	
	for i = 1, getn(self.MapId_Am_Exp) do
		if(nSubWorldID == self.MapId_Am_Exp[i]) then 
			return 1;
		end
	end
	return 0;	
end

function tbNewSkillMap:checkMap70()	
	
	local nSubWorldID = SubWorldIdx2ID();
	
	for i = 1, getn(self.MapId_70) do
		if(nSubWorldID == self.MapId_70[i]) then 
			return 1;
		end
	end
	return 0;	
end

function tbNewSkillMap:checkMap80()	
	
	local nSubWorldID = SubWorldIdx2ID();
	
	for i = 1, getn(self.MapId_80) do
		if(nSubWorldID == self.MapId_80[i]) then 
			return 1;
		end
	end
	return 0;	
end

function tbNewSkillMap:checkMap90()	
	
	local nSubWorldID = SubWorldIdx2ID();
	
	for i = 1, getn(self.MapId_90) do
		if(nSubWorldID == self.MapId_90[i]) then 
			return 1;
		end
	end
	return 0;	
end


function tbNewSkillMap:checkMapVIP()	
	
	local nSubWorldID = SubWorldIdx2ID();
	
	for i = 1, getn(self.MapId_VIP) do
		if(nSubWorldID == self.MapId_VIP[i]) then 
			return 1;
		end
	end
	return 0;	
end



function OnNewWorld(szParam)
local nMapTypeExp = tbNewSkillMap:checkMapAmExp();
local nMapType70 = tbNewSkillMap:checkMap70();
local nMapType80 = tbNewSkillMap:checkMap80();
local nMapType90 = tbNewSkillMap:checkMap90();
local nMapTypeVIP = tbNewSkillMap:checkMapVIP();
SetFightState(1)

nSubWorldID = SubWorldIdx2ID()
if (nSubWorldID == 995 ) then
NewWorld (53,1600,3200)
SetFightState(0)
end

--if nMapType70 == 1 then
--if GetLevel() < 60 then
--Say("C�p �� 60 tr� l�n m�i c� th� di chuy�n t�i map")
--NewWorld (53,1600,3200)
--return 1
--end
--end

if nMapType80 == 1 then
if GetLevel() < 70 then
Say("C�p �� 70 tr� l�n m�i c� th� di chuy�n t�i map")
NewWorld (53,1600,3200)
SetFightState(0)
--return 1
end
end

if nMapType90 == 1 then
if GetLevel() < 80 then
Say("C�p �� 80 tr� l�n m�i c� th� di chuy�n t�i map")
NewWorld (53,1600,3200)
SetFightState(0)
--return 1
end
end

if nMapTypeVIP == 1 then
local tdl1 = CalcItemCount(3,6,1,4527,1)
local tdl2 = CalcItemCount(4,6,1,4527,1)
local tdl3 = CalcItemCount(9,6,1,4527,1)
local tdl4 = CalcItemCount(10,6,1,4527,1)
local tdl = tdl1 + tdl2 + tdl3 + tdl4
if tdl == 0 then
NewWorld (53,1600,3200)
SetFightState(0)
	Say("Kh�ng c� V� L�m L�nh B�i kh�ng th� di chuy�n")
	
	end
end



if nMapTypeExp == 1 then
local checkexp = GetExpPercent()
Say(GetExpPercent)
if checkexp < -20 then
Say("Hi�n t�i �i�m kinh nghi�m v��t -20% kh�ng th� di chuy�n l�n map")
NewWorld (53,1600,3200)
SetFightState(0)
--return 1
end
end

	SetDeathScript("\\script\\maps\\ondeath.lua")
	OnNewWorldDefault(szParam)
end

function OnLeaveWorld(szParam)
	SetDeathScript("")
	TM_StopTimer(116);

	OnLeaveWorldDefault(szParam)
end
