IncludeLib("SETTING")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\event\\springfestival08\\allbrother\\event.lua")	--Tø H¶i Huynh §Ö
Include("\\script\\task\\metempsychosis\\translife_4_ex.lua")--Skill TS4
Include("\\script\\global\\translife.lua")
Include("\\script\\event\\BeiDouChuanGong\\zhizuochuangongwan.lua");
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")
-----------------------------------------------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
---------------------------------------------------------
function main()
-- dofile("script/event/springfestival08/allbrother/beidoulaoren.lua")
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end
	local tbDailog = DailogClass:new(szNpcName)

	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog)


	-- tbDailog:AddOptEntry("NhËn phÇn th­ëng Trïng Sinh", NhanThuongTrungSinh);
	tbDailog:AddOptEntry("T×m KiÕm B¾c §Èu Tr­êng Sinh ThuËt", chuyensinh);
			if GetTask(5969)==2 and GetTask(5995)==0 and GetLevel()>=195 then
			end		
			if GetTask(5969)==2 and GetTask(5995)==1 and GetLevel()>=200 then
	--		tbDailog:AddOptEntry("NhËn phÇn th­ëng Level 200 C¶i L·o 2", NhanQua200Cl2);
			end
			
			if GetTask(5969)==3 and GetTask(5995)<=2 and GetLevel()>=180 then
		--	tbDailog:AddOptEntry("NhËn phÇn th­ëng Level 180 C¶i L·o 3", NhanQua180Cl3);
			end
			
			if GetTask(5969)==3 and GetTask(5995)==3 and GetLevel()>=190 then
		--	tbDailog:AddOptEntry("NhËn phÇn th­ëng Level 190 C¶i L·o 3", NhanQua190Cl3);
			end
			
			if GetTask(5969)==3 and GetTask(5995)==4 and GetLevel()>=195 then
		--	tbDailog:AddOptEntry("NhËn phÇn th­ëng Level 195 C¶i L·o 3", NhanQua195Cl3);
			end
			
			if GetTask(5969)==3 and GetTask(5995)==5 and GetLevel()>=200 then
		--	tbDailog:AddOptEntry("NhËn phÇn th­ëng Level 200 C¶i L·o 3", NhanQua200Cl3);
			end

--	end
	tbDailog:Show()
end
------------------------------------------------------------------------------------------------
----------------------------------------------------------------------Phan Thuong Trung Sinh--------------------------------------------------------------------------------------------------------------------------------
function NhanThuongTrungSinh()
if (GetLevel() > 149) then
		Say("§¼ng CÊp 150 Trë Lªn Kh«ng ThÓ NhËn Th­ëng")
		return 1
	end;
local nTransLife = ST_GetTransLifeCount()
local nCurLevel = GetLevel()
local nAddLevel = 150 - nCurLevel
	if (nCurLevel < 150) then
		if (CalcFreeItemCellCount() >= 2) then
			ST_LevelUp(nAddLevel) SetTask(TSK_ZHUANSHENG_AWARD,0) tbAwardTemplet:GiveAwardByList(tbAwardts[nTransLife],1)
		else
			Talk(1,"","Hµnh Trang Kh«ng §ñ 2 ¤ Trèng H·y S¾p XÕp L¹i")
		end
	else
		SetTask(TSK_ZHUANSHENG_AWARD,0) tbAwardTemplet:GiveAwardByList(tbAwardts[nTransLife],1)
	end
end

tbAwardts = {
	[1] = {
		{szName="Xu",tbProp={4,417,1,1,0,0},nCount=100},
	},
	[2] = {
		{szName="Xu",tbProp={4,417,1,1,0,0},nCount=200},
	},
	[3] = {
		{szName="Xu",tbProp={4,417,1,1,0,0},nCount=300},
	},
	[4] = {
		{szName="Xu",tbProp={4,417,1,1,0,0},nCount=500},
	},
	[5] = {
		{szName="Xu",tbProp={4,417,1,1,0,0},nCount=1000},
	},
	[6] = {
		{szName="Xu",tbProp={4,417,1,1,0,0},nCount=1000},
	},
	[7] = {
		{szName="Xu",tbProp={4,417,1,1,0,0},nCount=1500},
	},
	[8] = {
		{szName="Xu",tbProp={4,417,1,1,0,0},nCount=2000},
	},
	[9] = {
		{szName="Xu",tbProp={4,417,1,1,0,0},nCount=3000},
	},
	[10] = {
		{szName="Xu",tbProp={4,417,1,1,0,0},nCount=4000},
	},
}

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function NhanQua195Cl2()
if (CountFreeRoomByWH(4,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 4x4 « trèng");
		return 1;
	end

tbAwardTemplet:GiveAwardByList({{szName = "Ngäc Linh Hån",tbProp={6,1,4912,1,1},nCount=5,},} ,"test", 1);--Ngäc Linh Hån
tbAwardTemplet:GiveAwardByList({{szName = "Ngäc C­êng Hãa Nguyªn LiÖu",tbProp={6,1,4913,1,1},nCount=5},}, "test", 1);--Ngäc Linh Hån
tbAwardTemplet:GiveAwardByList({{szName = "B¸ch LuyÖn Thµnh C­¬ng",tbProp={6,1,4906,1,1},nCount=5,nBindState=-2},}, "test", 1);--Ngäc Linh Hån
SetTask(5995,1)
	WriteLogPro("dulieu/nhan195cl2.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Nhan 195 cl2\n");	
end

function NhanQua200Cl2()
if (CountFreeRoomByWH(4,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 4x4 « trèng");
		return 1;
	end

tbAwardTemplet:GiveAwardByList({{szName = "Ngäc Linh Hån",tbProp={6,1,4912,1,1},nCount=5,},} ,"test", 1);--Ngäc Linh Hån
tbAwardTemplet:GiveAwardByList({{szName = "Ngäc C­êng Hãa Nguyªn LiÖu",tbProp={6,1,4913,1,1},nCount=5},}, "test", 1);--Ngäc Linh Hån
tbAwardTemplet:GiveAwardByList({{szName = "B¸ch LuyÖn Thµnh C­¬ng",tbProp={6,1,4906,1,1},nCount=5,nBindState=-2},}, "test", 1);--Ngäc Linh Hån
SetTask(5995,2)
	WriteLogPro("dulieu/nhan195cl2.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Nhan 200 cl2\n");	
end

function NhanQua180Cl3()
if (CountFreeRoomByWH(4,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 4x4 « trèng");
		return 1;
	end

tbAwardTemplet:GiveAwardByList({{szName = "Ngäc Linh Hån",tbProp={6,1,4912,1,1},nCount=5,},} ,"test", 1);--Ngäc Linh Hån
tbAwardTemplet:GiveAwardByList({{szName = "Ngäc C­êng Hãa Nguyªn LiÖu",tbProp={6,1,4913,1,1},nCount=5},}, "test", 1);--Ngäc Linh Hån
tbAwardTemplet:GiveAwardByList({{szName = "B¸ch LuyÖn Thµnh C­¬ng",tbProp={6,1,4906,1,1},nCount=5,nBindState=-2},}, "test", 1);--Ngäc Linh Hån
SetTask(5995,3)
	WriteLogPro("dulieu/nhan195cl3.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Nhan 180 cl3\n");	
end

function NhanQua190Cl3()
if (CountFreeRoomByWH(4,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 4x4 « trèng");
		return 1;
	end

tbAwardTemplet:GiveAwardByList({{szName = "Ngäc Linh Hån",tbProp={6,1,4912,1,1},nCount=5,},} ,"test", 1);--Ngäc Linh Hån
tbAwardTemplet:GiveAwardByList({{szName = "Ngäc C­êng Hãa Nguyªn LiÖu",tbProp={6,1,4913,1,1},nCount=5},}, "test", 1);--Ngäc Linh Hån
tbAwardTemplet:GiveAwardByList({{szName = "B¸ch LuyÖn Thµnh C­¬ng",tbProp={6,1,4906,1,1},nCount=5,nBindState=-2},}, "test", 1);--Ngäc Linh Hån
SetTask(5995,4)
	WriteLogPro("dulieu/nhan195cl3.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Nhan 190 cl3\n");	
end

function NhanQua195Cl3()
if (CountFreeRoomByWH(4,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 4x4 « trèng");
		return 1;
	end

tbAwardTemplet:GiveAwardByList({{szName = "Ngäc Linh Hån",tbProp={6,1,4912,1,1},nCount=5,},} ,"test", 1);--Ngäc Linh Hån
tbAwardTemplet:GiveAwardByList({{szName = "Ngäc C­êng Hãa Nguyªn LiÖu",tbProp={6,1,4913,1,1},nCount=5},}, "test", 1);--Ngäc Linh Hån
tbAwardTemplet:GiveAwardByList({{szName = "B¸ch LuyÖn Thµnh C­¬ng",tbProp={6,1,4906,1,1},nCount=5,nBindState=-2},}, "test", 1);--Ngäc Linh Hån
SetTask(5995,5)
	WriteLogPro("dulieu/nhan195cl3.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Nhan 195 cl3\n");	
end

function NhanQua200Cl3()
if (CountFreeRoomByWH(4,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 4x4 « trèng");
		return 1;
	end

tbAwardTemplet:GiveAwardByList({{szName = "Ngäc Linh Hån",tbProp={6,1,4912,1,1},nCount=5,},} ,"test", 1);--Ngäc Linh Hån
tbAwardTemplet:GiveAwardByList({{szName = "Ngäc C­êng Hãa Nguyªn LiÖu",tbProp={6,1,4913,1,1},nCount=5},}, "test", 1);--Ngäc Linh Hån
tbAwardTemplet:GiveAwardByList({{szName = "B¸ch LuyÖn Thµnh C­¬ng",tbProp={6,1,4906,1,1},nCount=5,nBindState=-2},}, "test", 1);--Ngäc Linh Hån
SetTask(5995,6)
	WriteLogPro("dulieu/nhan195cl3.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Nhan 200 cl3\n");	
end
------------------------------------------------------------------------------------------------

function NhanThuongCL2()
		if CalcFreeItemCellCount() <=10 then
			Talk(1,"","<color=green>§· NhËn Th­ëng hoÆc H·y §Ó Trèng 10 ¤ Råi NhËn Th­ëng...!")
			return 1;
		end
	if GetTask(5969)==2 and (GetTask(task_nhankinhnghiem194)==0 or GetTask(task_nhankinhnghiem194)==1)and GetLevel()==200 then 
		tbAwardTemplet:GiveAwardByList({{szName = "B¸ch LuyÖn Thµnh C­¬ng",tbProp={6,1,4906,1,1},nCount=5,nBindState = -2},}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{szName = "LÔ bao HuyÕt ChiÕn (§¹i)",tbProp={6,1,4898,1,1},nCount=5,nBindState = -2},}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{szName = "Xu khãa",tbProp={6,1,4893,1,1},nCount=100,nBindState = -2},}, "test", 1);
		SetTask(task_nhankinhnghiem194,2)
		WriteLogPro("dulieu/nhanthuongcailao2.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Nhan Qua 20-10\n");	
	end

end
------------------------------------------------------------------------------------------------
function HuyenChanDon()
	local tbOpt =
	{
		{"LuyÖn Thµnh HuyÒn Ch©n §¬n (50 xu)", LuyenHuyenChanDon},
		{"Tho¸t",},
	}
	CreateNewSayEx("<npc>Yªu CÇu Nh©n VËt \n - Trïng Sinh 4 \n - Level 200 \n - 50 xu\n - Sau Khi LuyÖn SÏ Trë VÒ CÊp 199", tbOpt)

end
function LuyenHuyenChanDon()
if CalcEquiproomItemCount(4,417,1,1) <50 or GetLevel()<200 or ST_GetTransLifeCount()<5 then
return Talk(1,"","<bclr=violet>"..myplayersex().." Kh«ng §ñ 50 Xu HoÆc Ch­a Trïng Sinh 5 HoÆc Ch­a §ñ 200 Level ")
end
ConsumeEquiproomItem(50,4,417,1,-1)
ST_LevelUp(-1)
tbAwardTemplet:GiveAwardByList({tbProp={6,1,1678,1,0,0},nCount=2}, "NhËn §­îc HuyÒn Ch©n §¬n")
Msg2Player("Chóc Mõng "..myplayersex().." §· NhËn §­îc HuyÒn Ch©n §¬n...<bclr>")
end
-------------------------------------------------------------------------------------------------------------------------------------------------------
local nlv = 200
local money = 10000000
--------------------------------------------------------------------------------------------------------------------------------------------------------
function chuyensinh()
	local tbOpt =
	{
		{"Ta Muèn ChuyÓn Sinh", TrungSinh},
		{"Ta Muèn Häc Thiªn Thu ChiÕn ý", beidou_learn_specialskill},
		{"Tho¸t"},
	}
	CreateNewSayEx("<npc>Xin Mêi §¹i HiÖp Chän Chøc N¨ng Mong Muèn", tbOpt)
end
-----------------------------------------------------------------------------------------------------------------------------
function TrungSinh()
local nTransLife = ST_GetTransLifeCount()
	if (nTransLife == 0) then
		if (TrungSinh1() == 1) then end
	elseif (nTransLife == 1) then
		if (TrungSinh2() == 1) then end
	elseif (nTransLife == 2) then
		if (TrungSinh3() == 1) then end
	elseif (nTransLife == 3) then
		if (TrungSinh4() == 1) then end
	elseif (nTransLife == 4) then
		if (TrungSinh5() == 1) then end
	else
		Talk(1,"","<color=red>ChuyÓn Sinh TiÕp Theo VÉn Ch­a Më")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------
function TrungSinh1()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\skill\\others\\skill_50x_como.spr>Vßng S¸ng: <link>"
local szTitle = VONG_SANG.."<color=green>Muèn Tu LuyÖn B¾c §Èu Tr­êng Sinh ThuËt<color>\nYªu CÇu: §¹t CÊp 200 + 10.000 V¹n\n§· Tu LuyÖn B¾c §Èu Tr­êng Sinh ThuËt - C¬ Së Thiªn<bclr>"
	local tbOpt = {
	--	{"TiÕn Hµnh ChuyÓn Sinh",transfer},
		{"Th«i Ta Quay L¹i Sau",},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end
-------------------------------------------------------------------------------------------------------------------------------------
function TrungSinh2()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\skill\\others\\skill_70_como.spr>Vßng S¸ng: <link>"
local szTitle = VONG_SANG.."<color=green>Muèn Tu LuyÖn B¾c §Èu Tr­êng Sinh ThuËt<color>\n<bclr=blue>Yªu CÇu: §¹t CÊp 200 + 10.000 V¹n\n§· Tu LuyÖn B¾c §Èu Tr­êng Sinh ThuËt - C¬ Së Thiªn<bclr>"
	local tbOpt = {

		{"TiÕn Hµnh ChuyÓn Sinh",transfer},
		{"Th«i Ta Quay L¹i Sau",},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end
------------------------------------------------------------------------------------------------------------------------------------------
function TrungSinh3()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\skill\\others\\skill_10_como.spr>Vßng S¸ng: <link>"
local szTitle = VONG_SANG.."<color=green>Muèn Tu LuyÖn B¾c §Èu Tr­êng Sinh ThuËt<color>\n<bclr=blue>Yªu CÇu: §¹t CÊp 200 + 10.000 V¹n\n§· Tu LuyÖn B¾c §Èu Tr­êng Sinh ThuËt - C¬ Së Thiªn<bclr>"
	local tbOpt = {
		{"TiÕn Hµnh ChuyÓn Sinh",transfer},
		{"Th«i Ta Quay L¹i Sau",},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end
------------------------------------------------------------------------------------------------------------------------------------------------
function TrungSinh4()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\skill\\others\\skill_90x_como.spr>Vßng S¸ng: <link>"
local szTitle = VONG_SANG.."<color=green>Muèn Tu LuyÖn B¾c §Èu Tr­êng Sinh ThuËt<color>\nYªu CÇu: §¹t CÊp 200 + 10.000 V¹n\n§· Tu LuyÖn B¾c §Èu Tr­êng Sinh ThuËt - C¬ Së Thiªn<bclr>"
	local tbOpt = {
		{"TiÕn Hµnh ChuyÓn Sinh",transfer},
		{"Th«i Ta Quay L¹i Sau",},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end
-------------------------------------------------------------------------------------------------------------------------------------------------------
function TrungSinh5()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\skill\\others\\chaoji_diyibang.spr>Vßng S¸ng: <link>"
local szTitle = VONG_SANG.."<color=green>Muèn Tu LuyÖn B¾c §Èu Tr­êng Sinh ThuËt<color>\nYªu CÇu: §¹t CÊp 200 + 10.000 V¹n\n§· Tu LuyÖn B¾c §Èu Tr­êng Sinh ThuËt - C¬ Së Thiªn<bclr>"
	local tbOpt = {
		{"TiÕn Hµnh ChuyÓn Sinh",transfer},
		{"Th«i Ta Quay L¹i Sau",},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
function transfer()
	if (GetLevel() >= %nlv) then
		if (GetTask(TSK_ZHUANSHENG_FLAG) >= 1) then
			if (GetCash() >= %money) then
				if (CalcItemCount(2,0,-1,-1,-1) == 0) then
					Pay(%money) ST_DoTransLife() PhanThuongChuyenSinh()
				else
					Talk(1,"","<color=red>H·y Gì Bá TÊt C¶ Trang BÞ Trªn Ng­êi Xuèng")
				end
			else
				Talk(1,"","<color=red>"..myplayersex().." Cßn ThiÕu: "..%money-GetCash().." V¹n Xin KiÓm Tra L¹i")
			end
		else
			Talk(1,"","<color=red>"..myplayersex().." Ch­a LÜnh Ngé B¾c §Èu Tr­êng Sinh ThuËt\nC¬ Së Thiªn")
		end
	else
		Talk(1,"","<color=red>LÇn ChuyÓn Sinh TiÕp Theo CÇn Ph¶i §¹t CÊp 200\nH·y Cè G¾ng Tu LuyÖn Thªm")
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------


function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
