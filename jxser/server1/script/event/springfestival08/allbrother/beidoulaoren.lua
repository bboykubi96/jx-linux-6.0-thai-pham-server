IncludeLib("SETTING")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\event\\springfestival08\\allbrother\\event.lua")	--T� H�i Huynh ��
Include("\\script\\task\\metempsychosis\\translife_4_ex.lua")--Skill TS4
Include("\\script\\global\\translife.lua")
Include("\\script\\event\\BeiDouChuanGong\\zhizuochuangongwan.lua");
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")
-----------------------------------------------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N� Hi�p";
	else
		return "��i Hi�p";
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


	-- tbDailog:AddOptEntry("Nh�n ph�n th��ng Tr�ng Sinh", NhanThuongTrungSinh);
	tbDailog:AddOptEntry("T�m Ki�m B�c ��u Tr��ng Sinh Thu�t", chuyensinh);
			if GetTask(5969)==2 and GetTask(5995)==0 and GetLevel()>=195 then
			end		
			if GetTask(5969)==2 and GetTask(5995)==1 and GetLevel()>=200 then
	--		tbDailog:AddOptEntry("Nh�n ph�n th��ng Level 200 C�i L�o 2", NhanQua200Cl2);
			end
			
			if GetTask(5969)==3 and GetTask(5995)<=2 and GetLevel()>=180 then
		--	tbDailog:AddOptEntry("Nh�n ph�n th��ng Level 180 C�i L�o 3", NhanQua180Cl3);
			end
			
			if GetTask(5969)==3 and GetTask(5995)==3 and GetLevel()>=190 then
		--	tbDailog:AddOptEntry("Nh�n ph�n th��ng Level 190 C�i L�o 3", NhanQua190Cl3);
			end
			
			if GetTask(5969)==3 and GetTask(5995)==4 and GetLevel()>=195 then
		--	tbDailog:AddOptEntry("Nh�n ph�n th��ng Level 195 C�i L�o 3", NhanQua195Cl3);
			end
			
			if GetTask(5969)==3 and GetTask(5995)==5 and GetLevel()>=200 then
		--	tbDailog:AddOptEntry("Nh�n ph�n th��ng Level 200 C�i L�o 3", NhanQua200Cl3);
			end

--	end
	tbDailog:Show()
end
------------------------------------------------------------------------------------------------
----------------------------------------------------------------------Phan Thuong Trung Sinh--------------------------------------------------------------------------------------------------------------------------------
function NhanThuongTrungSinh()
if (GetLevel() > 149) then
		Say("��ng C�p 150 Tr� L�n Kh�ng Th� Nh�n Th��ng")
		return 1
	end;
local nTransLife = ST_GetTransLifeCount()
local nCurLevel = GetLevel()
local nAddLevel = 150 - nCurLevel
	if (nCurLevel < 150) then
		if (CalcFreeItemCellCount() >= 2) then
			ST_LevelUp(nAddLevel) SetTask(TSK_ZHUANSHENG_AWARD,0) tbAwardTemplet:GiveAwardByList(tbAwardts[nTransLife],1)
		else
			Talk(1,"","H�nh Trang Kh�ng �� 2 � Tr�ng H�y S�p X�p L�i")
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
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 4x4 � tr�ng");
		return 1;
	end

tbAwardTemplet:GiveAwardByList({{szName = "Ng�c Linh H�n",tbProp={6,1,4912,1,1},nCount=5,},} ,"test", 1);--Ng�c Linh H�n
tbAwardTemplet:GiveAwardByList({{szName = "Ng�c C��ng H�a Nguy�n Li�u",tbProp={6,1,4913,1,1},nCount=5},}, "test", 1);--Ng�c Linh H�n
tbAwardTemplet:GiveAwardByList({{szName = "B�ch Luy�n Th�nh C��ng",tbProp={6,1,4906,1,1},nCount=5,nBindState=-2},}, "test", 1);--Ng�c Linh H�n
SetTask(5995,1)
	WriteLogPro("dulieu/nhan195cl2.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Nhan 195 cl2\n");	
end

function NhanQua200Cl2()
if (CountFreeRoomByWH(4,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 4x4 � tr�ng");
		return 1;
	end

tbAwardTemplet:GiveAwardByList({{szName = "Ng�c Linh H�n",tbProp={6,1,4912,1,1},nCount=5,},} ,"test", 1);--Ng�c Linh H�n
tbAwardTemplet:GiveAwardByList({{szName = "Ng�c C��ng H�a Nguy�n Li�u",tbProp={6,1,4913,1,1},nCount=5},}, "test", 1);--Ng�c Linh H�n
tbAwardTemplet:GiveAwardByList({{szName = "B�ch Luy�n Th�nh C��ng",tbProp={6,1,4906,1,1},nCount=5,nBindState=-2},}, "test", 1);--Ng�c Linh H�n
SetTask(5995,2)
	WriteLogPro("dulieu/nhan195cl2.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Nhan 200 cl2\n");	
end

function NhanQua180Cl3()
if (CountFreeRoomByWH(4,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 4x4 � tr�ng");
		return 1;
	end

tbAwardTemplet:GiveAwardByList({{szName = "Ng�c Linh H�n",tbProp={6,1,4912,1,1},nCount=5,},} ,"test", 1);--Ng�c Linh H�n
tbAwardTemplet:GiveAwardByList({{szName = "Ng�c C��ng H�a Nguy�n Li�u",tbProp={6,1,4913,1,1},nCount=5},}, "test", 1);--Ng�c Linh H�n
tbAwardTemplet:GiveAwardByList({{szName = "B�ch Luy�n Th�nh C��ng",tbProp={6,1,4906,1,1},nCount=5,nBindState=-2},}, "test", 1);--Ng�c Linh H�n
SetTask(5995,3)
	WriteLogPro("dulieu/nhan195cl3.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Nhan 180 cl3\n");	
end

function NhanQua190Cl3()
if (CountFreeRoomByWH(4,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 4x4 � tr�ng");
		return 1;
	end

tbAwardTemplet:GiveAwardByList({{szName = "Ng�c Linh H�n",tbProp={6,1,4912,1,1},nCount=5,},} ,"test", 1);--Ng�c Linh H�n
tbAwardTemplet:GiveAwardByList({{szName = "Ng�c C��ng H�a Nguy�n Li�u",tbProp={6,1,4913,1,1},nCount=5},}, "test", 1);--Ng�c Linh H�n
tbAwardTemplet:GiveAwardByList({{szName = "B�ch Luy�n Th�nh C��ng",tbProp={6,1,4906,1,1},nCount=5,nBindState=-2},}, "test", 1);--Ng�c Linh H�n
SetTask(5995,4)
	WriteLogPro("dulieu/nhan195cl3.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Nhan 190 cl3\n");	
end

function NhanQua195Cl3()
if (CountFreeRoomByWH(4,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 4x4 � tr�ng");
		return 1;
	end

tbAwardTemplet:GiveAwardByList({{szName = "Ng�c Linh H�n",tbProp={6,1,4912,1,1},nCount=5,},} ,"test", 1);--Ng�c Linh H�n
tbAwardTemplet:GiveAwardByList({{szName = "Ng�c C��ng H�a Nguy�n Li�u",tbProp={6,1,4913,1,1},nCount=5},}, "test", 1);--Ng�c Linh H�n
tbAwardTemplet:GiveAwardByList({{szName = "B�ch Luy�n Th�nh C��ng",tbProp={6,1,4906,1,1},nCount=5,nBindState=-2},}, "test", 1);--Ng�c Linh H�n
SetTask(5995,5)
	WriteLogPro("dulieu/nhan195cl3.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Nhan 195 cl3\n");	
end

function NhanQua200Cl3()
if (CountFreeRoomByWH(4,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 4x4 � tr�ng");
		return 1;
	end

tbAwardTemplet:GiveAwardByList({{szName = "Ng�c Linh H�n",tbProp={6,1,4912,1,1},nCount=5,},} ,"test", 1);--Ng�c Linh H�n
tbAwardTemplet:GiveAwardByList({{szName = "Ng�c C��ng H�a Nguy�n Li�u",tbProp={6,1,4913,1,1},nCount=5},}, "test", 1);--Ng�c Linh H�n
tbAwardTemplet:GiveAwardByList({{szName = "B�ch Luy�n Th�nh C��ng",tbProp={6,1,4906,1,1},nCount=5,nBindState=-2},}, "test", 1);--Ng�c Linh H�n
SetTask(5995,6)
	WriteLogPro("dulieu/nhan195cl3.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Nhan 200 cl3\n");	
end
------------------------------------------------------------------------------------------------

function NhanThuongCL2()
		if CalcFreeItemCellCount() <=10 then
			Talk(1,"","<color=green>�� Nh�n Th��ng ho�c H�y �� Tr�ng 10 � R�i Nh�n Th��ng...!")
			return 1;
		end
	if GetTask(5969)==2 and (GetTask(task_nhankinhnghiem194)==0 or GetTask(task_nhankinhnghiem194)==1)and GetLevel()==200 then 
		tbAwardTemplet:GiveAwardByList({{szName = "B�ch Luy�n Th�nh C��ng",tbProp={6,1,4906,1,1},nCount=5,nBindState = -2},}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{szName = "L� bao Huy�t Chi�n (��i)",tbProp={6,1,4898,1,1},nCount=5,nBindState = -2},}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{szName = "Xu kh�a",tbProp={6,1,4893,1,1},nCount=100,nBindState = -2},}, "test", 1);
		SetTask(task_nhankinhnghiem194,2)
		WriteLogPro("dulieu/nhanthuongcailao2.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Nhan Qua 20-10\n");	
	end

end
------------------------------------------------------------------------------------------------
function HuyenChanDon()
	local tbOpt =
	{
		{"Luy�n Th�nh Huy�n Ch�n ��n (50 xu)", LuyenHuyenChanDon},
		{"Tho�t",},
	}
	CreateNewSayEx("<npc>Y�u C�u Nh�n V�t \n - Tr�ng Sinh 4 \n - Level 200 \n - 50 xu\n - Sau Khi Luy�n S� Tr� V� C�p 199", tbOpt)

end
function LuyenHuyenChanDon()
if CalcEquiproomItemCount(4,417,1,1) <50 or GetLevel()<200 or ST_GetTransLifeCount()<5 then
return Talk(1,"","<bclr=violet>"..myplayersex().." Kh�ng �� 50 Xu Ho�c Ch�a Tr�ng Sinh 5 Ho�c Ch�a �� 200 Level ")
end
ConsumeEquiproomItem(50,4,417,1,-1)
ST_LevelUp(-1)
tbAwardTemplet:GiveAwardByList({tbProp={6,1,1678,1,0,0},nCount=2}, "Nh�n ���c Huy�n Ch�n ��n")
Msg2Player("Ch�c M�ng "..myplayersex().." �� Nh�n ���c Huy�n Ch�n ��n...<bclr>")
end
-------------------------------------------------------------------------------------------------------------------------------------------------------
local nlv = 200
local money = 10000000
--------------------------------------------------------------------------------------------------------------------------------------------------------
function chuyensinh()
	local tbOpt =
	{
		{"Ta Mu�n Chuy�n Sinh", TrungSinh},
		{"Ta Mu�n H�c Thi�n Thu Chi�n �", beidou_learn_specialskill},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc>Xin M�i ��i Hi�p Ch�n Ch�c N�ng Mong Mu�n", tbOpt)
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
		Talk(1,"","<color=red>Chuy�n Sinh Ti�p Theo V�n Ch�a M�")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------
function TrungSinh1()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\skill\\others\\skill_50x_como.spr>V�ng S�ng: <link>"
local szTitle = VONG_SANG.."<color=green>Mu�n Tu Luy�n B�c ��u Tr��ng Sinh Thu�t<color>\nY�u C�u: ��t C�p 200 + 10.000 V�n\n�� Tu Luy�n B�c ��u Tr��ng Sinh Thu�t - C� S� Thi�n<bclr>"
	local tbOpt = {
	--	{"Ti�n H�nh Chuy�n Sinh",transfer},
		{"Th�i Ta Quay L�i Sau",},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end
-------------------------------------------------------------------------------------------------------------------------------------
function TrungSinh2()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\skill\\others\\skill_70_como.spr>V�ng S�ng: <link>"
local szTitle = VONG_SANG.."<color=green>Mu�n Tu Luy�n B�c ��u Tr��ng Sinh Thu�t<color>\n<bclr=blue>Y�u C�u: ��t C�p 200 + 10.000 V�n\n�� Tu Luy�n B�c ��u Tr��ng Sinh Thu�t - C� S� Thi�n<bclr>"
	local tbOpt = {

		{"Ti�n H�nh Chuy�n Sinh",transfer},
		{"Th�i Ta Quay L�i Sau",},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end
------------------------------------------------------------------------------------------------------------------------------------------
function TrungSinh3()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\skill\\others\\skill_10_como.spr>V�ng S�ng: <link>"
local szTitle = VONG_SANG.."<color=green>Mu�n Tu Luy�n B�c ��u Tr��ng Sinh Thu�t<color>\n<bclr=blue>Y�u C�u: ��t C�p 200 + 10.000 V�n\n�� Tu Luy�n B�c ��u Tr��ng Sinh Thu�t - C� S� Thi�n<bclr>"
	local tbOpt = {
		{"Ti�n H�nh Chuy�n Sinh",transfer},
		{"Th�i Ta Quay L�i Sau",},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end
------------------------------------------------------------------------------------------------------------------------------------------------
function TrungSinh4()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\skill\\others\\skill_90x_como.spr>V�ng S�ng: <link>"
local szTitle = VONG_SANG.."<color=green>Mu�n Tu Luy�n B�c ��u Tr��ng Sinh Thu�t<color>\nY�u C�u: ��t C�p 200 + 10.000 V�n\n�� Tu Luy�n B�c ��u Tr��ng Sinh Thu�t - C� S� Thi�n<bclr>"
	local tbOpt = {
		{"Ti�n H�nh Chuy�n Sinh",transfer},
		{"Th�i Ta Quay L�i Sau",},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end
-------------------------------------------------------------------------------------------------------------------------------------------------------
function TrungSinh5()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\skill\\others\\chaoji_diyibang.spr>V�ng S�ng: <link>"
local szTitle = VONG_SANG.."<color=green>Mu�n Tu Luy�n B�c ��u Tr��ng Sinh Thu�t<color>\nY�u C�u: ��t C�p 200 + 10.000 V�n\n�� Tu Luy�n B�c ��u Tr��ng Sinh Thu�t - C� S� Thi�n<bclr>"
	local tbOpt = {
		{"Ti�n H�nh Chuy�n Sinh",transfer},
		{"Th�i Ta Quay L�i Sau",},
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
					Talk(1,"","<color=red>H�y G� B� T�t C� Trang B� Tr�n Ng��i Xu�ng")
				end
			else
				Talk(1,"","<color=red>"..myplayersex().." C�n Thi�u: "..%money-GetCash().." V�n Xin Ki�m Tra L�i")
			end
		else
			Talk(1,"","<color=red>"..myplayersex().." Ch�a L�nh Ng� B�c ��u Tr��ng Sinh Thu�t\nC� S� Thi�n")
		end
	else
		Talk(1,"","<color=red>L�n Chuy�n Sinh Ti�p Theo C�n Ph�i ��t C�p 200\nH�y C� G�ng Tu Luy�n Th�m")
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------


function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
