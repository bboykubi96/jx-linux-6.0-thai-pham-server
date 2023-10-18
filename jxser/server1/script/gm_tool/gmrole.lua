Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\gm_tool\\quanly.lua")
--------------------------------------------------------
tbGmRole = {}
tbGmRole.nPak = curpack()
tbGmRole.tbAccount = 
{
	["boquyx1234"] = 
	{
		"ThichDuThu"
	},
	["admin10"] = 
	{
		"VoLamCuuLong"
	},
		["admin93"] = 
	{
		"AD�9�Dragon�"
	},
		["ngocbeokaka12"] = 
	{
		"��B�o��"
	},
			["admin79"] = 
	{
		"GameMaster"
	},
}
tbGmRole.tbSkill = 
{
	732,
	733
}

function tbGmRole:CheckAccountAndRoleName()
	local szAccount = GetAccount()
	local szName = GetName()
	local tbRoleList = self.tbAccount[szAccount]
	if tbRoleList then
		for i=1, getn(tbRoleList) do
			if tbRoleList[i] == szName then
				return 1
			end
		end
	end
end

function tbGmRole:Change2GM()
	if not self:CheckAccountAndRoleName() then
		return
	end
	for i=1, getn(self.tbSkill) do
		AddMagic(self.tbSkill[i], 1)
	end
	
	local nLevel = GetLevel()
	if nLevel < 120 then
		ST_LevelUp(120-nLevel)
	end
	SetFightState(0)
	SetCamp(6)
	SetCurCamp(6)
	if CalcFreeItemCellCount() >= 1 then
		local nItemIndex = AddItem(6,1,4629,1,0,0)
		SetItemBindState(nItemIndex, -2)
	end
	
end

function tbGmRole:GMC_Menu()

	local szTitle = "<npc><color=red>H� tr� GM :<color=Red>"..GetName().."<color><color>.<enter><color=yellow>V� L�m Truy�n K�<color>"
		local tbOpt =
	{
		{"Qu�n l� gamer", QLG}, 
		{"D�ch chuy�n t�c th�i", g_AskClientStringEx, {"53,200,201", 0, 256, "Map,X,Y", {self.DenDD, {self}} }}, 
		{"T�m v� tr� nh�n v�t", g_AskClientStringEx, {GetName(), 0, 300, "T�n nh�n v�t", {self.FindRole, {self}} }}, 
	--	{"L�y v�t ph�m", g_AskClientStringEx, {"0,10,9,1,0,0", 0, 256, "Th�ng s� ITEM", {self.TaoItem, {self}} }},
	--	{"L�y Skills", g_AskClientStringEx, {"1200,20", 0, 256, "ID Skill", {self.AddSkill, {self}} }}, 
		{"X�a Skills", g_AskClientStringEx, {"1200", 0, 300, "ID Skill", {self.DelSkill, {self}} }},
		--{"L�y danh s�ch Skills", g_AskClientStringEx, {"1200,1210", 0, 256, "ID Skill", {self.AddDSSkill, {self}} }}, 
		{"X�a danh s�ch Skills", g_AskClientStringEx, {"1,1500", 0, 256, "ID Skill", {self.DelDSSkill, {self}} }}, 
		{"K�t Th�c H� Tr�"}
	}
	CreateNewSayEx(szTitle, tbOpt)
end
--=======================Quan ly gamer====================================
function QLG() 
tbGM:MainSay()
--Say("Xin Ch�n Ch� N�ng?:",4,"Xem nh�n v�t �ang online/Show",
					--"Xem Thong Tin Gamer (1~100)/Show100",
					--"Xem Thong Tin Gamer (101~200)/Show200",
					--"Xem Thong Tin Gamer (201~300)/Show300",
					--"Kick ra ch�ng Rollback/kickall",
					--"Quan Ly Gamer/chaozuo",
					--"Quan Ly Exp/quanlyexpsv",
					--"Gia Tang Chuyen Sinh/adminnnn",
					--"Thoat./")
end

function kickall()
	for i=1,GetPlayerCount() do
		gmidx=PlayerIndex
		PlayerIndex=i
		KickOutSelf()
		PlayerIndex=gmidx
	end
end; 

function quanlyexpsv()
Say("Admin anh mu�n g�?:",5,
	                  "x2 Exp Server/#expsv(2)",
		"x3 Exp Server/#expsv(3)",
		"x4 Exp Server/#expsv(4)",
		"x5 Exp Server/#expsv(5)",
		"Exp Tro Lai Nhu Cu/#expsv(1)",
		"Thoat./")
end
function expsv(x)
--AddSkillState(440, 1, 1, 64800);
SetGlbMissionV(27,x)
AddGlobalCountNews("Server �ang Exp Trong Qu� Tr�nh Tu Luy�n !",3)
end
--==========================================================================================================
function tbGmRole:AddDSSkill(szPos)
       local tbPos = lib:Split(szPos, ",")
       local s = tonumber(tbPos[1])
       local e = tonumber(tbPos[2])
      for i=s,e do AddMagic(i,20) end
end 

function tbGmRole:DelDSSkill(szPos) 
      local tbPos = lib:Split(szPos, ",")
       local s = tonumber(tbPos[1])
       local e = tonumber(tbPos[2])
      for i=s,e do DelMagic(i) end
end 

function tbGmRole:AddSkill(szPos)
       local tbPos = lib:Split(szPos, ",")
       local id = tonumber(tbPos[1])
       local cap = tonumber(tbPos[2])
      AddMagic(id,cap)
end

function tbGmRole:DelSkill(szPos) 
      local idskill = tonumber(szPos) 
      DelMagic(idskill) 
end 

function tbGmRole:NewWorld(szPos) 
local tbPos = lib:Split(szPos, ",") 
local nMapId = GetWorldPos()
local m = tonumber(tbPos[1]) 
local x =  tonumber(tbPos[2]) 
local y =  tonumber(tbPos[3]) 
if nMapId == m then 
SetPos(x, y) 
else 
NewWorld(m, x, y)
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3)  
end 

end 

function tbGmRole:DenDD(szPos) 
local tbPos = lib:Split(szPos, ",") 
local nMapId = GetWorldPos()
local m = tonumber(tbPos[1]) 
local x =  tonumber(tbPos[2])*8 
local y =  tonumber(tbPos[3])*16 
if nMapId == m then 
SetPos(x, y) 
else 
NewWorld(m, x, y) 
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3)  
end 
end

function tbGmRole:FindRole(szName) 
local nPlayerIndex = PlayerIndex 
local nPak = usepack(self.nPak) 
CallPlayerFunction(nPlayerIndex, QueryWiseManForSB, "tbGmRole_Finded", "tbGmRole_UnFind", 0, szName); 
usepack(nPak) 
end 

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function tbGmRole:Finded(szTargetName, szMapName, nSubWorldID, nPosX, nPosY)
local toadox = nPosX/8
local toadoy = nPosY/16 
local szTitle = format("<color=yellow>%s<color>: �ang � <color=yellow>%s<color>  t�a �� <color=red>%d / %d<color>,               Map <color=red>%d<color>", szTargetName, szMapName,toadox,toadoy,nSubWorldID) 
local tbOpt = 
{ 
{"��a ta ��n ng��i ��",self.NewWorld, {self, format("%d,%d,%d",nSubWorldID, nPosX, nPosY)}},
{"K�t th�c ��i tho�i"} 
} 
CreateNewSayEx(szTitle, tbOpt) 
end

function tbGmRole_Finded(TargetName, MoneyToPay, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank, nSubWorldID, nFightMode, bTargetProtect)
	tbGmRole:Finded(TargetName, MapName, nSubWorldID, nPosX, nPosY)
end

function tbGmRole_UnFind(TargetName, MoneyToPay)
	Talk(1, "", format("<#16082>%s", TargetName))
end

function tbGmRole:TaoItem(szItem)
	local szICode = lib:Split(szItem, ",");
	local n = getn(szICode);
	if (n ~= 1) then
	if (n < 6) then Talk(1, "", format("Sai Item code. Thi�u tr��ng d� li�u. Nh�p l�i: <color=yellow>%s<color>",n)); return end
	if (n > 7) then Talk(1, "", format("Sai Item code. V��t qu� tr��ng d� li�u. Nh�p l�i: <color=yellow>%s<color>",n)); return end
	local itclass = tonumber(szICode[1]); 
	local ittype = tonumber(szICode[2]); 
	local itid = tonumber(szICode[3]); 
	local itlv = tonumber(szICode[4]); 
	local itseri = tonumber(szICode[5]); 
	local itluck = tonumber(szICode[6]); 
	local itmagic = tonumber(szICode[7]); 
	if (itlv < 0) then Talk(1, "", format("C�p �� m�n �� kh�ng ���c th�p. Nh�p l�i: <color=yellow>%s<color>",itlv)); return end
	if (itlv > 10) then Talk(1, "", format("Ch� h� tr� c�p 10. Nh�p l�i:<color=yellow>%s<color>",itlv)); return end
	if (itmagic == nil) then itmagic=0; end
	AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
	else
	local EquipId = tonumber(szICode[1]); 
	AddGoldItem(0, EquipId);
	end
end