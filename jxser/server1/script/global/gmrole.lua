Include("\\script\\dailogsys\\dailogsay.lua");
Include("\\script\\activitysys\\functionlib.lua");
Include("\\script\\global\\namcung\\hotrogm.lua");
Include("\\script\\global\\namcung\\gmquanlyserver\\quanly.lua");
tbGmRole = {};
tbGmRole.nPak = curpack();
tbGmRole.tbAccount = 
{	
	["thaipham1"] = 
	{
		"GameMaster",
		"ThaiPham01",
		"ThaiPham02",
	},
	["1"] = 
	{
		"JXPÙCoin",
	}
	
}
--table config
tbGmRole.tbSkill = 
{
	732,--an than
	733--chay nhanh settings/skills.txt
}

function tbGmRole:CheckAccountAndRoleName()
	local szAccount = GetAccount(); -- thaipham
	local szName = GetName(); -- ngudoc3
	local tbRoleList = self.tbAccount[szAccount]
	if tbRoleList then
		for i=1, getn(tbRoleList) do
			if tbRoleList[i] == szName then
				return 1;
			end
		end
	end
end

function tbGmRole:Change2GM()
	if not self:CheckAccountAndRoleName() then
		return
	end
	for i=1, getn(self.tbSkill) do
		AddMagic(self.tbSkill[i], 1);
	end
	
	local nLevel = GetLevel();
	if nLevel < 120 then
		ST_LevelUp(120-nLevel);
	end
	SetFightState(0);
	SetCamp(6);
	SetCurCamp(6);
	if CalcFreeItemCellCount() >= 1 then
		local nItemIndex = AddItem(6,1,4257,1,0,0);
		SetItemBindState(nItemIndex, -2);
	end
	
end
-----------Menu Lenh Bai Admin script/item/gmrole.lua----------------------
function tbGmRole:GMC_Menu()
	dofile("script/global/gmrole.lua");
	if not self:CheckAccountAndRoleName() then
		Msg2Player("B¹n kh«ng ph¶i admin, kh«ng thÓ sö dông lÖnh bµi nµy");
		return
	end
	
	SetTaskTemp(2,0);
	SetTaskTemp(3,0);
	SetTaskTemp(200,0);
	SetTaskTemp(201,0);
	w,x,y=GetWorldPos();--53 x=201, y 200
	SubWorld = SubWorldID2Idx(w);
	SubName=SubWorldName(SubWorld);
	local szTitle = "<color=red>Hæ trî GM<color>: <color=orange>"..GetName().." <color>.<enter><color=yellow>Vâ L©m TruyÒn Kú<color><enter><color=red>C÷u Niªn T­¬ng Phïng<color>.<enter><color=Yellow>Hoan nghªnh c¸c anh hïng hµo kiÖt... ! <color><enter>Script GM By <color=orange>Vâ L©m TruyÒn Kú<color> - <color=green>https://www.facebook.com/groups/jxdocs<color><enter><color=red>VÞ TrÝ<color>:<color=orange>ID:<color><color=orange>"..w.."<color>-<color=red>"..SubName.."<color>-Täa ®é X/Y:<color=yellow> "..x.."<color>/<color=cyan>"..y.."<color>"
	
	local tbOpt =
	{	
		{"LÊy §å HKMP theo ID(goldequip.txt)", g_AskClientStringEx, {"2", 0, 7000, "Th«ng sè hkmp", {self.LayDoHKMPTheoIDItemScript, {self}} }},
		{"LÊy ngùa theo ID(horse.txt)", g_AskClientStringEx, {"6,10", 0, 1000, "Th«ng sè ngùa", {self.LayNguaTheoIDItemScript, {self}} }},
		{"LÊy item theo ID(magicscript.txt)", g_AskClientStringEx, {"4257", 0, 10000, "Th«ng sè item", {self.LayItemTheoIDItemScript, {self}} }},		
		{"LÊy vËt phÈm theo ID", g_AskClientStringEx, {"0,10,9,1,0,0", 0, 256, "Th«ng sè item", {self.TaoItem, {self}} }},
		{"Há trî GM Test Server", HoTroGMTestServerScript},
		{"Qu¶n lý gamer", QLG},
		{"DÞch chuyÓn tøc thêi", g_AskClientStringEx, {"53,200,201", 0, 256, "Map,X,Y", {self.DenDD, {self}} }}, 
		{"T×m vÞ trÝ nh©n vËt", g_AskClientStringEx, {GetName(), 0, 300, "Tªn nh©n vËt", {self.FindRole, {self}} }}, 
		--{"LÊy vËt phÈm", LayVatPham}
		{"GM hiÖn th©n",DelSkill,{733}},
		{"GM Èn th©n",AddSkill,{733}},
		--{"LÊy Skills", g_AskClientStringEx, {"1200,20", 0, 256, "ID Skill", {self.AddSkill, {self}} }}, 
		--{"Xãa Skills", g_AskClientStringEx, {"1200", 0, 300, "ID Skill", {self.DelSkill, {self}} }},
		--{"LÊy danh s¸ch Skills", g_AskClientStringEx, {"1200,1210", 0, 256, "ID Skill", {self.AddDSSkill, {self}} }}, 
		--{"Xãa danh s¸ch Skills", g_AskClientStringEx, {"1,1500", 0, 256, "ID Skill", {self.DelDSSkill, {self}} }}, 
		{"Reload file", Reloadfile},
		{"KÕt Thóc Hç Trî"}
	}

	CreateNewSayEx(szTitle, tbOpt);
end
--=======================Quan ly gamer====================================
function QLG() 
Quanly_player(sel)
--Say("Xin Chän Chø N¨ng?:",4,"Xem nh©n vËt ®ang online/Show",
					--"Xem Thong Tin Gamer (1~100)/Show100",
					--"Xem Thong Tin Gamer (101~200)/Show200",
					--"Xem Thong Tin Gamer (201~300)/Show300",
					--"Kick ra chèng Rollback/kickall",
					--"Quan Ly Gamer/chaozuo",
					--"Quan Ly Exp/quanlyexpsv",
					--"Gia Tang Chuyen Sinh/adminnnn",
				--	"Thoat./")
end 
--function Show()
--for i=1,GetPlayerCount() do
	--gmidx=PlayerIndex
	--PlayerIndex=i
	--TarName=GetName()
	--PlayerIndex=gmidx
                --  local W,X,Y=GetWorldPos()
                --  local nX = X/8
               --   local nY=Y/16
	--Msg2Player("ID "..i.." Ten "..TarName.." t¹i täa ®é "..nX.."/"..nY.." t¹i mapID "..W.."");
--end
--end;

--function kickall()
	--for i=1,GetPlayerCount() do
		--gmidx=PlayerIndex
		--PlayerIndex=i
		--KickOutSelf()
		--PlayerIndex=gmidx
	--end
--end; 

--function quanlyexpsv()
--Say("Admin anh muèn g×?:",5,
	            ---"x2 Exp Server/#expsv(2)",
		--"x3 Exp Server/#expsv(3)",
		--"x4 Exp Server/#expsv(4)",
		--"x5 Exp Server/#expsv(5)",
		--"Exp Tro Lai Nhu Cu/#expsv(1)",
		--"Thoat./")
--end
--function expsv(x)
--AddSkillState(440, 1, 1, 64800);
--SetGlbMissionV(27,x)
--AddGlobalCountNews("Server ®ang Exp Trong Qu¸ Tr×nh Tu LuyÖn !",3)
--end

function tbGmRole:LayVatPham() 
	w,x,y=GetWorldPos();--53 x=201, y 200
	SubWorld = SubWorldID2Idx(w);
	SubName=SubWorldName(SubWorld);
	local szTitle = "<color=red>Hæ trî GM<color>: <color=orange>"..GetName().." <color>.<enter><color=yellow>Vâ L©m TruyÒn Kú<color><enter><color=red>C÷u Niªn T­¬ng Phïng<color>.<enter><color=Yellow>Hoan nghªnh c¸c anh hïng hµo kiÖt... ! <color><enter>Script GM By <color=orange>Vâ L©m TruyÒn Kú<color> - <color=green>https://www.facebook.com/groups/jxdocs<color><enter><color=red>VÞ TrÝ<color>:<color=orange>ID:<color><color=orange>"..w.."<color>-<color=red>"..SubName.."<color>-Täa ®é X/Y:<color=yellow> "..x.."<color>/<color=cyan>"..y.."<color>"
	
	local tbOpt =
	{	
		{"LÊy §å HKMP theo ID(goldequip.txt)", g_AskClientStringEx, {"2", 0, 7000, "Th«ng sè item", {self.LayDoHKMPTheoIDItemScript, {self}} }},
		{"LÊy ngùa theo ID(horse.txt)", g_AskClientStringEx, {"6,10", 0, 1000, "Th«ng sè item", {self.LayNguaTheoIDItemScript, {self}} }},
		{"LÊy item theo ID(magicscript.txt)", g_AskClientStringEx, {"4257", 0, 10000, "Th«ng sè item", {self.LayItemTheoIDItemScript, {self}} }},		
		{"LÊy vËt phÈm theo ID", g_AskClientStringEx, {"0,10,9,1,0,0", 0, 256, "Th«ng sè ITEM", {self.TaoItem, {self}} }},		
		--{"Trë l¹i", GMC_Menu},
		{"KÕt Thóc Hç Trî"}
	}
	CreateNewSayEx(szTitle, tbOpt);
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
	SetProtectTime(18*3) --ÈýÃë±£»¤Ê±¼ä
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
	SetProtectTime(18*3) --ÈýÃë±£»¤Ê±¼ä
	AddSkillState(963, 1, 0, 18*3)  
end 
end

function tbGmRole:FindRole(szName) 
local nPlayerIndex = PlayerIndex 
local nPak = usepack(self.nPak) 
CallPlayerFunction(nPlayerIndex, QueryWiseManForSB, "tbGmRole_Finded", "tbGmRole_UnFind", 0, szName); 
usepack(nPak) 
end 


function tbGmRole:Finded(szTargetName, szMapName, nSubWorldID, nPosX, nPosY)
local toadox = nPosX/8
local toadoy = nPosY/16 
local szTitle = format("<color=yellow>%s<color>: §ang ë <color=yellow>%s<color>  täa ®é <color=red>%d / %d<color>,               Map <color=red>%d<color>", szTargetName, szMapName,toadox,toadoy,nSubWorldID) 
local tbOpt = 
{ 
{"§­a ta ®Õn ng­êi ®ã",self.NewWorld, {self, format("%d,%d,%d",nSubWorldID, nPosX, nPosY)}},
{"KÕt thóc ®èi tho¹i"} 
} 
CreateNewSayEx(szTitle, tbOpt) 
end 


function tbGmRole_Finded(TargetName, MoneyToPay, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank, nSubWorldID, nFightMode, bTargetProtect)
	tbGmRole:Finded(TargetName, MapName, nSubWorldID, nPosX, nPosY)
end

function tbGmRole_UnFind(TargetName, MoneyToPay)
	Talk(1, "", format("<#16082>%s", TargetName))
end

function HoTroGMTestServerScript()
	namcung2()
end

function tbGmRole:TaoItem(szItem)
	--"6,1,4257,0,0,0"
	local szICode = lib:Split(szItem, ",");
	local n = getn(szICode);
	if (n ~= 1) then
		if (n < 6) then 
			Talk(1, "", format("Sai Item code. ThiÕu tr­êng d÷ liÖu. NhËp l¹i: <color=yellow>%s<color>",n)); 
			return 
		end
		if (n > 7) 	then 
			Talk(1, "", format("Sai Item code. V­ît qu¸ tr­êng d÷ liÖu. NhËp l¹i: <color=yellow>%s<color>",n)); 
			return 
		end
		local itClass = tonumber(szICode[1]); 
		local itType = tonumber(szICode[2]); 
		local itId = tonumber(szICode[3]); 
		local itLelvel = tonumber(szICode[4]); 
		local itSeri = tonumber(szICode[5]); 
		local itLuck = tonumber(szICode[6]); 
		local itMagic = tonumber(szICode[7]); 
		if (itLelvel < 0) then 
			Talk(1, "", format("CÊp ®é mÆn ®å kh«ng ®­îc thÊp. NhËp l¹i: <color=yellow>%s<color>",itLelvel)); 
			return 
		end

		if (itLelvel > 10) then 
			Talk(1, "", format("ChØ hæ trî cÊp 10. NhËp l¹i:<color=yellow>%s<color>",itLelvel));
			 return 
		end
		if (itMagic == nil) then 
			itMagic=0; 
		end

		AddItem(itClass,itType,itId,itLelvel,itSeri,itLuck,itMagic);
	else
		local EquipId = tonumber(szICode[1])-1; 
		AddGoldItem(0, EquipId);
	end
end

function tbGmRole:LayNguaTheoIDItemScript(szItem)
	
	local szICode = lib:Split(szItem, ",");	
	local n = getn(szICode);

	if (n ~= 2) then 
		Talk(1, "", format("Sai Item code. ThiÕu tr­êng d÷ liÖu. NhËp l¹i: <color=yellow>%s<color>",n)); 
		return 
	end

	nID=tonumber(szICode[1]);
	nLevel=tonumber(szICode[2]);

	if (nLevel > 10) then 
		Talk(1, "", format("ChØ hæ trî cÊp 10. NhËp l¹i:<color=yellow>%s<color>",nLevel));
		return 
	end

	local itClass = 0; 
	local itType = 10; 
	local itId = tonumber(nID); 
	local itLelvel = tonumber(nLevel); 
	local itSeri = 1; --ngu hanh
	local itLuck = 0; 
	local itMagic = 0; 
	--         0      10     5    10
	local nItemIndex = AddItem(itClass,itType,itId,itLelvel,itSeri,itLuck,itMagic);

	local nExpiredTime = 7*60*24;
	ITEM_SetExpiredTime(nItemIndex, nExpiredTime);
	ITSetItemBindState(nItemIndex, -2);
	SyncItem(nItemIndex);
end

function tbGmRole:LayItemTheoIDItemScript(szItem)
	
	local szICode = lib:Split(szItem, ",");	
	local n = getn(szICode);

	if (n ~= 1) then 
		Talk(1, "", format("Sai Item code. ThiÕu tr­êng d÷ liÖu. NhËp l¹i: <color=yellow>%s<color>",n)); 
		return 
	end

	nID=tonumber(szICode[1]);

	local itClass = 6; 
	local itType = 1; 
	local itId = tonumber(nID); 
	local itLelvel = 0; 
	local itSeri = 0; --ngu hanh
	local itLuck = 0; 
	local itMagic = 0; 
	--         0      10     5    10
	AddItem(itClass,itType,itId,itLelvel,itSeri,itLuck,itMagic);
end
function tbGmRole:LayDoHKMPTheoIDItemScript(szItem)
local szICode = lib:Split(szItem, ",");	
	local n = getn(szICode);

	if (n ~= 1) then 
		Talk(1, "", format("Sai Item code. ThiÕu tr­êng d÷ liÖu. NhËp l¹i: <color=yellow>%s<color>",n)); 
		return 
	end

	nID=tonumber(szICode[1]);
	AddGoldItem(nID);
end