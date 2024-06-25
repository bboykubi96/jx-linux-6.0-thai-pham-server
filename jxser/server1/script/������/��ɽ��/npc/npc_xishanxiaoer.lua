-------------------------------------------------Script*By*Heart*Doldly***-----------------------------------------
IncludeLib("LEAGUE");
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")
----------------------------------------------------------------
NhiemVuViSonDao			 = 5955
TieuDietQuaiViSonDao			 = 5954
TSK_NhiemVuViSonDao_TaskLimit	 = 5953
TSKV_NhiemVuViSonDao_TaskLimit	 = 1;
-------------------------------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
--------------------------------------------------------------------------------
function main()
dofile("script/global/g7vn/g7configall.lua")
dofile("script/½­ÄÏÇø/Î÷É½´å/npc/npc_xishanxiaoer.lua")

	if GetLevel() < 150 and ST_IsTransLife() ~= 1 then
		Talk(1,"","<bclr=violet>ChØ Nh÷ng "..myplayersex().." CÊp 150 Trë Lªn Trïng Sinh Th×\nKh«ng Giíi H¹n §¼ng CÊp Míi Cã ThÓ Tham Gia Ho¹t §éngNµy")
		return 0;
	end
	Say("<bclr=violet>"..myplayersex().." Ta Cã NhiÖm Vô Cho Ng­¬i Muèn Lµm Kh«ng",4,
		"Ta Muèn Lªn §¶o H·y §­a Ta §i/LenVSD",
		"Ta Muèn Lµm H·y Cho Ta BiÕt Kh¶o NghiÖm Cña Ng­¬i §i/NhanNhiemVu",
		"Ta §· Hoµn Thµnh §Õn Tr¶ NhiÖm Vô Cho Ng­¬i §©y/TraNhiemVu",
		"Th«i Ta BËn Råi/No")
end
------------------------------------------------------------------------------------------------------------------
function NhanNhiemVu()
if NhiemVuViSonDao_CheckTaskLimit() == 0 then
	return 1
end
	if GetTask(NhiemVuViSonDao) == 1 then
		Talk(1,"","<bclr=violet>"..myplayersex().." §· NhËn NhiÖm Vô Nµy Råi\n                Mau §i Hoµn Thµnh §i Råi NhËn Th­ëng")
		return
	end
	SetTask(NhiemVuViSonDao,1); Talk(1,"","<bclr=red>H·y §i Tiªu DiÖt 10 Con Qu¸i BÊt Kú")
end
------------------------------------------------------------------------------------------------------------------------------
function NhiemVuViSonDao_CheckTaskLimit()
	local nTaskLimit = GetTask(TSK_NhiemVuViSonDao_TaskLimit)
	local nDate = tonumber(GetLocalDate("%y%m%d"))
	if nDate ~= floor(nTaskLimit/256) then
		nTaskLimit = nDate * 256
		SetTask(TSK_NhiemVuViSonDao_TaskLimit, nTaskLimit)
	end
	if mod(nTaskLimit, 256) < TSKV_NhiemVuViSonDao_TaskLimit then
		return 1;
	else
		Say(format("<bclr=violet>%s H«m Nay §· Hoµn Thµnh %s LÇn NhiÖm Vô Nµy Råi.\n<bclr=red>                               Ngµy Mai H·y Quay L¹i", myplayersex(), TSKV_NhiemVuViSonDao_TaskLimit))
		return 0;
	end
	return 0;
end
--------------------------------------------------------------------------------------------------------------------------------
function TraNhiemVu()
if GetTask(NhiemVuViSonDao) == 0 then
	Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a NhËn NhiÖm Vô")
	return
end
	if GetTask(TieuDietQuaiViSonDao) >= 10 then
		Say("<bclr=violet>Chóc Mõng "..myplayersex().." §· Lµm Tèt L¾m Hay PhÇn Quµ Cña Ta",2,
			"NhËn Th­ëng/NhanThuong",
			"Th«i/No")
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §¹t Kh¶o NghiÖm Cña Ta\n                                 H·y Cè G¾ng H¬n N÷a")
	end
end
--------------------------------------------------------------------------------------------------------------
function NhanThuong()
local nCurtime = tonumber(GetLocalDate("%H%M"));
local nWeekday = tonumber(date("%w"));
local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));
	local tbAward = {
	--	{nExp_tl=100e6},
	--	{szName="TiÒn §ång",tbProp={4,417,1,1,0,0},nCount=20},
		--{szName="B¶o r­¬ng Giíi H¹n Random(2 Ngµy)",tbProp={6,1,4365,1,0,0},nCount=1},	
		{szName = "Kim Bµi Vi S¬n §¶o",tbProp={6,1,4984,1,0,0},nCount=1, nBindState = -2,nExpiredTime=ThoiHanHanhHiepKy},
	}
	SetTask(NhiemVuViSonDao,0); SetTask(TieuDietQuaiViSonDao,0);
	SetTask(TSK_NhiemVuViSonDao_TaskLimit,GetTask(TSK_NhiemVuViSonDao_TaskLimit)+1)
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\huoyuedu\\huoyuedu.lua", "tbHuoYueDu:AddHuoYueDu", "NhiemVuViSonDao")
	tbAwardTemplet:GiveAwardByList(tbAward, "PhÇn Th­ëng NhiÖm Vô Vi S¬n §¶o")

end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function LenVSD()
local lbvsd = CalcEquiproomItemCount(6,1,2432,1)
	if (lbvsd >= 1) then
		NewWorld(342, 1177, 2409) SetFightState(1); ConsumeEquiproomItem(1,6,1,2432,-1)
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." Kh«ng Cã LÖnh Bµi Vi S¬n §¶o")
	end
end
----------------------------------------------------------------------------------------------------------------------------