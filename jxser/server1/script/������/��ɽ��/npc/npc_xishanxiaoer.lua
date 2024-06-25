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
		return "N� Hi�p";
	else
		return "��i Hi�p";
	end
end
--------------------------------------------------------------------------------
function main()
dofile("script/global/g7vn/g7configall.lua")
dofile("script/������/��ɽ��/npc/npc_xishanxiaoer.lua")

	if GetLevel() < 150 and ST_IsTransLife() ~= 1 then
		Talk(1,"","<bclr=violet>Ch� Nh�ng "..myplayersex().." C�p 150 Tr� L�n Tr�ng Sinh Th�\nKh�ng Gi�i H�n ��ng C�p M�i C� Th� Tham Gia Ho�t ��ngN�y")
		return 0;
	end
	Say("<bclr=violet>"..myplayersex().." Ta C� Nhi�m V� Cho Ng��i Mu�n L�m Kh�ng",4,
		"Ta Mu�n L�n ��o H�y ��a Ta �i/LenVSD",
		"Ta Mu�n L�m H�y Cho Ta Bi�t Kh�o Nghi�m C�a Ng��i �i/NhanNhiemVu",
		"Ta �� Ho�n Th�nh ��n Tr� Nhi�m V� Cho Ng��i ��y/TraNhiemVu",
		"Th�i Ta B�n R�i/No")
end
------------------------------------------------------------------------------------------------------------------
function NhanNhiemVu()
if NhiemVuViSonDao_CheckTaskLimit() == 0 then
	return 1
end
	if GetTask(NhiemVuViSonDao) == 1 then
		Talk(1,"","<bclr=violet>"..myplayersex().." �� Nh�n Nhi�m V� N�y R�i\n                Mau �i Ho�n Th�nh �i R�i Nh�n Th��ng")
		return
	end
	SetTask(NhiemVuViSonDao,1); Talk(1,"","<bclr=red>H�y �i Ti�u Di�t 10 Con Qu�i B�t K�")
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
		Say(format("<bclr=violet>%s H�m Nay �� Ho�n Th�nh %s L�n Nhi�m V� N�y R�i.\n<bclr=red>                               Ng�y Mai H�y Quay L�i", myplayersex(), TSKV_NhiemVuViSonDao_TaskLimit))
		return 0;
	end
	return 0;
end
--------------------------------------------------------------------------------------------------------------------------------
function TraNhiemVu()
if GetTask(NhiemVuViSonDao) == 0 then
	Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a Nh�n Nhi�m V�")
	return
end
	if GetTask(TieuDietQuaiViSonDao) >= 10 then
		Say("<bclr=violet>Ch�c M�ng "..myplayersex().." �� L�m T�t L�m Hay Ph�n Qu� C�a Ta",2,
			"Nh�n Th��ng/NhanThuong",
			"Th�i/No")
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a ��t Kh�o Nghi�m C�a Ta\n                                 H�y C� G�ng H�n N�a")
	end
end
--------------------------------------------------------------------------------------------------------------
function NhanThuong()
local nCurtime = tonumber(GetLocalDate("%H%M"));
local nWeekday = tonumber(date("%w"));
local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));
	local tbAward = {
	--	{nExp_tl=100e6},
	--	{szName="Ti�n ��ng",tbProp={4,417,1,1,0,0},nCount=20},
		--{szName="B�o r��ng Gi�i H�n Random(2 Ng�y)",tbProp={6,1,4365,1,0,0},nCount=1},	
		{szName = "Kim B�i Vi S�n ��o",tbProp={6,1,4984,1,0,0},nCount=1, nBindState = -2,nExpiredTime=ThoiHanHanhHiepKy},
	}
	SetTask(NhiemVuViSonDao,0); SetTask(TieuDietQuaiViSonDao,0);
	SetTask(TSK_NhiemVuViSonDao_TaskLimit,GetTask(TSK_NhiemVuViSonDao_TaskLimit)+1)
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\huoyuedu\\huoyuedu.lua", "tbHuoYueDu:AddHuoYueDu", "NhiemVuViSonDao")
	tbAwardTemplet:GiveAwardByList(tbAward, "Ph�n Th��ng Nhi�m V� Vi S�n ��o")

end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function LenVSD()
local lbvsd = CalcEquiproomItemCount(6,1,2432,1)
	if (lbvsd >= 1) then
		NewWorld(342, 1177, 2409) SetFightState(1); ConsumeEquiproomItem(1,6,1,2432,-1)
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." Kh�ng C� L�nh B�i Vi S�n ��o")
	end
end
----------------------------------------------------------------------------------------------------------------------------