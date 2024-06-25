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
VongSang_1 = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs1.spr>Vßng S¸ng: <link>"
VongSang_2 = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs2.spr>Vßng S¸ng: <link>"
VongSang_3 = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs3.spr>Vßng S¸ng: <link>"
VongSang_4 = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs4.spr>Vßng S¸ng: <link>"
VongSang_5 = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs5.spr>Vßng S¸ng: <link>"
VongSang_6 = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs6.spr>Vßng S¸ng: <link>"
VongSang_7 = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs7.spr>Vßng S¸ng: <link>"
VongSang_8 = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs8.spr>Vßng S¸ng: <link>"
VongSang_9 = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs9.spr>Vßng S¸ng: <link>"
VongSang_10 = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs10.spr>Vßng S¸ng: <link>"
----------------------------------------------------------------------------------
tbCaiLaoHoanDong = {}
tbCaiLaoHoanDong.nCaiLao = 5969				 --Sè LÇn Tu LuyÖn
tbCaiLaoHoanDong.nTimeLimit = 5050				 --Giíi H¹n Thêi Gian Mçi LÇn C¶i L·o
tbCaiLaoHoanDong.nTiemNang = 200				 --T¨ng §iÓm TiÒm N¨ng
tbCaiLaoHoanDong.nXu = 1					 --Sè L­îng Xu Yªu CÇu §Ó Tu LuyÖn
tbCaiLaoHoanDong.nLevel = 200				 --KiÓm Tra §iÒu KiÖn CÊp §é
tbCaiLaoHoanDong.nAddLevel = 200				 --T¨ng CÊp §é Sau Khi Tu LuyÖn Thµnh C«ng
tbCaiLaoHoanDong.ITEM =  1496					 --ID VËt PhÈm Xu
tbCaiLaoHoanDong.nCaiLaoLimit = {				 --§iÒu ChØnh Thêi Gian C¶i L·o
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
	[1] = {ChatNpc = "Muèn Tu LuyÖn T©m Ph¸p C¶i L·o Hoµn §ång\nCÇn Ph¶i §¹t §¼ng CÊp 200"},

	[2] = {ChatNpc = "§· Tu LuyÖn B¾c §Èu Tr­êng Sinh ThuËt LÇn Thø 5"},

	[3] = {ChatNpc = "Mçi LÇn Tu LuyÖn CÇn Ph¶i Cã §ñ 500 KNB"},
}

function main()
	local szTitle = "<color=green>Xin Chµo! C¸c H¹ T×m Ta Cã ViÖc G×, §õng Xem Th­êng Ta Tuy Ta Nhá BÐ Nh­ng Ta §· Lín Tuæi Råi Do Ta Tu LuyÖn T©m Ph¸p C¶i L·o Hoµn §ång Th«i.<color>"
	local tbOpt = {
		{"Tu LuyÖn T©m Ph¸p C¶i L·o Hoµn §ång", tbCaiLaoHoanDong.TuLuyenTamPhap, {tbCaiLaoHoanDong}},
              {"KiÓm Tra Sè LÇn C¶i L·o Hoµn §ång",KiemTra_CaiLao1},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
----------------------------
function KiemTra_CaiLao1()
local T_KIEMTRA_SOLAN = GetTask(5969);
Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> §· TiÕn hµnh C·i L·o Sè LÇn :   <color=cyan>"..T_KIEMTRA_SOLAN.." LÇn <color>")
end
function tbCaiLaoHoanDong:TuLuyenTamPhap()
local nCaiLao = GetTask(self.nCaiLao)
	if (ST_GetTransLifeCount() + nCaiLao == 5) then
		CreateNewSayEx(VongSang_1.."<color=green>"..tbChatNpc[1].ChatNpc.."\n"..tbChatNpc[2].ChatNpc.."\n"..tbChatNpc[3].ChatNpc.."<color>", {{"C¶i L·o LÇn Thø 1",self.CaiLaoHoanDong, {self}},{"Hñy Bá"}})
	elseif (ST_GetTransLifeCount() + nCaiLao == 6) then
		CreateNewSayEx(VongSang_2.."<color=green>"..tbChatNpc[1].ChatNpc.."\n"..tbChatNpc[2].ChatNpc.."\n"..tbChatNpc[3].ChatNpc.."<color>", {{"C¶i L·o LÇn Thø 2",self.CaiLaoHoanDong, {self}},{"Hñy Bá"}})
	elseif (ST_GetTransLifeCount() + nCaiLao == 7) then
		CreateNewSayEx(VongSang_3.."<color=green>"..tbChatNpc[1].ChatNpc.."\n"..tbChatNpc[2].ChatNpc.."\n"..tbChatNpc[3].ChatNpc.."<color>", {{"C¶i L·o LÇn Thø 3",self.CaiLaoHoanDong, {self}},{"Hñy Bá"}})
	elseif (ST_GetTransLifeCount() + nCaiLao == 8) then
		CreateNewSayEx(VongSang_4.."<color=green>"..tbChatNpc[1].ChatNpc.."\n"..tbChatNpc[2].ChatNpc.."\n"..tbChatNpc[3].ChatNpc.."<color>", {{"C¶i L·o LÇn Thø 4",self.CaiLaoHoanDong, {self}},{"Hñy Bá"}})
	elseif (ST_GetTransLifeCount() + nCaiLao == 9) then
		CreateNewSayEx(VongSang_5.."<color=green>"..tbChatNpc[1].ChatNpc.."\n"..tbChatNpc[2].ChatNpc.."\n"..tbChatNpc[3].ChatNpc.."<color>", {{"C¶i L·o LÇn Thø 5",self.CaiLaoHoanDong, {self}},{"Hñy Bá"}})
	elseif (ST_GetTransLifeCount() + nCaiLao == 10) then
		CreateNewSayEx(VongSang_6.."<color=green>"..tbChatNpc[1].ChatNpc.."\n"..tbChatNpc[2].ChatNpc.."\n"..tbChatNpc[3].ChatNpc.."<color>", {{"C¶i L·o LÇn Thø 6",self.CaiLaoHoanDong, {self}},{"Hñy Bá"}})
	elseif (ST_GetTransLifeCount() + nCaiLao == 11) then
		CreateNewSayEx(VongSang_7.."<color=green>"..tbChatNpc[1].ChatNpc.."\n"..tbChatNpc[2].ChatNpc.."\n"..tbChatNpc[3].ChatNpc.."<color>", {{"C¶i L·o LÇn Thø 7",self.CaiLaoHoanDong, {self}},{"Hñy Bá"}})
	elseif (ST_GetTransLifeCount() + nCaiLao == 12) then
		CreateNewSayEx(VongSang_8.."<color=green>"..tbChatNpc[1].ChatNpc.."\n"..tbChatNpc[2].ChatNpc.."\n"..tbChatNpc[3].ChatNpc.."<color>", {{"C¶i L·o LÇn Thø 8",self.CaiLaoHoanDong, {self}},{"Hñy Bá"}})
	elseif (ST_GetTransLifeCount() + nCaiLao == 13) then
		CreateNewSayEx(VongSang_9.."<color=green>"..tbChatNpc[1].ChatNpc.."\n"..tbChatNpc[2].ChatNpc.."\n"..tbChatNpc[3].ChatNpc.."<color>", {{"C¶i L·o LÇn Thø 9",self.CaiLaoHoanDong, {self}},{"Hñy Bá"}})
	elseif (ST_GetTransLifeCount() + nCaiLao == 14) then
		CreateNewSayEx(VongSang_10.."<color=green>"..tbChatNpc[1].ChatNpc.."\n"..tbChatNpc[2].ChatNpc.."\n"..tbChatNpc[3].ChatNpc.."<color>", {{"C¶i L·o LÇn Thø 10",self.CaiLaoHoanDong, {self}},{"Hñy Bá"}})
	else
		Talk(1,"","<color=red>LÇn Tu LuyÖn Nµy VÉn Ch­a Më.")
	end
end
------------------------------------------------------KÕt Thóc Tu LuyÖn---------------------------------------------------------------------------------------------------------------------------------------------------
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
                                      Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®· c¶i l·o thµnh c«ng  LÇn Thø  :  <color=cyan>"..TT_KIEMTRA_SOLAN.." <color>")
                                   logplayer("dulieu/hoason/kichhoatcai_lao_ngay_"..date("%d_%m_%Y")..".txt",format(" Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] - Cai Lao ["..TT_KIEMTRA_SOLAN.."] Lan! \n",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
				else
					Talk(1,"","<color=red>Muèn Tu LuyÖn T©m Ph¸p Tr­íc Tiªn H·y Cëi Bá HÕt\nTrang BÞ Trªn Ng­êi Xuèng")
				end
			else
				Talk(1,"","<color=red>"..GetName().." Cßn ThiÕu "..self.nXu-CheckItem.." TiÒn KNB Xin KiÓm Tra L¹i")
			end
		else
			Talk(1,"","<color=red>"..GetName().." Ch­a §ñ CÊp "..self.nLevel.."\nH·y Cè G¾ng Tu LuyÖn Thªm")
		end
	else
		Say(format("<color=green>Thêi Gian C¶i L·o LÇn KÕ TiÕp Cßn L¹i:\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<color=yellow>[<color=red>%s<color> Ngµy <color=red>%s<color> Giê <color=red>%s<color> Phót <color=red>%s<color> Gi©y]", nDay, nHour, nMin, nSec))
	end
end
------------------------------------------------------PhÇn Th­ëng Tu LuyÖn---------------------------------------------------------------------------------------------------------------------------------------------------
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