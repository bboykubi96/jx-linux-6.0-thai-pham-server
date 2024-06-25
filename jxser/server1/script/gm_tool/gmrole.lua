---------------------------------------------------------***Script*By*Heart*Doldly***-----------------------------------------------------------------------
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\gm_tool\\doxanhtim.lua")
Include("\\script\\gm_tool\\dohoangkim.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\gm_tool\\findboss.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\gm_tool\\gmquanlyserver.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\missions\\yandibaozang\\yandibaozang_trigger.lua")
SKILL_180 = {1220,1221,1223,1222,1224,1225,1227,1226,1228,1229,1370,1871}; nAddSkill = 180
-- LENHBAI_ADMIN = "<#><link=image[0]:\\spr\\item\\sprADMIN.spr>LÖnh Bµi GM: <link>"
LENHBAI_ADMIN = "GM "
---------------------------------------------------------------------------------

function GetCurIP()
local IPAD = split(GetIP()," :");
	return IPAD[1];
end;
IPADLU = "118.71.170.220"--son
IPADKIET = "1.53.111.0"--nha
IPAD_KEVIN = "14.191.238.68"

IPADKIET2 = "116.97.53.118"--chung
-- if GetCurIP() == IPADLU or GetCurIP() == IPADKIET  or GetCurIP() == IPAD_KEVIN or GetCurIP() == IPADKIET2  then
	-- else
-- local w,x,y=GetWorldPos()
-- Msg2Player("IP:<color=violet> "..GetCurIP().." <color>kh«ng ph¶i cña GM tiÕn hµnh b¾t gi÷ acc vµ göi th«ng b¸o tíi ADMIN qua tÇng sè GM.hiÖn ®ang ë map: Täa §é HiÖn T¹i: <color=violet>"..w.."/"..x.."/"..y.."<color>")
-- SetMoveSpeed(1);
-- ForbidEnmity(1);
-- DisabledUseTownP(1);
-- ForbitSkill(1);
-- ForbitTrade(1); 
-- ForbidChangePK(1);
-- SetCurCamp(0)
-- SetCamp(0)
-- RemoveSkillState(733)
-- SetChatFlag(1)
-- SetAutoHangMapFlag(1)
-- DisabledStall(1)
-- KickOutSelf()
-- end
--------------------------------------------------------
tbGmRole = {}
tbGmRole.nPak = curpack()
tbGmRole.tbAccount = {
	

	["kevin109"] = {"KevinTran"},

	["thevanvt114"] = {"Administrator"},

	[""] = {""},

	[""] = {""},
}

tbGMAccount = 
{
	{"kevin109"},
	{"thevanvt114"},
	{""},
}

ADMINNAME = 
{
	{"KevinTran"},
	{"Administrator"},
	{""},
}

tbGMPassgeen = 
{
	{"113"},
}

function CheckAdminName()
local szName = GetName()
	for i = 1, getn(ADMINNAME) do
		if (szName == ADMINNAME[i][1]) then
			return 1
		end
	end
end

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
--------------------------------------------------------------------------------------------------------------------------------
function GetWorldPosWXY()
	local W,X,Y = GetWorldPos();
	return "MapID: <color=green>"..W.."<color> X: <color=green>"..X.."<color> Y: <color=green>"..Y.."<color>";
end


function main()
dofile("script/gm_tool/gmrole.lua")
if not tbGmRole:CheckAccountAndRoleName() then
	return 1
end
	if GetTaskTemp(57) == 0 then
		AskClientForString("CHECKGMPASS","",1,999999999,"Cung CÊp Hµng")
	else
	local szTitle ="<color=green>Xin Chµo: <color=yellow>"..GetName().."<color>\n<color=Yellow>"..GetWorldPosWXY().."<color>\nSö Dông Chøc N¨ng Qu¶n Lý Server<color>"
		local tbOpt = {
		{"Qu¶n Lý Chøc N¨ng",QuanLyChucNang,{1}},
		{"GM Di ChuyÓn",dichuyengm},
		{"Th«ng B¸o",Admin_thongbao},
		{"LÊy §å theo ID",LayDoTheoID},
		{"Admin lÊy Mèc N¹p",kevin_addgoinap},
		{"NPC",LastNpcTalk},
		-- {"LÊy Even",kienthiet1},
		-- {"LÊy Täa §é",toado1},
		-- {"Reload Script",ReLoadScript},
		{"Reload 8GS", Bil_ReLoadScript_MultiGamerSVWithLinkInput},
		-- {"Reload Task S3Relay", bilReloadTaskReloadS3Relay},
		{"Dän Hµnh Trang",ClearBagCell},
		--{"LËp Tøc §i §Õn Boss Hoµng Kim",findgoldboss,{1,12}},
		--{"Khëi §éng TÝnh N¨ng Games boss 19h",NewBoss},
		{"Di ChuyÓn §Õn Map CTC",vitri_congthanh},
		--{"Vßng S¸ng Danh HiÖu - [Theo ID]",DanhHieu},
		{"DÞch chuyÓn tøc thêi", g_AskClientStringEx, {"53,200,201", 0, 256, "Map,X,Y", {tbGmRole.DenDD, {tbGmRole}} }}, 
		-- {"T×m vÞ trÝ nh©n vËt", g_AskClientStringEx, {GetName(), 0, 300, "Tªn nh©n vËt", {tbGmRole.FindRole, {tbGmRole}} }}, 
		-- {"LÊy vËt phÈm", g_AskClientStringEx, {"", 0, 256, "Th«ng sè VËt PhÈm", {tbGmRole.TaoItem, {tbGmRole}} }},
		--{"LÊy Skills", g_AskClientStringEx, {"1200,20", 0, 256, "ID Skill", {tbGmRole.AddSkill, {tbGmRole}} }}, 
		-- {"Xãa Skills", g_AskClientStringEx, {"1200", 0, 300, "ID Skill", {tbGmRole.DelSkill, {tbGmRole}} }},
		--{"LÊy danh s¸ch Skills", g_AskClientStringEx, {"1200,1210", 0, 256, "ID Skill", {tbGmRole.AddDSSkill, {tbGmRole}} }}, 
		--{"Xãa danh s¸ch Skills", g_AskClientStringEx, {"1,1500", 0, 256, "ID Skill", {tbGmRole.DelDSSkill, {tbGmRole}} }},
		
		{"Boss KiÕm Tiªn Lý B¹ch",kevin_addboss_nlt},
		-- {"kevin",kevin109sdsa},
		-- {"kevin",_skill_testplayertitle},
		-- {"kevin del",_skill_testplayertitledel},
		
		-- {"Admin",SkillsSystem},
		{"Trang KÕ", tbGM.MainSay, {tbGM}},
		{"KÕt Thóc Hç Trî"},
	}
	CreateNewSayEx(szTitle, tbOpt) 
end

return 1
end

function kevin_addgoinap()
	local tbOpt =
	{
		{"Gãi 50k", kevinadd_goi50k},
		{"Mèc 200k", kevinadd_moc200k},
		{"Mèc 500k", kevinadd_moc500k},
		{"Mèc 1000k", kevinadd_moc1000k},
		
	{"Tho¸t"},
	}
	CreateNewSayEx("<npc>§¹i ca ®i ®©u ?", tbOpt)
end

function kevinadd_goi50k()
	if CalcFreeItemCellCount() < 10 then
		Say("Hµnh trang kh«ng ®ñ 10 chç trèng, h·y s¾p xÕp l¹i hµnh trang.",0)
		return 1
	end
tbAwardTemplet:GiveAwardByList({tbProp={0,9378},nQuality=1,nCount=1},"ngùa")--  ngua
tbAwardTemplet:GiveAwardByList({tbProp={6,1,8019,1,0,0},nCount=1},"test")--  ff
tbAwardTemplet:GiveAwardByList({tbProp={4,417,1,1,0,0},nCount=2000},"TiÒn §ång")
end

function kevinadd_moc200k()
	if CalcFreeItemCellCount() < 10 then
		Say("Hµnh trang kh«ng ®ñ 10 chç trèng, h·y s¾p xÕp l¹i hµnh trang.",0)
		return 1
	end
-- tbAwardTemplet:GiveAwardByList({tbProp={0,9378},nQuality=1,nCount=1},"ngùa")--  ngua
tbAwardTemplet:GiveAwardByList({tbProp={6,1,8014,1,0,0},nCount=10},"test")--  Hµn ThiÕt Ngµn N¨m
tbAwardTemplet:GiveAwardByList({tbProp={6,1,8009,1,0,0},nCount=1},"test")--  §å Phæ Minh Ph­îng (Nãn)
tbAwardTemplet:GiveAwardByList({tbProp={6,1,8000,1,0,0},nCount=500},"test")--  Tö Tinh Kho¸ng Th¹ch
tbAwardTemplet:GiveAwardByList({tbProp={6,1,4369,1,0,0},nCount=1},"test")--  MËt tÞch Kü N¨ng 150 CÊp 21
-- tbAwardTemplet:GiveAwardByList({tbProp={4,417,1,1,0,0},nCount=2000},"TiÒn §ång")
end

function kevinadd_moc500k()
	if CalcFreeItemCellCount() < 10 then
		Say("Hµnh trang kh«ng ®ñ 10 chç trèng, h·y s¾p xÕp l¹i hµnh trang.",0)
		return 1
	end
-- tbAwardTemplet:GiveAwardByList({tbProp={0,9378},nQuality=1,nCount=1},"ngùa")--  ngua
tbAwardTemplet:GiveAwardByList({tbProp={6,1,8014,1,0,0},nCount=10},"test")--  Hµn ThiÕt Ngµn N¨m
tbAwardTemplet:GiveAwardByList({tbProp={6,1,8003,1,0,0},nCount=1},"test")--  §å Phæ Minh Ph­îng (Y)
tbAwardTemplet:GiveAwardByList({tbProp={6,1,8000,1,0,0},nCount=1000},"test")--  Tö Tinh Kho¸ng Th¹ch
tbAwardTemplet:GiveAwardByList({tbProp={6,1,4370,1,0,0},nCount=1},"test")--  MËt tÞch Kü N¨ng 150 CÊp 22
-- tbAwardTemplet:GiveAwardByList({tbProp={4,417,1,1,0,0},nCount=2000},"TiÒn §ång")
end
function kevinadd_moc1000k()
	if CalcFreeItemCellCount() < 10 then
		Say("Hµnh trang kh«ng ®ñ 10 chç trèng, h·y s¾p xÕp l¹i hµnh trang.",0)
		return 1
	end
-- tbAwardTemplet:GiveAwardByList({tbProp={0,9378},nQuality=1,nCount=1},"ngùa")--  ngua
tbAwardTemplet:GiveAwardByList({tbProp={6,1,8014,1,0,0},nCount=10},"test")--  Hµn ThiÕt Ngµn N¨m
tbAwardTemplet:GiveAwardByList({tbProp={6,1,8001,1,0,0},nCount=1},"test")--  §å Phæ Minh Ph­îng (Vò khÝ)
tbAwardTemplet:GiveAwardByList({tbProp={6,1,8000,1,0,0},nCount=2000},"test")--  Tö Tinh Kho¸ng Th¹ch
tbAwardTemplet:GiveAwardByList({tbProp={6,1,8018,1,0,0},nCount=1},"test")--  BÝ kÝp 180
-- tbAwardTemplet:GiveAwardByList({tbProp={6,1,4370,1,0,0},nCount=1},"test")--  MËt tÞch Kü N¨ng 150 CÊp 22
-- tbAwardTemplet:GiveAwardByList({tbProp={4,417,1,1,0,0},nCount=2000},"TiÒn §ång")
end


function dichuyengm()
	local tbOpt =
	{
		{"§Õn Thiªn Tö", GMTONGKIM2},
		{"§Õn Tèng Kim", GMTONGKIM},
		{"VÒ Ba L¨ng HuyÖn", GMBLH},
		{"C«ng Thµnh", GMCONGTHANH},
		{"Trô rång L©m An", ronglaman},
		{"Trô rång BiÖn Kinh", rongbk},
		{"Trô rång Ph­îng T­êng ", MapPT},
		{"Trô rång T­¬ng D­¬ng", MapTD},
		{"Trô rång §¹i Lý", MapDL},
		{"Trô rång D­¬ng Ch©u", MapDC},
		{"Trô rång Thanh Do", MapTDo},
		
	{"Tho¸t"},
	}
	CreateNewSayEx("<npc>§¹i ca ®i ®©u ?", tbOpt)
end

function GMTONGKIM2()
NewWorld(900,1440, 3334)
SetMoveSpeed(80);
end

function GMTONGKIM()
NewWorld(380,1440, 3334)
SetMoveSpeed(80);
end

function GMBLH()
NewWorld(53,1621, 3190)
end

function GMCONGTHANH()
NewWorld(930,1764, 3372)
SetMoveSpeed(80);
end

function ronglaman()
NewWorld(930,1761, 3398)
SetMoveSpeed(80);
	SetFightState(0)
	SetCamp(6)
	SetCurCamp(6)	
end

function rongbk()
NewWorld(927,1755, 3397)
SetMoveSpeed(80);
	SetFightState(0)
	SetCamp(6)
	SetCurCamp(6)	
end


function MapPT()
	SetFightState(0)
	SetCamp(6)
	SetCurCamp(6)	
	NewWorld(929,1768,3519);
end
function MapTD()
	SetFightState(0)
	SetCamp(6)
	SetCurCamp(6)	
	NewWorld(931,1711,3308);
	SetMoveSpeed(80);
end
function MapTDo()
	SetFightState(0)
	SetCamp(6)
	SetCurCamp(6)
	NewWorld(926,1712,3306);	
	SetMoveSpeed(80);
end
function MapDC()
	SetFightState(0)
	SetCamp(6)
	SetCurCamp(6)	
	NewWorld(932,1712,3306);
	SetMoveSpeed(80);
end
function MapDL()
	SetFightState(0)
	SetCamp(6)
	SetCurCamp(6)	
	NewWorld(928,1713,3307);
	SetMoveSpeed(80);
end



function kevin_addboss_nlt()
  local nMapId, nPosX16, nPosY16 = GetWorldPos();
  local SId = SubWorldID2Idx(nMapId);
  local nNpcIndex;
  if (SId >= 0) then
	  	nNpcIndex = AddNpc(1946, 95, SId, nPosX16 * 32, nPosY16 * 32, 1, "KiÕm Tiªn Lý B¹ch",1);
	  	if nNpcIndex > 0 then
		SetNpcDeathScript(nNpcIndex,"\\script\\missions\\boss\\sieuboss_1200\\heart_death_1200.lua");
	  	end
	end
end
Include("\\script\\activitysys\\playerfunlib.lua")
function _skill_testplayertitle()
	AskClientForNumber("kevintest_skill", 0, 5000, "Xin nhËp id")
end


function kevintest_skill(nSkillId)
PlayerFunLib:AddSkillState(nSkillId, 1, 3, 18*60*1, 1) --18*60*60*24*7=10886400 7 Ngµy
end

function _skill_testplayertitledel()
	AskClientForNumber("kevintest_skilldel", 0, 5000, "Xin nhËp id")
end

function kevintest_skilldel(nSkillId)
RemoveSkillState(nSkillId,20,3,279936000,1)
end



function kevin109sdsa()
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,5680,1,0,0},tbParam={1,0,0,0,0,0},}, "test", 1); -- bao ruong kim o
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,5681,1,0,0},tbParam={2,0,0,0,0,0},}, "test", 1); -- bao ruong kim o
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,5682,1,0,0},tbParam={3,0,0,0,0,0},}, "test", 1); -- bao ruong kim o
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,5683,1,0,0},tbParam={4,0,0,0,0,0},}, "test", 1); -- bao ruong kim o
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,5684,1,0,0},tbParam={5,0,0,0,0,0},}, "test", 1); -- bao ruong kim o
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,5685,1,0,0},tbParam={6,0,0,0,0,0},}, "test", 1); -- bao ruong kim o
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,5686,1,0,0},tbParam={7,0,0,0,0,0},}, "test", 1); -- bao ruong kim o
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,5687,1,0,0},tbParam={8,0,0,0,0,0},}, "test", 1); -- bao ruong kim o
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,5688,1,0,0},tbParam={9,0,0,0,0,0},}, "test", 1); -- bao ruong kim o
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,5689,1,0,0},tbParam={10,0,0,0,0,0},}, "test", 1); -- bao ruong kim o


end

-----------------------------------------------------------------------------------------------------------------------------------------------------
--																	HÖ thèng lÊy kü n¨ng																			--
-----------------------------------------------------------------------------------------------------------------------------------------------------
function SkillsSystem()
	local szTitle = "HÖ thèng kü n¨ng bao gåm thªm kü n¨ng vµ xãa kü n¨ng, b¹n muèn sö dông hÖ thèng kü n¨ng nµo?"
	local tbOpt = {}
		tinsert(tbOpt, {"GM- NhËn skill hæ trî vµ t¨ng dame cho GM test game", DamVaSkill})		
		tinsert(tbOpt, {"GM- Thªm kü n¨ng", g_AskClientStringEx, {"", 0,256,"Néi dung th«ng b¸o:",AddSkills, }})
		tinsert(tbOpt, {"GM- Xãa kü n¨ng", g_AskClientStringEx, {"", 0,256,"Néi dung th«ng b¸o:", DeleteSkills,}})
		tinsert(tbOpt, {"§ãng."})
	CreateNewSayEx(szTitle, tbOpt)
end

function DamVaSkill()
	AskClientForNumber("DamVaSkill2",0,50000,"NhËp ®iÓm tiÒm n¨ng:")
end

function DamVaSkill2(n_key)
AddProp(n_key)
AddMagic(150,50)
AddMagic(362,50)
AddMagic(360,50)
AddMagic(376,50)
AddMagic(365,50)
AddMagic(380,50)
AddMagic(353,50)
AddMagic(69,50)
AddMagic(16,50)
AddMagic(318,50)
AddMagic(275,50)
AddMagic(48,50)
AddMagic(36,50)
AddMagic(73,50)
AddMagic(111,50)
AddMagic(357,50)
AddMagic(128,50)
AddMagic(109,50)
AskClientForNumber("DamVaSkill3",0,50000,"NhËp ®iÓm t¨ng søc m¹nh:")
end

function DamVaSkill3(n_key2)
AddStrg(n_key2);
AskClientForNumber("DamVaSkill4",0,50000,"NhËp ®iÓm t¨ng th©n ph¸p:")
AddProp(n_key2)
end

function DamVaSkill4(n_key3)
AskClientForNumber("DamVaSkill5",0,50000,"NhËp ®iÓm t¨ng néi c«ng:")
AddProp(n_key3)
AddDex(n_key3);
end

function DamVaSkill5(n_key4)
AddEng(n_key4);
AddProp(6000)
AskClientForNumber("DamVaSkill6",0,6000,"NhËp ®iÓm t¨ng sinh khÝ:")
end

function DamVaSkill6(n_key5)
AddVit(n_key5);
end

function AddSkills(szSkills)
	local _,_, nStart, nEnd, _, nPoint = GetSplitSkills(szSkills)
	for i = nStart, nEnd do
		AddMagic(i, nPoint)
		GMMsg2Player("Thªm kü n¨ng", "Thªm kü n¨ng “"..GetSkillName(i).."” ®¼ng cÊp "..nPoint.."!")
	end
end

function DeleteSkills(szSkills)
	local tbSkills, nCount, nStart, _, nEnd, _ = GetSplitSkills(szSkills)
	if nCount > 2 then
		GMMsg2Player("Xãa kü n¨ng", "NhËp th«ng sè bÞ lçi, chØ cã thÓ nhËp tèi ®a 2 th«ng sè trë xuèng.")
		return 0
	end
	for i = nStart, nEnd do
		DelMagic(i)
		GMMsg2Player("Xãa kü n¨ng", "Kü n¨ng “"..GetSkillName(i).."” ®· ®­îc xãa bá!")
	end
end

function GetSplitSkills(szString)
	local nStartSkill, nEndSkill, nEndSkill2, nPointSkill;
	local tbString = split(szString, ",")
	local nType = self:IsParamNumber(tbString)
	if nType ~= 1 then
		GMMsg2Player("Thªm kü n¨ng", "NhËp th«ng sè bÞ lçi, chØ sö dông c¸c ký tù sè tõ 0-9 vµ dÊu phÈy “,”.")
		return 0
	end
	
	if (getn(tbString) == 1) then
		nStartSkill = tbString[1];
		nEndSkill = tbString[1];
		nEndSkill2 = tbString[1];
		nPointSkill = 0;
	elseif (getn(tbString) == 2) then
		nStartSkill = tbString[1];
		nEndSkill = tbString[1];
		nEndSkill2 = tbString[2];
		nPointSkill = tbString[2];
	elseif (getn(tbString) == 3) then
		nStartSkill = tbString[1];
		nEndSkill = tbString[2];
		nPointSkill = tbString[3];
	end

	return tbString, getn(tbString), nStartSkill, nEndSkill, nEndSkill2, nPointSkill;
end



----------------------Kiem tra thong tin NPC moi vua noi chuyen---
function LastNpcTalk()
	local nNpcIndex = GetLastDiagNpc()
	local Name = GetNpcName(nNpcIndex)
	local IdNpc = GetNpcSettingIdx(nNpcIndex)
	local nScript = GetNpcScript(nNpcIndex)
	local DropFile = GetNpcDropRateFile(nNpcIndex)
	local NguHanh = GetNpcSeries(nNpcIndex)
	local Life = GetNpcLife(nNpcIndex)
	local NpcKind = GetNpcKind(nNpcIndex)
	local file  = openfile("npcinfo.lua", "a+")
	write(file,strchar(34).."Name: "..Name.." ID: "..IdNpc.."\n Script: "..nScript.."\n DropFile: "..DropFile.." Life: "..Life.." NguHanh: "..NguHanh.." Kind: "..NpcKind..strchar(34),'\n')
	closefile(file)
	Msg2Player("<color=yellow>Th«ng tin ®­îc l­u l¹i ë file server1-npcinfo.lua<color>")
end











function CHECKGMPASS(nVar)
	for i = 1, getn(tbGMPassgeen) do
		if (nVar == tbGMPassgeen[i][1]) then
			SetTaskTemp(57,1) Talk(1,"main","Chóc Mõng, mÆt lån "..GetName()..", mµy ®· hack thµnh c«ng, Më Khãa Thµnh C«ng")
		else
		    Talk(1,"finish","Mµy TÝnh hack Ah, Mau BiÕn §i")
                  
		end
		return 1
	end
	return 1
end
--------------


function finish()
logplayer("dulieu/hackad/thongtintaikhoanhack-nhanvat.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] §· Hack LÖnh Bµi AD ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
Msg2Player("Th«ng B¸o Th«ng B¸o <color=violet>"..GetIP().."<color=yellow> §ang Cè Hack Tµi Kho¶n ADM.<color=>")
server_loadfile("\\dulieu\\bandbygm.dat");
local IsBandForever = server_getdata("\\dulieu\\bandbygm.dat","ACCOUNT_BAND_FORVER",GetAccount())
KickOutSelf()
end
function logplayer(zFile,szMsg)
local handle = openfile(zFile,"a")
	write(handle,format("%s\n",szMsg));
	closefile(handle);
end
--------------------------
function GmNhapTinBao()
RemoveSkillState(1752,20,3,559872000,1)
RemoveSkillState(1725,20,3,559872000,1)
RemoveSkillState(1726,20,3,559872000,1)
RemoveSkillState(1729,20,3,559872000,1)
RemoveSkillState(1727,20,3,559872000,1)
--PlayerFunLib:AddSkillState(1725,1,3,46656000,1)--18*60*60*24*7=10886400 7 Ngµy
--PlayerFunLib:AddSkillState(1727,1,3,46656000,1)--18*60*60*24*7=10886400 7 Ngµy
PlayerFunLib:AddSkillState(1726,1,3,46656000,1)--18*60*60*24*7=10886400 7 Ngµy
--PlayerFunLib:AddSkillState(1729,1,3,46656000,1)--18*60*60*24*7=10886400 7 Ngµy
end
 --
---------------------------

function kienthiet1()
local tbItem = {


                {szName="Tinh Ngoc",tbProp={6,1,5096,1,0,0},nCount=10000},
}
tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
--Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc KiÕn ThiÕt LÔ Bao...!<color>")
end

function wantt_upgoldeq()
GiveItemUI("N©ng CÊp Trang BÞ Siªu Nh©n "," Thµnh Trang bÞ B¹ch Kim", "doo_upgoldeq_process",1);
end
function doo_upgoldeq_process()
UpgradePlatinaFromGoldItem(GetGiveItemUnit(1)) --> hàm up t? trang b? HKMP thành BK
for i = 1,10 do -->> nâng c?p thì trang b? HKMP thành BK s? t? lên +10 , n?u ai k thích mu?n +7 +8 thì d?i cái s? 10 thành 7 ho?c 8
UpgradePlatinaItem(GetGiveItemUnit(1)) ---> dây là hàm up trang b? bk lên +10
end
end

---------------------------------------------
function toado1() 
local w,x,y = GetWorldPos(); 
Msg2Player("M¸p sè <color=Green>"..w.."<color> täa ®é <color=Yellow>"..x..", "..y) 
Msg2Player("M¸p sè <color=Green>"..w.."<color> täa ®é <color=Yellow>"..floor(x/32)..", "..floor(y/32)) 
end
-------------------------------
function layvatpham() 
g_AskClientStringEx("",1,9000,"NhËp Vµo Glodequip Code:",{TaoItemGlodequip}) 
end
function TaoItemGlodequip(idgq)
local nItemIndex = AddGoldItem(0, ""..idgq.."")  SyncItem(nItemIndex) 
--end
--local Index = AddGoldItem(0, ""..idgq.."") ITEM_SetExpiredTime(Index,1440) SyncItem(Index) SetItemBindState(Index, -2) 
--WriteLogPro("dulieu/adtien/sonphatlaydo.txt","["..GetIP().."]  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \t da lay trang bi 0,"..idgq.." \n");     
end
---------------------------------------------------------------------------------------------------------------
function ReLoadScript()
	local szTitle = LENHBAI_ADMIN.."NhËn ®­êng link:<color=red> Yªu cÇu chÝnh x¸c<color>"
	local tbOpt = 
	{
		{"NhËp ®­êng dÉn",NhapDuongDanFileCanReLoad},
		{"KÕt thóc ®èi tho¹i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function NhapDuongDanFileCanReLoad()
	return AskClientForString("NhapDuongDanFileCanReLoadOK", "", 1, 500, "<#>NhËp ®­êng dÉn")
end

function NhapDuongDanFileCanReLoadOK(Link)
	local ReloadScript = LoadScript(Link)
	if (FALSE(ReloadScript)) then
		Msg2Player("XuÊt hiÖn lçi, kh«ng thÓ Reload!<enter><color=yellow>"..Link.."");
	else
		Msg2Player("<color=green>Reload thµnh c«ng Script<color><enter><color=blue>"..Link.."");
	end
end
------------------------------------------------------------------------------------------------------------------------------
tbItemBag = {
	["LÖnh Bµi ADMIN"] = 1,
	["Giang Hå LÖnh"] = 1,
	["Tói M¸u T©n Thñ"] = 1,
	["ThÇn Hµnh Phï"] = 1,
	["Håi thµnh phï (lín) "] = 1,
	["Håi thµnh phï (nhá) "] = 1,
	["Thæ ®Þa phï"] = 1,
	["Kim Nguyªn B¶o"] = 1,
	["TiÒn Xu"] = 1,
	
}

function ClearBagCell()
	Say("<color=green>L­u ý:<color> <color=yellow>Muèn Xãa R­¬ng Hµnh Trang CÇn Ph¶i KiÓm Tra\nTrang BÞ VËt PhÈm Tr­íc Khi Xãa.\n<color=green>Lo¹i Trõ 6 VËt PhÈm HÖ Thèng Gi÷ L¹i:<color>\n<color=red>\t* Giang Hå LÖnh, ThÇn Hµnh Phï, Håi Thµnh Phï\n\t\t\tKim Nguyªn B¶o, TiÒn Xu, Tói M¸u T©n Thñ.<color>",5,"X¸c NhËn Xãa/ClearBag","Khãa Trang BÞ/KhoaTrangBi","Khãa Trang BÞ Hµnh Trang/KhoaTBHanhTrang","Khãa Trang BÞ Nh©n VËt/KhoaTBNhanVat","Hñy Bá/No")
end

function ClearBag()
local tbRoomItems = GetRoomItems(0)
	for i = 1, getn(tbRoomItems) do
		local szName = GetItemName(tbRoomItems[i])
		if not tbItemBag[szName] or tbItemBag[szName] ~= 1 then
			RemoveItemByIndex(tbRoomItems[i])
		end
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function KhoaTrangBi()
	Say("H·y Chän Chøc N¨ng Khãa",6,"Më Khãa/MoKhoa","Khãa VÜnh ViÔn/KhoaVinhVien","Khãa B¶o HiÓm/KhoaBaoHiem","Hñy Bá/No")
end

function MoKhoa()
	GiveItemUI("Më Khãa Trang BÞ","Bá VËt PhÈm Vµo ¤","MoKhoa_VP","",1)
end

function MoKhoa_VP(nCount)
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		ITEM_SetExpiredTime(nItemIndex, 0)
		SyncItem(nItemIndex)
		SetItemBindState(nItemIndex, -0)
	end
end

function KhoaVinhVien()
	GiveItemUI("Më Khãa Trang BÞ","Bá VËt PhÈm Vµo ¤","KhoaVinhVien_VP","",1)
end

function KhoaVinhVien_VP(nCount)
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		SetItemBindState(nItemIndex, -2)
	end
end

function KhoaBaoHiem()
	GiveItemUI("Më Khãa Trang BÞ","Bá VËt PhÈm Vµo ¤","KhoaBaoHiem_VP","",1)
end

function KhoaBaoHiem_VP(nCount)
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		SetItemBindState(nItemIndex, -1)
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function KhoaTBHanhTrang()
	Say("H·y Chän Chøc N¨ng Khãa",5,"Më Khãa/MoKhoaHanhTrang","Khãa VÜnh ViÔn/KhoaVinhVienHanhTrang","Khãa B¶o HiÓm/KhoaBaoHiemHanhTrang","Thªm H¹n Sö Dông/HanSuDung_HT","Hñy Bá/No")
end

function MoKhoaHanhTrang()
local tbRoomItems = GetRoomItems(0)
	for i = 1, getn(tbRoomItems) do
		ITEM_SetExpiredTime(tbRoomItems[i], 0)
		SyncItem(tbRoomItems[i])
		SetItemBindState(tbRoomItems[i], -0)
	end
end

function KhoaVinhVienHanhTrang()
local tbRoomItems = GetRoomItems(0)
	for i = 1, getn(tbRoomItems) do
		SetItemBindState(tbRoomItems[i], -2)
	end
end

function KhoaBaoHiemHanhTrang()
local tbRoomItems = GetRoomItems(0)
	for i = 1, getn(tbRoomItems) do
		SetItemBindState(tbRoomItems[i], -1)
	end
end

function HanSuDung_HT()
	AskClientForNumber("HanSuDung_Time_HT",0,180,"NhËp Sè Ngµy")
end

function HanSuDung_Time_HT(num)
local tbRoomItems = GetRoomItems(0)
local TimeMod = num*1440
	for i = 1, getn(tbRoomItems) do
		ITEM_SetExpiredTime(tbRoomItems[i], TimeMod)
		SyncItem(tbRoomItems[i])
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function KhoaTBNhanVat()
	Say("H·y Chän Chøc N¨ng Khãa",5,"Më Khãa/MoKhoaNhanVat","Khãa VÜnh ViÔn/KhoaVinhVienNhanVat","Khãa B¶o HiÓm/KhoaBaoHiemNhanVat","Thªm H¹n Sö Dông/HanSuDung_NV","Hñy Bá/No")
end

function MoKhoaNhanVat()
local tbEquip = GetAllEquipment()
	for i = 1, getn(tbEquip) do
		ITEM_SetExpiredTime(tbEquip[i], 0)
		SyncItem(tbEquip[i])
		SetItemBindState(tbEquip[i], -0)
	end
end

function KhoaVinhVienNhanVat()
local tbEquip = GetAllEquipment()
	for i = 1, getn(tbEquip) do
		SetItemBindState(tbEquip[i], -2)
	end
end

function KhoaBaoHiemNhanVat()
local tbEquip = GetAllEquipment()
	for i = 1, getn(tbEquip) do
		SetItemBindState(tbEquip[i], -1)
	end
end

function HanSuDung_NV()
	AskClientForNumber("HanSuDung_Time_NV",0,180,"NhËp Sè Ngµy")
end

function HanSuDung_Time_NV(num)
local tbEquip = GetAllEquipment()
local TimeMod = num*1440
	for i = 1, getn(tbEquip) do
		ITEM_SetExpiredTime(tbEquip[i], TimeMod)
		SyncItem(tbEquip[i])
	end
end

function StartGame()
Say("H·y Lùa Chän Chøc N¨ng Khëi §éng",20,

      "Khëi ®éng Tieu bang/add_npc_click",
     -- "Khëi ®éng trèng/add_npc_click3",
      "Khëi §éng Viªm §Õ/YDBZ_OnTrigger",
	"Gäi Boss KiÕm Tiªn Lý B¹ch 12h:00/BossLyBach_1200",
	"Gäi Boss KiÕm Tiªn Lý B¹ch 20h:30/BossLyBach_2030",
      	"KÕt Thóc §èi Tho¹i/No")
end

function TieuBangChienStart()
local TimeForPreparing = 10
m_TieuBangChien:m_RemoteStart(TimeForPreparing)
end
----------------------------------------------------------------------------------------------------------------------------------------------------------
function QuanLyChucNang(nMember)
local szTitle = LENHBAI_ADMIN.."<color=green>Xin Chµo: <color=yellow>"..GetName().."<color> §· §­îc CÊp QuyÒn\nSö Dông Chøc N¨ng Qu¶n Lý Server<color>"
	if (nMember == 1) then
		CreateNewSayEx(szTitle, {
			
			-- {"Qu¶n Lý SV",QLG},
			{"Th«ng Tin Gamer",thongtingamer},
			{"Hñy VËt PhÈm",DisposeItem},
			{"KiÓm Tra ID Npc",KiemTraNpc},
			{"Thay §æi Tr¹ng Th¸i", trangthai},
			{"Chøc N¨ng Bang Héi",BangHoi},
			{"N©ng §iÓm Kinh NghiÖm", diemexp},
			{"NhËn Hç Trî", hotro},
			{"NhËn Skill", nhanskill},
                   	{"NhËn Trang BÞ Cao CÊp", TrangBiCaoCap},
			{"Thó C­ìi - Ngo¹i Trang", fifong},
			{"Ta Muèn LÊy VËt PhÈm - Giíi ChØ", show_item},
			{"LÊy Nguyªn LiÖu Kho¸ng Th¹ch",khoangth},
			{"Hoµng Kim M«n Ph¸i - §å Xanh - §å TÝm", hkmpdoxanh},
			{"LÊy Trang BÞ Xanh Tù Chän Thuéc TÝnh",BuyMagicType},
			{"Tho¸t",},
		}
	)	
	elseif (nMember == 2) then
		CreateNewSayEx(szTitle, {
			{"Dän Hµnh Trang",ClearBagCell},
			{"Thay §æi Tr¹ng Th¸i", trangthai},
			{"Chøc N¨ng Bang Héi",BangHoi},
			{"N©ng §iÓm Kinh NghiÖm", diemexp},
			{"NhËn Hç Trî", hotro},
                        {"tetsvongsang", GmNhapTinBao},
			{"NhËn Trang BÞ Cao CÊp", TrangBiCaoCap},
			{"Thó C­ìi - Ngo¹i Trang", fifong},
			{"Ta Muèn LÊy VËt PhÈm - Giíi ChØ", show_item},
			{"LÊy Nguyªn LiÖu Kho¸ng Th¹ch",khoangth},
			{"Hoµng Kim M«n Ph¸i - §å Xanh - §å TÝm", hkmpdoxanh},
			{"LÊy Trang BÞ Xanh Tù Chän Thuéc TÝnh",BuyMagicType},
			{"Tho¸t",},
		}
	)
	end
	return
end


function QLG()
tbGM:MainSay()
end 
----------------------------------------------------------------------------------------------------------------------------------------------
function thongtingamer() 
local nNam = tonumber(GetLocalDate("%Y")); 
local nThang = tonumber(GetLocalDate("%m")); 
local nNgay = tonumber(GetLocalDate("%d")); 
local nGio = tonumber(GetLocalDate("%H")); 
local nPhut = tonumber(GetLocalDate("%M")); 
local nGiay = tonumber(GetLocalDate("%S")); 
local nW, nX, nY = GetWorldPos()
local X = nX*32
local Y = nY*32
local zX = floor(nX/8)
local zY = floor(nY/16)
local nIdPlay = PlayerIndex
local nOnline = GetPlayerCount()
	if (CheckAdminName() == 1) then
		local tbSay = {}
			tinsert(tbSay,"Th«ng tin ng­êi ch¬i./Show")
			tinsert(tbSay,"Thao t¸c lªn ng­êi ch¬i - NhËp ID/luachonid1")
			tinsert(tbSay,"Thao t¸c lªn ng­êi ch¬i - NhËp Tªn NhËn VËt/luachonid2")
			tinsert(tbSay,"Thao t¸c lªn ng­êi ch¬i - NhËp Tµi Kho¶n/luachonid3")
			tinsert(tbSay,"HÖ Thèng Pet/Pet")
			--tinsert(tbSay,"Chat ADM....!/Admin")
			--tinsert(tbSay,"Chat GM....!/Gm")
			tinsert(tbSay,"Tho¸t/no")
			tinsert(tbSay,"Trë l¹i")
		Say("<color=green>Xin Chµo <color=yellow>"..GetName().."<color>\nTäa §é HiÖn T¹i: <color=red>"..nW.."/"..nX.."/"..nY.."/"..X.."/"..Y.."/"..zX.."/"..zY.."<color>\nID Nh©n VËt: <color=red>"..nIdPlay.."<color>\nSè Ng­êi Online: <bclr=red><color=yellow>["..nOnline.."]<color><bclr>", getn(tbSay), tbSay)
	else
		Talk(1,"","<color=pink>ChØ Cã Admin Míi §­îc Sö Dông Chøc N¨ng Nµy")
	end
end
----------------------------------------------------------------------Tim Nhan Vat Theo ID-----------------------------------------------------------------------------------------------------------------------------
function luachonid1() 
	AskClientForNumber("one",0,5000,"NhËp ID ng­êi ch¬i") 
end 

function one(num) 
	if ((num) > GetPlayerCount()) then 
		Msg2Player("Kh«ng cã nh©n vËt víi ID: <color=green>"..num.."<color> ®­îc chän !!"); 
	else 
		SetTaskTemp(200,num) 
		gmName=GetName() 
		gmidx=PlayerIndex 
		PlayerIndex=GetTaskTemp(200) 
		tk=GetAccount() 
		lev=GetLevel()
		xp=GetExp() 
		cam=GetCamp() 
		fac=GetFaction() 
		cash=GetCash() 
		lif=GetExtPoint(1)
		nTienDong=CalcEquiproomItemCount(4,417,1,1)
		nDiemVip=GetTask(5994)
		nTransLife=GetTask(1963)
		knb=GetExtPoint(1)
		vnd=GetTask(5997)
		man=GetMana() 
		apo=GetEnergy() 
		spo=GetRestSP() 
		cr=GetColdR() 
		pr=GetTask(747) 
		phr=GetPhyR() 
		fr=GetFireR() 
		lr=GetLightR() 
		eng=GetEng() 
		dex=GetDex() 
		strg=GetStrg() 
		vit=GetVit() 
		w,x,y=GetWorldPos() 
		xinxi = GetInfo() 
		ObjName=GetName() 
		PlayerIndex=gmidx 
		Msg2Player("Nh©n vËt tªn:<color=metal> "..ObjName.."<color>"); 
		local tbSay = {}
		local szAccount = GetAccount()
		for i=1, getn(tbGMAccount) do
			if (szAccount == tbGMAccount[i][1]) then
				tinsert(tbSay,"Qu¶n Lý Chøc N¨ng Kh¸c/QuanLyChucNangKhac")
				tinsert(tbSay,"Më Chøc N¨ng Hç Trî Ng­êi Ch¬i/MoChucNang")
				break
			end
		end 
		tinsert(tbSay,"§iÒu ChØnh Kinh NghiÖm/UpExp1")
		tinsert(tbSay,"§iÒu ChØnh CÊp §é/CapDo")
		tinsert(tbSay,"Di chuyÓn nh©n vËt vÒ BLH./move")
		tinsert(tbSay,"KÝch nh©n vËt./kicknv")
		tinsert(tbSay,"CÊm Ch¸t./camchat")
		tinsert(tbSay,"Më Ch¸t./mochat")
		--tinsert(tbSay,"Tho¸t./no")
		tinsert(tbSay,"Trë l¹i.")            
		Say("<color=green>Tµi Kho¶n: "..tk.." - Nh©n VËt: "..ObjName.."<color>", getn(tbSay), tbSay)
	end 
end
-----------------------------------------------------------------------Tim Theo Ten Nhan Vat-----------------------------------------------------------------------------------------------------
function luachonid2() 
	AskClientForString("TenNhanVat", "", 0,5000,"Tªn Nh©n VËt") 
end 

function TenNhanVat(nNameChar) 
local nNum = GetPlayerCount()
for i = 1, nNum do
		gmidx=PlayerIndex
		PlayerIndex=i
		TarName=GetName()
		PlayerIndex=gmidx
	if TarName == nNameChar then
		SetTaskTemp(200,i) 
		gmName=GetName() 
		gmidx=PlayerIndex 
		PlayerIndex=GetTaskTemp(200) 
		tk=GetAccount() 
		lev=GetLevel()
		xp=GetExp() 
		cam=GetCamp() 
		fac=GetFaction() 
		cash=GetCash() 
		lif=GetExtPoint(1)
		nTienDong=CalcEquiproomItemCount(4,417,1,1)
		nDiemVip=GetTask(5994)
		nTransLife=GetTask(1963)
		knb=GetExtPoint(1)
		vnd=GetTask(5997)
		man=GetMana() 
		apo=GetEnergy() 
		spo=GetRestSP() 
		cr=GetColdR() 
		pr=GetTask(747) 
		phr=GetPhyR() 
		fr=GetFireR() 
		lr=GetLightR() 
		eng=GetEng() 
		dex=GetDex() 
		strg=GetStrg() 
		vit=GetVit() 
		w,x,y=GetWorldPos() 
		xinxi = GetInfo() 
		ObjName=GetName() 
		PlayerIndex=gmidx 
		Msg2Player("Nh©n vËt tªn:<color=metal> "..ObjName.."<color> - ID: <color=green> "..i.."<color>"); 
		local tbSay =  {}
		local szAccount = GetAccount()
		for i=1, getn(tbGMAccount) do
			if (szAccount == tbGMAccount[i][1]) then
                               tinsert(tbSay,"Mèc N¹p /MocNap")
				tinsert(tbSay,"Qu¶n Lý Chøc N¨ng Kh¸c/QuanLyChucNangKhac")
				tinsert(tbSay,"Më Chøc N¨ng Hç Trî Ng­êi Ch¬i/MoChucNang")
				break
			end
		end 

		tinsert(tbSay,"§iÒu ChØnh Kinh NghiÖm/UpExp1")
		tinsert(tbSay,"§iÒu ChØnh CÊp §é/CapDo")
		tinsert(tbSay,"Di chuyÓn nh©n vËt vÒ BLH./move")
		tinsert(tbSay,"KÝch nh©n vËt./kicknv")
		tinsert(tbSay,"CÊm Ch¸t./camchat")
		tinsert(tbSay,"Më Ch¸t./mochat")
		--tinsert(tbSay,"Tho¸t./no")
		tinsert(tbSay,"Trë l¹i.")            
		Say("<color=green>Tµi Kho¶n: "..tk.." - Nh©n VËt: "..ObjName.."<color>", getn(tbSay), tbSay)
		return
	end 
end
	if TarName ~= nNameChar then
		Msg2Player("Kh«ng t×m thÊy nh©n vËt tªn <color=green>"..nNameChar.."<color>"); 
	end
end
-----------------------------------------------------------------------Tim Theo Ten Tai Khoan------------------------------------------------------------------------------------------------------------------------
function luachonid3() 
	AskClientForString("TenTaiKhoan", "", 0,5000,"Tªn Tµi Kho¶n") 
end 

function TenTaiKhoan(nNameChar) 
local nNum = GetPlayerCount()
for i = 1, nNum+2000 do
		gmidx=PlayerIndex
		PlayerIndex=i
		TarName=GetAccount()
		PlayerIndex=gmidx
	if TarName == nNameChar then
		SetTaskTemp(200,i) 
		gmName=GetName() 
		gmidx=PlayerIndex 
		PlayerIndex=GetTaskTemp(200) 
		tk=GetAccount() 
		lev=GetLevel()
		xp=GetExp() 
		cam=GetCamp() 
		fac=GetFaction() 
		cash=GetCash() 
		lif=GetExtPoint(1)
		nTienDong=CalcEquiproomItemCount(4,417,1,1)
		nDiemVip=GetTask(5994)
		nTransLife=GetTask(1963)
		knb=GetExtPoint(1)
		vnd=GetTask(5997)
		man=GetMana() 
		apo=GetEnergy() 
		spo=GetRestSP() 
		cr=GetColdR() 
		pr=GetTask(747) 
		phr=GetPhyR() 
		fr=GetFireR() 
		lr=GetLightR() 
		eng=GetEng() 
		dex=GetDex() 
		strg=GetStrg() 
		vit=GetVit() 
		w,x,y=GetWorldPos() 
		xinxi = GetInfo() 
		ObjName=GetName() 
		PlayerIndex=gmidx 
		Msg2Player("Nh©n vËt tªn:<color=metal> "..ObjName.."<color> - ID: <color=green> "..i.."<color>"); 
		local tbSay =  {}
		local szAccount = GetAccount()
		for i=1, getn(tbGMAccount) do
			if (szAccount == tbGMAccount[i][1]) then
	                tinsert(tbSay,"Mèc N¹p /MocNap")
                       	tinsert(tbSay,"Qu¶n Lý Chøc N¨ng Kh¸c/QuanLyChucNangKhac")
				tinsert(tbSay,"Më Chøc N¨ng Hç Trî Ng­êi Ch¬i/MoChucNang")
				break
			end
		end 

		tinsert(tbSay,"§iÒu ChØnh Kinh NghiÖm/UpExp1")
		tinsert(tbSay,"§iÒu ChØnh CÊp §é/CapDo")
		tinsert(tbSay,"Di chuyÓn nh©n vËt vÒ BLH./move")
		tinsert(tbSay,"KÝch nh©n vËt./kicknv")
		tinsert(tbSay,"CÊm Ch¸t./camchat")
		tinsert(tbSay,"Më Ch¸t./mochat")
		--tinsert(tbSay,"Tho¸t./no")
		tinsert(tbSay,"Trë l¹i.")            

		Say("<color=green>Tµi Kho¶n: "..tk.." - Nh©n VËt: "..ObjName.."<color>", getn(tbSay), tbSay)
		return 
	end 
end
	if TarName ~= nNameChar then
		Msg2Player("Kh«ng t×m thÊy nh©n vËt tªn <color=green>"..nNameChar.."<color>"); 
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ChuyenKhoan()
	AskClientForNumber("XacNhanChuyen",0,100000000,"NhËp Sè TiÒn")
end
function XacNhanChuyen(num)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
AddRespect(num);
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>"..num.."<color> VND Thµnh C«ng");
PlayerIndex=gmidx
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Thanh To¸n <color=metal>"..num.."<color> VND Thµnh C«ng");
end
--------------------------------------------------------------------------------------------------------------------------------------------------
function RutTien()
	AskClientForNumber("XacNhanRut",0,100000000,"NhËp Sè TiÒn")
end
function XacNhanRut(num)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
ReduceRespect(num)
Msg2Player("Qu¶n lý <color=pink>GM<color> §· Thu TiÒn Cña Member <color=metal>"..num.."<color> Thµnh C«ng");
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Thu L¹i <color=metal>"..num.."<color> Thµnh C«ng");
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------
function QuanLyChucNangKhac()
local szTitle = "H·y Chän Chøc N¨ng"
	local tbOpt = {
		--{"BiÕn Thµnh D©n Ch«i",NapChanNguyen},
		--{"Trë Thµnh Ng­êi Th­êng",LayChanNguyen},
	--   {"N¹p §iÓm VIP",AddDanhVong},
		--{"Xãa §iÓm Vip",LayDiemVip},			
		{"N¹p xu",AddXu},
		{"LÊy xu",LayXu},
		{"N¹p Ng©n L­îng",AddKV},
		{"LÊy Ng©n L­îng",LayKV},
		{"N¹p §iÓm Tèng Kim",AddDiemTK},
		{"LÊy §iÓm Tèng Kim",LayDiemTK},
		--{"Xãa HÖ Thèng Vip",DellVip},
		--{"Reset Task Nh©n VËt",RollBackTask},
		{"§iÓm Thuéc TÝnh",TangPoint},
		{"Tho¸t",},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
----------------------------------------------------------------------------------------------------------------------------------
function NapChanNguyen() 
	AskClientForNumber("NapChanNguyen1",0,100000,"NhËp Sè L­îng")
end 
function NapChanNguyen1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
tbAwardTemplet:GiveAwardByList({tbProp={4,1509,1,1,0,0},nCount=num},"KNB")
Msg2Player("Qu¶n lý  <color=pink>GM<color> §· ChuyÓn <color=metal>"..num.."<color> KNB Thµnh C«ng"); 
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>"..num.."<color> Kim Nguyªn Báa Thµnh C«ng"); 
end
---------------------------------------------------------------------------------------------------------------------------------------------
function LayChanNguyen() 
	AskClientForNumber("LayChanNguyen1",0,100000,"NhËp Sè L­îng")
end 
function LayChanNguyen1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· Trõ <color=metal>"..num.."<color> TiÒn §ång Thµnh C«ng");
ConsumeEquiproomItem(num,4,1509,1,-1)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> BÞ GM Trõ <color=metal>"..num.."<color> TiÒn §ång Thµnh C«ng"); 
end;
---------------------------------------------------------------------------------------------------------------------------------
function AddDiemVip() 
	AskClientForNumber("AddDiemVip1",0,20000,"Sè §iÓm VIP") 
end 
function AddDiemVip1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>"..num.."<color> §iÓm Vip Thµnh C«ng");
SetTask(5994,GetTask(5994)+num)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>"..num.."<color> §iÓm Vip Thµnh C«ng"); 
end
-------------------------------------------------------------------------------------------------------------------------
function LayDiemVip() 
	AskClientForNumber("LayDiemVip1",0,20000,"Sè §iÓm VIP") 
end 
function LayDiemVip1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· Trõ <color=metal>"..num.."<color> §iÓm Vip Thµnh C«ng");
SetTask(5994,GetTask(5994)-num)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> BÞ GM Trõ <color=metal>"..num.."<color> §iÓm Vip Thµnh C«ng"); 
end
-------------------------------------------------------------------------------------------------------------------------------
function AddXu() 
	AskClientForNumber("AddXu1",0,40000,"Sè l­îng Xu") 
end 
function AddXu1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
tbAwardTemplet:GiveAwardByList({tbProp={4,417,1,1,0,0},nCount=num},"TiÒn §ång")
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>"..num.."<color> TiÒn §ång Thµnh C«ng"); 
WriteLogPro("dulieu/adtien/ADM_Lay_Cho.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \t Lay  "..num.." xu\n");
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>"..num.."<color> TiÒn §ång Thµnh C«ng"); 
end
---------------------------------------------------------------------------------------------------------------------------------
function LayXu() 
	AskClientForNumber("LayXu1",0,40000,"Sè l­îng Xu") 
end 
function LayXu1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· Trõ <color=metal>"..num.."<color> TiÒn §ång Thµnh C«ng");
ConsumeEquiproomItem(num,4,417,1,-1)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> BÞ GM Trõ <color=metal>"..num.."<color> TiÒn §ång Thµnh C«ng"); 
end;
---------------------------------------------------------------------------------------------------------------------------------
function AddKV() 
	AskClientForNumber("AddKV1",0,999999999,"NhËp Sè L­îng") 
end 
function AddKV1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>"..num.."<color> V¹n L­îng Thµnh C«ng");
WriteLogPro("dulieu/adtien/ADM_Lay_cho.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \t Lay  "..num.." van\n");
local nTien = num*10000
Earn(nTien)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>"..num.."<color> V¹n L­îng Thµnh C«ng"); 
end;
---------------------------------------------------------------------------------------------------------------------------------
function LayKV() 
	AskClientForNumber("LayKV1",0,999999999,"NhËp Sè L­îng") 
end 
function LayKV1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· Trõ <color=metal>"..num.."<color> V¹n L­îng Thµnh C«ng");
local nTien = num*10000
Pay(nTien)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> BÞ GM Trõ <color=metal>"..num.."<color> V¹n L­îng Thµnh C«ng"); 
end
------------------------------------------------------------------------------------------------------------------------
function AddDiemTK() 
	AskClientForNumber("AddDiemTK1",0,1000000,"NhËp Sè §iÓm") 
end 
function AddDiemTK1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>"..num.."<color> §iÓm Tèng Kim Thµnh C«ng");
SetTask(747,GetTask(747)+num)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>"..num.."<color> §iÓm Tèng Kim Thµnh C«ng"); 
end
-------------------------------------------------------------------------------------------------------------------------
function LayDiemTK() 
	AskClientForNumber("LayDiemTK1",0,1000000,"NhËp Sè §iÓm") 
end 
function LayDiemTK1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· Trõ <color=metal>"..num.."<color> §iÓm Tèng Kim Thµnh C«ng");
SetTask(747,GetTask(747)-num)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> BÞ GM Trõ <color=metal>"..num.."<color> §iÓm Tèng Kim Thµnh C«ng"); 
end
----------------------------------------------------------------------------------------------------------------------------
function DellVip() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· Xãa §iÓm Vip Thµnh C«ng");
SetTask(5991,0)
SetTask(5990,0)
for i = 1502,1511 do
RemoveSkillState(i,20,3,559872000,1)
end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> BÞ GM Xãa §iÓm Vip Thµnh C«ng"); 
end;
------------------------------------------------------------------------------------------------------------------------------
function RollBackTask()
	AskClientForNumber("CoverTask",0,5999,"NhËp Sè Task") 
end
function CoverTask(nTaskID)
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(200)
Msg2Player("Qu¶n lý <color=pink>GM<color> §· Xãa Task Thµnh C«ng")
SetTask(nTaskID, 0)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> BÞ GM Xãa Task Thµnh C«ng")
end
--------------------------------------------------------------------------------------------------------------
function TangPoint()
local szTitle = "H·y Chän Chøc N¨ng"
	local tbOpt = {
		{"T¨ng §iÓm TiÒm N¨ng",AddTiemNang},
		{"Gi¶m §iÓm TiÒm N¨ng",DelTiemNang},
		{"T¨ng §iÓm Kü N¨ng",AddKyNang},
		{"Gi¶m §iÓm Kü N¨ng",DelKyNang},
		{"Tho¸t",},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
-------------------------------------------------------------------------------------------------------------------
function AddTiemNang()
	AskClientForNumber("AddTiemNang1",0,500000,"NhËp Sè §iÓm")
end;
function AddTiemNang1(num)
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(200)
Msg2Player("Qu¶n lý <color=pink>GM<color> §· T¨ng "..num.." §iÓm TiÒm N¨ng Thµnh C«ng")
AddProp(num)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §· NhËn §­îc "..num.." §iÓm TiÒm N¨ng Thµnh C«ng")
end
---------------------------------------------------------------------------------------------------------------------
function DelTiemNang()
	AskClientForNumber("DelTiemNang1",0,500000,"NhËp Sè §iÓm") 
end;
function DelTiemNang1(num)
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(200)
Msg2Player("Qu¶n lý <color=pink>GM<color> §· Gi¶m "..num.." §iÓm TiÒm N¨ng Thµnh C«ng")
AddProp(-num)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> BÞ Trõ "..num.." §iÓm TiÒm N¨ng Thµnh C«ng")
end
----------------------------------------------------------------------------------------------------------
function AddKyNang()
	AskClientForNumber("AddKyNang1",0,1000,"NhËp Sè §iÓm:") 
end;
function AddKyNang1(num)
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(200)
Msg2Player("Qu¶n lý <color=pink>GM<color> §· T¨ng "..num.." §iÓm Kü N¨ng Thµnh C«ng")
AddMagicPoint(num)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §· NhËn §­îc "..num.." §iÓm Kü N¨ng Thµnh C«ng")
end
-----------------------------------------------------------------------------------------------------------------
function DelKyNang()
	AskClientForNumber("DelKyNang1",0,1000,"NhËp Sè §iÓm") 
end;
function DelKyNang1(num)
gmidx=PlayerIndex
PlayerIndex=GetTaskTemp(200)
Msg2Player("Qu¶n lý <color=pink>GM<color> §· Gi¶m "..num.." §iÓm Kü N¨ng Thµnh C«ng")
AddMagicPoint(-num)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> BÞ Trõ "..num.." §iÓm Kü N¨ng Thµnh C«ng")
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DisposeItem()
	GiveItemUI("Hñy vËt phÈm", "§¹i hiÖp h·y cÈn thËn trong viÖc hñy vËt phÈm!", "DisposeConfirm", "onCancel", 1);
end

function DisposeConfirm(nCount)
	for i=1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local strItem = GetItemName(nItemIndex)
		RemoveItemByIndex(nItemIndex)
		WriteLog(date("%Y%m%d %H%M%S").."\t".." GM Hñy Item "..GetAccount().."\t"..GetName().."\t".." Huû item "..strItem)
	end
	Msg2Player("Thao t¸c hñy vËt phÈm thµnh c«ng")
	Talk(1, "", "Thao t¸c thµnh c«ng, kiÓm tra l¹i!");	
end
---------------------------------------------------------------------------------------------------------------------------------------------
function KiemTraNpc(nIndex)
	AskClientForNumber("Add_Npc",0,2001,"NhËp ID Npc")
end

function Add_Npc(num)
local w,x,y = GetWorldPos()
	local nId = AddNpcNew(num,1,w,x*32,y*32,"\\script\\gm_tool\\gmrole.lua",0)
	AddTimer(5* 18, "OnTimeout", nNpcId)
end

function AddNpcNew(nId, nLevel, nMap, nX, nY, szScript, nCurCamp, szName, nSeries)
	nNpcId = AddNpc(nId,nLevel,SubWorldID2Idx(nMap),nX,nY)
	if(szName~=nil) then
		SetNpcName(nNpcId, szName)
	end
	if(nSeries~=nil) then
		SetNpcSeries(nNpcId, nSeries)
	end
	return nNpcId
end

function OnTimeout(nNpcId)
DelNpc(nNpcId);
end
---------------------------------------------------------------------------------------------------------------------
function trangthai()
local tbSay = {}
tinsert(tbSay,"Hç Trî ChiÕn §Êu/GMSkill")
tinsert(tbSay,"GM Èn Th©n.../GManthan")
tinsert(tbSay,"GM HiÖn Th©n.../XoaSkillGM")
tinsert(tbSay,"ChÝnh Ph¸i./mauvang")
tinsert(tbSay,"Tµ Ph¸i./mautim")
tinsert(tbSay,"Trung LËp./mauxanh")
tinsert(tbSay,"S¸t Thñ./maudo")
tinsert(tbSay,"Nh©n VËt Ch÷ Tr¾ng./mautrang")
tinsert(tbSay,"ChiÕn §Êu/ChienDau")
tinsert(tbSay,"Phi ChiÕn §Êu/PhiChienDau")
tinsert(tbSay,"Admin./mauadmin")
tinsert(tbSay,"Tho¸t/no")
tinsert(tbSay,"Trë l¹i")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän tr¹ng th¸i mµ b¹n muèn !", getn(tbSay), tbSay)
end
-----------------------------------------------------------------------------------------------------------------------
tbitem  =
	{
		[1]	={szName = "MÆt n¹ GM", tbProp = {0, 11, 367,0,0,0}, nCount = 1,  nBindState = -2},
	}
function GMSkill()
DelMagic(1003,20)
DelMagic(1004,20)
DelMagic(733,20)
DelMagic(732,20)
tbAwardTemplet:GiveAwardByList(tbitem, "GM");
end

function GManthan()
RestoreOwnFeature();
AddMagic(732,40)
AddMagic(733,20)
AddMagic(160,40)
Msg2Player("<color=pink>Chóc Mõng B¹n §· Häc §­îc Skill GM...")
end


function XoaSkillGM()
--ChangeOwnFeature(0,0,1204);
DelMagic(732,40)
DelMagic(733,20)
--DelMagic(160,40)
DelMagic(1003,20)
DelMagic(1004,20)
AddSkillState(314,5,1,600*60*18) AddSkillState(86,50,1,600*60*18)
Msg2Player("B¹n §· Xãa Kü N¨ng GM Thµnh C«ng")
end

function mautrang()
SetCurCamp(0)
SetCamp(0)
end

function ChienDau()
SetFightState(1)
end

function PhiChienDau()
SetFightState(0)
end

function mauvang()
SetCurCamp(1)
SetCamp(1)
end
function mautim()
SetCurCamp(2)
SetCamp(2) 
end
function mauxanh()
SetCurCamp(3)
SetCamp(3) 
end
function maudo()
SetCurCamp(4)
SetCamp(4) 
end

function mauadmin()
ChangeOwnFeature(0,0,1204);
SetCurCamp(5)
SetCamp(5)
SetMoveSpeed(50);
SetFightState(0)
SetPKFlag(0)	-- chuyen pk 
-- SetPunish(0);	-- khong len pk
ForbidChangePK(1);	-- khong duoc doi pk
	-- SetPKFlag(1)	-- chuyen pk chien dau

end
----------------------------------------------------------------------------------------------------------------------------------------
function BangHoi()
local strTongName = GetTongName()
local tszTitle = "Chµo Mõng B¹n §· Tham Gia HÖ Thèng <color=yellow>Bang Héi<color>"
	if (strTongName == nil or strTongName == "") then
		Say(tszTitle,6,
		"NhËn §iÒu KiÖn T¹o Bang Héi/dmcreatetong",
		"Gia NhËp Bang Héi/dmjointong",
		"T¹o bang héi/dmcreateit",
		"KÕt Thóc §èi Tho¹i/No")
	else
		Talk(1,"","Ng­¬i §· Ra NhËp Bang Héi Råi")
	end
end

function dmcreatetong()
	if  GetCamp() ~= 0 then
		if GetLevel() >= 50 then
			SetCamp(4)
			SetCurCamp(4)
			AddRepute(450)
			AddLeadExp(10000000)
			AddEventItem(195)
			Msg2Player("<color=yellow>Ng­êi §· Héi §ñ TÊt C¶ §iªu KiÖn CÓ T¹o Bang Héi<color>")
		else
				Talk(1,"","<bclr=red>"..myplayersex().." Ch­a §ñ CÊp 50")
		end
	else
		Talk(1,"","<bclr=red>"..myplayersex().." Ch­a Gia NhËp M«n Ph¸i Kh«ng ThÓ NhËn §iÒu KiÖn Bang Héi")
	end
end

function dmjointong()
local n_fac = GetLastFactionNumber();
	if (n_fac >= 0) and (n_fac <= 10) then
		if GetLevel() >= 50 then
			SetCamp(4) SetCurCamp(4) ConsumeEquiproomItem(200,4,417,1,-1) Msg2Player("Chóc Mõng "..myplayersex().." §· XuÊt S­ Thµnh C«ng")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §ñ CÊp 50 H·y Cè G¾ng RÌn LuyÖn Thªm Råi §Õn T×m Ta")
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a Gia NhËp M«n Ph¸i HoÆc §· Cã Bang Héi\n                            Kh«ng ThÓ NhËn §iÒu KiÖn")
	end
end

function dmcreateit()
Tong_name,oper = GetTong()
	if (oper == 0) and (GetTask(99) == 0) then
		if (HaveItem(195) == 1) and (GetRepute() >= 450) and (GetLeadLevel() >= 30) and (GetLevel() >= 50) and (GetCamp() == 4) and (oper == 0) then
			Say("KiÕm HiÖp Ch­ëng M«n Nh©n:Khai S¸ng Bang Héi, Më Réng B¸ NghiÖp",2,"B¾t BÇu Dùng Bang/TaoBangHoi","§îi Ta Mét Chót/No")
		else	
			Talk(1,"","<bclr=violet>C¸c H¹ Muèn T¹o Dùng Bang Ph¸i:\nYªu CÇu §¼ng CÊp 50 Trë Lªn, Danh Väng 450, §¼ng CÊp Thèng So¸i 30, Kh«ng M«n Ph¸i, Míi Cã ThÓ TiÕn Hµnh\nLËp Bang Héi...!")
		end
	else
		Say("KiÕm HiÖp Ch­ëng M«n Nh©n:Khai S¸ng Bang Héi, Më Réng B¸ NghiÖp",2,"B¾t BÇu Dùng Bang/TaoBangHoi","§îi Ta Mét Chót/No")
	end
end

function TaoBangHoi()		
DelItem(195)		
SetTask(99,1)				
CreateTong(1)
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function diemexp()
local tbSay = {}
	tinsert(tbSay,"N©ng §iÓm Kinh NghiÖm/UpExp")
	tinsert(tbSay,"§iÒu ChØnh CÊp §é/CapDoNV")
	tinsert(tbSay,"Tho¸t/no")
	Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y cÊp ®é mµ b¹n muèn !", getn(tbSay), tbSay)
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------
function UpExp()
AskClientForNumber("AddExp",1,500,"NhËp Sè §iÓm") 
end
function AddExp(num)
local tbExp = num*1000000000
tl_addPlayerExp(tbExp)
end

function CapDoNV()
AskClientForNumber("level",1,200,"NhËp CÊp §é:") 
end
function level(num)
local nCurLevel = GetLevel()
local nAddLevel = num - nCurLevel
ST_LevelUp(nAddLevel)
Msg2Player("B¹n nhËn ®­îc <color=yellow>"..num.."<color> cÊp ®é.") 
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function hotro()
	local tab_Content = {
		"NhËn 10 viªn KNB/knb",
		"LÊy TiÒn §ång/tiendong",
		"LÊy Ng©n L­îng/tienvan",
              "§iÓm event /AddDanhVong",
		"Danh väng - Phóc duyªn/DVPD",
		--"Tµi L·nh §¹o/lanhdao",
		--"§iÓm Cèng HiÕn/conghien",
		--"§iÓm Tèng Kim/TongKim",
		"KiÕn ThiÕt LÔ Bao/kienthiet",
		--"NhËn LB Gäi Boss HKMP/bosshk",
		"§iÓm Thuéc TÝnh/ThuocTinh",
		"TÈy §iÓm/clear_attibute_point",
		"Th«i./no",
		"Trë l¹i"
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän nh÷ng g× mµ b¹n muèn !", getn(tab_Content), tab_Content)
end

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
------------------------------NhËn Kim Nguyªn B¶o----------------------------------------------------------------------------------------------------------------------------------------
function knb()
AskClientForNumber("layknb",0,1000,"NhËp Sè L­îng:") 
end
function layknb(num)
	if (CalcFreeItemCellCount() >= 20) then
		tbAwardTemplet:GiveAwardByList({tbProp={4,1496,1,1,0,0},nCount=num},1)
              WriteLogPro("dulieu/adtien/ADM_Lay_.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \t Lay  "..num.." KNB\n");

	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ 20 ¤ Trèng")
	end
end
-------------------------------NhËn TiÒn §ång----------------------------------------------------------
function tiendong()
AskClientForNumber("tiendong1",0,40000,"NhËp Sè L­îng:") 
end;
function tiendong1(num)
	if (CalcFreeItemCellCount() >= 20) then
		tbAwardTemplet:GiveAwardByList({tbProp={4,417,1,1,0,0},nCount=num},1)
              WriteLogPro("dulieu/adtien/ADM_Lay_.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \t Lay  "..num.." xu\n");

	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ 20 ¤ Trèng")
	end
end
---------------------------------NhËn Ng©n L­îng------------------------------------------------------------------------
function tienvan()
AskClientForNumber("nhantienvan",0,999999999,"NhËp Sè TiÒn V¹n")
end
function nhantienvan(num)
local nTien = num*10000
Earn(nTien)
WriteLogPro("dulieu/adtien/ADM_Lay_.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \t Lay  "..num.." tienvan\n");

end
-------------------NhËn Phóc Duyªn - Danh Väng----------------------------------------------------------
function DVPD()
local tab_Content =
{
"NhËn Danh Väng/danhvong",
"NhËn Phóc Duyªn/phucduyen",
"Trë L¹i/hotro",
"Th«i/no",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y Chän Chøc N¨ng", getn(tab_Content), tab_Content)
end
----------------------------NhËn Danh Väng------------------------------------------------------------------------------------
function danhvong()
AskClientForNumber("danhvongINPUT",0,1000000,"NhËp Sè L­îng:") 
end
function danhvongINPUT(nNum)
AddRepute(nNum);
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc "..nNum.." §iÓm Danh Väng...!<color>")
end
----------------------------NhËn Phóc Duyªn----------------------------------------------------------------------------------
function phucduyen()
AskClientForNumber("phucduyenINPUT",0,1000000,"NhËp Sè L­îng:") 
end
function phucduyenINPUT(nNum)
FuYuan_Start();
FuYuan_Add(nNum);
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc "..nNum.." §iÓm Phóc Duyªn...!<color>")
end
------------------------------Tµi L·nh §¹o----------------------------------------------------------------------------------------------
function lanhdao()
SetTask(1194,GetTask(1194)+10)
SetTask(5135,GetTask(5135)+10)
SetTask(5128,GetTask(5128)+10)
SetTask(5136,GetTask(5136)+10)

SetTask(5138,GetTask(5138)+10)

SetTask(5137,GetTask(5137)+10)

SetTask(5139,GetTask(5139)+20)

SetTask(5140,GetTask(5140)+10)

SetTask(5141,GetTask(5141)+10)

SetTask(5142,GetTask(5142)+10)
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc §iÓm Tµi L·nh §¹o...!<color>")
end
------------------------------Cèng HiÕn---------------------------------------------------------------------------------
function conghien()
AskClientForNumber("diemconghien",0,10000000,"NhËp Sè L­îng:") 

end;
function diemconghien(nNum)
AddContribution(nNum)
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc "..nNum.." §iÓm Cèng HiÕn...!<color>")
end
------------------------------------§iÓm Tèng Kim----------------------------------------------------------------------------------------
function TongKim()
PlayerPoint = 747
	AskClientForNumber("DiemTongKim",0,1000000,"NhËp Sè L­îng:")
end
function DiemTongKim(nNum)
SetTask(PlayerPoint,nNum)
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc "..nNum.." §iÓm Tèng Kim...!<color>")
end
--------------------------------KiÕn ThiÕt-----------------------------------------------------------------------------------
function kienthiet()
local tbItem = {


                {szName="Tinh Ngoc",tbProp={6,1,5041,1,0,0},nCount=10000},
              --{szName="Tinh Ngoc",tbProp={6,1,30338,1,1},nCount=1000},
--{szName="Tinh Ngoc",tbProp={6,1,2864,1,0,0},nCount=1000},
	 
--{szName="Tinh Ngoc",tbProp={6,1,2860,1,1},nCount=1000},
}
tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
--Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc KiÕn ThiÕt LÔ Bao...!<color>")
end
--------------------------------LÖnh Bµi Boss TiÓu------------------------------------------------------------------------------
function bosshk()
local tab_Content =
{
"NhËn LÖnh Bµi Boss TiÓu/bosstieu",
"NhËn LÖnh Bµi Boss §¹i/bossdai",
"Trë L¹i/hotro",
"Th«i/no",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän nh÷ng g× mµ b¹n muèn !", getn(tab_Content), tab_Content)
end
-------------------------------------Boss TiÓu-------------------------------------------------------------------------------
function bosstieu()
for i =1,5 do
AddItem(6,1,1022,0,0,0)
Msg2Player("Chóc Mõng <color=green>§¹i HiÖp <color> NhËn §­îc <color=pink>1 <color> LÖnh Bµi Boss <color=yellow>Hoµng Kim <color>")
end
end
----------------------------------LÖnh Bµi-Boss §¹i---------------------------------------------------------------------------
function bossdai()
local tab_Content =
{
"LÖnh Bµi Tr­¬ng Tuyªn/truongtuyen",
"LÖnh Bµi Boss Kim ThÝ L­îng/kimthiluong",
"LÖnh Bµi Boss Mé Dung Toµn/modungtoan",
"Trë L¹i/bosshk",
"Th«i/no",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän nh÷ng g× mµ b¹n muèn", getn(tab_Content), tab_Content)
end
-----------------------------------------Boss §¹i------------------------------------------------------------------------------------------
function truongtuyen()
AddItem(6,1,3083,1,1,0,0)
Msg2Player("Chóc Mõng <color=green>§¹i HiÖp <color> NhËn §­îc <color=pink>1 <color> LÖnh Bµi Boss <color=yellow>Tr­¬ng Tuyªn <color>")
end

function kimthiluong()
AddItem(6,1,3084,1,1,0,0)
Msg2Player("Chóc Mõng <color=green>§¹i HiÖp <color> NhËn §­îc <color=pink>1 <color> LÖnh Bµi Boss <color=yellow>Kim ThÝ L­îng <color>")
end

function modungtoan()
AddItem(6,1,3085,1,1,0,0)
Msg2Player("Chóc Mõng <color=green>§¹i HiÖp <color> NhËn §­îc <color=pink>1 <color> LÖnh Bµi Boss <color=yellow>Mé Dung Toµn <color>")
end	
----------------------------§iÓm Thuéc TÝnh--------------------------------------------------------------------------------------------------
function ThuocTinh()
local tab_Content =
{
"§iÓm Kü N¨ng/pointkynang",
"§iÓm TiÒm N¨ng/pointtiemnang",
"Trë L¹i/hotro",
"Th«i/no",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y Chän Chøc N¨ng", getn(tab_Content), tab_Content)
end
-----------------------------Point Kü N¨ng---------------------------------------------------------------------------------
function pointkynang()
AskClientForNumber("pointkynang1",0,1000,"NhËp Sè L­îng:") 
end;
function pointkynang1(nNum)
AddMagicPoint(nNum)
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc "..nNum.." §iÓm Kü N¨ng...!<color>")
end
---------------------------Point TiÒm N¨ng-------------------------------------------------------------------------------

function pointtiemnang()
AskClientForNumber("pointtiemnang1",0,10000,"NhËp Sè L­îng:") 
end;
function pointtiemnang1(nNum)
AddProp(nNum)
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc "..nNum.." §iÓm TiÒm N¨ng...!<color>")
end
---------------------------------TÈy §iÓm Thuéc TÝnh---------------------------------------------------------------------------------------
function clear_attibute_point()

	local tbOpt = {
		{"TÈy ®iÓm kü n¨ng.", clear_skill},
		{"TÈy ®iÓm tiÒm n¨ng.", clear_prop},
		{"Trë vÒ", main},
		{"Tho¸t."},
	}
	CreateNewSayEx("<npc>Ng­¬i vÉn quyÕt ®Þnh muèn tÈy tñy?", tbOpt)
end
-------------------------------------------------------------------------------------------------------------
function clear_skill()
local tbOpt = {
{"X¸c nhËn", do_clear_skill},
{"§Ó ta suy nghÜ l¹i."},
{"Trë vÒ", clear_attibute_point},
}
CreateNewSayEx("<npc>Ng­¬i vÉn quyÕt ®Þnh muèn tÈy tñy", tbOpt)
end

function do_clear_skill()
local i = HaveMagic(210)
local j = HaveMagic(400)
local n = RollbackSkill()
local x = 0
if (i ~= -1) then i = 1; x = x + i end
if (j ~= -1) then x = x + j end
local rollback_point = n - x
if (rollback_point + GetMagicPoint() < 0) then
rollback_point = -1 * GetMagicPoint()
end
AddMagicPoint(rollback_point)
if (i ~= -1) then AddMagic(210, i) end
if (j ~= -1) then AddMagic(400, j) end 
Msg2Player("TÈy tñy thµnh c«ng! Ng­¬i cã "..rollback_point.." ®iÓm kü n¨ng ®Ó ph©n phèi l¹i.")
KickOutSelf()
end
--------------------------------------------------------------------------------------------------
function clear_prop()
local tbOpt = {
{"X¸c nhËn", do_clear_prop},
{"§Ó ta suy nghÜ l¹i."},
{"Trë vÒ", clear_attibute_point},
}
CreateNewSayEx("<npc>Ng­¬i vÉn quyÕt ®Þnh muèn tÈy tñy?", tbOpt)
end

function do_clear_prop()
local base_str = {35,20,25,30,20} 
local base_dex = {25,35,25,20,15}
local base_vit = {25,20,25,30,25}
local base_eng = {15,25,25,20,40}
local player_series = GetSeries() + 1

local Utask88 = GetTask(88)
AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88, 1))
AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88, 2))
AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88, 3))
AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88, 4))
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function nhanskill()
local tbSay = {}
tinsert(tbSay,"Vµo Ph¸i Häc full Skill/choose_faction")
tinsert(tbSay,"NhËn Skill 180/nhanskill180")
tinsert(tbSay,"Kü N¨ng 120/kynang120")
tinsert(tbSay,"Kü N¨ng 90/kynang90")
tinsert(tbSay,"NhËn Skill/addskill")
tinsert(tbSay,"Xãa Skill/delskill")
tinsert(tbSay,"Tho¸t/no")
tinsert(tbSay,"Trë l¹i")
Say("Xin mêi <color=yellow>"..GetName().."<color> chän Skill  !", getn(tbSay), tbSay)
end
----------------------------------------------------------------------------------------------------------------------
function choose_faction()
local nLevel = GetLevel()
	if (nLevel >= 10) then
		if (CalcItemCount(2,0,-1,-1,-1) == 0) then
			CreateNewSayEx("H·y Lùa Chän M«n Ph¸i",
			{
				{"ThiÕu L©m Ph¸i",ChonMonPhai,{0}},
				{"Thiªn V­¬ng Ph¸i",ChonMonPhai,{1}},
				{"§­êng M«n Ph¸i",ChonMonPhai,{2}},
				{"Ngò §éc Ph¸i",ChonMonPhai,{3}},
				{"Nga My Ph¸i",ChonMonPhai,{4}},
				{"Thóy Yªn Ph¸i",ChonMonPhai,{5}},
				{"C¸i Bang Ph¸i",ChonMonPhai,{6}},
				{"Thiªn NhÉn Ph¸i",ChonMonPhai,{7}},
				{"Vâ §ang Ph¸i",ChonMonPhai,{8}},
				{"C«n L«n Ph¸i",ChonMonPhai,{9}},
				{"Hoa S¬n Ph¸i",ChonMonPhai,{10}},
				{"Vò Hån Ph¸i",ChonMonPhai,{11}},
				{"Hñy Bá"}
			})
		else
			Talk(1,"","Muèn Thay §æi M«n Ph¸i Ph¶i Gì Bá Trang BÞ Trªn Ng­êi Xuèng")
		end
	else
		Talk(1,"","§¼ng CÊp Cña Ng­¬i Cßn KÐm L¾m H·y §i RÌn LuyÖn Thªm §¹t §Õn CÊp 10 Råi Quay L¹i T×m Ta")
	end
end

function ChonMonPhai(nFact)
	if (nFact == 0) then
		SetFaction("shaolin")
		SetLastFactionNumber(0)
		SetTask(7,10*256)
		rollback_prop()
		SetCamp(1)
		SetCurCamp(1)
		del_all_skill()
		SetSeries(0)
		SetSex(0)
		add_sl(nAddSkill) AddTaskSkill150()
		SetRank(72)
		Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i ThiÕu L©m §­îc Phong Lµ Hé Ph¸p Tr­ëng L·o")
	elseif (nFact == 1) then
		SetFaction("tianwang")
		SetLastFactionNumber(1)
		SetTask(3,10*256) 
		rollback_prop()
		SetCamp(3) 
		SetCurCamp(3)
		del_all_skill() 
		SetSeries(0)
		add_tw(nAddSkill) AddTaskSkill150()
		SetRank(69) 
		Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i Thiªn V­¬ng §­îc Trë Thµnh K×nh Thiªn Nguyªn So¸i")
	elseif (nFact == 2) then
		SetFaction("tangmen")
		SetLastFactionNumber(2)
		SetTask(2,10*256) 
		rollback_prop()
		SetCamp(3) 
		SetCurCamp(3)
		del_all_skill() 
		SetSeries(1)
		add_tm(nAddSkill) AddTaskSkill150()
		SetRank(76)
		Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i §­êng M«n §­îc Trë Thµnh Lôc C¸c Tr­ëng L·o")
	elseif (nFact == 3) then
		SetFaction("wudu")
		SetLastFactionNumber(3)
		SetTask(2,10*256) 
		rollback_prop()
		SetCamp(2) 
		SetCurCamp(2)
		del_all_skill() 
		SetSeries(1)
		add_wu(nAddSkill)  AddTaskSkill150()
		SetRank(80)
		Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i Ngò §éc §­îc Trë Thµnh U Minh Quû V­¬ng")
	elseif (nFact == 4) then
		SetFaction("emei")
		SetLastFactionNumber(4)
		SetTask(1,10*256) 
		rollback_prop()
		SetCamp(1) 
		SetCurCamp(1)
		del_all_skill() 
		SetSeries(2) SetSex(1) AddTaskSkill150()
		add_em(nAddSkill) 
		SetRank(64)
		Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i Nga My §­îc Trë Thµnh Kim §Ønh Th¸nh N÷")
	elseif (nFact == 5) then
		SetFaction("cuiyan")
		SetLastFactionNumber(5)
		SetTask(6,10*256) 
		rollback_prop()
		SetCamp(3) 
		SetCurCamp(3)
		del_all_skill() 
		SetSeries(2) 
		SetSex(1)
		add_cy(nAddSkill) AddTaskSkill150()
		SetRank(67)
		Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i Thóy Yªn §­îc Trë Thµnh Hoa ThÇn")
	elseif (nFact == 6) then
		SetFaction("gaibang")
		SetLastFactionNumber(6)
		SetTask(8,10*256) 
		rollback_prop()
		SetCamp(1) 
		SetCurCamp(1)
		del_all_skill() 
		SetSeries(3)
		add_gb(nAddSkill) AddTaskSkill150()
		SetRank(78)
		Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i C¸i Bang §­îc Trë Thµnh Cöu §¹i Tr­ëng L·o")
	elseif (nFact == 7) then
		SetFaction("tianren")
		SetLastFactionNumber(7)
		SetTask(4,10*256) 
		rollback_prop()
		SetCamp(2) 
		SetCurCamp(2)
		del_all_skill() 
		SetSeries(3)
		add_tr(nAddSkill) AddTaskSkill150()
		SetRank(81)
		Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i Thiªn NhÉn §­îc Trë Thµnh Th¸nh Gi¸o Tr­ëng")
	elseif (nFact == 8) then
		SetFaction("wudang")
		SetLastFactionNumber(8)
		SetTask(5,10*256) 
		rollback_prop()
		SetCamp(1) 
		SetCurCamp(1)
		del_all_skill() 
		SetSeries(4)
		add_wd(nAddSkill) AddTaskSkill150()
		SetRank(73)
		Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i Vâ §ang §­îc Trë Thµnh HuyÒn Vâ Ch©n Nh©n")
	elseif (nFact == 9) then
		SetFaction("kunlun")
		SetLastFactionNumber(9)
		SetTask(9,10*256) 
		rollback_prop()
		SetCamp(3) 
		SetCurCamp(3)
		del_all_skill() 
		SetSeries(4)
		add_kl(nAddSkill) AddTaskSkill150()
		SetRank(75)
		Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i C«n L«n §­îc Trë Thµnh Hé Ph¸i Ch©n Qu©n")
	elseif (nFact == 10) then
		SetFaction("huashan")
		SetLastFactionNumber(10)
		SetTask(11,10*256) 
		SetSeries(2)
		SetCamp(3) 
		SetCurCamp(3)
		del_all_skill() 
		SetSeries(2)
		add_hs(nAddSkill) AddTaskSkill150()
		SetRank(89)
		Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i Hoa S¬n §­îc Trë Thµnh Th¸i Häc C¸c Chñ")
	elseif (nFact == 11) then
		SetFaction("wuhun")
		SetLastFactionNumber(11)
		SetTask(12,10*256);
		SetCamp(3) SetCurCamp(3)
		add_wumen(nAddSkill) SetRank(90) AddTaskSkill150()
		Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i Vò Hån §­îc Trë Thµnh HËu CÇn §Ó Tö")
	end
end

function AddTaskSkill150()
local TSK_LV150_SKILL = 2885
local SBOOK_150SKILL_TASKSTATE = 14
local nFact = GetLastFactionNumber()
	local sbook_factstep_list = {
		[0] = 0,
		[1] = 1,
		[2] = 2,
		[3] = 3,
		[4] = 4,
		[5] = 5,
		[6] = 6,
		[7] = 7,
		[8] = 8,
		[9] = 9,
		[10] = 10,
		[11] = 11,
	}
	if (nAddSkill >= 150 or nAddSkill >= 180) then
		if (GetTask(TSK_LV150_SKILL) == 0) then
			SetTask(TSK_LV150_SKILL, SBOOK_150SKILL_TASKSTATE*100+sbook_factstep_list[nFact])
		end
	end
end
--------------------------------------------------------------------------------------------------------
function nhanskill180()
local nFaction = GetLastFactionNumber() + 1
	if nFaction == 0 then
		Talk(1,"","<bclr=violet>"..GetName().." Ch­a Gia NhËp M«n Ph¸i Kh«ng ThÓ Sö Dông MËt TÞch ThÊt TruyÒn")
		return 1;
	else
		for i=1,12 do
			if (nFaction == i) then
				if (HaveMagic(SKILL_180[i]) == -1) then
					AddMagic(SKILL_180[i],20)
					SetTask(5021,20)
					Talk(1,"","<bclr=violet>"..GetName().." §· Häc §­îc Kü N¨ng ThÊt TruyÒn<bclr><bclr=red> "..GetSkillName(SKILL_180[i]), 0)
				else
					Talk(1,"","<bclr=violet>"..GetName().." §· Häc Kü N¨ng Nµy Kh«ng ThÓ Häc N÷a")
					return 1;
				end
			end
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function fifong()
	local tab_Content = {
		"Phi phong/PhiPhong",
		"Ngò Hµnh Ên/NguHanhAn",
		"Trang søc/TrangSuc",
		"MÆt N¹/MatNa",
		"Thó C­ìi/Ngua",
		"Tho¸t./no",
		"Trë l¹i"
	}
	Say("Xin mêi chän", getn(tab_Content), tab_Content);
end
-------------------------------------------------------------------------------------------------------------------
function PhiPhong()
Say("H·y Chän Lo¹i Phi Phong",12,
	"Phi Phong K×nh L«i/KinhLoi",
	"Phi Phong Ngù Phong/NguPhong",
	"Phi Phong PhÖ Quang/PheQuang",
	"Phi Phong KhÊp ThÇn/KhapThan",
	"Phi Phong K×nh Thiªn/KinhThien",
	"Phi Phong HuyÒn Kim/HuyenKim",
	"Phi Phong V« Cùc/VoCuc",
	"Phi Phong L¨ng TuyÖt/LangTuyet",
	"Phi Phong Tö V©n/TuVan",
	"Phi Phong V« Song/VoSong",
	"Phi Phong TruyÒn ThuyÕt/CaoCap",
	"Hñy Bá/No")
end

function KinhLoi()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9291,9293 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function NguPhong()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9294,9296 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function PheQuang()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9297,9299 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function KhapThan()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9300,9302 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function KinhThien()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9303,9305 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function HuyenKim()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9306,9308 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function VoCuc()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9309,9311 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function LangTuyet()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9312,9314 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function TuVan()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9315,9317 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function VoSong()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9318,9320 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function CaoCap()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9321,9323 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end
--------------------------------------------------------------------------------
function NguHanhAn()
	if CalcFreeItemCellCount() >= 20 then
		for i = 9339,9351 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H·y §Ó Trèng 20 ¤ Råi NhËn")
	end
end

function TrangSuc()
	if CalcFreeItemCellCount() >= 20 then
		for i = 9352,9364 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H·y §Ó Trèng 20 ¤ Råi NhËn")
	end
end

function MatNa()
	if CalcFreeItemCellCount() >= 20 then
		for i = 9324,9338 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H·y §Ó Trèng 20 ¤ Råi NhËn")
	end
end
-----------------------------------------------------------------------------------------
function Ngua()
	local tab_Content = {
		"Ngùa nhãm 1./vip1",
		"Ngùa nhãm 2./vip2",
		"Ngùa nhãm 3./vip3",
		"Ngùa nhãm 4./vip4",
		"Ngùa nhãm 5./vip5",
		"Tho¸t./no",
		"Trë l¹i"
	}
	Say("Xin mêi <color=yellow>"..GetName().."<color> chän Ngùa mµ b¹n muèn", getn(tab_Content), tab_Content);
end

function vip1()
AddItem(0,10,6,10,0,0,0)
AddItem(0,10,7,10,0,0,0)
AddItem(0,10,8,10,0,0,0)
AddItem(0,10,9,10,0,0,0)
AddItem(0,10,10,10,0,0,0)

end
function vip2()
AddItem(0,10,11,10,0,0,0)
AddItem(0,10,12,10,0,0,0)
AddItem(0,10,13,10,0,0,0)
AddItem(0,10,14,10,0,0,0)
AddItem(0,10,15,10,0,0,0)

end
function vip3()
AddItem(0,10,16,10,0,0,0)
AddItem(0,10,17,10,0,0,0)
AddItem(0,10,18,10,0,0,0)
AddItem(0,10,19,10,0,0,0)
AddItem(0,10,20,10,0,0,0)

end
function vip4()
AddItem(0,10,21,10,0,0,0)
AddItem(0,10,22,10,0,0,0)
AddItem(0,10,23,10,0,0,0)
AddItem(0,10,24,10,0,0,0)
AddItem(0,10,25,10,0,0,0)
end
------------------------------------------------------
function vip5()
	local nRanD = random(9498,9509)
	if CalcFreeItemCellCount() >= 20 then
		AddGoldItem(0,nRanD)
	else
		Talk(1,"","H·y §Ó Trèng 20 ¤ Råi NhËn")
	end
end
----------------------------------------------------------------------------------------
local tbFreeItem = {
	{szName="Håi Thiªn T¸i T¹o CÈm Nang.", tbProp={6,1,1781,1,0,0}, tbParam={60}},
	{szName="Cµn Kh«n Song TuyÖt Béi.", tbProp={6,1,2219,0,0,0}},
	{szName="Nh¹c V­¬ng KiÕm.", tbProp={6,1,2340,0,0,0}},
	{szName="Qu¶ Huy Hoµng Cao CÊp.", tbProp={6,1,1075,1,0,0}},
	{szName="ThËp Toµn §¹i Bæ.", tbProp={6,1,1399,1,0,0}},
	{szName="Viªm §ª §å B¶o.", tbProp={6,1,2805,1,0,0}},
	{szName="Tèng Kim BÝ B¶o.", tbProp={6,1,2741,1,0,0}},
	{szName="§¹i Lùc Hoµn LÔ Hép.", tbProp={6,1,2517,1,0,0}},
	{szName="H·n HuyÕt Long C©u.", tbProp={0,10,18,1,0,0}, nWidth=2, nHeigth=3},
}

function show_item()
local tbOpt = {}
local nCount = getn(%tbFreeItem)
local szOption = ""
for i=1, nCount-1 do
szOption = format("NhËn %s", %tbFreeItem[i].szName)
tinsert(tbOpt, {szOption, get_item, {i}})
end
szOption = format("NhËn %s", %tbFreeItem[nCount].szName)
tinsert(tbOpt, {szOption, get_single_item, {nCount}})
tinsert(tbOpt, {"NhËn cùc phÈm giíi chØ...", get_normal_item})
tinsert(tbOpt, {"Trë vª.", main})
tinsert(tbOpt, {"Tho¸t."})
CreateNewSayEx("<npc>H·y chän vËt phÈm!", tbOpt)
end

function get_item(nIndex)
local nMaxCount = CalcFreeItemCellCount()
g_AskClientNumberEx(0, nMaxCount, "Xin mêi ®­a vµo nhËn lÊy", {get_item_back, {nIndex}})
end

function get_item_back(nIndex, nCount)
if nCount <= 0 then
return
end

if CalcFreeItemCellCount() < nCount then
Talk(1, "", format("CÇn Ýt nhÊt <color=yellow>%d<color> tói kh«ng gian...", nCount))
return
end

local szLogTitle = format("[liguan]get_free_item_%s", %tbFreeItem[nIndex].szName)
tbAwardTemplet:GiveAwardByList(%tbFreeItem[nIndex], szLogTitle, nCount)
end

function get_single_item(nIndex)
local tbItem = %tbFreeItem[nIndex]
if CountFreeRoomByWH(tbItem.nWidth, tbItem.nHeigth) < 1 then
Talk(1, "", format("CÇn Ýt nhÊt 1 %dx%d µÄ±³°ü¿O¼ä", tbItem.nWidth, tbItem.nHeigth))
return
end
local szLogTitle = format("[liguan]get_free_item_%s", tbItem.szName)
tbAwardTemplet:GiveAwardByList(tbItem, szLogTitle)
end
-----------------------------------------------------------------------------
function get_normal_item()
Say("H·y Lùa Chän Lo¹i Nh·n",12,
	"Cµn Kh«n Giíi ChØ CÊp 1/CanKhon1",
	"Cµn Kh«n Giíi ChØ CÊp 2/CanKhon2",
	"Cµn Kh«n Giíi ChØ CÊp 3/CanKhon3",
	"Cµn Kh«n Giíi ChØ CÊp 4/CanKhon4",
	"Cµn Kh«n Giíi ChØ CÊp 5/CanKhon5",
	"Cµn Kh«n Giíi ChØ CÊp 6/CanKhon6",
	"Cµn Kh«n Giíi ChØ CÊp 7/CanKhon7",
	"Cµn Kh«n Giíi ChØ CÊp 8/CanKhon8",
	"Cµn Kh«n Giíi ChØ CÊp 9/CanKhon9",
	"Cµn Kh«n Giíi ChØ CÊp 10/CanKhon10",
	"Cµn Kh«n Giíi ChØ TruyÒn ThuyÕt/CanKhon11",
	"Th«i/No")
end

function CanKhon1()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(8526,8540))
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function CanKhon2()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(8541,8555))
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function CanKhon3()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(8556,8570))
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function CanKhon4()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(8571,8585))
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function CanKhon5()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(8586,8600))
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function CanKhon6()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(8601,8615))
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function CanKhon7()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(8616,8630))
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function CanKhon8()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(8631,8645))
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function CanKhon9()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(8646,8660))
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function CanKhon10()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(8661,8675))
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function CanKhon11()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(8676,8690))
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end
----------------------------------------------------------------------------------------------------
function khoangth()
local tab_Content = {
"HuyÒn tinh/huytin",
"Kho¸ng th¹ch/kdb",
"S¸t thñ gi¶n 80./stg80",
"S¸t thñ gi¶n 90./stg90",
"Thñy tinh/thuyti",
"Phóc duyªn/phucd",
"Tho¸t./no",
"Trë l¹i."
}
Say(" Ng­¬i muèn lÊy g× nµo? ", getn(tab_Content), tab_Content);
end;
-----------------------------------------------------------------------------
function huytin() 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
end

function kdb()
AddItem(6,1,149,1,0,0,0) 
AddItem(6,1,150,1,0,0,0) 
AddItem(6,1,150,1,1,0,0) 
AddItem(6,1,150,1,2,0,0) 
AddItem(6,1,150,1,3,0,0) 
AddItem(6,1,150,1,4,0,0) 

AddItem(6,1,151,1,0,0,0) 
AddItem(6,1,152,1,0,0,0) 
AddItem(6,1,152,1,1,0,0) 
AddItem(6,1,152,1,2,0,0)
AddItem(6,1,152,1,3,0,0)
AddItem(6,1,152,1,4,0,0)

AddItem(6,1,153,1,0,0,0) 
AddItem(6,1,154,1,0,0,0)
AddItem(6,1,154,1,1,0,0) 
AddItem(6,1,154,1,2,0,0) 
AddItem(6,1,154,1,3,0,0) 
AddItem(6,1,154,1,4,0,0) 
end


function stg80()
AddItem(6,1,400,80,0,0,0) 
AddItem(6,1,400,80,1,0,0) 
AddItem(6,1,400,80,2,0,0) 
AddItem(6,1,400,80,3,0,0) 
AddItem(6,1,400,80,4,0,0) 
end

function stg90()
AddItem(6,1,400,90,0,0,0) 
AddItem(6,1,400,90,1,0,0) 
AddItem(6,1,400,90,2,0,0) 
AddItem(6,1,400,90,3,0,0) 
AddItem(6,1,400,90,4,0,0) 
end

function thuyti()
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
end

function phucd()
AddItem(6,1,122,1,0,0,0)
AddItem(6,1,123,1,0,0,0) 
AddItem(6,1,124,1,0,0,0)
end
----------------------------------------------------------------
function hkmpdoxanh()
local tbOpt = {
	{"Trang BÞ Hoµng Kim M«n Ph¸i",sethkmp},
	{"NhËn bé trang bÞ An Bang",TestGame_TrangBi_Gold, {1}},
	{"NhËn bé trang bÞ §Þnh Quèc",TestGame_TrangBi_Gold, {2}},
	{"NhËn Vò khÝ xanh",TestGame_TrangBi_DoXanh, {1}},
	{"NhËn Trang bÞ xanh",TestGame_TrangBi_DoXanh, {2}},
	{"NhËn Trang BÞ TÝm",NangCapDoTim},
	{"NhËn Ph«i TÝm 6 Dßng",dotim},
	{"Hñy Bá"},
}
CreateNewSayEx("H·y Lùa Chän Trang BÞ Muèn LÊy", tbOpt)
end
--------------------------------------------------------------------------------------------------------------------------------
tbTrangBi = {}
tbOptMagic = {0,0,0,0,0,0}
tbOptChose = {0}
tbOptMagicName = {"","","","","",""}
tbOptLoai = {0,0,0,0,0,0}

tbDoXanh = {
	[1]= {
		szName = "D©y chuyÒn",
		tbEquip = {
			{"D©y chuyÒn n÷",0,4,0},
			{"D©y chuyÒn nam ",0,4,1},
		}
	},
	[2]= {
		szName = "¸o gi¸p",
		tbEquip = {
			{"¸o t¨ng cÊp 6",0,2,0},
			{"¸o thæ cÊp 6",0,2,1},
			{"MËt trang nam cÊp 6",0,2,2},
			{"Gi¸ng Sa Bµo cÊp 6",0,2,3},
			{"Gi¸p nam cÊp 6",0,2,4},
			{"V¹n L­u Quy T«ng Y cÊp 6",0,2,5},
			{"TuyÒn Long bµo cÊp 6",0,2,6},
			{"Long Tiªu ®¹o Y cÊp 6",0,2,8},
			{"Cöu VÜ B¹ch Hå trang cÊp 6",0,2,9},
			{"TrÇm H­¬ng sam c¸p 6",0,2,10},
			{"Gi¸p n÷ cÊp 6",0,2,11},
			{"V¹n Chóng TÒ T©m Y cÊp 6",0,2,12},
			{"L­u Tiªn QuÇn cÊp 6",0,2,13},
		}
	},
	[3]= {
		szName = "§ai l­ng",
		tbEquip = {
			{"Thiªn Tµm Yªu §¸i cÊp 6",0,6,0},
			{"B¹ch Kim Yªu §¸i cÊp 6",0,6,1},
		}
	},
	[4]= {
		szName = "Giµy",
		tbEquip = {
			{"Cöu TiÕt X­¬ng VÜ Ngoa cÊp 6",0,5,0},
			{"Thiªn Tµm Ngoa cÊp 6",0,5,1},
			{"Kim Lò hµi cÊp 6",0,5,2},
			{"Phi Phông Ngoa cÊp 6",0,5,3},
		}
	},
	[5]= {
		szName = "Bao tay",
		tbEquip = {
			{"Long Phông HuyÕt Ngäc Tr¹c cÊp 6",0,8,0},
			{"Thiªn Tµm Hé UyÓn cÊp 6",0,8,1},
		}
	},
	[6]= {
		szName = "Nãn",
		tbEquip = {
			{"Tú L« m·o cÊp 6",0,7,0},
			{"Ngò l·o qu¸n cÊp 6",0,7,1},
			{"Tu La Ph¸t kÕt cÊp 6",0,7,2},
			{"Th«ng Thiªn Ph¸t Qu¸n cÊp 6",0,7,3},
			{"YÓm NhËt kh«i cÊp 6",0,7,4},
			{"TrÝch Tinh hoµn cÊp 6",0,7,5},
			{"¤ Tµm M·o",0,7,6},
			{"Quan ¢m Ph¸t Qu¸n cÊp 6",0,7,7},
			{"¢m D­¬ng V« Cùc qu¸n cÊp 6",0,7,8},
			{"HuyÒn Tª DiÖn Tr¸o cÊp 6",0,7,9},
			{"Long HuyÕt §Çu hoµn cÊp 6",0,7,10},
			{"Long L©n Kh«i cÊp 6",0,7,11},
			{"Thanh Tinh Thoa cÊp 6",0,7,12},
			{"Kim Phông TriÓn SÝ cÊp 6 ",0,7,13},
		}
	},
	[7]= {
		szName = "Vò khÝ c©n chiÕn",
		tbEquip = {
			{"KiÕm",0,0,0},
			{"§ao",0,0,1},
			{"Bæng",0,0,2},
			{"KÝch",0,0,3},
			{"chïy",0,0,4},
			{"Song ®ao",0,0,5},
		}
	},
	[8]= {
		szName = "Vò khÝ tÇm xa",
		tbEquip = {
			{"Tiªu",0,1,0},
			{"Phi §ao",0,1,1},
			{"Ná",0,1,2},
		}
	},
	[9]= {
		szName = "Ngäc béi",
		tbEquip = {
			{"H­¬ng Nang n÷",0,9,0},
			{"Ngäc béi nam",0,9,1},
		}
	},
	[10]= {
		szName = "NhÉn",
		tbEquip = {
			{"Giíi ChØ ",0,3,0},
		}
	},
}

tbMagic_VuKhi = {
	[0] = {--Ngò Hµnh Kim
		{"STVL ngo¹i c«ng ®iÓm (Kim)",220,1},
		{"STVL néi c«ng ®iÓm (Kim)",440,1},
		{"Kh¸ng ®éc (Kim)",290,1},
	},
	[1] = {--Ngò Hµnh Méc
		{"§éc s¸t ngo¹i c«ng (Méc)",230,1},
		{"§éc s¸t néi c«ng (Méc)",480,1},
		{"Kh¸ng l«i (Méc)",320,1},
	},
	[2] = {--Ngò Hµnh Thñy
		{"B¨ng s¸t ngo¹i c«ng(Thñy)",240,1},
		{"B¨ng s¸t néi c«ng (Thñy)",450,1},
		{"Kh¸ng háa (Thñy)",310,1},
		{"Thêi gian cho¸ng (Thñy)",340,1},
		{"Sinh KhÝ", 330,1},
	},
	[3] = {--Ngò Hµnh Háa
		{"Háa s¸t ngo¹i c«ng(Háa)",122,1},
		{"Háa s¸t néi c«ng (Háa)", 460,1},
		{"Phßng thñ vËt lý (Háa)",280,1},
		{"Thêi gian lµm chËm (Háa)",360,1},
	},
	[4] = {--Ngò Hµnh Thæ
		{"L«i s¸t ngo¹i c«ng(Thæ)",124,1},
		{"L«i s¸t néi c«ng (Thæ)",470,1},
		{"Thêi gian tróng ®éc (Thæ)",380,1},
		{"Kh¸ng b¨ng (Thæ)", 300,1},
	},
}

tbMagic_TrangPhuc = {
	[0] = {--Ngò Hµnh Kim
		{"Kh¸ng ®éc (Kim)",290,1},
		{"Ch­a Kh¶m N¹m",-1,3},
	},
	[1] = {--Ngò Hµnh Méc
		{"Kh¸ng l«i (Méc)",320,1},
		{"Ch­a Kh¶m N¹m",-1,3},
	},
	[2] = {--Ngò Hµnh Thñy
		{"Kh¸ng háa (Thñy)",310,1},
		{"Thêi gian cho¸ng (Thñy)",340,1},
		{"Sinh KhÝ", 330,1},
	},
	[3] = {--Ngò Hµnh Háa
		{"Phßng thñ vËt lý (Háa)",280,1},
		{"Thêi gian lµm chËm (Háa)",360,1},
		{"Th©n Ph¸p", 370,1},
	},
	[4] = {--Ngò Hµnh Thæ
		{"Thêi gian tróng ®éc (Thæ)",380,1},
		{"Kh¸ng b¨ng (Thæ)", 300,1},
	},
}

tbMagic_All = {
	[1] = {--Vò KhÝ
		{"ChuyÓn hãa s¸t th­¬ng thµnh néi lùc",270,1},
		{"S¸t th­¬ng vËt lý ngo¹i c«ng (%)",10,2},
		{"Tèc ®é ®¸nh ngo¹i c«ng",30,2},
		{"Hót sinh lùc",130,2},
		{"Hót néi lùc",140,2},
		{"Sinh lùc",150,2},
		{"Néi lùc",160,2},
		{"ThÓ lùc",170,2},
	},
	[2] = {--¸o
		{"Thêi gian phôc håi (¸o)",90,2},
		{"ChuyÓn hãa s¸t th­¬ng thµnh néi lùc",270,1},
		{"Phôc håi sinh lùc nöa gi©y",180,2},
		{"Sinh lùc",150,2},
		{"Néi lùc",160,2},
		{"ThÓ lùc",170,2},
	},
	[3] = {--GiÇy
		{"Tèc ®é di chuyÓn (GiÇy)",70,2},
		{"Phôc håi sinh lùc nöa gi©y",180,2},
		{"ChuyÓn hãa s¸t th­¬ng thµnh néi lùc",270,1},
		{"Sinh lùc",150,2},
		{"Néi lùc",160,2},
		{"ThÓ lùc",170,2},
	},
	[4] = {--NhÉn
		{"ChuyÓn hãa s¸t th­¬ng thµnh néi lùc",270,1},			
		{"Sinh lùc",150,2},
		{"Néi lùc",160,2},
		{"ThÓ lùc",170,2},
	},
	[5] = {--D©y ChuyÒn
		{"Sinh lùc",150,2},
		{"Néi lùc",160,2},
		{"Kh¸ng tÊt c¶",120,2},
	},
	[6] = {--Bao Tay, Nãn, §ai L­ng, Ngäc Béi...!
		{"ChuyÓn hãa s¸t th­¬ng thµnh néi lùc",270,1},
		{"Phôc håi sinh lùc nöa gi©y",180,2},
		{"Sinh lùc",150,2},
		{"Néi lùc",160,2},
		{"ThÓ lùc",170,2},
	},	
}

function NangCapDoTim()
	local tbOpt = {}
		--tinsert(tbOpt, {tbDoXanh[1].szName, laydoxanh1, (1)})
		tinsert(tbOpt, {tbDoXanh[2].szName, laydoxanh1, {2}})
		tinsert(tbOpt, {tbDoXanh[3].szName, laydoxanh1, {3}})
		tinsert(tbOpt, {tbDoXanh[4].szName, laydoxanh1, {4}})
		tinsert(tbOpt, {tbDoXanh[5].szName, laydoxanh1, {5}})
		tinsert(tbOpt, {tbDoXanh[6].szName, laydoxanh1, {6}})
		tinsert(tbOpt, {tbDoXanh[7].szName, laydoxanh1, {7}})
		tinsert(tbOpt, {tbDoXanh[8].szName, laydoxanh1, {8}})
		tinsert(tbOpt, {tbDoXanh[9].szName, laydoxanh1, {9}})
		--tinsert(tbOpt, {tbDoXanh[10].szName, laydoxanh1, {10}})
	tinsert(tbOpt, {"Kªt thóc ®èi tho¹i."})
	CreateNewSayEx("<npc>Xin mêi lùa chän trang bÞ:", tbOpt)
end

function laydoxanh1(nType)
	local tbEquip = %tbDoXanh[nType]["tbEquip"]
	local tbEquip1 = %tbDoXanh[nType].szName
	local szTitle = "<npc>Ng­¬i ®· lùa chän: \n<+> <color=green>"..tbEquip1.."<color>"
	
	local tbOpt = {}
	for i=1, getn(tbEquip) do
		tinsert(tbOpt, {tbEquip[i][1], laydoxanh2, {i, nType,szTitle}})
	end
	tinsert(tbOpt, {"Kªt thóc ®èi tho¹i."})
	CreateNewSayEx(szTitle, tbOpt)
end

function laydoxanh2(nIndex, nType,szTitle)
	local tbEquip2 = %tbDoXanh[nType]["tbEquip"][nIndex]
	local szTitle = szTitle.."\n<+> <color=green>"..tbEquip2[1].."<color>"
	local tbOpt = {}
	tinsert(tbOpt, {"Kim", laydoxanh3, {nIndex, nType,szTitle, 0}})
	tinsert(tbOpt, {"Méc", laydoxanh3, {nIndex, nType,szTitle, 1}})
	tinsert(tbOpt, {"Thñy", laydoxanh3, {nIndex, nType,szTitle, 2}})
	tinsert(tbOpt, {"Háa", laydoxanh3, {nIndex, nType,szTitle, 3}})
	tinsert(tbOpt, {"Thæ ", laydoxanh3, {nIndex, nType,szTitle, 4}})
	tinsert(tbOpt, {"Kªt thóc ®èi tho¹i."})
	CreateNewSayEx(szTitle, tbOpt)
end

function laydoxanh3(nIndex, nType,szTitle,nSeries)
local tbEquipSelect = %tbDoXanh[nType]["tbEquip"][nIndex]
local nNguHanh = ""
if nSeries == 0 then  nNguHanh = "Kim" end
if nSeries == 1 then  nNguHanh = "Méc" end
if nSeries == 2 then  nNguHanh = "Thñy" end
if nSeries == 3 then  nNguHanh = "Háa" end
if nSeries == 4 then  nNguHanh = "Thæ" end
	local szTitle = szTitle.."\n<+> HÖ: <color=blue>"..nNguHanh.."<color>"
	tinsert(tbTrangBi, {tbEquipSelect, szTitle,nSeries,nType})	
	if( nType == 7 or nType == 8) then  
		tbOptLoai[1] = tbOptLoai[1] + 1;--vu khi		
	elseif nType == 2 then  
		tbOptLoai[1] = tbOptLoai[1] + 2;--ao		
	elseif nType == 4 then  
		tbOptLoai[1] = tbOptLoai[1] + 3;--giay
	elseif nType == 10 then  
		tbOptLoai[1] = tbOptLoai[1] + 4;--nhan
	elseif nType == 1 then
		tbOptLoai[1] = tbOptLoai[1] + 5;--Day Chuyen
	else   
		tbOptLoai[1] = tbOptLoai[1] + 6;--Bao Tay, Ngäc Boi, Non, Dai Lung...!
	 end	 
	local tbOpt = {}
	--tinsert(tbOpt, {"B¾t ®Çu lÊy", tbTrangBiJX})
	tinsert(tbOpt, {"B¾t ®Çu chän thuéc tÝnh", laydoxanh4, {szTitle,nType, nSeries}})
	tinsert(tbOpt, {"Kªt thóc ®èi tho¹i."})
	CreateNewSayEx(szTitle, tbOpt)
end

function laydoxanh4(szTitle)
local tbOpt = {}
local tbBuyMagicx = {}
local nSeries = tbTrangBi[1][3]
local nType = tbTrangBi[1][4]
local nLoai = tbOptLoai[1]
local An, Hien, Khac = 1, 2, 3 --Dßng Èn - Dßng HiÖn - Dßng Ch­a Kh¶m N¹m
local n1, n2, n3, n4, n5, n6 = tbOptMagic[1], tbOptMagic[2], tbOptMagic[3], tbOptMagic[4], tbOptMagic[5], tbOptMagic[6]

	if nLoai == 1 then
		tbBuyMagicx = %tbMagic_VuKhi[nSeries]
	else	
		tbBuyMagicx = %tbMagic_TrangPhuc[nSeries]
	end
	local tbMagicAll = %tbMagic_All[nLoai]
	
	--Dßng 1 [HiÖn 1]---------------------------------------------------------------------------------------------
	if tbOptMagic[1] == 0 then
		local szTitlex = szTitle.."\n<+> H·y Chän TiÕp Dßng 1 [HiÖn 1]:"
			for i = 1, getn(tbBuyMagicx) do 
				if tbBuyMagicx[i][3] == Hien then
					tinsert(tbOpt, {tbBuyMagicx[i][1], laydoxanh6x, {i,1,szTitle}})
				end
			end
			for i = 1, getn(tbMagicAll) do
				if tbMagicAll[i][3] == Hien then
					tinsert(tbOpt, {tbMagicAll[i][1], laydoxanh6x, {i,2,szTitle}})
				end
			end
			tbOptChose[1] = tbOptChose[1] + 1
			tinsert(tbOpt, {"Kªt thóc ®èi tho¹i"})
			CreateNewSayEx(szTitlex, tbOpt)
		return
	end
	--Dßng 2 [Èn 1]--------------------------------------------------------------------------------------------------
	if tbOptMagic[2] == 0 then
		local szTitle = szTitle.."\n<+> Dßng 1 [HiÖn 1]: <color=pink>"..tbOptMagicName[1].."<color>"
			for i=1, getn(tbBuyMagicx) do
				if tbBuyMagicx[i][3] == An then	
					tinsert(tbOpt, {tbBuyMagicx[i][1], laydoxanh6x, {i,1,szTitle}})
				end	
			end
			for i=1, getn(tbMagicAll) do
				if tbMagicAll[i][3] == An then	
					tinsert(tbOpt, {tbMagicAll[i][1], laydoxanh6x, {i,2,szTitle}})
				end
			end
			tbOptChose[1] = tbOptChose[1] + 1;
			tinsert(tbOpt, {"Kªt thóc ®èi tho¹i."})
			CreateNewSayEx(szTitle.."\n<+> H·y Chän TiÕp Dßng 2 [Èn 1]", tbOpt)
		return
	end
	--Dßng 3 [HiÖn 2] - Xoa Hien 1(Dßng 1)------------------------------------------------------------------------------
	if tbOptMagic[3] == 0 then
		local szTitle = szTitle.."\n<+> Dßng 2 [Èn 1]: <color=pink>"..tbOptMagicName[2].."<color>"
			for i=1, getn(tbBuyMagicx) do
				if (tbBuyMagicx[i][3] == Hien and tbBuyMagicx[i][2] ~= n1) then 
					tinsert(tbOpt, {tbBuyMagicx[i][1], laydoxanh6x, {i,1,szTitle}})
				end
			end
			for i=1, getn(tbMagicAll) do
				if (tbMagicAll[i][3] == Hien and tbMagicAll[i][2] ~= n1) then
					tinsert(tbOpt, {tbMagicAll[i][1], laydoxanh6x, {i,2,szTitle}})
				end
			end
			tbOptChose[1] = tbOptChose[1] + 1;
			tinsert(tbOpt, {"Kªt thóc ®èi tho¹i."})
			CreateNewSayEx(szTitle.."\n<+> H·y Chän TiÕp Dßng 3 [HiÖn 2]:", tbOpt)
		return
	end
	--Dßng 4 [Èn 2] - Xãa Èn 1(Dßng 2)-----------------------------------------------------------------------------------
	if tbOptMagic[4] == 0 then
		local szTitle = szTitle.."\n<+> Dßng 3 [HiÖn 2]: <color=pink>"..tbOptMagicName[3].."<color>"
			for i=1, getn(tbBuyMagicx) do
				if (tbBuyMagicx[i][3] == An and tbBuyMagicx[i][2] ~= n2) then
					tinsert(tbOpt, {tbBuyMagicx[i][1], laydoxanh6x, {i,1,szTitle}})
				end
			end
			for i=1, getn(tbMagicAll) do
				if (tbMagicAll[i][3] == An and tbMagicAll[i][2] ~= n2) then
					tinsert(tbOpt, {tbMagicAll[i][1], laydoxanh6x, {i,2,szTitle}})
				end
			end
			tbOptChose[1] = tbOptChose[1] + 1;
			tinsert(tbOpt, {"Kªt thóc ®èi tho¹i."})
			CreateNewSayEx(szTitle.."\n<+> H·y Chän TiÕp Dßng 4 [Èn 2]:", tbOpt)
		return
	end
	--Dßng 5 [HiÖn 3] - Xãa HiÖn 1 Vµ HiÖn 2(Dßng 1 Vµ 3)------------------------------------------------------------------
	if tbOptMagic[5] == 0 then
		local szTitle = szTitle.."\n<+> Dßng 4 [Èn 2]: <color=pink>"..tbOptMagicName[4].."<color>"
			for i=1, getn(tbBuyMagicx) do
				if tbBuyMagicx[i][3] == Hien and (tbBuyMagicx[i][2] ~= n1 and tbBuyMagicx[i][2] ~= n3) then
					tinsert(tbOpt, {tbBuyMagicx[i][1], laydoxanh6x, {i,1,szTitle}})
				end
			end
			for i=1, getn(tbMagicAll) do
				if tbMagicAll[i][3] == Hien and (tbMagicAll[i][2] ~= n1 and tbMagicAll[i][2] ~= n3)  then
					tinsert(tbOpt, {tbMagicAll[i][1], laydoxanh6x, {i,2,szTitle}})
				end
			end
			tbOptChose[1] = tbOptChose[1] + 1;
			tinsert(tbOpt, {"Kªt thóc ®èi tho¹i."})
			CreateNewSayEx(szTitle.."\n<+> H·y Chän TiÕp Dßng 5 [HiÖn 3]:", tbOpt)
		return
	end
	--Dßng 6 [Èn 3] - Xãa Èn 1 Vµ Èn 2(Dßng 2 Vµ 4)-------------------------------------------------------------------------
	if tbOptMagic[6] == 0 then
		local szTitle = szTitle.."\n<+> Dßng 5 [HiÖn 3]: <color=pink>"..tbOptMagicName[5].."<color>"
			for i=1, getn(tbBuyMagicx) do
				if tbBuyMagicx[i][3] == An  and  (tbBuyMagicx[i][2] ~= n2 and tbBuyMagicx[i][2] ~= n4) then
					tinsert(tbOpt, {tbBuyMagicx[i][1], laydoxanh6x, {i,1,szTitle}})
				end
			end
			for i=1, getn(tbBuyMagicx) do
				if tbBuyMagicx[i][3] == Khac and  (tbBuyMagicx[i][2] ~= n2 and tbBuyMagicx[i][2] ~= n4) then
					tinsert(tbOpt, {tbBuyMagicx[i][1], laydoxanh6x, {i,1,szTitle}})
				end
			end
			for i=1, getn(tbMagicAll) do
				if tbMagicAll[i][3] == An and (tbMagicAll[i][2] ~= n2 and tbMagicAll[i][2] ~= n4) then
					tinsert(tbOpt, {tbMagicAll[i][1], laydoxanh6x, {i,2,szTitle}})
				end
			end
			tbOptChose[1] = tbOptChose[1] + 1;
			tinsert(tbOpt, {"Kªt thóc ®èi tho¹i."})
			CreateNewSayEx(szTitle.."\n<+> H·y Chän TiÕp Dßng 6 [Èn 3]:", tbOpt)
		return
	end
	----------------------------------------------------------------------------------------------------------------------------
	local szTitle = szTitle.."\n<+> Dßng 6 [Èn 3]: <color=pink>"..tbOptMagicName[6].."<color>"
	tinsert(tbOpt, {"Ta Muèn ChÕ T¹o", laydoxanh6_fullopt})
	tinsert(tbOpt, {"Kªt thóc ®èi tho¹i."})
	CreateNewSayEx(szTitle, tbOpt)
end

function laydoxanh6x(nValue,nNumber,szTitle)
local nSeries = tbTrangBi[1][3];
local nLoai = tbOptLoai[1]
local tbOpt = 0
local nChose = tbOptChose[1]
local tbOptName = ""
	if nNumber == 1 then
		if nLoai == 1 then
			tbOpt = %tbMagic_VuKhi[nSeries][nValue][2]
			tbOptName = %tbMagic_VuKhi[nSeries][nValue][1]
		else
			tbOpt = %tbMagic_TrangPhuc[nSeries][nValue][2]
			tbOptName = %tbMagic_TrangPhuc[nSeries][nValue][1]
		end
	else
		tbOpt = %tbMagic_All[nLoai][nValue][2]
		tbOptName = %tbMagic_All[nLoai][nValue][1]
	 end
	tbOptMagic[nChose] = tbOptMagic[nChose] + tbOpt
	tbOptMagicName[nChose] =  tbOptName
	laydoxanh4(szTitle)
end

function laydoxanh6_fullopt()
	local tbEquipSelect = tbTrangBi[1][1]
	local nSeries = tbTrangBi[1][3]
	AddQualityItem(2,tbEquipSelect[2], tbEquipSelect[3], tbEquipSelect[4],10, nSeries, 0, tbOptMagic[1],tbOptMagic[2],tbOptMagic[3],tbOptMagic[4],tbOptMagic[5],tbOptMagic[6]) 
end

-------------------------Lay Do Xanh------------------------------
function tbTrangBiJX()
	local tbEquipSelect = tbTrangBi[1][1]
	local nSeries = tbTrangBi[1][3]
	  AddItem(tbEquipSelect[2], tbEquipSelect[3], tbEquipSelect[4],10, nSeries, 100, 10) 
end
-----------------------------------------------------------------------------------------------------------------------------------------------
function anbang()
for i=216,219 do
AddGoldItem(0, i)
end
end

function anbang1()
for i=408,411  do
AddGoldItem(0, i)
end
end

function anbang2()
for i=210,213  do
AddGoldItem(0, i)
end
end

function anbang3()
for i=394,397  do
AddGoldItem(0, i)
end
end
-----------------------------------------------------------------------------------------
function dotim1()
local	tab_Content = {
"Vò KhÝ/weapon",
"Y Phôc/shirt",
"§Ønh M¹o/hat",
"Hæ UyÓn/glove",
"Yªu §¸i/belt",
"Hµi Tö/shoe",
"Th«i./no",
"Trë l¹i"
}
Say(" Xin mêi chän  ? ", getn(tab_Content), tab_Content);
end
------------------------------------------------------------------------------
function weapon()
local tab_Content = {
"KiÕm/kiem",
"§ao/dao",
"Bæng/bong",
"Th­¬ng/kick",
"Chïy/chuy",
"Song §ao/songdao",
"Phi Tiªu/phitieu",
"Phi §ao/phidao",
"Tô TiÔn/tutien",
"Tho¸t."
}
Say(" Muèn lÊy thªm c¸i g× nµo", getn(tab_Content), tab_Content);
end;
--------------------------------------------------------------------------------
function kiem()
AddQualityItem(2,0,0,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,0,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function dao()
AddQualityItem(2,0,0,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,1,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function bong()
AddQualityItem(2,0,0,2,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,2,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,2,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,2,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,2,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function kick()
AddQualityItem(2,0,0,3,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,3,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,3,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,3,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,3,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function chuy()
AddQualityItem(2,0,0,4,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,4,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,4,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,4,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,4,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function songdao()
AddQualityItem(2,0,0,5,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,5,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,5,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,5,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,5,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function phitieu()
AddQualityItem(2,0,1,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,0,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function phidao()
AddQualityItem(2,0,1,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,1,10,4,0,-1,-1,-1,-1,-1,-1) 
end

function tutien()
AddQualityItem(2,0,1,2,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,2,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,2,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,2,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,2,10,4,0,-1,-1,-1,-1,-1,-1) 
end
-------------------------------------------------------------------
function shirt()
local tab_Content = {
"ThÊt B¶o Cµ Sa/aothieulam",
"Ch©n Vò Th¸nh Y/aovodang",
"Thiªn NhÉn MËt Trang/aothiennhan",
"Gi¸ng Sa Bµo/sabao",
"§­êng Nghª Gi¸p/dng",
"V¹n L­u Quy T«ng Y/aocaibang",
"TuyÒn Long Bµo/longbao",
"Long Tiªu §¹o Y/daoy",
"Cöu VÜ B¹ch Hå Trang/hotrang",
"TrÇm H­¬ng Sam/huongsam",
"TÝch LÞch Kim Phông Gi¸p/kimphung",
"V¹n Chóng TÒ T©m Y/tamy",
"L­u Tiªn QuÇn/tienquan",
"Tho¸t."
}
Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;
---------------------------------
function aothieulam()
AddQualityItem(2,0,2,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,0,10,4,0,-1,-1,-1,-1,-1,-1)
end

function aovodang()
AddQualityItem(2,0,2,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,1,10,4,0,-1,-1,-1,-1,-1,-1)
end

function aothiennhan()
AddQualityItem(2,0,2,2,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,2,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,2,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,2,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,2,10,4,0,-1,-1,-1,-1,-1,-1)
end

function sabao()
AddQualityItem(2,0,2,3,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,3,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,3,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,3,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,3,10,4,0,-1,-1,-1,-1,-1,-1)
end

function dng()
AddQualityItem(2,0,2,4,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,4,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,4,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,4,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,4,10,4,0,-1,-1,-1,-1,-1,-1)
end

function aocaibang()
AddQualityItem(2,0,2,5,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,5,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,5,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,5,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,5,10,4,0,-1,-1,-1,-1,-1,-1)
end

function longbao()
AddQualityItem(2,0,2,6,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,6,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,6,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,6,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,6,10,4,0,-1,-1,-1,-1,-1,-1)
end

function daoy()
AddQualityItem(2,0,2,8,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,8,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,8,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,8,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,8,10,4,0,-1,-1,-1,-1,-1,-1)
end

function hotrang()
AddQualityItem(2,0,2,9,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,9,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,9,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,9,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,9,10,4,0,-1,-1,-1,-1,-1,-1)
end

function huongsam()
AddQualityItem(2,0,2,10,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,10,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,10,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,10,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,10,10,4,0,-1,-1,-1,-1,-1,-1)
end

function kimphung()
AddQualityItem(2,0,2,11,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,11,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,11,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,11,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,11,10,4,0,-1,-1,-1,-1,-1,-1)
end

function tamy()
AddQualityItem(2,0,2,12,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,12,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,12,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,12,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,12,10,4,0,-1,-1,-1,-1,-1,-1)
end

function tienquan()
AddQualityItem(2,0,2,13,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,13,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,13,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,13,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,13,10,4,0,-1,-1,-1,-1,-1,-1)
end
--------------------------------------------------------------------
function hat()
local tab_Content = {
"Tú L« M·o/lomao",
"Ngò L·o Qu¸n/laoquan",
"Tu La Ph¸t KÕt/phatket",
"Th«ng Thiªn Ph¸t Qu¸n/phatquan",
"YÓm NhËt Kh«i/nhatkhoi",
"TrÝch Tinh Hoµn/tinhhoan",
"¤ Tµm M·o/tammao",
"Quan ¢m Ph¸t Qu¸n/quanam",
"¢m D­¬ng V« Cùc Qu¸n/amduong",
"HuyÒn Tª DiÖn Tr¸o/dientrao",
"Long HuyÕt §Çu Hoµn/longhuyet",
"Long L©n Kh«i/lankhoi",
"Thanh Tinh Thoa/tinhthoa",
"Kim Phông TriÓn SÝ/triensi",
"Tho¸t."
}
Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;
--------------------------
function lomao()
AddQualityItem(2,0,7,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,0,10,4,0,-1,-1,-1,-1,-1,-1)
end

function laoquan()
AddQualityItem(2,0,7,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,1,10,4,0,-1,-1,-1,-1,-1,-1)
end

function phatket()
AddQualityItem(2,0,7,2,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,2,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,2,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,2,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,2,10,4,0,-1,-1,-1,-1,-1,-1)
end

function phatquan()
AddQualityItem(2,0,7,3,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,3,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,3,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,3,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,3,10,4,0,-1,-1,-1,-1,-1,-1)
end

function nhatkhoi()
AddQualityItem(2,0,7,4,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,4,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,4,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,4,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,4,10,4,0,-1,-1,-1,-1,-1,-1)
end

function tinhhoan()
AddQualityItem(2,0,7,5,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,5,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,5,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,5,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,5,10,4,0,-1,-1,-1,-1,-1,-1)
end

function tammao()
AddQualityItem(2,0,7,6,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,6,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,6,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,6,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,6,10,4,0,-1,-1,-1,-1,-1,-1)
end

function quanam()
AddQualityItem(2,0,7,7,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,7,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,7,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,7,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,7,10,4,0,-1,-1,-1,-1,-1,-1)
end

function amduong()
AddQualityItem(2,0,7,8,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,8,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,8,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,8,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,8,10,4,0,-1,-1,-1,-1,-1,-1)
end

function dientrao()
AddQualityItem(2,0,7,9,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,9,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,9,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,9,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,9,10,4,0,-1,-1,-1,-1,-1,-1)
end

function longhuyet()
AddQualityItem(2,0,7,10,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,10,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,10,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,10,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,10,10,4,0,-1,-1,-1,-1,-1,-1)
end

function lankhoi()
AddQualityItem(2,0,7,11,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,11,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,11,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,11,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,11,10,4,0,-1,-1,-1,-1,-1,-1)
end

function tinhthoa()
AddQualityItem(2,0,7,12,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,12,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,12,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,12,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,12,10,4,0,-1,-1,-1,-1,-1,-1)
end

function triensi()
AddQualityItem(2,0,7,13,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,13,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,13,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,13,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,13,10,4,0,-1,-1,-1,-1,-1,-1)
end
---------------------------------------------------------------
function glove()
local tab_Content = {
"Long Phông HuyÕt Ngäc Tr¹c/ngoctrac",
"Thiªn Tµm Hé UyÓn/houyen",
"Tho¸t."
}
Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;
----------------------
function ngoctrac()
AddQualityItem(2,0,8,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,0,10,4,0,-1,-1,-1,-1,-1,-1)
end

function houyen()
AddQualityItem(2,0,8,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,1,10,4,0,-1,-1,-1,-1,-1,-1)
end
-------------------------------------------------------------------
function belt()
local tab_Content = {
"Thiªn Tµm Yªu §¸i/thientamyeu",
"B¹ch Kim Yªu §¸i/bachkimyeudai",
"Tho¸t."
}
Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;
-----------------------
function thientamyeu()
AddQualityItem(2,0,6,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,0,10,4,0,-1,-1,-1,-1,-1,-1)
end

function bachkimyeudai()
AddQualityItem(2,0,6,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,1,10,4,0,-1,-1,-1,-1,-1,-1)
end
----------------------------------------------------------------------------
function shoe()
local tab_Content = {
"Cöu TiÕt X­¬ng VÜ Ngoa/cuutien",
"Thiªn Tµm Ngoa/thientam",
"Kim Lò Hµi/kimlu",
"Phi Phông Ngoa/phiphung",
"Tho¸t."
}
Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;
--------------------------
function cuutien()
AddQualityItem(2,0,5,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,0,10,4,0,-1,-1,-1,-1,-1,-1)
end

function thientam()
AddQualityItem(2,0,5,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,1,10,4,0,-1,-1,-1,-1,-1,-1)
end

function kimlu()
AddQualityItem(2,0,5,2,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,2,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,2,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,2,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,2,10,4,0,-1,-1,-1,-1,-1,-1)
end

function phiphung()
AddQualityItem(2,0,5,3,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,3,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,3,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,3,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,3,10,4,0,-1,-1,-1,-1,-1,-1)
end
--------------------------------------------------------------------
function DanhHieu()
	local tbOpt = {
		{"LÊy ID Vßng S¸ng",LayVongSang},
		{"Xãa HiÖu øng Vßng S¸ng",XoaHieuUng},
		{"Tho¸t",},
	}
	CreateNewSayEx("H·y Lùa Chän", tbOpt)
end

function LayVongSang()
	AskClientForNumber("DanhHieu1",0,5000,"NhËp ID")
end

function DanhHieu1(num)
n_title = num	--ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
end

function XoaHieuUng()
SetTask(1122,0)
KickOutSelf()
end
---------------------------------------------------------------------------------------------------------
function vitri_congthanh()
local tab_Content = {
              --"map Luyªn  C«ng/gotobaitrain",
		"L©m An/goto_lam_an",
		"BiÖn Kinh/goto_bien_kinh",		
		"Thµnh §«/goto_thanh_do",
		"T­¬ng D­¬ng/goto_tuong_duong",
		"Ph­îng T­êng/goto_phuong_tuong",
		"D­¬ng Ch©u/goto_duong_chau",
		"§¹i Lý/goto_dai_ly",
		"VÜnh L¹c TrÊn/goto_ba_lang",
		"Tèng - Kim/goto_tongkim",	
		"Loi dai/goto_loidai",
		"Lien dau/goto_liendau",
		"Thiªn Tö/goto_ThienTu",
		"NguyÖt Ca §¶o/goto_ca_dao",
		"KÕt thóc..!/No"
	}
	Say("ThÇn hµnh phï, ®i ®Õn n¬i ng­¬i muèn.", getn(tab_Content), tab_Content);
end
function gotobaitrain()
	NewWorld(996,1581,3197)
	SetFightState(1)
end
---------------------------------------------------------------------------------------------------
function goto_dua_ngua()
local tbDialog = { 
"<dec><npc>Di chuyÓn ®Õn täa ®é cÇn ®Õn?<color>", 
"Ba L¨ng HuyÖn 1x/xem_blh1",
"Ba L¨ng HuyÖn 2 /xem_blh2",
"VÜnh L¹c TrÊn 1 /xem_vlt1",
"VÜnh L¹c TrÊn 2 /xem_vlt2",
"Long M«n TrÊn 1 /xem_lmt1",
"Long M«n TrÊn 2 /xem_lmt2",
"Chu Tiªn TrÊn 1 /xem_ctt1",
"Chu Tiªn TrÊn 2 x /xem_ctt2",
"Trang tiÕp theo /xem_tt_n",
"KÕt thóc ®èi tho¹i /No", 
} 
CreateTaskSay(tbDialog) 
end
--------------------------------------------------------------------------------------
function xem_tt_n()
local tbDialog = { 
"<dec><npc>Di chuyÓn ®Õn täa ®é cÇn ®Õn<color>", 
"§¹o H­ng Th«n 1 /xem_dht1",
"§¹o H­ng Th«n 2 /xem_dht2",
"Long TuyÒn Th«n 1 /xem_ltt1",
"Long TuyÒn Th«n 2 x /xem_ltt2",
"Giang T©n Th«n 1 /xem_gtt1",
"Giang T©n Th«n 2 /xem_gtt2",
"Th¹ch Cæ TrÊn1 /xem_tct1",
"Th¹ch Cæ TrÊn1 /xem_tc2",
"KÕt thóc ®èi tho¹i /No", 
} 
CreateTaskSay(tbDialog) 
end
-----------------------------------------------------------------------------
function goto_ThienTu()----------
NewWorld(900,180*8,208*16)
end
function xem_blh1()----------
NewWorld(53,220*8,200*16)
end
function xem_blh2()----------
NewWorld(53,207*8,182*16)
end
function xem_vlt1()----------
NewWorld(99,189*8,223*16)
end
function xem_vlt2()----------
NewWorld(99,224*8,206*16)
end
function xem_lmt1()----------
NewWorld(121,226*8,275*16)
end
function xem_lmt2()----------
NewWorld(121,276*8,282*16)
end
function xem_ctt1()----------
NewWorld(100,183*8,203*16)
end
function xem_ctt2()----------
NewWorld(100,229*8,190*16)
end
function xem_dht1()----------
NewWorld(101,171*8,198*16)
end
function xem_dht2()----------
NewWorld(101,232*8,205*16)
end
function xem_ltt1()----------
NewWorld(174,218*8,192*16)
end
function xem_ltt2()----------
NewWorld(174,183*8,211*16)
end
function xem_gtt1()----------
NewWorld(20,432*8,359*16)
end
function xem_gtt2()----------
NewWorld(20,438*8,396*16)
end
function xem_tct1()----------
NewWorld(153,232*8,180*16)
end
function xem_tct2()----------
NewWorld(153,189*8,223*16)
end
-------------------------------------------------------------------------------------
function goto_lam_an()
SetFightState(1)
NewWorld(930,1750,3394)
end
function goto_bien_kinh()
SetFightState(1)
NewWorld(927,1749,3388)
end
function goto_thanh_do()
SetFightState(1)
NewWorld(926,1712,3300)
end
function goto_tuong_duong()
SetFightState(1)
NewWorld(931,1710,3303)
end
function goto_phuong_tuong()
SetFightState(1)
NewWorld(929,1764,3513)
end
function goto_duong_chau()
SetFightState(1)
NewWorld(932,1728,3302)
end
function goto_dai_ly()
SetFightState(1)
NewWorld(928,1727,3295)
end
function goto_ba_lang()
SetFightState(0)
NewWorld(99,1627,3201)
end
function goto_loidai()
SetFightState(0)
NewWorld(209,1612,3197)
end
function goto_tongkim()
SetFightState(1)
NewWorld(380,1568,3195)
end
function goto_liendau()
SetFightState(0)
NewWorld(380,1568,3195)
end

function goto_ca_dao()
SetFightState(1)
NewWorld(968,1586,3172)
end
---------------------------------------------------------------------------------------------------------------------------
function CapDo() 
AskClientForNumber("Level",0,200,"NhËp CÊp §é") 
end 
function Level(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· §iÒu ChØnh <color=metal>"..num.."<color> CÊp §é Cho B¹n"); 
local nCurLevel = GetLevel()
local nAddLevel = num - nCurLevel
ST_LevelUp(nAddLevel)
Msg2Player("B¹n nhËn ®­îc <color=yellow>"..num.."<color> cÊp §é") 
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §îc GM T¨ng <color=metal>"..num.."<color> CÊp §é Thµnh C«ng"); 
end; 
--------------------------VÒ Ba L¨ng HuyÖn-------------------------------------------------
function move() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
w,x,y=GetWorldPos() 
if (w~=53) then 
SetFightState(0) 
NewWorld(53,200*8,200*16) 
else 
SetPos(1630, 3255) 
end 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· Di ChuyÓn B¹n VÒ Ba L¨ng HuyÖn"); 
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> ®­îc GM Di ChuyÓn VÒ Ba L¨ng HuyÖn Thµnh C«ng"); 
end 
--------------------------------------------------------------------
function kicknv() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· KÝch Nh©n VËt Chèng KÑt Acc Thµnh C«ng"); 
KickOutSelf() 
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM KÝch kÑt Tµi Kho¶n Thµnh C«ng"); 
end; 
---------------------------Më Chøc N¨ng Cho Ng­êi Ch¬i Kh¸c---------------------------------
function MoChucNang() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)  
QuanLyChucNang(2)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §· Trao QuyÒn H¹n Cho B¹n H·y Lùa Chän Chøc N¨ng"); 
end;
------------------------------------------------------------------------------
function camchat() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
SetChatFlag(1) 
Msg2Player("B¹n bÞ khãa Ch¸t trªn mäi tÇn sè") 
PlayerIndex=gmidx 
AddGlobalCountNews("Nh©n VËt:<color=red> "..ObjName.."<color> §· BÞ CÊm Chat Trªn Mäi TÇn Sè !",1) 
end 
----------------------------------------------------------------------------------
function mochat() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
SetChatFlag(0) 
Msg2Player("B¹n ®­îc më khãa Ch¸t trªn mäi tÇn sè") 
PlayerIndex=gmidx 
AddGlobalCountNews("Nh©n VËt:<color=green> "..ObjName.."<color> §­îc Më Chat Trªn Mäi TÇn Sè !",1)  
end
-------------------------------LÊy Täa §é-----------------------------------------
function toado1() 
local w,x,y = GetWorldPos(); 
Msg2Player("M¸p sè <color=Green>"..w.."<color> täa ®é <color=Yellow>"..x..", "..y) 
Msg2Player("M¸p sè <color=Green>"..w.."<color> täa ®é <color=Yellow>"..floor(x/32)..", "..floor(y/32)) 
end
--------------------------------------------Ch¸t Admin----------------------------------------------------------------------
function Admin_thongbao()
AskClientForString("MsgGlbByAM","",1,9999999,"GM: nhËp néi dung th«ng b¸o!")
end

function MsgGlbByAM(zVar)
	local IsString = tonumber(zVar)
	if IsString then
		Talk(1,"MsgGlbAM_Input","NhËp néi dung.!!")
		return
	end
	local MapId
	if (zVar == "reset111") then
		for i=1,GetPlayerCount() do
			PlayerIndex = i
			MapId,_,_ = GetWorldPos()
			if (MapId > 0) then
			KickOutSelf()
			end
		end
	end
	Msg2SubWorld("Th«ng B¸o: <color=yellow>"..zVar.."")
	AddGlobalCountNews(" Th«ng B¸o: <color=yellow>"..zVar.."")
end
---------------------------------------------Ch¸t GM-----------------------------------------------------------
function Gm()
AskClientForString("MsgGlbByGM","",1,9999999,"GM:Mêi nhËp néi dung!")
end
function MsgGlbByGM(zVar)
local IsString = tonumber(zVar)
if IsString then
Talk(1,"MsgGlbGM_Input","NhËp néi dung.!!")
return
end
local MapId
if (zVar == "reset") then
for i=1,GetPlayerCount() do
PlayerIndex = i
MapId,_,_ = GetWorldPos()
if (MapId > 0) then
KickOutSelf()
end
end
end
Msg2SubWorld("<bclr=white>Qu¶n Lý GM: <bclr><color=violet>"..zVar.."")
AddGlobalCountNews(" <color=violet>GM Xin Th«ng B¸o<color=>: <bclr=blue>Vâ L©m TruyÒn Kú H·y L¾ng Nghe : "..zVar.."<bclr>")
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Pet()
local szTitle = "H·y Lùa Chän Pet"
	local tbOpt = {
		{"Chän Lo¹i Pet",ChonPet},
		{"Xem Tr¹ng Th¸i",XemTrangThai},
		{"Tho¸t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
-------------------------------------------------------------------------
function ChonPet()
local partnerindex = PARTNER_GetCurPartner()
	if (partnerindex == 0) then
		Say("Lùa Chän Pet",6,"Chu T­íc/ChuTuoc","Háa Kú L©n/HoaKyLan","Thanh Long/ThanhLong","HuyÒn Vò/HuyenVu","LiÖt DiÔm S­/LietDiemSu","Hñy Bá/No")
	else
		Talk(1,"","C¸c H¹ §· Cã Pet Råi H·y Sö Dông Chøc N¨ng Gäi Ra...!")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------
function ChuTuoc()
 local partneridex = PARTNER_AddFightPartner(4,4,1,5,5,5,5,5,5)
PARTNER_CallOutCurPartner(1)
end
function HoaKyLan()
 local partneridex = PARTNER_AddFightPartner(1,1,1,5,5,5,5,5,5)
PARTNER_CallOutCurPartner(1)
end
function ThanhLong()
 local partneridex = PARTNER_AddFightPartner(2,2,1,5,5,5,5,5,5)
PARTNER_CallOutCurPartner(1)
end
function HuyenVu()
 local partneridex = PARTNER_AddFightPartner(3,3,1,5,5,5,5,5,5)
PARTNER_CallOutCurPartner(1)
end
function LietDiemSu()
 local partneridex = PARTNER_AddFightPartner(5,0,1,5,5,5,5,5,5)
PARTNER_CallOutCurPartner(1)
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------
function XemTrangThai()
local partnerindex, partnerstate = PARTNER_GetCurPartner()
if partnerstate == 1 then
Say("§ång Hµnh Cña C¸c H¹ §ang Trong Tr¹ng Th¸i XuÊt ChiÕn",2,"Muèn Thu Håi/ThuHoi","Hñy Bá")
else
Say("§ång Hµnh Cña C¸c H¹ §ang Trong Tr¹ng Th¸i NghØ Ng¬i",2,"Muèn XuÊt ChiÕn/XuatChien","Hñy Bá")
end
end

function ThuHoi()
local partnerindex = PARTNER_GetCurPartner()
	if (partnerindex == 1) then
		PARTNER_CallOutCurPartner(0)
	else
		Talk(1,"","C¸c H¹ §· Ch­a Cã Thó C­ng Kh«ng ThÓ Thu Håi...!")
	end
end

function XuatChien()
local partnerindex = PARTNER_GetCurPartner()
	if (partnerindex == 1) then
		PARTNER_CallOutCurPartner(1)
	else
		Talk(1,"","C¸c H¹ §· Ch­a Cã Thó C­ng Kh«ng ThÓ XuÊt ChiÕn Ra...!")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function kiemtraspr()
	AskClientForString("kiemtraspr1","\\spr\\vongsang\\view.spr",1,100,"NhËp §­êng DÉn")
end

function kiemtraspr1(num)
local DuongDan = num
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\vongsang\\view.spr>Vßng S¸ng: <link>"
local szTitle = VONG_SANG.."<color=yellow>Trªn Client<color>"
local tbOpt = {{"Tho¸t"}} CreateNewSayEx(szTitle, tbOpt) return 1;
end
---------------------------------------------------------------------------------------------------------------------------------
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
SetProtectTime(18*3)
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
SetProtectTime(18*3)
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
local szTitle = format("<color=yellow>%s<color>: §ang ë <color=yellow>%s<color> täa ®é <color=red>%d / %d<color>, Map <color=red>%d<color>", szTargetName, szMapName,toadox,toadoy,nSubWorldID) 
local tbOpt = { 
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

function tbGmRole:TaoItem(szItem)
	local szICode = lib:Split(szItem, ",");
	local n = getn(szICode);
	if (n ~= 1) then
	if (n < 6) then Talk(1, "", format("Sai Item code. ThiÕu tr­êng d÷ liÖu. NhËp l¹i: <color=yellow>%s<color>",n)); return end
	if (n > 7) then Talk(1, "", format("Sai Item code. V­ît qu¸ tr­êng d÷ liÖu. NhËp l¹i: <color=yellow>%s<color>",n)); return end
	local itclass = tonumber(szICode[1]); 
	local ittype = tonumber(szICode[2]); 
	local itid = tonumber(szICode[3]); 
	local itlv = tonumber(szICode[4]); 
	local itseri = tonumber(szICode[5]); 
	local itluck = tonumber(szICode[6]); 
	local itmagic = tonumber(szICode[7]); 
	if (itlv < 0) then Talk(1, "", format("CÊp ®é mÆn ®å kh«ng ®­îc thÊp. NhËp l¹i: <color=yellow>%s<color>",itlv)); return end
	if (itlv > 10) then Talk(1, "", format("ChØ hæ trî cÊp 10. NhËp l¹i:<color=yellow>%s<color>",itlv)); return end
	if (itmagic == nil) then itmagic=0; end
	AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
 WriteLogPro("dulieu/hoatdongxu/layvatpham.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An "..AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic).."\n");	

	else
	local EquipId = tonumber(szICode[1]); 
	AddGoldItem(0, EquipId);
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function AddDanhVong() 
	AskClientForNumber("Adddiemev1",0,1200000,"Sè §iÓm even") 
end 
function Adddiemev1(num)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
SetTask(5138,GetTask(5138) +num)
SetTask(2501,GetTask(2501) +num)
PlayerIndex=gmidx 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>"..num.."<color> §iÓm even Thµnh C«ng");
end;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function MocNap()
local szTitle = "H·y Chän Chøc N¨ng"
	local tbOpt = {
    
            {"Check §å 4 sao ",thamgia2T},
            {"Check Mèc N¹p Míi ",thamgia3T},
            {"Check Tói VËt PhÈm ",thamgia4T}, 
           --{"Check Tói Vµng NÐn ",thamgia5T},
  {"Check Tói even ",thamgia6T},
       	
		{"Tho¸t",},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
 --------------------------------------------------------bongda     
function thamgia2T()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)----
tbAwardTemplet:GiveAwardByList({tbProp={0,5967},nQuality=1,nCount=1},"TiÒn §ång")--  ngua
tbAwardTemplet:GiveAwardByList({tbProp={0,5339},nQuality=1,nCount=1},"TiÒn §ång")--  vuliet non
tbAwardTemplet:GiveAwardByList({tbProp={0,5340},nQuality=1,nCount=1},"TiÒn §ång")--  vuliet ao
tbAwardTemplet:GiveAwardByList({tbProp={0,5341},nQuality=1,nCount=1},"TiÒn §ång")--  vuliet ngoa
tbAwardTemplet:GiveAwardByList({tbProp={0,5342},nQuality=1,nCount=1},"TiÒn §ång")--  vuliet boi
tbAwardTemplet:GiveAwardByList({tbProp={0,5343},nQuality=1,nCount=1},"TiÒn §ång")--  vuliet yeu dai
tbAwardTemplet:GiveAwardByList({tbProp={0,5966},nQuality=1,nCount=1},"TiÒn §ång")--  ff
tbAwardTemplet:GiveAwardByList({tbProp={0,5972},nQuality=1,nCount=1},"TiÒn §ång")--  nhan
tbAwardTemplet:GiveAwardByList({tbProp={0,5971},nQuality=1,nCount=1},"TiÒn §ång")--  nhAN choang
tbAwardTemplet:GiveAwardByList({tbProp={0,5963},nQuality=1,nCount=1},"TiÒn §ång")--  mT Na
tbAwardTemplet:GiveAwardByList({tbProp={0,5964},nQuality=1,nCount=1},"TiÒn §ång")--  xuyen y
tbAwardTemplet:GiveAwardByList({tbProp={0,5965},nQuality=1,nCount=1},"TiÒn §ång")--  an
PlayerIndex=gmidx 

WriteLogPro("dulieu/ADM_MOC_1000.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \n");
end    

----------------------------

function thamgia3T()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)----
tbAwardTemplet:GiveAwardByList({tbProp={0,5973},nQuality=1,nCount=1},"TiÒn §ång")--  ngua
tbAwardTemplet:GiveAwardByList({tbProp={6,1,4787,1,0,0},nCount=1},"TiÒn §ång")--  ff
--tbAwardTemplet:GiveAwardByList({tbProp={0,5962},nQuality=1,nCount=1},"TiÒn §ång")--  nhan
--tbAwardTemplet:GiveAwardByList({tbProp={0,5961},nQuality=1,nCount=1},"TiÒn §ång")--  nhAN choang
--tbAwardTemplet:GiveAwardByList({tbProp={0,5953},nQuality=1,nCount=1},"TiÒn §ång")--  mT Na
--tbAwardTemplet:GiveAwardByList({tbProp={0,5954},nQuality=1,nCount=1},"TiÒn §ång")--  xuyen y
--tbAwardTemplet:GiveAwardByList({tbProp={0,5955},nQuality=1,nCount=1},"TiÒn §ång")--  an
PlayerIndex=gmidx 

WriteLogPro("dulieu/ADM_MOC_1000.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \n");
end    
-----------------------
function thamgia4T() 
	AskClientForNumber("thamgia4T1",0,40000,"Sè l­îng ") 
end 
function thamgia4T1(num)  
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)----
tbAwardTemplet:GiveAwardByList({tbProp={6,1,4605,1,0,0},nCount=num},"TiÒn §ång")--  tui vat pham

PlayerIndex=gmidx 

WriteLogPro("dulieu/ADM_MOC_1000.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \n");
end    
------------------
function thamgia5T() 
	AskClientForNumber("thamgia5T1",0,40000,"Sè l­îng ") 
end 
function thamgia5T1(num)  
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)----
tbAwardTemplet:GiveAwardByList({tbProp={6,1,3037,1,0,0},nCount=num},"TiÒn §ång")--  tui vat pham

PlayerIndex=gmidx 

WriteLogPro("dulieu/ADM_MOC_1000.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \n");
end    
function thamgia6T() 
	AskClientForNumber("thamgia6T1",0,40000,"Sè l­îng ") 
end 
function thamgia6T1(num)  
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)----
tbAwardTemplet:GiveAwardByList({tbProp={6,1,2862,1,0,0},nCount=num},"TiÒn §ång")--  tui vat pham

PlayerIndex=gmidx 

WriteLogPro("dulieu/ADM_MOC_1000even.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." \n");
end 





function LayDoTheoID()			
local szTitle = "xin h·y chän vËt phÈm cÇn lÊy ! ";
local tbOpt = 
{
{"LÊy §å Hoµng Kim",LayMenuHKMP},
{"LÊy §å Queskey",LayMenuQueskey},
{"LÊy §å Magic",LayMenuMagic},
{"LÊy Ngùa",LayMenuNgua},
{"LÊy MÆt N¹",LayMenuMatNa},
{"Tho¸t",OnCancel},
}
CreateNewSayEx(szTitle, tbOpt)
end
-------------------------LAY MAGIC----------------------------------
function LayMenuMagic()
AskClientForNumber("LayMenuMagic_1",0,10000,"LÊy ID Nµo")
end
function LayMenuMagic_1(nID)
if nID == nil or nID == 0 or nID < 1 or nID > 10000 then
Msg2Player("Sè kh«ng hîp lÖ")
return
end
SetTask(3355,nID)
AskClientForNumber("LayMenuMagic_2",0,5000,"Sè L­îng Nhiu")
end

function LayMenuMagic_2(nSoLuong)
if nSoLuong == nil or nSoLuong == 0 or nSoLuong < 1 or nSoLuong > 5000 then
Msg2Player("Sè kh«ng hîp lÖ")
return
end
SetTask(3356,nSoLuong)
AskClientForNumber("LayMenuMagic_3",0,365,"Bao Nhiu Ngµy")
end

function LayMenuMagic_3(nHSD)
local nID = GetTask(3355)
local nSL = GetTask(3356)
if nHSD == nil or nHSD > 365 then
Msg2Player("Sè kh«ng hîp lÖ")
return
end
if nHSD == 0 then
local nItemIdx = AddItem(6,1,nID,1,0,0)
local Ten = GetItemName(nItemIdx)
	RemoveItemByIndex(nItemIdx)
tbAwardTemplet:GiveAwardByList({{szName=""..Ten.."",tbProp={6,1,nID,1,0},nCount=nSL,},}, "AD", 1);
logplayer("data/log_lay_item_admin.txt",format("TG : %s  - ID [ %s] - NV [ %s] - lÊy "..nSL.." [ "..Ten.." ] -  M· M¸y [ %s] ".."",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),GetIP()))
return
end
if nHSD ~= 0 then
local nItemIdx = AddItem(6,1,nID,1,0,0)
local Ten = GetItemName(nItemIdx)
RemoveItemByIndex(nItemIdx)
tbAwardTemplet:GiveAwardByList({{szName=""..Ten.."",tbProp={6,1,nID,1,0},nCount=nSL,nExpiredTime=nHSD * 1440},}, "AD", 1);
logplayer("data/log_lay_item_admin.txt",format("TG : %s  - ID [ %s] - NV [ %s] - lÊy "..nSL.."  [ "..Ten.." ] -  M· M¸y [ %s] - HSD [ "..nHSD.." ]  ngµy".."",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),GetIP()))
-- logplayer("data/log_lay_item_admin.txt",format("TG : %s  - ID [ %s] - NV [ %s] - lÊy "..nSL.."  [ "..Ten.." ] -  M· M¸y [ %s] - HSD [ "..nHSD.." ]  ngµy".."",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),getHWID()))
return
end
end
------------------------LAY QUESKEY---------------------------------------------


function LayMenuQueskey()
AskClientForNumber("LayMenuQueskey_1",0,10000,"LÊy ID Nµo")
end
function LayMenuQueskey_1(nID)
if nID == nil or nID == 0 or nID < 1 or nID > 10000 then
Msg2Player("Sè kh«ng hîp lÖ")
return
end
SetTask(3355,nID)
AskClientForNumber("LayMenuQueskey_2",0,9000,"Sè L­îng Nhiu")
end

function LayMenuQueskey_2(nSoLuong)
if nSoLuong == nil or nSoLuong == 0 or nSoLuong < 1 or nSoLuong > 9000 then
Msg2Player("Sè kh«ng hîp lÖ")
return
end
SetTask(3356,nSoLuong)
AskClientForNumber("LayMenuQueskey_3",0,365,"Bao Nhiu Ngµy")
end

function LayMenuQueskey_3(nHSD)
local nID = GetTask(3355)
local nSL = GetTask(3356)
if nHSD == nil or nHSD > 365 then
Msg2Player("Sè kh«ng hîp lÖ")
return
end
if nHSD == 0 then
local nItemIdx = AddItem(4,nID,1,1,0,0)
local Ten = GetItemName(nItemIdx)
	RemoveItemByIndex(nItemIdx)
tbAwardTemplet:GiveAwardByList({{szName=""..Ten.."",tbProp={4,nID,1,1,0},nCount=nSL,},}, "AD", 1);
-- logplayer("data/log_lay_item_admin.txt",format("TG : %s  - ID [ %s] - NV [ %s] - lÊy "..nSL.." [ "..Ten.." ] -  M· M¸y [ %s] ".."",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),getHWID()))
logplayer("data/log_lay_item_admin.txt",format("TG : %s  - ID [ %s] - NV [ %s] - lÊy "..nSL.." [ "..Ten.." ] -  M· M¸y [ %s] ".."",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),GetIP()))
return
end
if nHSD ~= 0 then
local nItemIdx = AddItem(4,nID,1,1,0,0)
local Ten = GetItemName(nItemIdx)
RemoveItemByIndex(nItemIdx)
tbAwardTemplet:GiveAwardByList({{szName=""..Ten.."",tbProp={4,nID,1,1,0},nCount=nSL,nExpiredTime=nHSD * 1440},}, "AD", 1);
-- logplayer("data/log_lay_item_admin.txt",format("TG : %s  - ID [ %s] - NV [ %s] - lÊy "..nSL.." [ "..Ten.." ] -  HSD [ "..nHSD.." ]  ngµy - M· M¸y [ %s] -".."",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),getHWID()))
logplayer("data/log_lay_item_admin.txt",format("TG : %s  - ID [ %s] - NV [ %s] - lÊy "..nSL.." [ "..Ten.." ] -  HSD [ "..nHSD.." ]  ngµy - M· M¸y [ %s] -".."",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),GetIP()))
return
end
end

------------------------LAY HKMP---------------------------------------------
function LayMenuHKMP()
AskClientForNumber("LayMenuHKMP_1",0,10000,"LÊy ID Nµo")
end
function LayMenuHKMP_1(nID)
if nID == nil or nID == 0 or nID < 1 or nID > 10000 then
Msg2Player("Sè kh«ng hîp lÖ")
return
end
SetTask(3355,nID)
AskClientForNumber("LayMenuHKMP_2",0,1000,"Sè L­îng Nhiu")
end

function LayMenuHKMP_2(nSoLuong)
if nSoLuong == nil or nSoLuong == 0 or nSoLuong < 1 or nSoLuong > 1000 then
Msg2Player("Sè kh«ng hîp lÖ")
return
end
SetTask(3356,nSoLuong)
AskClientForNumber("LayMenuHKMP_3",0,365,"Bao Nhiu Ngµy")
end

function LayMenuHKMP_3(nHSD)
local nID = GetTask(3355)
local nSL = GetTask(3356)
if nHSD == nil or nHSD > 365 then
Msg2Player("Sè kh«ng hîp lÖ")
return
end
if nHSD == 0 then
local nItemIdx = AddGoldItem(0,nID)
local Ten = GetItemName(nItemIdx)
	RemoveItemByIndex(nItemIdx)
tbAwardTemplet:GiveAwardByList({{szName=""..Ten.."",tbProp={0,nID},nCount=nSL,nQuality=1},}, "AD", 1);
-- logplayer("data/log_lay_item_admin.txt",format("TG : %s  - ID [ %s] - NV [ %s] - lÊy "..nSL.." [ "..Ten.." ] -  M· M¸y [ %s] ".."",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),getHWID()))
logplayer("data/log_lay_item_admin.txt",format("TG : %s  - ID [ %s] - NV [ %s] - lÊy "..nSL.." [ "..Ten.." ] -  M· M¸y [ %s] ".."",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),GetIP()))
return
end
if nHSD ~= 0 then
local nItemIdx = AddGoldItem(0,nID)
local Ten = GetItemName(nItemIdx)
RemoveItemByIndex(nItemIdx)
tbAwardTemplet:GiveAwardByList({{szName=""..Ten.."",tbProp={0,nID},nCount=nSL,nQuality=1,nExpiredTime=nHSD * 1440},}, "AD", 1);
logplayer("data/log_lay_item_admin.txt",format("TG : %s  - ID [ %s] - NV [ %s] - lÊy "..nSL.." [ "..Ten.." ] -  HSD [ "..nHSD.." ]  ngµy - M· M¸y [ %s] -".."",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),GetIP()))
-- logplayer("data/log_lay_item_admin.txt",format("TG : %s  - ID [ %s] - NV [ %s] - lÊy "..nSL.." [ "..Ten.." ] -  HSD [ "..nHSD.." ]  ngµy - M· M¸y [ %s] -".."",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),getHWID()))
return
end
end

------------------------LAY MAT NA--------------------------------------------


function LayMenuMatNa()
AskClientForNumber("LayMenuMatNa_1",0,10000,"LÊy ID Nµo")
end
function LayMenuMatNa_1(nID)
if nID == nil or nID == 0 or nID < 1 or nID > 10000 then
Msg2Player("Sè kh«ng hîp lÖ")
return
end
SetTask(3355,nID)
AskClientForNumber("LayMenuMatNa_2",0,1000,"Sè L­îng Nhiu")
end

function LayMenuMatNa_2(nSoLuong)
if nSoLuong == nil or nSoLuong == 0 or nSoLuong < 1 or nSoLuong > 1000 then
Msg2Player("Sè kh«ng hîp lÖ")
return
end
SetTask(3356,nSoLuong)
AskClientForNumber("LayMenuMatNa_3",0,365,"Bao Nhiu Ngµy")
end

function LayMenuMatNa_3(nHSD)
local nID = GetTask(3355)
local nSL = GetTask(3356)
if nHSD == nil or nHSD > 365 then
Msg2Player("Sè kh«ng hîp lÖ")
return
end
if nHSD == 0 then
local nItemIdx = AddItem(0,11,nID,1,0,0)
local Ten = GetItemName(nItemIdx)
	RemoveItemByIndex(nItemIdx)
tbAwardTemplet:GiveAwardByList({{szName=""..Ten.."",tbProp={0,11,nID,1,0},nCount=nSL,},}, "AD", 1);
-- logplayer("data/log_lay_item_admin.txt",format("TG : %s  - ID [ %s] - NV [ %s] - lÊy "..nSL.." [ "..Ten.." ] -  M· M¸y [ %s] ".."",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),getHWID()))
logplayer("data/log_lay_item_admin.txt",format("TG : %s  - ID [ %s] - NV [ %s] - lÊy "..nSL.." [ "..Ten.." ] -  M· M¸y [ %s] ".."",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),GetIP()))
return
end
if nHSD ~= 0 then
local nItemIdx = AddItem(0,11,nID,1,0,0)
local Ten = GetItemName(nItemIdx)
RemoveItemByIndex(nItemIdx)
tbAwardTemplet:GiveAwardByList({{szName=""..Ten.."",tbProp={0,11,nID,1,0},nCount=nSL,nExpiredTime=nHSD * 1440},}, "AD", 1);
logplayer("data/log_lay_item_admin.txt",format("TG : %s  - ID [ %s] - NV [ %s] - lÊy "..nSL.." [ "..Ten.." ] -  HSD [ "..nHSD.." ]  ngµy - M· M¸y [ %s] -".."",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),GetIP()))
return
end
end

------------------------LAY Ngua--------------------------------------------


function LayMenuNgua()
AskClientForNumber("LayMenuNgua_1",0,10000,"LÊy ID Nµo")
end
function LayMenuNgua_1(nID)
if nID == nil or nID == 0 or nID < 1 or nID > 10000 then
Msg2Player("Sè kh«ng hîp lÖ")
return
end
SetTask(3355,nID)
AskClientForNumber("LayMenuNgua_2",0,1000,"Sè L­îng Nhiu")
end

function LayMenuNgua_2(nSoLuong)
if nSoLuong == nil or nSoLuong == 0 or nSoLuong < 1 or nSoLuong > 1000 then
Msg2Player("Sè kh«ng hîp lÖ")
return
end
SetTask(3356,nSoLuong)
AskClientForNumber("LayMenuNgua_3",0,365,"Bao Nhiu Ngµy")
end

function LayMenuNgua_3(nHSD)
local nID = GetTask(3355)
local nSL = GetTask(3356)
if nHSD == nil or nHSD > 365 then
Msg2Player("Sè kh«ng hîp lÖ")
return
end
if nHSD == 0 then
local nItemIdx = AddItem(0,10,nID,1,0,0)
local Ten = GetItemName(nItemIdx)
	RemoveItemByIndex(nItemIdx)
tbAwardTemplet:GiveAwardByList({{szName=""..Ten.."",tbProp={0,10,nID,10,0},nCount=nSL,},}, "AD", 1);
logplayer("data/log_lay_item_admin.txt",format("TG : %s  - ID [ %s] - NV [ %s] - lÊy "..nSL.." [ "..Ten.." ] -  M· M¸y [ %s] ".."",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),GetIP()))
return
end
if nHSD ~= 0 then
local nItemIdx = AddItem(0,10,nID,1,0,0)
local Ten = GetItemName(nItemIdx)
RemoveItemByIndex(nItemIdx)
tbAwardTemplet:GiveAwardByList({{szName=""..Ten.."",tbProp={0,10,nID,10,0},nCount=nSL,nExpiredTime=nHSD * 1440},}, "AD", 1);
logplayer("data/log_lay_item_admin.txt",format("TG : %s  - ID [ %s] - NV [ %s] - lÊy "..nSL.." [ "..Ten.." ] -  HSD [ "..nHSD.." ]  ngµy - M· M¸y [ %s] -".."",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),GetIP()))
return
end
end




function LayMenusasMagic()
AskClientForNumber("LayMaGic_1",1,1000,"Sè L­îng")
end

function LayMaGsasic_1(num)
local IDVatPham = GetTask(747)
if num == nil or num == 0 or num < 1 or num > 1000 then
Msg2Player("Sè kh«ng hîp lÖ")
return
end
local nItemIdx = AddItem(6,1,IDVatPham,1,0,0)
local Ten = GetItemName(nItemIdx)
	if nItemIdx then
	RemoveItemByIndex(nItemIdx)
tbAwardTemplet:GiveAwardByList({{szName=""..Ten.."",tbProp={6,1,IDVatPham,1,0},nCount=num,},}, "AD", 1);
logplayer("data/log_lay_item_admin.txt",format("TG : %s  - ID [ %s] - NV [ %s] - lÊy "..num.." [ "..Ten.." ] -  M· M¸y [ %s] ".."",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),GetIP()))
return
else
Msg2Player("VËt phÈm kh«ng hîp lÖ")
return
end
end




-----------------------------------------------------------------------------------------------------------------------------------------------------
--																	HÖ thèng lÊy kü n¨ng																			--
-----------------------------------------------------------------------------------------------------------------------------------------------------
function SkillsSystem()
	local szTitle = "HÖ thèng kü n¨ng bao gåm thªm kü n¨ng vµ xãa kü n¨ng, b¹n muèn sö dông hÖ thèng kü n¨ng nµo?"
	local tbOpt = {}
		tinsert(tbOpt, {"GM- NhËn skill hæ trî vµ t¨ng dame cho GM test game", DamVaSkill})		
		tinsert(tbOpt, {"GM- Thªm kü n¨ng", g_AskClientStringEx, {"", 0,256,"Néi dung th«ng b¸o:",AddSkills, }})
		tinsert(tbOpt, {"GM- Xãa kü n¨ng", g_AskClientStringEx, {"", 0,256,"Néi dung th«ng b¸o:", DeleteSkills,}})
		tinsert(tbOpt, {"§ãng."})
	CreateNewSayEx(szTitle, tbOpt)
end

function DamVaSkill()
	AskClientForNumber("DamVaSkill2",0,50000,"NhËp ®iÓm tiÒm n¨ng:")
end

function DamVaSkill2(n_key)
AddProp(n_key)
AddMagic(150,50)
AddMagic(362,50)
AddMagic(360,50)
AddMagic(376,50)
AddMagic(365,50)
AddMagic(380,50)
AddMagic(353,50)
AddMagic(69,50)
AddMagic(16,50)
AddMagic(318,50)
AddMagic(275,50)
AddMagic(48,50)
AddMagic(36,50)
AddMagic(73,50)
AddMagic(111,50)
AddMagic(357,50)
AddMagic(128,50)
AddMagic(109,50)
AskClientForNumber("DamVaSkill3",0,50000,"NhËp ®iÓm t¨ng søc m¹nh:")
end

function DamVaSkill3(n_key2)
AddStrg(n_key2);
AskClientForNumber("DamVaSkill4",0,50000,"NhËp ®iÓm t¨ng th©n ph¸p:")
AddProp(n_key2)
end

function DamVaSkill4(n_key3)
AskClientForNumber("DamVaSkill5",0,50000,"NhËp ®iÓm t¨ng néi c«ng:")
AddProp(n_key3)
AddDex(n_key3);
end

function DamVaSkill5(n_key4)
AddEng(n_key4);
AddProp(6000)
AskClientForNumber("DamVaSkill6",0,6000,"NhËp ®iÓm t¨ng sinh khÝ:")
end

function DamVaSkill6(n_key5)
AddVit(n_key5);
end

function AddSkills(szSkills)
	local _,_, nStart, nEnd, _, nPoint = GetSplitSkills(szSkills)
	for i = nStart, nEnd do
		AddMagic(i, nPoint)
		GMMsg2Player("Thªm kü n¨ng", "Thªm kü n¨ng “"..GetSkillName(i).."” ®¼ng cÊp "..nPoint.."!")
	end
end

function DeleteSkills(szSkills)
	local tbSkills, nCount, nStart, _, nEnd, _ = GetSplitSkills(szSkills)
	if nCount > 2 then
		GMMsg2Player("Xãa kü n¨ng", "NhËp th«ng sè bÞ lçi, chØ cã thÓ nhËp tèi ®a 2 th«ng sè trë xuèng.")
		return 0
	end
	for i = nStart, nEnd do
		DelMagic(i)
		GMMsg2Player("Xãa kü n¨ng", "Kü n¨ng “"..GetSkillName(i).."” ®· ®­îc xãa bá!")
	end
end

function GetSplitSkills(szString)
	local nStartSkill, nEndSkill, nEndSkill2, nPointSkill;
	local tbString = split(szString, ",")
	local nType = self:IsParamNumber(tbString)
	if nType ~= 1 then
		GMMsg2Player("Thªm kü n¨ng", "NhËp th«ng sè bÞ lçi, chØ sö dông c¸c ký tù sè tõ 0-9 vµ dÊu phÈy “,”.")
		return 0
	end
	
	if (getn(tbString) == 1) then
		nStartSkill = tbString[1];
		nEndSkill = tbString[1];
		nEndSkill2 = tbString[1];
		nPointSkill = 0;
	elseif (getn(tbString) == 2) then
		nStartSkill = tbString[1];
		nEndSkill = tbString[1];
		nEndSkill2 = tbString[2];
		nPointSkill = tbString[2];
	elseif (getn(tbString) == 3) then
		nStartSkill = tbString[1];
		nEndSkill = tbString[2];
		nPointSkill = tbString[3];
	end

	return tbString, getn(tbString), nStartSkill, nEndSkill, nEndSkill2, nPointSkill;
end



function logplayer(zFile,szMsg)
	local handle = openfile(zFile,"a")
	write(handle,format("%s\n",szMsg));
	closefile(handle);
end





--================================================-- Reload Script --=================================================--
Include("\\script\\lib\\remoteexc.lua")

function Bil_ReLoadScriptWithLinkInput(bilLinkReload)
	if type(bilLinkReload) == "string" then
		local bilLinkReload = bilLinkReload
		local Keywk1 = strfind(bilLinkReload, "\script")
		bilLinkReload = strsub(bilLinkReload, Keywk1-1, strlen(bilLinkReload))
		local Bil_RLScript = LoadScript(bilLinkReload);
		if (FALSE(Bil_RLScript)) then
			return Msg2Player("Error,False to ReLoading Script!<enter><color=yellow>"..bilLinkReload.."");
		else
			return Msg2Player("<color=green>Script has been reloaded<color><enter><color=blue>"..bilLinkReload.."");
		end
	end
	return AskClientForString("Bil_ReLoadScriptWithLinkInput", "", 1, 500, "<#>NhËp ®­êng dÉn")
end

function Bil_ReLoadScript_MultiGamerSVWithLinkInput(bilLinkReload)
	if type(bilLinkReload) == "string" then
		local bilLinkReload = bilLinkReload
		local Keywk1 = strfind(bilLinkReload, "\script")
		bilLinkReload = strsub(bilLinkReload, Keywk1-1, strlen(bilLinkReload))
		RemoteExc("\\script\\bil4i3n\\bil4i3n_funcs3relay.lua", "bilReloadScriptMultiGamesv", {bilLinkReload})
		return Msg2Player("§· göi yªu cÇu ®Õn S3Relay!")
	end
	return AskClientForString("Bil_ReLoadScript_MultiGamerSVWithLinkInput", "", 1, 500, "<#>NhËp ®­êng dÉn")
end


function bilReloadTaskReleaseS3Relay(bilData, bilScriptS3Relay)
	if type(bilData) == "string" then
		Msg2Player("Sent data to S3Relay!")
		return RemoteExc("\\script\\bil4i3n\\bil4i3n_funcs3relay.lua", "bilReleaseTaskS3Relay", {bilData}, "\\script\\global\\bil4i3n\\bill4i3n.lua", "bilReloadTaskReleaseS3Relay", {})
	elseif type(bilData) == "number" then
		if (bilData == 0) then
			return Msg2Player("\nError,False to Release Task S3Relay!<enter><color=yellow>"..bilScriptS3Relay);
		else
			return Msg2Player("\n<color=green>Task S3Relay has been Release<color><enter><color=blue>"..bilScriptS3Relay)
		end
	end
	AskClientForString("bilReloadTaskReleaseS3Relay", "", 1, 500, "<#>NhËp Task S3Relay")
end

function bilReloadScriptReloadS3Relay(bilData, bilScriptS3Relay)
	if type(bilData) == "string" then
		Msg2Player("Sent data to S3Relay!")
		return RemoteExc("\\script\\bil4i3n\\bil4i3n_funcs3relay.lua", "bilReloadScriptS3Relay", {bilData}, "\\script\\global\\bil4i3n\\bill4i3n.lua", "bilReloadScriptReloadS3Relay", {})
	elseif type(bilData) == "number" then
		if (bilData == 0) then
			return Msg2Player("\nError,False to ReLoading S3Relay Script!<enter><color=yellow>"..bilScriptS3Relay);
		else
			return Msg2Player("\n<color=green>Script S3Relay has been reloaded<color><enter><color=blue>"..bilScriptS3Relay)
		end
	end
	AskClientForString("bilReloadScriptReloadS3Relay", "", 1, 500, "<#>NhËp ®­êng dÉn S3Relay")
end

function bilReloadTaskReloadS3Relay(bilValue, bilTaskName)
	if bilValue == nil then
		return AskClientForString("bilReloadTaskReloadS3Relay", "", 1, 500, "<#>File Task S3Relay")
	elseif type(bilValue) == "string" then
		Msg2Player("Sent data to S3Relay!")
		return RemoteExc("\\script\\bil4i3n\\bil4i3n_funcs3relay.lua", "bilReloadTaskS3Relay", {bilValue}, "\\script\\global\\bil4i3n\\bill4i3n.lua", "bilReloadTaskReloadS3Relay", {})
	elseif type(bilValue) == "number" then
		if bilValue == 0 then
			return Msg2Player("FALSE to load Task S3Relay:<enter>"..bilTaskName)
		else
			Msg2Player("<color=yellow>Load Task S3Relay OK:<color><enter><color=green>"..bilTaskName)
		end
	end
end