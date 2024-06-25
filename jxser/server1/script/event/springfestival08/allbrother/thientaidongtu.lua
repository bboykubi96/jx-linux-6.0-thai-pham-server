IncludeLib("FILESYS")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\global\\translife.lua")
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\event\\springfestival08\\allbrother\\npc_cailao.lua")
-------------------------------------------------------------------------------
IMAGE_GM = "<#><link=image[0]:\\spr\\item\\logo_vltk.spr><link>";
VongSang_1 = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs1.spr>V�ng S�ng: <link>"
VongSang_2 = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs2.spr>V�ng S�ng: <link>"
VongSang_3 = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs3.spr>V�ng S�ng: <link>"
VongSang_4 = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs4.spr>V�ng S�ng: <link>"
VongSang_5 = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs5.spr>V�ng S�ng: <link>"
VongSang_6 = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs6.spr>V�ng S�ng: <link>"
VongSang_7 = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs7.spr>V�ng S�ng: <link>"
VongSang_8 = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs8.spr>V�ng S�ng: <link>"
VongSang_9 = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs9.spr>V�ng S�ng: <link>"
VongSang_10 = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs10.spr>V�ng S�ng: <link>"
----------------------------------------------------------------------------------
tbCaiLaoHoanDong = {}
tbCaiLaoHoanDong.nCaiLao = 5969				 --S� L�n Tu Luy�n
tbCaiLaoHoanDong.nTimeLimit = 5050				 --Gi�i H�n Th�i Gian M�i L�n C�i L�o
tbCaiLaoHoanDong.nTiemNang = 200				 --T�ng �i�m Ti�m N�ng
tbCaiLaoHoanDong.nXu = 1					 --S� L��ng Xu Y�u C�u �� Tu Luy�n
tbCaiLaoHoanDong.nLevel = 200				 --Ki�m Tra �i�u Ki�n C�p ��
tbCaiLaoHoanDong.nAddLevel = 200				 --T�ng C�p �� Sau Khi Tu Luy�n Th�nh C�ng
tbCaiLaoHoanDong.ITEM =  1496					 --ID V�t Ph�m Xu
tbCaiLaoHoanDong.nCaiLaoLimit = {				 --�i�u Ch�nh Th�i Gian C�i L�o
	[0] = {tbTime = 0},
	[1] = {tbTime = 0},
	[2] = {tbTime = 0},
	[3] = {tbTime = 0},
	[4] = {tbTime = 0},
	[5] = {tbTime = 0},
	[6] = {tbTime = 0},
	[7] = {tbTime = 0},
	[8] = {tbTime = 0},
	[9] = {tbTime = 0},
	[10] = {tbTime = 0},
}
		
tbChatNpc = {
	[1] = {ChatNpc = "Mu�n Tu Luy�n T�m Ph�p C�i L�o Ho�n ��ng\nC�n Ph�i ��t ��ng C�p 200"},

	[2] = {ChatNpc = "�� Tu Luy�n B�c ��u Tr��ng Sinh Thu�t L�n Th� 5"},

	[3] = {ChatNpc = "M�i L�n Tu Luy�n C�n Ph�i C� �� 500 KNB"},
}

function main()
	local szTitle = "<color=green>Xin Ch�o! C�c H� T�m Ta C� Vi�c G�, ��ng Xem Th��ng Ta Tuy Ta Nh� B� Nh�ng Ta �� L�n Tu�i R�i Do Ta Tu Luy�n T�m Ph�p C�i L�o Ho�n ��ng Th�i.<color>"
	local tbOpt = {
		{"Tu Luy�n T�m Ph�p C�i L�o Ho�n ��ng", tbCaiLaoHoanDong.TuLuyenTamPhap, {tbCaiLaoHoanDong}},
              {"Ki�m Tra S� L�n C�i L�o Ho�n ��ng",KiemTra_CaiLao1},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
----------------------------
function KiemTra_CaiLao1()
local T_KIEMTRA_SOLAN = GetTask(5969);
Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� Ti�n h�nh C�i L�o S� L�n :   <color=cyan>"..T_KIEMTRA_SOLAN.." L�n <color>")
end
function tbCaiLaoHoanDong:TuLuyenTamPhap()
local nCaiLao = GetTask(self.nCaiLao)
	if (ST_GetTransLifeCount() + nCaiLao == 5) then
		CreateNewSayEx(VongSang_1.."<color=green>"..tbChatNpc[1].ChatNpc.."\n"..tbChatNpc[2].ChatNpc.."\n"..tbChatNpc[3].ChatNpc.."<color>", {{"C�i L�o L�n Th� 1",self.CaiLaoHoanDong, {self}},{"H�y B�"}})
	elseif (ST_GetTransLifeCount() + nCaiLao == 6) then
		CreateNewSayEx(VongSang_2.."<color=green>"..tbChatNpc[1].ChatNpc.."\n"..tbChatNpc[2].ChatNpc.."\n"..tbChatNpc[3].ChatNpc.."<color>", {{"C�i L�o L�n Th� 2",self.CaiLaoHoanDong, {self}},{"H�y B�"}})
	elseif (ST_GetTransLifeCount() + nCaiLao == 7) then
		CreateNewSayEx(VongSang_3.."<color=green>"..tbChatNpc[1].ChatNpc.."\n"..tbChatNpc[2].ChatNpc.."\n"..tbChatNpc[3].ChatNpc.."<color>", {{"C�i L�o L�n Th� 3",self.CaiLaoHoanDong, {self}},{"H�y B�"}})
	elseif (ST_GetTransLifeCount() + nCaiLao == 8) then
		CreateNewSayEx(VongSang_4.."<color=green>"..tbChatNpc[1].ChatNpc.."\n"..tbChatNpc[2].ChatNpc.."\n"..tbChatNpc[3].ChatNpc.."<color>", {{"C�i L�o L�n Th� 4",self.CaiLaoHoanDong, {self}},{"H�y B�"}})
	elseif (ST_GetTransLifeCount() + nCaiLao == 9) then
		CreateNewSayEx(VongSang_5.."<color=green>"..tbChatNpc[1].ChatNpc.."\n"..tbChatNpc[2].ChatNpc.."\n"..tbChatNpc[3].ChatNpc.."<color>", {{"C�i L�o L�n Th� 5",self.CaiLaoHoanDong, {self}},{"H�y B�"}})
	elseif (ST_GetTransLifeCount() + nCaiLao == 10) then
		CreateNewSayEx(VongSang_6.."<color=green>"..tbChatNpc[1].ChatNpc.."\n"..tbChatNpc[2].ChatNpc.."\n"..tbChatNpc[3].ChatNpc.."<color>", {{"C�i L�o L�n Th� 6",self.CaiLaoHoanDong, {self}},{"H�y B�"}})
	elseif (ST_GetTransLifeCount() + nCaiLao == 11) then
		CreateNewSayEx(VongSang_7.."<color=green>"..tbChatNpc[1].ChatNpc.."\n"..tbChatNpc[2].ChatNpc.."\n"..tbChatNpc[3].ChatNpc.."<color>", {{"C�i L�o L�n Th� 7",self.CaiLaoHoanDong, {self}},{"H�y B�"}})
	elseif (ST_GetTransLifeCount() + nCaiLao == 12) then
		CreateNewSayEx(VongSang_8.."<color=green>"..tbChatNpc[1].ChatNpc.."\n"..tbChatNpc[2].ChatNpc.."\n"..tbChatNpc[3].ChatNpc.."<color>", {{"C�i L�o L�n Th� 8",self.CaiLaoHoanDong, {self}},{"H�y B�"}})
	elseif (ST_GetTransLifeCount() + nCaiLao == 13) then
		CreateNewSayEx(VongSang_9.."<color=green>"..tbChatNpc[1].ChatNpc.."\n"..tbChatNpc[2].ChatNpc.."\n"..tbChatNpc[3].ChatNpc.."<color>", {{"C�i L�o L�n Th� 9",self.CaiLaoHoanDong, {self}},{"H�y B�"}})
	elseif (ST_GetTransLifeCount() + nCaiLao == 14) then
		CreateNewSayEx(VongSang_10.."<color=green>"..tbChatNpc[1].ChatNpc.."\n"..tbChatNpc[2].ChatNpc.."\n"..tbChatNpc[3].ChatNpc.."<color>", {{"C�i L�o L�n Th� 10",self.CaiLaoHoanDong, {self}},{"H�y B�"}})
	else
		Talk(1,"","<color=red>L�n Tu Luy�n N�y V�n Ch�a M�.")
	end
end
------------------------------------------------------K�t Th�c Tu Luy�n---------------------------------------------------------------------------------------------------------------------------------------------------
function tbCaiLaoHoanDong:CaiLaoHoanDong()
local TT_KIEMTRA_SOLAN = GetTask(5969)+1
local CheckItem = CalcEquiproomItemCount(4,self.ITEM,1,1)
local nNowTime = GetCurServerTime()
local nCaiLao = GetTask(self.nCaiLao)
local nCurLimit = GetTask(self.nTimeLimit)
local nCurTime = (nCurLimit + (self.nCaiLaoLimit[nCaiLao].tbTime)*24*60*60)
local nTime = (nCurTime - nNowTime)
local nDay = floor(nTime/(24*60*60)); nTime = mod(nTime, 24*60*60)
local nHour = floor(nTime/(60*60)); nTime = mod(nTime, 60*60)
local nMin = floor(nTime/(60))
local nSec = mod(nTime, 60)
	if (nCurTime <= nNowTime) then
		if (GetLevel() >= self.nLevel) then
			if (CalcEquiproomItemCount(4,self.ITEM,1,1) >= self.nXu) then
				if (CalcItemCount(2,0,-1,-1,-1) == 0) then
					ST_LevelUp(self.nAddLevel-GetLevel()); SetTask(self.nCaiLao,nCaiLao + 1); SetTask(self.nTimeLimit, nNowTime)
					ConsumeEquiproomItem(self.nXu,4,self.ITEM,1,1); AddProp(self.nTiemNang); rollback_prop(); KickOutSelf()
                                      Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� c�i l�o th�nh c�ng  L�n Th�  :  <color=cyan>"..TT_KIEMTRA_SOLAN.." <color>")
                                   logplayer("dulieu/hoason/kichhoatcai_lao_ngay_"..date("%d_%m_%Y")..".txt",format(" Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] - Cai Lao ["..TT_KIEMTRA_SOLAN.."] Lan! \n",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
				else
					Talk(1,"","<color=red>Mu�n Tu Luy�n T�m Ph�p Tr��c Ti�n H�y C�i B� H�t\nTrang B� Tr�n Ng��i Xu�ng")
				end
			else
				Talk(1,"","<color=red>"..GetName().." C�n Thi�u "..self.nXu-CheckItem.." Ti�n KNB Xin Ki�m Tra L�i")
			end
		else
			Talk(1,"","<color=red>"..GetName().." Ch�a �� C�p "..self.nLevel.."\nH�y C� G�ng Tu Luy�n Th�m")
		end
	else
		Say(format("<color=green>Th�i Gian C�i L�o L�n K� Ti�p C�n L�i:\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<color=yellow>[<color=red>%s<color> Ng�y <color=red>%s<color> Gi� <color=red>%s<color> Ph�t <color=red>%s<color> Gi�y]", nDay, nHour, nMin, nSec))
	end
end
------------------------------------------------------Ph�n Th��ng Tu Luy�n---------------------------------------------------------------------------------------------------------------------------------------------------
function tbCaiLaoHoanDong:CanhGioiTuLuyen()
local nCaiLao = GetTask(self.nCaiLao)
	if (ST_GetTransLifeCount() + nCaiLao == 6) then
		RemoveSkillState(1533,20,3,279936000,1)
	PlayerFunLib:AddSkillState(1725,1,3,18*60*60*24*300,1)
	elseif (ST_GetTransLifeCount() + nCaiLao == 7) then
		RemoveSkillState(1725,20,3,279936000,1)
	PlayerFunLib:AddSkillState(1726,1,3,18*60*60*24*300,1)
	elseif (ST_GetTransLifeCount() + nCaiLao == 8) then
		RemoveSkillState(1726,20,3,279936000,1)
			PlayerFunLib:AddSkillState(1727,1,3,18*60*60*24*300,1)
	elseif (ST_GetTransLifeCount() + nCaiLao == 9) then
		RemoveSkillState(1727,20,3,279936000,1)
			PlayerFunLib:AddSkillState(1728,1,3,18*60*60*24*300,1)
	elseif (ST_GetTransLifeCount() + nCaiLao == 10) then
		RemoveSkillState(1728,20,3,279936000,1)
			PlayerFunLib:AddSkillState(1729,1,3,18*60*60*24*300,1)
	elseif (ST_GetTransLifeCount() + nCaiLao == 11) then
		RemoveSkillState(1729,20,3,279936000,1)
			PlayerFunLib:AddSkillState(1730,1,3,18*60*60*24*300,1)
	elseif (ST_GetTransLifeCount() + nCaiLao == 12) then
		RemoveSkillState(1730,20,3,279936000,1)
			PlayerFunLib:AddSkillState(1731,1,3,18*60*60*24*300,1)
	elseif (ST_GetTransLifeCount() + nCaiLao == 13) then
		RemoveSkillState(1731,20,3,279936000,1)
			PlayerFunLib:AddSkillState(1732,1,3,18*60*60*24*300,1)
	elseif (ST_GetTransLifeCount() + nCaiLao == 14) then
		RemoveSkillState(1732,20,3,279936000,1)
			PlayerFunLib:AddSkillState(1733,1,3,18*60*60*24*300,1)
	elseif (ST_GetTransLifeCount() + nCaiLao == 15) then
		RemoveSkillState(1733,20,3,279936000,1)
			PlayerFunLib:AddSkillState(1734,1,3,18*60*60*24*300,1)
	end
	KickOutSelf()
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function logplayer(zFile,szMsg)
	local Data2 = openfile(""..zFile.."", "a+");
	write(Data2,tostring(szMsg));
	closefile(Data2);
 end