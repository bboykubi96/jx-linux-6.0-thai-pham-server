Include("\\script\\global\\systemconfig.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua") 
Include("\\script\\misc\\maskfree\\event.lua")
Include("\\script\\event\\vnchristmas2006\\event.lua")	
Include("\\script\\global\\vn\\extpointfunc_proc.lua")
Include("\\script\\activitysys\\npcdailog.lua")
------------------------------------------------------------------------------
T_NAPTHE_X2 = 5973
CheckPass = {{"VoLamTruyenKy",1},}
---------------------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N� Hi�p";
	else
		return "��i Hi�p";
	end
end
-------------------------------------------------------------------------
function main()
if (GetBoxLockState() == 1) then
	Talk(1,"","<bclr=violet>M�i "..myplayersex().." M� Kh�a R��ng Tr��c<bclr>")
return end
	local tbOpt = {
		{"Ta Mu�n Ki�m Tra Kim Nguy�n B�o",KiemTra_TD},
		--{"��i 500 KNB Sang 500 Ti�n ��ng",DoiTienDong2000},
--		{"��i 100 KNB Sang 10000 Ti�n ��ng",DoiTienDong100knb},
	--	{"��i 10 KNB Sang 1000 Ti�n ��ng",DoiTienDong},
		{"��i 1 KNB Sang 1000 Ti�n ��ng",DoiTienDong1knb},
	--	{"��i 120 Xu Sang 1 KNB",DoiTienDong2000},
		{"Nh�n Ti�n Gh� Qua Th�i",No},
	}
	CreateNewSayEx("Kh�ch Quan Gh� Th�m B�n Ti�m C� Vi�c G�", tbOpt)
end
----------------------------------------------------------------------------Ki�m Tra Ti�n ��ng-----------------------------------------------------------------------------------------------------------------------
function KiemTra_TD()
	local nMoney = GetExtPoint(1)
	if (nMoney >= 32768) then
		nMoney = 0
		Msg2Player("T�m th�i kh�ng th� r�t Ti�n ��ng! Xin li�n h� v�i nh� s�n xu�t �� gi�i quy�t!") 
		return
	end
	if (nMoney == 0) then
		Say("<bclr=red>Xin L�i:<bclr><bclr=violet> "..myplayersex().." Kh�ng C� G�i Kim Nguy�n B�o T�i ��y...!")
	else
		local nCurVar = nMoney
		Say("<bclr=violet>Xin Ch�o "..myplayersex()..":<bclr> <bclr=violet>\nHi�n T�i "..myplayersex().." �ang G�i T�i ��y<color=yellow> "..nCurVar.." <color>Kim Nguy�n B�o",3,
		"Ta Mu�n R�t/Rut_KNB",
		"Bi�t r�i/no") 
	end
end

---------------------------------------------------------------------------R�t Ti�n ��ng-------------------------------------------------------------------------------------------------------------------------------
function Rut_KNB()
	AskClientForNumber("RutKNB",1,500,"S� L��ng KNB")
end
function RutKNB(num)
local nGoldPoint = GetExtPoint(1);
	if nGoldPoint >= num and num>0 then
			PayExtPoint(1,num);
			AddStackItem(num,4,343,1,1,0,0)
			WriteLogPro("dulieu/DoiTienDong.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Rut THanh Cong "..num.."\n");
		Msg2Player("Ch�c M�ng "..myplayersex().." �� R�t Th�nh C�ng "..num.." Kim Nguy�n B�o")
		if GetAccount()~="loctran1" then
	--	Msg2SubWorld("<color=green>Xin Ch�c M�ng<color> "..GetName().." <color=green> R�t Th�nh C�ng "..num.." KNB")
		end
	else
		Talk(1, "", "<bclr=red>"..myplayersex().." �ang C�: "..nGoldPoint.." Kim Nguy�n B�o\n C�n Thi�u: "..nGoldPoint-num.." Kim Nguy�n B�o<bclr>")
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiTienDong100knb()
local tbItem = {
	{szName="Ti�n ��ng", tbProp={4,417,1,1,0,0},nCount = 1000},
}
local KNB = CalcEquiproomItemCount(4,343,1,1);
	if KNB>= 100 then
			ConsumeEquiproomItem(100,4,343,1,-1)
			for i=1,10 do
			tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n Th��ng");
			end
			WriteLogPro("dulieu/DoiTienDong.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi 100 KNB Thanh 100 Xu\n");
		Msg2Player("Ch�c M�ng "..myplayersex().." �� ��i th�nh c�ng 100 KNB nh�n ���c 10000 Ti�n ��ng")
	--	Msg2SubWorld("<color=green>Xin Ch�c M�ng<color> "..GetName().." <color=green> ��i Th�nh C�ng 10 KNB Sang 1000 Xu")
	else
		Talk(1, "", "<bclr=red>"..myplayersex().." B�n Kh�ng �� 100 Kim Nguy�n B�o\n  ")
	end
end
--------------------------------------------------------------------
function DoiTienDong()
local tbItem = {
	{szName="Ti�n ��ng", tbProp={4,417,1,1,0,0},nCount = 1000},
}
local KNB = CalcEquiproomItemCount(4,343,1,1);
	if KNB>= 10 then
			ConsumeEquiproomItem(10,4,343,1,-1)
			tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n Th��ng");
			WriteLogPro("dulieu/DoiTienDong.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi 10 KNB Thanh 10 Xu\n");
		Msg2Player("Ch�c M�ng "..myplayersex().." �� ��i th�nh c�ng 10 KNB nh�n ���c 1000 Ti�n ��ng")
--		Msg2SubWorld("<color=green>Xin Ch�c M�ng<color> "..GetName().." <color=green> ��i Th�nh C�ng 10 KNB Sang 1000 Xu")
	else
		Talk(1, "", "<bclr=red>"..myplayersex().." B�n Kh�ng �� 10 Kim Nguy�n B�o\n  ")
	end
end
-------------------------------------------------------------------
function DoiTienDong1knb()
local tbItem = {
	{szName="Ti�n ��ng", tbProp={4,417,1,1,0,0},nCount = 1000},
}
local KNB = CalcEquiproomItemCount(4,343,1,1);
	if KNB>= 1 then
			ConsumeEquiproomItem(1,4,343,1,-1)
			tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n Th��ng");
			WriteLogPro("dulieu/DoiTienDong.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi 1 KNB Thanh 1000 Xu\n");
		Msg2Player("Ch�c M�ng "..myplayersex().." �� ��i th�nh c�ng 1 KNB nh�n ���c 1000 Ti�n ��ng")
	--	Msg2SubWorld("<color=green>Xin Ch�c M�ng<color> "..GetName().." <color=green> ��i Th�nh C�ng 1 KNB Sang 100 Xu")
	else
		Talk(1, "", "<bclr=red>"..myplayersex().." B�n Kh�ng �� 1 Kim Nguy�n B�o\n  ")
	end
end
----------------------------------------------------------------------
function DoiTienDong2000()
local tbItem = {
	{szName="KNB", tbProp={4,343,1,1,0,0},nCount = 1},
}
local KNB = CalcEquiproomItemCount(4,417,1,1);
	if KNB>= 120 then
			ConsumeEquiproomItem(120,4,417,1,-1)
			tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n Th��ng");
			WriteLogPro("dulieu/DoiTienDong.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi 120xu thanh 1 KNB\n");
		Msg2Player("Ch�c M�ng "..myplayersex().." �� ��i th�nh c�ng 120 Xu nh�n ���c 1 KNB")
	--	Msg2SubWorld("<color=green>Xin Ch�c M�ng<color> "..GetName().." <color=green> ��i Th�nh C�ng 1 KNB Sang 100 Xu")
	else
		Talk(1, "", "<bclr=red>"..myplayersex().." B�n Kh�ng �� 500 Kim Nguy�n B�o\n  ")
	end
end
----------------------------------------------------------------------��i Ti�n ��ng------------------------------------------------------------------------------------------------------------------------------------
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
