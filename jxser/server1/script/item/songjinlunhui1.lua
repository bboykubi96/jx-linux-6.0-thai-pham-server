--Vat pham tester by Zhu
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\lib\\gb_taskfuncs.lua");	 				-- By ��־ɽ�Ի�֮��;
Include("\\script\\lib\\gb_modulefuncs.lua"); 				-- By ��־ɽ�Ի�֮��;
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")-- lib bittask cua VNG
Include("\\script\\event\\bingo_machine\\bingo_machine_gs.lua")-- lib bittask cua VNG
Include("\\script\\lib\\log.lua")
Include("\\script\\lib\\string.lua")
IncludeLib("TIMER")
Include("\\script\\vng_lib\\files_lib.lua")
-- Include( "\\script\\missions\\leaguematch\\head.lua" )
-- Include( "\\script\\missions\\leaguematch\\npc\\head.lua" )
-- Include("\\script\\lib\\log.lua")
IL("TITLE");
IL("RELAYLADDER");
IncludeLib("FILESYS");
-- IncludeLib("RELAYLADDER");
-- IncludeLib("RELAYLADDER");
IncludeLib("TONG")
function main()
--dofile ([[script/item/songjinlunhui1.lua]])
-- AddLeadExp(10011100)
local nW,nX,nY = GetWorldPos()
Msg2Player("Toa do nX "..nX.." Toa do nY "..nY.." ID Map"..nW)
if GetName()=="V�L�" or GetName() == "" or GetName() == "" or GetName() == "" or GetName() == "" then
local tbSay={
"Nh�n �� boss s�t th�/GetBossItem",
"Nh�p d�ng th�ng b�o v� ��y/sendtoall",
-- "M� open/ToOpen",
-- "L�y ch� tr�ng/GetFreeCamp",
"Block m� � c�ng/blockhd",
-- "Lay skill 120/layskill120",
-- "L�y ch� m�u 1/#GetFuckCamp(1)",
-- "L�y ch� m�u 2/#GetFuckCamp(2)",
-- "L�y ch� m�u 3/#GetFuckCamp(3)",
-- "L�y ch� m�u 4/#GetFuckCamp(4)",
-- "Load l�i block M� � c�ng/ReloadHWID",
-- "ChoMayTinhThemAcc/blockhd",
-- "dong open/closeopen",
-- "K�ch ho�t t�i kho�n facebook/SetFaceAccount",
-- "Xem ng��i ch�i/countplayer",
-- "Nh�n �i�m ti�m n�ng/GetFreePropPoint",
-- "Nh�n �i�m k� n�ng/GetFreeMagicPoint",
-- "Kick out nguoi choi/GetUnBlockName",
"Cam chat/GetBlockName",
"Bo cam chat/GetUnBlockName",
"Set cap 72 cap/Set20cap",
"Nhan moi lan 1 cap/Set1cap",
"CheckAcc/DiChuyenDenToaDoNhanVat",
-- "Nhan moi lan 10 cap/Set10cap",
-- "L�y v�t ph�m linh tinh/GetAllItem",
-- "��a �� nguy hi�m c�n th�n/DuaDo",
-- "L�y bi kip/GetAllBook",
-- "L�y ng��i tuy�t/LayNguoiTuyet",
-- "L�y THBT+Thuy tinh cac loai/GetSpecialStone",
"Nh�n event/GetEventItem",
-- "Nh�n TTL 8h va 1h/getTTL",
"Nh�n skill T�ng h�nh GM/GetGMSkill",
"Hi�n th�n/RemoveGMSkill",
-- "��n Map T�ng Kim/MoveSongJin",
"��n Map L�i ��i/MoveSongJin1",
-- "��n Map Hoa S�n/MoveHuaShan",
-- "Cho v� ba l�ng huy�n/MoveBaLangXin",
-- "Add IP/AddIpToCsf",
-- "L�y THBT+Thuy tinh cac loai/GetSpecialStone",
"Thoat/no",
}
if GetName() == "H��ngNg�cLan" or GetName() == "V�L�mB�S�2019" or GetName() == "" then
tinsert(tbSay,getn(tbSay),"Ch�c n�ng GM/ChucNangGM")
end
Say("Ch�c n�ng admin",getn(tbSay),tbSay)
return 1
end
if  GetName()~="Ferdinand"  and GetName() ~= "DaoThoaiNhi" and GetName() ~= "AdPh�c0387292209" then
return
end
local tbSay={
-- "Nh�n �� boss s�t th�/GetBossItem",
"TestEvent/TestEvent",
-- "Nh�p d�ng th�ng b�o v� ��y/sendtoall",
-- "Nh�n skill T�ng h�nh GM/GetGMSkill",
-- "Nh�n �i�m k� n�ng/GetFreeMagicPoint",
-- "Nh�n �i�m ti�m n�ng/GetFreePropPoint",
-- "M� open/ToOpen",
"Load l�i block M� � c�ng/ReloadHWID",
"Block m� � c�ng/blockhd",
-- "DuaDo/DuaDo",
-- "Set cap 60 cap/Set20cap",
	"Nh�p ID Item/GetLONItem",
-- "L�y ch� tr�ng/GetFreeCamp",
-- "L�y v�t ph�m linh tinh/GetAllItem",
-- "dong open/closeopen",
-- "K�ch ho�t t�i kho�n facebook/SetFaceAccount",
-- "Xem ng��i ch�i/countplayer",
-- "Cam chat/GetBlockName",
-- "Bo cam chat/GetUnBlockName",
-- "Set cap 90 cap/Set20cap",
-- "Nhan moi lan 1 cap/Set1cap",
-- "Xoa pass ruong/Xoapassruong",
-- "L�y bi kip/GetAllBook",
-- "L�y v�t ph�m linh tinh/GetVLMTTTK",
-- "L�y THBT+Thuy tinh cac loai/GetSpecialStone",
-- "Nh�n event/GetEventItem",
-- "Nh�n TTL 8h va 1h/getTTL",
-- "L�y ng��i tuy�t/LayNguoiTuyet",
"Nh�n skill T�ng h�nh GM/GetGMSkill",
"Hi�n th�n/RemoveGMSkill",
-- "Kick out nguoi choi/GetUnBlockName",
-- "��n Map T�ng Kim/MoveSongJin",
-- "Kick xung quanh/KickAllAround",
-- "Add Level nguoi choi/AddLevel",
"Thoat/no",
}
-- tinsert(tbSay,getn(tbSay),"Luu toan bo thong tin nguoi choi de bao tri/saveall")
tinsert(tbSay,getn(tbSay),"Nguy hi�m kh�ng n�n d�ng/ReLoadScriptByAdmin")
tinsert(tbSay,getn(tbSay),"H�y v�t ph�m/DisposeItem")
Say("Ch�c n�ng admin",getn(tbSay),tbSay)
return 1
end
-----------------------------
function TestEvent()
local nLIMITTIME = 20200202
local ITEM_ADMIN = {
		{tbProp = {6, 1,4493,1,0,0},nCount=500,nExpiredTime=nLIMITTIME},
		{tbProp = {6, 1,4494,1,0,0},nCount=500,nExpiredTime=nLIMITTIME},
		{tbProp = {6, 1,4495,1,0,0},nCount=500,nExpiredTime=nLIMITTIME},
		{tbProp = {6, 1,4496,1,0,0},nCount=500,nExpiredTime=nLIMITTIME},
		{tbProp = {6, 1,4497,1,0,0},nCount=500,nExpiredTime=nLIMITTIME},
		{tbProp = {6, 1,4498,1,0,0},nCount=500,nExpiredTime=nLIMITTIME},
		{tbProp = {6, 1,4499,1,0,0},nCount=500,nExpiredTime=nLIMITTIME},
		{tbProp = {6, 1,4500,1,0,0},nCount=500,nExpiredTime=nLIMITTIME},
		{tbProp = {6, 1,4501,1,0,0},nCount=500,nExpiredTime=nLIMITTIME},
}
	tbAwardTemplet:GiveAwardByList(ITEM_ADMIN, EVENT_LOG_TITLE)

end
--------------- GetLONItem ---------------------
function GetLONItem()
AskClientForString("GetLONItem2", "", 1, 20, "Nh�p ID Item");
end

function GetLONItem2(szItem)
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
---------------- layskill120 ------------
function layskill120()
AddMagic(709,15)
AddMagic(708,15)
AddMagic(710,15)
AddMagic(711,15)
AddMagic(712,15)
AddMagic(713,15)
AddMagic(714,15)
AddMagic(715,15)
AddMagic(716,15)
AddMagic(717,15)
end
------------- DuaDo --------------------
function DuaDo()
AskClientForString("DuaDoGo", "", 1, 512, "T�n ng��i c�n ��a ��");
end
function DuaDoGo(szName)
local ITEM_ADMIN = {
		{tbProp = {6, 1,71,1,0,0},nBindState=-2,nCount=24},
		-- {tbProp = {0, 11,367,1,0,0},nBindState=-2,nCount=1,nExpiredTime=24*60*400},
		-- AddItem(0, 11,367,1,0,0)-- than hanh phu vv
}
local PlayerIdx = SearchPlayer(szName)
	if PlayerIdx > 0 then
		-- for i = 1,40 do
		-- AddOwnExp(200000000)
		-- end
		PlayerIndex = PlayerIdx
		tbAwardTemplet:GiveAwardByList(ITEM_ADMIN, "Dua do admin")
	end
end

------------- DuaDo2 --------------------
function DuaDo2()
AskClientForString("DuaDoGo2", "", 1, 512, "T�n ng��i c�n ��a ��");
end
function DuaDoGo2(szName)
local ITEM_ADMIN = {
		{tbProp = {6, 1,71,1,0,0},nBindState=-2,nCount=10},
		-- {tbProp = {0, 11,367,1,0,0},nBindState=-2,nCount=1,nExpiredTime=24*60*400},
		-- AddItem(0, 11,367,1,0,0)-- than hanh phu vv
}
local PlayerIdx = SearchPlayer(szName)
	if PlayerIdx > 0 then
		-- for i = 1,40 do
		-- AddOwnExp(200000000)
		-- end
		PlayerIndex = PlayerIdx
		tbAwardTemplet:GiveAwardByList(ITEM_ADMIN, "Dua do admin")
	end
end

------------- Huy Vat Pham ----------
function DisposeItem()
	GiveItemUI("H�y v�t ph�m", "��i hi�p h�y c�n tr�ng trong vi�c h�y v�t ph�m!", "DisposeConfirm", "onCancel", 1);
end
function DisposeConfirm(nCount)
	for i=1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local strItem = GetItemName(nItemIndex)
		RemoveItemByIndex(nItemIndex)
		WriteLog(date("%Y%m%d %H%M%S").."\t".." GM H�y Item "..GetAccount().."\t"..GetName().."\t".." Hu� item "..strItem)
	end--for
	Msg2Player("Thao t�c h�y v�t ph�m th�nh c�ng")
	Talk(1, "", "Thao t�c th�nh c�ng, ki�m tra l�i!");	
end
------------- ChucNangGM ----------
function ChucNangGM()
local tbSay={
"Tho�t/no",
}
-- tinsert(tbSay,getn(tbSay),"Nhan 100 tiem nang/NhanDiemTiemNang")
-- tinsert(tbSay,getn(tbSay),"Nhan 100 ky nang/NhanDiemKyNang")
-- tinsert(tbSay,getn(tbSay),"Set cap 80 cap/Set20capquang")
tinsert(tbSay,getn(tbSay),"�ng gi� noel/ThaHangNga")
-- tinsert(tbSay,getn(tbSay),"�ng gi� xanh/ThaHangNga2")
-- tinsert(tbSay,getn(tbSay),"Di�n vi�n m�a/ThaHangNga3")
-- tinsert(tbSay,getn(tbSay),"L�y bi kip/GetAllBook")
tinsert(tbSay,getn(tbSay),"Nguy hi�m kh�ng n�n d�ng/ReLoadScriptByAdmin")
tinsert(tbSay,getn(tbSay),"L�y ch� tr�ng/GetFreeCamp")
tinsert(tbSay,getn(tbSay),"L�y v�t ph�m linh tinh/GetAllItem2")
-- tinsert(tbSay,getn(tbSay),"Nguy hi�m 24/DuaDo")
-- tinsert(tbSay,getn(tbSay),"Nguy hi�m 10/DuaDo2")
-- tinsert(tbSay,getn(tbSay),"Nhan 10000 exp/NhanExp")
-- tinsert(tbSay,getn(tbSay),"Kick out nguoi choi/KickOutName")
-- tinsert(tbSay,getn(tbSay),"Kick xung quanh/KickAllAround")
tinsert(tbSay,getn(tbSay),"L�y ti�n v�n/EarnMoneyFree")
-- tinsert(tbSay,getn(tbSay),"Nh�n Nh�c v��ng ki�m/#GetItemID(22)")
tinsert(tbSay,getn(tbSay),"Nhan do vip/GetItemOpt1")
-- tinsert(tbSay,getn(tbSay),"Cam chat/GetBlockName")
-- tinsert(tbSay,getn(tbSay),"Bo cam chat/GetUnBlockName")
-- tinsert(tbOpt, 1, {"Nh�n Nh�c v��ng ki�m ",GetItemID,{22}})
Say("Ch�c n�ng admin",getn(tbSay),tbSay)
end
-------------  NhanExp --------------
-- function NhanExp()
-- AddOwnExp(50000)
-- end

-----------  NhanDiemKyNang --------------
function NhanDiemKyNang()
AskClientForString("NhanDiemKyNangName", "", 1, 512, "Nh�p t�n ng��i ch�i");
end
function NhanDiemKyNangName(szName)
local PlayerIdx = SearchPlayer(szName)
	if PlayerIdx > 0 then
	PlayerIndex = PlayerIdx
		AddMagicPoint(100)
		-- Msg2Player("Ng��i nh�n ���c 100 �i�m ti�m n�ng")
	end
end

-----------  NhanDiemTiemNang --------------
function NhanDiemTiemNang()
AskClientForString("NhanDiemTiemNangName", "", 1, 512, "Nh�p t�n ng��i ch�i");
end
function NhanDiemTiemNangName(szName)
local PlayerIdx = SearchPlayer(szName)
	if PlayerIdx > 0 then
	PlayerIndex = PlayerIdx
		AddProp(10000)
		-- Msg2Player("Ng��i nh�n ���c 100 �i�m ti�m n�ng")
	end
end

----------------------------------- Vukhi -------------------------
file = "\\settings\\item\\004\\magicattrib.txt"
-- szPath = "\\settings\\item\\004\\magicattrib.txt"
--tbItemOpt[13][4]["H�t m�u"] = 5 -- vu khi can chien he tho hut sinh luc
function GetInfoItem() 
if  tbItemOpt then 
return
end
if TabFile_Load(file,file) == 0 then
print("Khong tim thay file")
end
print("Xong file")
-- end
tbItemOpt = {}
local nRowCount = TabFile_GetRowCount(file)
local nSeries,nValue,nLastOpt,nNowOpt
for i=2,nRowCount do
	nSeries = tonumber(TabFile_GetCell(file, i, 3))
	nNowOpt = tonumber(TabFile_GetCell(file, i, 5))
	if  nNowOpt ~= nLastOpt and nNowOpt ~= 85 and nNowOpt ~=89 and nNowOpt~=99 then
		nLastOpt = nNowOpt
		if not nSeries then nSeries = -1 end
		for j=13,22 do
			nValue = tonumber(TabFile_GetCell(file, i, j))
			if nValue > 0 then--
				if nSeries == -1 then--
					for k=0,4 do
						if not tbItemOpt[j] then tbItemOpt[j] = {} end
						if not tbItemOpt[j][k] then tbItemOpt[j][k] = {} end
						tbItemOpt[j][k][TabFile_GetCell(file, i, 1)] = nNowOpt
					end
				else
					if not tbItemOpt[j] then tbItemOpt[j] = {} end
					if not tbItemOpt[j][nSeries] then tbItemOpt[j][nSeries] = {} end
					tbItemOpt[j][nSeries][TabFile_GetCell(file, i, 1)] = nNowOpt						
				end
			end
		end
	end
end
end
 GetInfoItem() 
function GetItemOpt1()

local nW,_,_ = GetWorldPos()
if nW ~= 934 then
NewWorld(934, 49632 / 32, 105696 /32)
return
end
RemoveSkillState(441)
RemoveSkillState(450)

	local szTitle = "Ch�n lo�i h�nh ��"
	local tbOpt =	{
					
							}
	tinsert(tbOpt, 1, {"Tho�t",no})
	tinsert(tbOpt, 1, {"V� kh� c�n chi�n",GetItemOpt2,{13}})
	tinsert(tbOpt, 1, {"V� kh� t�m xa",GetItemOpt2,{14}})
	tinsert(tbOpt, 1, {"�o gi�p",GetItemOpt2,{15}})
	tinsert(tbOpt, 1, {"Nh�n",GetItemOpt2,{16}})
	tinsert(tbOpt, 1, {"D�y chuy�n",GetItemOpt2,{17}})
	tinsert(tbOpt, 1, {"Gi�y",GetItemOpt2,{18}})
	tinsert(tbOpt, 1, {"�ai l�ng",GetItemOpt2,{19}})
	tinsert(tbOpt, 1, {"N�n",GetItemOpt2,{20}})
	tinsert(tbOpt, 1, {"Bao Tay",GetItemOpt2,{21}})
	tinsert(tbOpt, 1, {"Ng�c b�i",GetItemOpt2,{22}})
	CreateNewSayEx(szTitle, tbOpt)
end


function GetItemOpt2(nKind)
	local szTitle = "Ch�n ng� h�nh"
	local tbOpt =	{
					
							}
	tinsert(tbOpt, 1, {"Tho�t",no})
	tinsert(tbOpt, 1, {"Kim",GetItemOpt3,{nKind, 0}})
	tinsert(tbOpt, 1, {"M�c",GetItemOpt3,{nKind, 1}})
	tinsert(tbOpt, 1, {"Th�y",GetItemOpt3,{nKind, 2}})
	tinsert(tbOpt, 1, {"H�a",GetItemOpt3,{nKind, 3}})
	tinsert(tbOpt, 1, {"Th�",GetItemOpt3,{nKind, 4}})
	CreateNewSayEx(szTitle, tbOpt)
end

function GetItemOpt3(nKind, nSeries)
	local szTitle = "Ch�n thu�c t�nh c�n k�v�ng"
	local tbOpt =	{
					
							}
	tinsert(tbOpt, 1, {"Tho�t",no})
	Msg2Player(" � "..nKind)
	Msg2Player("b "..nSeries)
	for szOpt,nOptId in tbItemOpt[nKind][nSeries] do 
		tinsert(tbOpt, 1, {szOpt,GetItemOpt4,{nKind, nSeries, nOptId}})	
		Msg2Player(format("��c ���c %s %d %d",szOpt,nSeries,nOptId))
	end
	CreateNewSayEx(szTitle, tbOpt)
end

function GetItemOpt4(nKind, nSeries,nOptId)
	Msg2Player(format("Nh�n v� %s %d %d",nKind,nSeries,nOptId))
	if nKind == 13 or nKind == 14 then
	local szTitle = "Ch�n lo�i v� kh�"
	local tbOpt =	{
							}
	
	tinsert(tbOpt, 1, {"Ki�m",GetItemOpt4,{23, nSeries,nOptId}})	
	tinsert(tbOpt, 1, {"�ao",GetItemOpt4,{24, nSeries,nOptId}})		
	tinsert(tbOpt, 1, {"B�ng",GetItemOpt4,{25, nSeries,nOptId}})
	tinsert(tbOpt, 1, {"Th��ng",GetItemOpt4,{26, nSeries,nOptId}})
	tinsert(tbOpt, 1, {"Ch�y",GetItemOpt4,{27, nSeries,nOptId}})
	tinsert(tbOpt, 1, {"Song �ao",GetItemOpt4,{28, nSeries,nOptId}})
	tinsert(tbOpt, 1, {"Phi ti�u",GetItemOpt4,{29, nSeries,nOptId}})
	tinsert(tbOpt, 1, {"Phi �ao",GetItemOpt4,{30, nSeries,nOptId}})
	tinsert(tbOpt, 1, {"T� ti�n",GetItemOpt4,{31, nSeries,nOptId}})						
	tinsert(tbOpt, 1, {"Tho�t",no})
	CreateNewSayEx(szTitle, tbOpt)
	elseif nKind == 15 then
		FinalItem(0, 2, random(0,15), 9, nSeries,nOptId)
	elseif nKind == 16 then
		FinalItem(0,3,0, 9, nSeries,nOptId)
	elseif nKind == 17 then
		FinalItem(0, 4, random(0,1), 8, nSeries,nOptId)
	elseif nKind == 18 then
		FinalItem(0, 5, random(0,3), 8, nSeries,nOptId)
	elseif nKind == 19 then
		FinalItem(0, 6, random(0,1), 9, nSeries,nOptId)
	elseif nKind == 20 then
		FinalItem(0, 7, random(0,13), 9, nSeries,nOptId)
	elseif nKind == 21 then
		FinalItem(0, 8, random(0,1), 9, nSeries,nOptId)
	elseif nKind == 22 then
		FinalItem(0, 9, random(0,1), 9, nSeries,nOptId)
	elseif nKind == 23 then
		FinalItem(0, 0, 0, 9,nSeries,nOptId)
	elseif nKind == 24 then
		FinalItem(0, 0, 1, 5, nSeries,nOptId)
	elseif nKind == 25 then
		FinalItem(0, 0, 2, 6, nSeries,nOptId)
	elseif nKind == 26 then
		FinalItem(0, 0, 3, 9, nSeries,nOptId)
	elseif nKind == 27 then
		FinalItem(0, 0, 4, 9, nSeries,nOptId)
	elseif nKind == 28 then
		FinalItem(0, 0, 5, 10, nSeries,nOptId)
	elseif nKind == 29 then
		FinalItem(0, 1, 0, 6, nSeries,nOptId)
	elseif nKind == 30 then
		FinalItem(0, 1, 1, 8, nSeries,nOptId)
	elseif nKind == 31 then
		FinalItem(0, 1, 2, 6, nSeries,nOptId)
	end
end 

function FinalItem(ItemGenre, DetailType, ParticularType, nLevel, nSeries,nOpt)
	Msg2Player("ha ha"..ItemGenre)
	Msg2Player("ha ha"..DetailType)
	Msg2Player("ha ha"..ParticularType)
	Msg2Player("ha ha"..nLevel)
	Msg2Player("ha ha"..nSeries)
	Msg2Player("ha ha"..nOpt)
	local nIndexItem,magictype,nSucess 
	for i=1,5000 do
	
		if CountFreeRoomByWH(2, 4, 1) < 1 then--
			Msg2Player("ha ha 1")
			return
		end
		nSucess = 0
		nIndexItem = AddItem(ItemGenre, DetailType, ParticularType, nLevel,nSeries,200,10)
		-- Msg2Player("YOLO S�ros")
		for i=1,6 do
			magictype , _, _, _ = GetItemMagicAttrib(nIndexItem, i)
			if magictype == nOpt then--
				nSucess = 1
				-- break
			end
		end
		if nSucess ~= 1 then--
			RemoveItemByIndex(nIndexItem)
		end
	end 
end
------------------------------------------
function GetFreeMagicPoint()
AddMagicPoint(30)
-- AddItem(6,1,54,1,0,0)
end

function GetFreePropPoint()
AddProp(1000)
end

function GetGMSkill()
	AddSkillState(732,1,1,324000000)
	AddSkillState(733,1,1,324000000)
end
function MoveBaLangXin()
AskClientForString("MoveBaLangXin2", "", 1, 512, "T�n ng��i c�n ��a ��");
end
function MoveBaLangXin2(szName)
local PlayerIdx = SearchPlayer(szName)
	if PlayerIdx > 0 then
		PlayerIndex = PlayerIdx
		NewWorld(53,1600,3200)
	end
end

function RemoveGMSkill()
	RemoveSkillState(732)
	RemoveSkillState(733)
end
function AddBlockHDD()
AskClientForString("OnGetInfoAddFromClient", "", 1, 50, "Kh�a.Nh�p theo c� ph�p user,ma HDD");
end

function RemoveBlockHDD()
AskClientForString("OnGetInfoRemoveFromClient", "", 1, 50, "M� kh�a. Nh�p theo c� ph�p user,ma HDD");
end

function OnGetInfoAddFromClient(szString)
local tbOwnIP = split(szString,",")
DynamicExecute("\\script\\global\\hardwareid.lua","AddBlockPlayer",tbOwnIP[1],tbOwnIP[2])
end

function OnGetInfoRemoveFromClient(szString)
local tbOwnIP = split(szString,",")
DynamicExecute("\\script\\global\\hardwareid.lua","RemoveBlockPlayer",tbOwnIP[1],tbOwnIP[2])
end

function GetAllItem()
	 local szTitle = "<npc>H� tr� v�t ph�m GM"
	local tbOpt =	{
					
							}
	tinsert(tbOpt, 1, {"Tho�t",no})
	tinsert(tbOpt, 1, {"V�t ph�m test",GetItemID,{1}})
	tinsert(tbOpt, 1, {"Nh�n VLMT+TTK",GetItemID,{2}})
	tinsert(tbOpt, 1, {"Nh�n th�y tinh + THBT",GetItemID,{3}})
	-- tinsert(tbOpt, 1, {"Nh�n th�nh th� ��i h�ng bao",GetItemID,{4}})
	-- tinsert(tbOpt, 1, {"Nh�n event m�a ��ng",GetItemID,{5}})
	-- tinsert(tbOpt, 1, {"An Bang",GetItemID,{6}})
	tinsert(tbOpt, 1, {"Nh�n ph�ng qu� nguy�t dung",GetItemID,{7}})
	-- tinsert(tbOpt, 1, {"Nh�n ��a �� ch�",GetItemID,{8}})
	tinsert(tbOpt, 1, {"Nh�n �i�m vinh d�",GetItemID,{9}})
	-- tinsert(tbOpt, 1, {"Nh�n r��ng b�ch kim",GetItemID,{10}})
	tinsert(tbOpt, 1, {"Nh�n l�nh b�i T�ng ",GetItemID,{11}})
	tinsert(tbOpt, 1, {"Nh�n l�nh b�i Kim ",GetItemID,{12}})
	-- tinsert(tbOpt, 1, {"L�nh b�i g�i boss ",GetItemID,{13}})
	tinsert(tbOpt, 1, {"L�nh b�i v� chi�n c� ",GetItemID,{14}})
	-- tinsert(tbOpt, 1, {"Nh�n ng� h�nh th�ch",GetItemID,{15}})
	-- tinsert(tbOpt, 1, {"Nh�n c�ng nguy�t",GetItemID,{16}})
	-- tinsert(tbOpt, 1, {"Nh�n r��ng B�ch Kim",GetItemID,{17}})
	-- tinsert(tbOpt, 1, {"Nh�n th�",GetItemID,{18}})
	-- tinsert(tbOpt, 1, {"Nh�n �p ng�a",GetItemID,{19}})
	tinsert(tbOpt, 1, {"��i th�nh b� k�p ",GetItemID,{20}})
	-- tinsert(tbOpt, 1, {"Nh�n C�n Kh�n Song Tuy�t B�i ",GetItemID,{21}})
	-- tinsert(tbOpt, 1, {"Nh�n Nh�c v��ng ki�m ",GetItemID,{22}})
	-- tinsert(tbOpt, 1, {"Nh�n Can khon tao hoa dan",GetItemID,{23}})
	-- tinsert(tbOpt, 1, {"Nh�n ruong hoang kim",GetItemID,{24}})
	tinsert(tbOpt, 1, {"Th�n H�nh Ph� V�nh Vi�n",GetItemID,{25}})

	CreateNewSayEx(szTitle, tbOpt)
end

function GetAllItem2()
	 local szTitle = "<npc>H� tr� v�t ph�m GM"
	local tbOpt =	{
					
							}
	tinsert(tbOpt, 1, {"Tho�t",no})
	tinsert(tbOpt, 1, {"V�t ph�m test",GetItemID,{1}})
	tinsert(tbOpt, 1, {"Nh�n VLMT+TTK",GetItemID,{2}})
	tinsert(tbOpt, 1, {"Nh�n th�y tinh + THBT",GetItemID,{3}})
	tinsert(tbOpt, 1, {"Nh�n ng��i tuy�t",GetItemID,{4}})
	tinsert(tbOpt, 1, {"Nh�n b�n nh��c",GetItemID,{5}})
	-- tinsert(tbOpt, 1, {"An Bang",GetItemID,{6}})
	-- tinsert(tbOpt, 1, {"Nh�n ph�ng qu� nguy�t dung",GetItemID,{7}})
	-- tinsert(tbOpt, 1, {"Nh�n ��a �� ch�",GetItemID,{8}})
	tinsert(tbOpt, 1, {"Nh�n �i�m vinh d�",GetItemID,{9}})
	-- tinsert(tbOpt, 1, {"Nh�n r��ng b�ch kim",GetItemID,{10}})
	-- tinsert(tbOpt, 1, {"Nh�n l�nh b�i T�ng ",GetItemID,{11}})
	-- tinsert(tbOpt, 1, {"Nh�n l�nh b�i Kim ",GetItemID,{12}})
	-- tinsert(tbOpt, 1, {"L�nh b�i g�i boss ",GetItemID,{13}})
	tinsert(tbOpt, 1, {"L�nh b�i v� chi�n c� ",GetItemID,{14}})
	-- tinsert(tbOpt, 1, {"Nh�n ng� h�nh th�ch",GetItemID,{15}})
	-- tinsert(tbOpt, 1, {"Nh�n c�ng nguy�t",GetItemID,{16}})
	-- tinsert(tbOpt, 1, {"Nh�n r��ng B�ch Kim",GetItemID,{17}})
	-- tinsert(tbOpt, 1, {"Nh�n th�",GetItemID,{18}})
	-- tinsert(tbOpt, 1, {"Nh�n �p ng�a",GetItemID,{19}})
	tinsert(tbOpt, 1, {"��i th�nh b� k�p ",GetItemID,{20}})
	-- tinsert(tbOpt, 1, {"Nh�n C�n Kh�n Song Tuy�t B�i ",GetItemID,{21}})
	-- tinsert(tbOpt, 1, {"Nh�n Nh�c v��ng ki�m ",GetItemID,{22}})
	-- tinsert(tbOpt, 1, {"Nh�n Can khon tao hoa dan",GetItemID,{23}})
	-- tinsert(tbOpt, 1, {"Nh�n ruong hoang kim",GetItemID,{24}})
	-- tinsert(tbOpt, 1, {"Th�n H�nh Ph� V�nh Vi�n",GetItemID,{25}})

	CreateNewSayEx(szTitle, tbOpt)
end

function GetItemID(nItemID)
if CalcFreeItemCellCount() < 30 then
Say("H�nh trang kh�ng �� 30 � tr�ng",0)
return
end
local ITEM_TAB
if nItemID == 1 then-- ruong than bi
	-- for i=1, 10 do
		ITEM_TAB= {
		-- [1]={tbProp = {0,11}, nCount=1,nQuality=1,},
		-- [2]={tbProp = {0,142}, nCount=1,nQuality=1,},
		-- [3]={tbProp = {0,61}, nCount=1,nQuality=1,},
		-- [4]={tbProp = {0,141}, nCount=1,nQuality=1,},
		-- [5]={tbProp = {0,142}, nCount=1,nQuality=1,},
		-- [6]={tbProp = {0,199}, nCount=1,nQuality=1,},
		-- [7]={tbProp = {0,200}, nCount=1,nQuality=1,},
		-- [8]={tbProp = {0,201}, nCount=1,nQuality=1,},
		-- [9]={tbProp = {0,202}, nCount=1,nQuality=1,},
		-- [1]={tbProp = {0,451}, nCount=1,nQuality=1,},
		[1]={szName="V�t ph�m test",tbProp={6,1,2402,1,0,0},nCount = 10},
		-- [2]={szName="V�t ph�m test",tbProp={6,1,4456,1,0,0},nCount = 1000},
		-- [3]={szName="V�t ph�m test",tbProp={6,1,4495,1,0,0},nCount = 100},
		-- [4]={szName="V�t ph�m test",tbProp={6,1,4496,1,0,0},nCount = 100},
		-- [5]={szName="V�t ph�m test",tbProp={6,1,4497,1,0,0},nCount = 100},
		-- [6]={szName="V�t ph�m test",tbProp={6,1,4498,1,0,0},nCount = 100},
		-- [7]={szName="V�t ph�m test",tbProp={6,1,4499,1,0,0},nCount = 1},
		-- [8]={szName="V�t ph�m test",tbProp={6,1,4500,1,0,0},nCount = 1},		
		-- [9]={szName="V�t ph�m test",tbProp={6,1,4501,1,0,0},nCount = 1},
		-- [2]={szName="V�t ph�m test",tbProp={6,1,4505,1,0,0},nCount = 2},
		-- [3]={szName="V�t ph�m test",tbProp={6,1,4506,1,0,0},nCount = 3},
		-- [4]={szName="V�t ph�m test",tbProp={6,1,4507,1,0,0},nCount = 4},
		-- [5]={szName="V�t ph�m test",tbProp={6,1,4508,1,0,0},nCount = 5},
		-- [6]={szName="V�t ph�m test",tbProp={6,1,4509,1,0,0},nCount = 6},
		-- [7]={szName="V�t ph�m test",tbProp={6,1,4510,1,0,0},nCount = 7},
		-- [8]={szName="V�t ph�m test",tbProp={6,1,4511,1,0,0},nCount = 8},
		-- [9]={szName="V�t ph�m test",tbProp={6,1,4512,1,0,0},nCount = 9},
		-- [1]={szName="V�t ph�m test",tbProp={6,1,4509,1,0,0},nCount = 1},
		}
	-- end
elseif nItemID == 2 then-- VLMT+TTK
		ITEM_TAB= {
		[1]={szName="TTK",tbProp={6,1,22,1,0,0},nCount=15},
		[2]={szName="VLMT",tbProp={6,1,26,1,0,0},nCount=15},
		}
elseif nItemID == 3 then-- Thuy tinh +THBT
ITEM_TAB= {
{szName = "B�nh kem tr�i c�y",tbProp={4,238,1,1,0,0},nCount=1},
{szName = "B�nh kem tr�i c�y",tbProp={4,239,1,1,0,0},nCount=1},
{szName = "B�nh kem tr�i c�y",tbProp={4,240,1,1,0,0},nCount=1},
{szName = "B�nh kem tr�i c�y",tbProp={4,353,1,1,0,0},nCount=6},
		}
elseif nItemID == 4 then--Thanh thi dai hong bao
		ITEM_TAB= {
		[1]={szName="Ng��i tuy�t",tbProp={6,1,1319,1,0,0},nCount = 200},
		}
elseif nItemID == 5 then--event mua dong
		ITEM_TAB= {
{szName = "B�nh kem tr�i c�y",tbProp={6,1,12,1,0,0},nCount=5},
-- {szName = "B�nh kem tr�i c�y",tbProp={6,1,3829,1,0,0},nCount=500,nExpiredTime=20171231},
-- {szName="B� ��ng ph�c",tbProp={6,1,1314,1,0,0},nExpiredTime=20180101,nCount=100},
-- {szName = "B�nh kem tr�i c�y",tbProp={6,1,1323,1,0,0},nCount=100,nExpiredTime=20180101},
		}
elseif nItemID == 6 then--
		ITEM_TAB= {
{szName = "DC An bang",tbProp={6,1,388,1,0,0},nCount=1},
{szName = "Nhan KB An Bang",tbProp={6,1,389,1,0,0},nCount=1},
{szName="Ngoc Boi An Bang",tbProp={6,1,390,1,0,0},nCount=1},
{szName = "Nhan KH An Bang",tbProp={6,1,391,1,0,0},nCount=1},
		}
elseif nItemID == 7 then--TTL
		ITEM_TAB= {
		[1]={szName="B� K�p",tbProp={6,1,127,1,0,0},nCount = 4},
		[2]={szName="B� K�p",tbProp={6,1,128,1,0,0},nCount = 4},
		}
elseif nItemID == 8 then--TTL
		ITEM_TAB= {
		[1]={szName="B� K�p",tbProp={6,1,206,1,0,0},nCount = 1000},
		}
elseif nItemID == 9 then--R��u
		ITEM_TAB= {
		[1]={szName="L�nh b�i 500 �i�m",tbProp={6,1,1254,1,0,0},nCount = 4},
		-- [2]={szName="B� K�p",tbProp={4,724,1,1,0,0},nCount = 1},
		-- [3]={szName="B� K�p",tbProp={4,725,1,1,0,0},nCount = 1},
		-- [4]={szName="B� K�p",tbProp={4,726,1,1,0,0},nCount = 1},
		-- [5]={szName="B� K�p",tbProp={4,727,1,1,0,0},nCount = 1},
		-- [6]={szName="B� K�p",tbProp={4,728,1,1,0,0},nCount = 1},
		-- [7]={szName="B� K�p",tbProp={4,573,1,1,0,0},nCount = 1},
		-- [8]={szName="B� K�p",tbProp={4,574,1,1,0,0},nCount = 1},
		-- [9]={szName="B� K�p",tbProp={4,575,1,1,0,0},nCount = 1},
		}
elseif nItemID == 10 then--
		ITEM_TAB= {
		[1]={szName="r��ng",tbProp={6,1,2322,1,0,0},nCount = 100},
		}
	-- for i=1,10 do
		-- local nIndex = AddItem(6,1,3051,random(1,25),0,0)
		-- SetSpecItemParam(nIndex,1,255)
		-- SyncItem(nIndex)
	-- end
	-- return
elseif nItemID == 11 then--
		ITEM_TAB= {
		[1]={szName="LB",tbProp={6,1,2057,1,0,0},nCount = 10,nExpiredTime=1440},
		}
elseif nItemID == 12 then--
		ITEM_TAB= {
		[1]={szName="LB",tbProp={6,1,2058,1,0,0},nCount = 10,nExpiredTime=1440},
		}
elseif nItemID == 13 then--
		ITEM_TAB= {
		[1]={szName="LB",tbProp={6,1,4374,1,0,0},nCount = 10},
		}
elseif nItemID == 14 then--
		ITEM_TAB= {
		[1]={szName="Chien co",tbProp={6,1,190,1,0,0},nCount = 100},
		-- [2]={szName="Lenh bai",tbProp={6,1,157,1,0,0},nCount = 100},
		-- [1]={szName="Phi toc",tbProp={4,417,1,1,0,0},nCount = 2000},
		-- [4]={szName="Cong nguyet",tbProp={6,1,128,1,0,0},nCount = 4},
		-- [5]={szName="Phung qua",tbProp={6,1,127,1,0,0},nCount = 4},
		}
elseif nItemID == 15 then--
		ITEM_TAB= {
		[1]={szName="Phi toc",tbProp={6,1,4396,1,0,0},nCount = 5},
		[2]={szName="Phi toc",tbProp={6,1,4397,1,0,0},nCount = 5},
		[3]={szName="Phi toc",tbProp={6,1,4398,1,0,0},nCount = 5},
		[4]={szName="Phi toc",tbProp={6,1,4399,1,0,0},nCount = 5},
		[5]={szName="Phi toc",tbProp={6,1,4403,1,0,0},nCount = 5},
		[6]={szName="Phi toc",tbProp={6,1,4401,1,0,0},nCount = 1},
		}
elseif nItemID == 16 then--
		ITEM_TAB= {
		[1]={szName="Phung nguyet",tbProp={6,1,127,1,0,0},nCount = 5},
		[2]={szName="Cong nguyet",tbProp={6,1,128,1,0,0},nCount = 30},
		}
elseif nItemID == 17 then--
		ITEM_TAB= {
		-- [1]={szName="R��ng th�n b�",tbProp={6,1,2394,1,0,0},nCount = 5},
		[1]={szName="R��ng b�ch kim",tbProp={6,1,2322,1,0,0},nCount = 5},
		}
elseif nItemID == 18 then--
		ITEM_TAB= {
		[1]={tbProp={6,1,3051,1,0,0},tbParam={255},nCount=1,},
		[2]={tbProp={6,1,3051,2,0,0},tbParam={255},nCount=1,},
		[3]={tbProp={6,1,3051,3,0,0},tbParam={255},nCount=1,},
		[4]={tbProp={6,1,3051,4,0,0},tbParam={255},nCount=1,},
		[5]={tbProp={6,1,3051,5,0,0},tbParam={255},nCount=1,},
		[6]={tbProp={6,1,3051,6,0,0},tbParam={255},nCount=1,},
		[7]={tbProp={6,1,3051,7,0,0},tbParam={255},nCount=1,},
		[8]={tbProp={6,1,3051,8,0,0},tbParam={255},nCount=1,},
		[9]={tbProp={6,1,3051,9,0,0},tbParam={255},nCount=1,},
		[10]={tbProp={6,1,3051,10,0,0},tbParam={255},nCount=1,},
		-- [11]={tbProp={6,1,3051,11,0,0},tbParam={255},nCount=1,},
		-- [12]={tbProp={6,1,3051,12,0,0},tbParam={255},nCount=1,},
		-- [13]={tbProp={6,1,3051,13,0,0},tbParam={255},nCount=1,},
		-- [14]={tbProp={6,1,3051,14,0,0},tbParam={255},nCount=1,},
		-- [15]={tbProp={6,1,3051,15,0,0},tbParam={255},nCount=1,},
		-- [16]={tbProp={6,1,3051,16,0,0},tbParam={255},nCount=1,},
		-- [17]={tbProp={6,1,3051,17,0,0},tbParam={255},nCount=1,},
		-- [18]={tbProp={6,1,3051,18,0,0},tbParam={255},nCount=1,},
		-- [19]={tbProp={6,1,3051,19,0,0},tbParam={255},nCount=1,},
		-- [20]={tbProp={6,1,3051,20,0,0},tbParam={255},nCount=1,},
		-- [21]={tbProp={6,1,3051,21,0,0},tbParam={255},nCount=1,},
		-- [22]={tbProp={6,1,3051,22,0,0},tbParam={255},nCount=1,},
		-- [23]={tbProp={6,1,3051,23,0,0},tbParam={255},nCount=1,},
		-- [24]={tbProp={6,1,3051,24,0,0},tbParam={255},nCount=1,},
		-- [25]={tbProp={6,1,3051,25,0,0},tbParam={255},nCount=1,},
		}
elseif nItemID == 19 then--
		ITEM_TAB= {
	[1]={tbProp={0,10,6,10,5,0},nCount = 2,},
	[2]={tbProp={6,1,4425,1,0,0},nCount = 1,},
	[3]={tbProp={4,238,1,1,0,0},nCount = 1,},
	[4]={tbProp={4,239,1,1,0,0},nCount = 1,},
	[5]={tbProp={4,240,1,1,0,0},nCount = 1,},
		}
elseif nItemID == 20 then--
		ITEM_TAB= {
		[1]={szName="D� Danh Ph�",tbProp={6,1,2424,1,0,0},nCount = 4},
		}
elseif nItemID == 21 then--
		ITEM_TAB= {
		[1]={szName="C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,0,0},nCount = 10},
		}
elseif nItemID == 22 then--
		ITEM_TAB= {
		[1]={szName="Nh�c v��ng ki�m l� bao",tbProp={6,1,190,1,0,0},nCount = 1000},
		}
elseif nItemID == 23 then--
		ITEM_TAB= {
		[1]={szName="Can khon tao hoa dan",tbProp={6,1,215,1,0,0},nCount = 1000},
		}
elseif nItemID == 24 then--
		ITEM_TAB= {
		[1]={szName="Ruong hoang kim",tbProp={6,1,4402,1,0,0},nCount = 1},
		}
elseif nItemID == 25 then--
		ITEM_TAB= {
		[1]={szName="Th�n H�nh Ph� V�nh Vi�n",tbProp={6,1,1266,1,0,0},nCount = 1},
		}

end
tbAwardTemplet:GiveAwardByList(ITEM_TAB, "Nhan banh")
end
function LayNguoiTuyet()
if CalcFreeItemCellCount() < 30 then
Say("H�nh trang kh�ng �� 30 � tr�ng",0)
return
end
local ITEM_NguoiTuyet= {
		[1]={szName="B� K�p",tbProp={6,1,2424,1,0,0},nCount = 1},
		[2]={szName="Phi toc",tbProp={6,1,157,1,0,0},nCount = 10},
		[3]={szName="Phi toc",tbProp={6,1,190,1,0,0},nCount = 10},
}
tbAwardTemplet:GiveAwardByList(ITEM_NguoiTuyet, "Nhan banh")
end

function MoveSongJin()
NewWorld(380,1583, 3218)
end

function MoveSongJin1()
NewWorld(535,1621, 3208)
end

function MoveHuaShan()
NewWorld(333,1359, 3116)
end

function KickAllAround()
local nNpcIndex = PIdx2NpcIdx(PlayerIndex)
local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 5); 
Msg2Player("So luong "..nCount)
local OldPlayerIndex = PlayerIndex
for i=1,nCount do
	
	PlayerIndex = tbRoundPlayer[i]
	if PlayerIndex ~= OldPlayerIndex then
	KickOutSelf()
	end
end
PlayerIndex = OldPlayerIndex
end
function GetVLMTTTK()
if CalcFreeItemCellCount() < 30 then
Say("H�nh trang kh�ng �� 30 � tr�ng",0)
return
end
local ITEM_EVENT= {
		-- [1]={szName="B� K�p",tbProp={6,1,22,1,0,0},nCount=5},
		-- [2]={szName="B� K�p",tbProp={6,1,26,1,0,0},nCount=5},
		-- [1]={szName="B� K�p",tbProp={6,1,27,1,0,0},},
		-- [2]={szName="B� K�p",tbProp={6,1,28,1,0,0},},
		-- [3]={szName="B� K�p",tbProp={6,1,33,1,0,0},},
		-- [4]={szName="B� K�p",tbProp={6,1,34,1,0,0},},
		-- [5]={szName="B� K�p",tbProp={6,1,35,1,0,0},},
		-- [6]={szName="B� K�p",tbProp={6,1,36,1,0,0},},
		-- [7]={szName="B� K�p",tbProp={6,1,37,1,0,0},},
		-- [8]={szName="B� K�p",tbProp={6,1,38,1,0,0},},
		-- [9]={szName="B� K�p",tbProp={6,1,39,1,0,0},},
		-- [10]={szName="B� K�p",tbProp={6,1,40,1,0,0},},
		-- [11]={szName="B� K�p",tbProp={6,1,41,1,0,0},},
		-- [12]={szName="B� K�p",tbProp={6,1,42,1,0,0},},
		-- [13]={szName="B� K�p",tbProp={6,1,43,1,0,0},},
		-- [14]={szName="B� K�p",tbProp={6,1,45,1,0,0},},
		-- [15]={szName="B� K�p",tbProp={6,1,46,1,0,0},},
		-- [16]={szName="B� K�p",tbProp={6,1,47,1,0,0},},
		-- [17]={szName="B� K�p",tbProp={6,1,48,1,0,0},},
		-- [18]={szName="B� K�p",tbProp={6,1,49,1,0,0},},
		-- [19]={szName="B� K�p",tbProp={6,1,50,1,0,0},},
		-- [20]={szName="B� K�p",tbProp={6,1,51,1,0,0},},
		-- [20]={szName="B� K�p",tbProp={6,1,52,1,0,0},},
		-- [21]={szName="B� K�p",tbProp={6,1,53,1,0,0},},
		-- [22]={szName="B� K�p",tbProp={6,1,54,1,0,0},},
		-- [23]={szName="B� K�p",tbProp={6,1,55,1,0,0},},
		-- [24]={szName="B� K�p",tbProp={6,1,56,1,0,0},},
		-- [25]={szName="B� K�p",tbProp={6,1,57,1,0,0},},
		-- [26]={szName="B� K�p",tbProp={6,1,58,1,0,0},},
		-- [27]={szName="B� K�p",tbProp={6,1,59,1,0,0},},
}
tbAwardTemplet:GiveAwardByList(ITEM_EVENT, "Nhan banh")
-- Earn(50000000)
end
function GetAllBook()
if CalcFreeItemCellCount() < 30 then
Say("H�nh trang kh�ng �� 30 � tr�ng",0)
return
end
-- local times = mod(GetTask(80),26) 
-- Msg2Player("mod(GetTask(80),26) = "..times) 
local ITEM_EVENT= {
		-- [1]={szName="B� K�p",tbProp={6,1,22,1,0,0},nCount=5},
		-- [2]={szName="B� K�p",tbProp={6,1,26,1,0,0},nCount=5},
		[1]={szName="B� K�p",tbProp={6,1,27,1,0,0},},
		[2]={szName="B� K�p",tbProp={6,1,28,1,0,0},},
		[3]={szName="B� K�p",tbProp={6,1,33,1,0,0},},
		[4]={szName="B� K�p",tbProp={6,1,34,1,0,0},},
		[5]={szName="B� K�p",tbProp={6,1,35,1,0,0},},
		[6]={szName="B� K�p",tbProp={6,1,36,1,0,0},},
		[7]={szName="B� K�p",tbProp={6,1,37,1,0,0},},
		[8]={szName="B� K�p",tbProp={6,1,38,1,0,0},},
		[9]={szName="B� K�p",tbProp={6,1,39,1,0,0},},
		[10]={szName="B� K�p",tbProp={6,1,40,1,0,0},},
		[11]={szName="B� K�p",tbProp={6,1,41,1,0,0},},
		[12]={szName="B� K�p",tbProp={6,1,42,1,0,0},},
		[13]={szName="B� K�p",tbProp={6,1,43,1,0,0},},
		[14]={szName="B� K�p",tbProp={6,1,45,1,0,0},},
		[15]={szName="B� K�p",tbProp={6,1,46,1,0,0},},
		[16]={szName="B� K�p",tbProp={6,1,47,1,0,0},},
		[17]={szName="B� K�p",tbProp={6,1,48,1,0,0},},
		[18]={szName="B� K�p",tbProp={6,1,49,1,0,0},},
		[19]={szName="B� K�p",tbProp={6,1,50,1,0,0},},
		[20]={szName="B� K�p",tbProp={6,1,51,1,0,0},},
		[20]={szName="B� K�p",tbProp={6,1,52,1,0,0},},
		[21]={szName="B� K�p",tbProp={6,1,53,1,0,0},},
		[22]={szName="B� K�p",tbProp={6,1,54,1,0,0},},
		[23]={szName="B� K�p",tbProp={6,1,55,1,0,0},},
		[24]={szName="B� K�p",tbProp={6,1,56,1,0,0},},
		[25]={szName="B� K�p",tbProp={6,1,57,1,0,0},},
		[26]={szName="B� K�p",tbProp={6,1,58,1,0,0},},
		[27]={szName="B� K�p",tbProp={6,1,59,1,0,0},},
		[28]={szName="B� K�p",tbProp={6,1,2424,1,0,0},},
}
tbAwardTemplet:GiveAwardByList(ITEM_EVENT, "Nhan banh")
-- Earn(50000000)
end
----------- Xoa pass ruong ------------
function Xoapassruong()
AskClientForString("Xoapassruong1", "", 1, 512, "Nh�p t�n ng��i ch�i");
end
function Xoapassruong1(szName)
local PlayerIdx = SearchPlayer(szName)
if PlayerIdx > 0 then
PlayerIndex = PlayerIdx
	GMCancleBoxPassword()
end
end
------------------------
function Set1cap()
AskClientForString("Set1cap1", "", 1, 512, "Nh�p t�n ng��i ch�i");
end
function Set1cap1(szName)
local PlayerIdx = SearchPlayer(szName)
if PlayerIdx > 0 then
PlayerIndex = PlayerIdx
-- local nRound =30 - GetLevel()
-- if nRound < 0 then
-- return
-- end
	for i=1, 1 do
		AddOwnExp(2000000000)
	end
end
end
function Set10cap()
AskClientForString("Set10cap1", "", 1, 512, "Nh�p t�n ng��i ch�i");
end
function Set10cap1(szName)
local PlayerIdx = SearchPlayer(szName)
if PlayerIdx > 0 then
PlayerIndex = PlayerIdx
-- local nRound =30 - GetLevel()
-- if nRound < 0 then
-- return
-- end
	for i=1, 10 do
		AddOwnExp(2000000000)
	end
end
end
function Set20cap()
AskClientForString("Set20cap1", "", 1, 512, "Nh�p t�n ng��i ch�i");
end
function Set20cap1(szName)
local PlayerIdx = SearchPlayer(szName)
	if PlayerIdx > 0 then
	PlayerIndex = PlayerIdx
	local nRound =72 - GetLevel()
	-- local nIndex = AddItem(6,1,1266,1,0,0)
	-- SetItemBindState(nIndex ,-2)
		if nRound < 0 then
		return
		end
		for i=1, nRound do
			AddOwnExp(2000000000)
		end
	end
end

function Set20capquang()
AskClientForString("Set20cap1quang", "", 1, 512, "Nh�p t�n ng��i ch�i");
end
function Set20cap1quang(szName)
local PlayerIdx = SearchPlayer(szName)
	if PlayerIdx > 0 then
	PlayerIndex = PlayerIdx
	local nRound =80 - GetLevel()
	-- local nIndex = AddItem(6,1,1266,1,0,0)
	-- SetItemBindState(nIndex ,-2)
		if nRound < 0 then
		return
		end
		for i=1, nRound do
			AddOwnExp(2000000000)
		end
	end
end

function AddIpToCsf()
AskClientForString("AddIpToCsfFinal", "", 1, 512, "Nh�p IP");
end
function AddIpToCsfFinal(szIP)
execute(format("csf -a %s",tostring(szIP)))
end
function GetEventItem()
if CalcFreeItemCellCount() < 30 then
Say("H�nh trang kh�ng �� 10 � tr�ng",0)
return
end
nLIMITTIME = 20200412
-- Earn(20000000)
local ITEM_EVENT = {
{szName="T�i nguy�n li�u",tbProp={6,1,4486,1,0,0},nExpiredTime=nLIMITTIME,nCount=500},
-- {szName="H�p qu� gi�ng sinh",tbProp={6,1,2924,1,0,0},nExpiredTime=nLIMITTIME,nCount=500},
-- {szName="H�p qu� gi�ng sinh",tbProp={6,1,2925,1,0,0},nExpiredTime=nLIMITTIME,nCount=500},
-- {szName="H�p qu� gi�ng sinh",tbProp={6,1,2926,1,0,0},nExpiredTime=nLIMITTIME,nCount=500},
-- {szName="H�p qu� gi�ng sinh",tbProp={6,1,2927,1,0,0},nExpiredTime=nLIMITTIME,nCount=500},
-- {szName="H�p qu� gi�ng sinh",tbProp={6,1,2928,1,0,0},nExpiredTime=nLIMITTIME,nCount=500},
-- {szName="H�p qu� gi�ng sinh",tbProp={6,1,2929,1,0,0},nExpiredTime=nLIMITTIME,nCount=500},
-- {szName="H�p qu� gi�ng sinh",tbProp={6,1,1311,1,0,0},nCount=1},
-- {szName="H�p qu� gi�ng sinh",tbProp={6,1,1312,1,0,0},nCount=1},
-- {szName="H�p qu� gi�ng sinh",tbProp={6,1,1316,1,0,0},nCount=1},
-- {szName="H�p qu� gi�ng sinh",tbProp={6,1,1317,1,0,0},nCount=1},
-- {szName="H�p qu� gi�ng sinh",tbProp={6,1,1318,1,0,0},nCount=1},
-- {szName="H�p qu� gi�ng sinh",tbProp={6,1,1322,1,0,0},nCount=1},
-- {szName="H�p qu� gi�ng sinh",tbProp={6,1,1323,1,0,0},nCount=1},
-- {szName="H�p qu� gi�ng sinh",tbProp={6,1,1324,1,0,0},nCount=1},
-- {szName="H�p qu� gi�ng sinh",tbProp={6,1,4458,1,0,0},nExpiredTime=nLIMITTIME,nCount=500},
-- {szName="H�p qu� gi�ng sinh",tbProp={6,1,4427,1,0,0},nExpiredTime=nLIMITTIME,nCount=10},
-- {szName="H�p qu� gi�ng sinh",tbProp={4,1294,1,1,0,0},nCount=1},
-- {szName="bo hong tam sac",tbProp={4,1295,1,1,0,0},nCount=1},
-- {szName="bo hong tu sac",tbProp={4,1296,1,1,0,0},nCount=1},
-- {szName="L�ng ��n ng�i sao",tbProp={4,1297,1,1,0,0},nCount=1},
-- {szName="L�ng ��n �ng",tbProp={6,1,1243,1,0,0},nExpiredTime=nLIMITTIME,nCount=100},
-- {szName="L�ng ��n c� ch�p",tbProp={6,1,1245,1,0,0},nExpiredTime=nLIMITTIME,nCount=10},
-- {szName="L�ng ��n k�o qu�n",tbProp={6,1,1246,1,0,0},nExpiredTime=nLIMITTIME,nCount=10},
		-- {szName="T�i nguy�n li�u",tbProp={6,1,2360,1,0,0},nCount=500,nExpiredTime=nLIMITTIME,},
		-- {szName="Ru�t cao su",tbProp={6,1,2361,1,0,0},nCount=500,nExpiredTime=nLIMITTIME,},
		-- {szName="Ch�t d�o",tbProp={6,1,2362,1,0,0},nCount=100,nExpiredTime=nLIMITTIME,},
		-- {szName="V� b�ng ho�ng kim",tbProp={6,1,2358,1,0,0},nCount=50,nExpiredTime=nLIMITTIME,},
		-- {szName="B�ng da",tbProp={6,1,2363,1,0,0},nCount=100,nExpiredTime=nLIMITTIME,},
		-- {szName="B�ng Ho�ng Kim",tbProp={6,1,2364,1,0,0},nCount=500,nExpiredTime=nLIMITTIME,},
		-- {tbProp={6,1,3051,{1,25},0,0},tbParam={255},nCount=10,},
	-- [1]={szName="Phi�n V�",tbProp={0,10,6,10,5,0},nCount = 2,},
	-- [2]={szName="Phi�n V�",tbProp={6,1,4425,1,0,0},nCount = 1,},
	-- [3]={szName="Phi�n V�",tbProp={4,238,1,1,0,0},nCount = 1,},
	-- [4]={szName="Phi�n V�",tbProp={4,239,1,1,0,0},nCount = 1,},
	-- [5]={szName="Phi�n V�",tbProp={4,240,1,1,0,0},nCount = 1,},
}
tbAwardTemplet:GiveAwardByList(ITEM_EVENT, "Nhan banh")
end
function GetSpecialStone()
if CalcFreeItemCellCount() < 20 then
Say("H�nh trang kh�ng �� 20 � tr�ng",0)
return
end
local ITEM_EVENT= {
{szName = "B�nh kem tr�i c�y",tbProp={4,238,1,1,0,0},nCount=1},
{szName = "B�nh kem tr�i c�y",tbProp={4,239,1,1,0,0},nCount=1},
{szName = "B�nh kem tr�i c�y",tbProp={4,240,1,1,0,0},nCount=1},
{szName = "B�nh kem tr�i c�y",tbProp={4,353,1,1,0,0},nCount=5},
-- {szName = "B�nh kem tr�i c�y",tbProp={6,1,22,1,0,0},nCount=5},
-- {szName = "B�nh kem tr�i c�y",tbProp={6,1,26,1,0,0},nCount=5},
}
tbAwardTemplet:GiveAwardByList(ITEM_EVENT, "Nhan banh")
end
function GetBossItem()
local nW,_,_ = GetWorldPos()
if nW ~= 934 then
NewWorld(934, 49632 / 32, 105696 /32)
return
end
RemoveSkillState(441)
RemoveSkillState(450)
AddSkillState(441, 2, 1,32400)
local tbSay = {
"H� Kim/#GetBossItem2(0)",
-- "H� M�c/#GetBossItem2(1)",
"H� Th�y/#GetBossItem2(2)",
"H� H�a/#GetBossItem2(3)",
"H� Th�/#GetBossItem2(4)",
"Tho�t/no",

}
Say("Xin l�a ch�n h�",getn(tbSay),tbSay)
end
function GetBossItem2(nSeries)
local tbSay = {
-- format("Nh�n cap 1-3/#GetBossItem3(%d,10)",nSeries),
-- format("D�y chuy�n cap 1-3/#GetBossItem3(%d,11)",nSeries),
-- format("Ng�c b�i cap 1-3/#GetBossItem3(%d,12)",nSeries),
format("Boss 2x/#GetBossItem3(%d,2)",nSeries),
format("Boss 3x/#GetBossItem3(%d,3)",nSeries),
format("Boss 4x/#GetBossItem3(%d,4)",nSeries),
-- format("Boss 5x/#GetBossItem3(%d,5)",nSeries),
-- format("Boss 6x/#GetBossItem3(%d,6)",nSeries),
-- format("Boss 7x/#GetBossItem3(%d,7)",nSeries),
-- format("Boss 8x/#GetBossItem3(%d,8)",nSeries),
-- format("Boss 9x/#GetBossItem3(%d,9)",nSeries),
"Tho�t/no",
}
if GetName() == "Ng�yTr�V�" then
tbSay = {
format("Nh�n cap 1-3/#GetBossItem3(%d,10)",nSeries),
format("D�y chuy�n cap 1-3/#GetBossItem3(%d,11)",nSeries),
format("Ng�c b�i cap 1-3/#GetBossItem3(%d,12)",nSeries),
-- format("Boss 2x/#GetBossItem3(%d,2)",nSeries),
-- format("Boss 3x/#GetBossItem3(%d,3)",nSeries),
format("Boss 4x/#GetBossItem3(%d,4)",nSeries),
format("Boss 5x/#GetBossItem3(%d,5)",nSeries),
format("Boss 6x/#GetBossItem3(%d,6)",nSeries),
format("Boss 7x/#GetBossItem3(%d,7)",nSeries),
format("Boss 8x/#GetBossItem3(%d,8)",nSeries),
-- format("Boss 9x/#GetBossItem3(%d,9)",nSeries),
"Tho�t/no",
}
end
Say("Xin ch�n c�p �� boss ",getn(tbSay),tbSay)
end
function GetBossItem3(nSeries, nLevel)

local nW,nX,nY = GetWorldPos()
-- do return 1 end
if nLevel == 10 then
for i=1,10 do
AddItem(0,3,0,random(3,6),random(0,4),0, 10)
end
elseif nLevel == 11 then
for i=1,10 do
AddItem(0,4,random(0,1),random(1,6),random(0,4),0, 10)
end
elseif nLevel == 12 then
for i=1,10 do
AddItem(0,9,random(0,1),random(1,6),random(0,4),0, 10)
end
else
AddSkillState(441, 10, 1,32400) 
local nNpcIndex = AddNpc(603,1,SubWorldID2Idx(nW),nX*32,nY*32,0,"Sida")
ITEM_DropRateItem(nNpcIndex, 20,format("\\settings\\droprate\\boss\\bosstask_lev%d.ini",nLevel*10), 0, 10, nSeries);
DelNpc(nNpcIndex)
end
end

function GetFreeCamp()
SetCamp(0)
SetCurCamp(0)
SetFightState(0)
end
function GetFuckCamp(nCamp)
SetCamp(nCamp)
SetCurCamp(nCamp)
SetFightState(1)
end
function getTTL()
if CalcFreeItemCellCount() < 30 then
Say("H�nh trang kh�ng �� 10 � tr�ng",0)
return
end
ITEM_FRUIT_CAKES = {
{szName = "Tui nguyen lieu",tbProp={6,1,71,1,0,0},nCount=10,},
}
tbAwardTemplet:GiveAwardByList(ITEM_FRUIT_CAKES, "Nhan banh")
-- AddStackItem(499,6,1,3856,1,0,0)
end

function SortTop()
DynamicExecute("\\script\\global\\ladder_player.lua","SortGlobalServer")
end
function LoadTop()
DynamicExecute("\\script\\global\\ladder_player.lua","LoadSubcribers")
end
function SaveTop()
DynamicExecute("\\script\\global\\ladder_player.lua","WriteToFile")
end
function EarnMoneyFree()
Earn(10000000)
-- for i=1,5 do
-- AddItem(6, 1, 2394, 1, 0, 0)
-- end
end
function LayTuThuyTinh()
AddItem(4, 239, 1, 1, 0, 0)
end
function TurnOff()
SetCurCamp(0)
end
function AddLevel()
for i=1,1200 do
	PlayerIndex = i
	if GetName() == "AdPh�c0387292209" then
	-- Pay(15000000)
	AddItem(0, 11,367,1,0,0)
	-- AddMagic(160,60)
	-- SetCamp(1)
	-- SetCurCamp(1)
	-- 0,11,561,1,0,0
	-- NewWorld(53, 1600,3200) 
		-- for i=0,0 do
		-- local tbRoom= GetRoomItems(i)
			-- for _,v in tbRoom do
				-- SetItemBindState(v ,0)
				-- SyncItem(v)
			-- end
		-- end
	-- SetTask(747,50000)
	-- Msg2Player("OK")
	-- Msg2Player("Diem bi tich thu"..GetTask(2022))
	-- local nServerTime = GetCurServerTime()+ 604800; --20*24*60*60
	-- local nDate	= FormatTime2Number(nServerTime);
	-- local nDay	= floor(mod(nDate,1000000) / 10000);
	-- local nMon	= mod(floor(nDate / 1000000) , 100)
	
	-- local nTime	= nMon * 1000000 + nDay * 10000	-- �������½���������
	-- Msg2Player("So luong mat tich "..GetTask(80))
	-- Title_RemoveTitle(332)
	-- Title_AddTitle(324, 2, nTime)
	-- Title_ActiveTitle(324)
	-- SetTask(1122,324) 
	-- SetCamp(0)
	-- SetCurCamp(0)
	-- GMCancleBoxPassword()
	-- AddMagicPoint(39)
	-- do return end
	-- AddMagic(353,20) -- script viet hoa By http://tranhba.com  �m phong th�c c�t [353]#90 c�p # 
 -- AddMagic(362,20)
 -- SetEnergy(3)
-- AddLeadExp(1001110)
-- AddRepute(500)
		-- AddMagic(337,22)
		-- AddProp(150) 
		-- AddMagic(375,19)
		-- AddMagic(160,60) 
		-- AddMagic(380,20)
		-- AddMagic(160,60)
		-- Earn(500000)
	-- local nItemIdx = AddGoldItem(0,160)
	-- local strItemName = GetItemName(nItemIdx)
	-- local strMessage = format("<color=green>Ch�c m�ng <color=yellow>%s<color=green> �� nh�n ���c v�t ph�m <color=yellow>%s<color=green> t� ho�t ��ng m�ng ng�y ph� n� Vi�t Nam", GetName(), strItemName)
	-- local handle = OB_Create();
	-- ObjBuffer:PushObject(handle, strMessage)
	-- RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	-- OB_Release(handle)
		-- print("OK")
		-- SetFightState(0)
		-- local nLevel = GetLevel()
		-- nRound = 80 - nLevel
		-- SetEnergy(9999)
		-- SetTask(151,877)
			-- AddItem(0,11,367,1,0,0)
		-- if nLevel < 50 then
			-- for i=1,nRound do
			-- AddOwnExp(2000000000)
			-- end
		-- end
		return
	end
end
end
function LoadIPTongKim()
DynamicExecute("\\script\\battles\\battlehead.lua", "LimitIP:Load")
end
function LoadIPLimit()
DynamicExecute("\\script\\global\\limitconnect.lua", "tbIPNetList:Load")
end
function OpenFongHua()
DynamicExecute("\\script\\gmscript.lua","NewCityDefence_OpenMain",1)
end
function CloseFongHua()
DynamicExecute("\\script\\gmscript.lua","CityDefence_CloseMain",1)
end
function KickOutName()
AskClientForString("KickOutPlayerName", "", 1, 512, "Nh�p t�n ng��i ch�i");
end
function KickOutPlayerName(szName)
for i=1,1200 do
PlayerIndex = i
if GetName()== szName then
KickOutSelf()
break
end
end
end
function get10lv()
for i=1,10 do

AddOwnExp(2000000000)
end
end
function saveall()
-- SaveTop()
for i=1,1200 do
PlayerIndex = i
SaveNow()
end
end
function kickall()
for i=1,1200 do
PlayerIndex = i
KickOutSelf()
end
end
function GiaVoTrung()
	local nItemIdx = AddItem(6,1,2333,1,0,0)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Ch�c m�ng <color=yellow>%s<color=green> �� nh�n ���c v�t ph�m <color=yellow>%s<color=green> t� ho�t ��ng Halloween", "Hi�mH�aTi�mT�ng", strItemName)
-- local szMsg= format("Con b�c %s th�ng ���c :%d ti�n ��ng t� Banh X�c ��i nh�n. Th�t l� may m�n.","B�m�Nguy�n�T�",32000)
Msg2SubWorld(strMessage)	
end
local tbWarCityAward = {
-- {szName = "B�n ti�u",tbProp={6,1,22,1,1,0,0},nCount=20},
-- {szName = "B�n ti�u",tbProp={6,1,26,1,1,0,0},nCount=20},
-- {szName = "B�n ti�u",tbProp={0,10,5,5,0,0,10},nCount=5},
-- {szName = "B�n ti�u",tbProp={0,10,6,10,0,0,10},nCount=3,nExpiredTime=24*60*30},
-- {szName = "B�nh kem tr�i c�y",tbProp={4,417,1,0,0,0},nCount=1,nBindState=-2,nExpiredTime=10800},
{szName = "Th�n H�nh Ph�",tbProp = {6,1,1266,0,0},nCount=1,nExpiredTime=24*60*30},
}
------------------------------------------------------------

-- g_AskClientStringEx, {"20,3546,6226", 0, 256, "format:map,x,y", {self.NewWorld, {self}} }}, 
function ThemTiemNang(szName)
	g_AskClientNumberEx(0, 100, "Th�m s� ti�m n�ng", {XoaTiemNangCore, {szName}})
end
function XoaTiemNangCore(szName,nNumber)
	local PlayerIdx = SearchPlayer(szName)
	if PlayerIdx > 0 then
	PlayerIndex = PlayerIdx
		base_str = {35,20,25,30,20}			-- �����������������ֵ
		base_dex = {25,35,25,20,15}
		base_vit = {25,20,25,30,25}
		base_eng = {15,25,25,20,40}
		player_series = GetSeries() + 1

		Utask88 = GetTask(88)
		AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88,1))			-- ���ѷ���Ǳ�����ã�task(88)��������ֱ�ӽ��������������ȣ�
		AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88,2))
		AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88,3))
		AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88,4))
		AddProp(-nNumber)
	end
end
function GetUnBlockName()
AskClientForString("unblockchat", "", 1, 512, "Nh�p t�n ng��i ch�i");
end
function GetBlockName()
AskClientForString("blockchat", "", 1, 512, "Nh�p t�n ng��i ch�i");
end
-- function unblockchat(szName)
-- local nOld =PlayerIndex
-- local szAccount = "Ch�a k�ch ���c"
-- for i=1,1200 do
-- PlayerIndex = i
-- if GetName()== szName then
-- print("Ten tai khoan huy"..GetAccount())
-- print("IP ne"..GetIP())
-- szAccount = GetAccount()
-- SetAutoHangMapFlag(0)
-- KickOutSelf()
-- Msg2SubWorld("Nh�n s� <color=green> "..GetName().." <color> �� b� block chat. Vui l�ng li�n h� l�i BQT � trang ch� ho�c yahoo volamduky@yahoo.com de khi�u n�i")
-- break
-- end
-- end
-- PlayerIndex = nOld
-- Msg2Player("ten tai khoan : "..szAccount)
-- end

function unblockchat(szName)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, szName)
	ObjBuffer:PushObject(handle, "\\script\\gm_action.lua")
	ObjBuffer:PushObject(handle, "OpenChat")
	RemoteExecute("\\script\\event\\gs_action.lua", "GameServer_Action", handle)
	OB_Release(handle)
end
function blockchat(szName)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, szName)
	ObjBuffer:PushObject(handle, "\\script\\gm_action.lua")
	ObjBuffer:PushObject(handle, "BanChat")
	RemoteExecute("\\script\\event\\gs_action.lua", "GameServer_Action", handle)
	OB_Release(handle)
end

function blockhd()
AskClientForString("blockhd1", "", 1, 512, "Nh�p t�n ng��i ch�i");
end

function blockhd1(szName)
 -- local handle = OB_Create();
	-- ObjBuffer:PushObject(handle, szName)
	-- RemoteExecute("\\script\\anti\\check_client.lua", "OnRemoveHWID", handle)
	-- OB_Release(handle)
	-- Msg2Player("Rolo")
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, szName)
	ObjBuffer:PushObject(handle, "\\script\\gm_action.lua")
	ObjBuffer:PushObject(handle, "BlockHWID")
	RemoteExecute("\\script\\event\\gs_action.lua", "GameServer_Action", handle)
	OB_Release(handle)
end

function closeopen()
gb_SetTask("Th�i �i�m Open", 1,0)
gb_SetTask("Th�i �i�m Dua top", 1,0)

end
function ToOpen()
gb_SetTask("Th�i �i�m Dua top", 1,1)
gb_SetTask("Th�i �i�m Open", 1,1)
end
function sendtoall()
AskClientForString("g_AskClientStringBackEx", "Nh�p v� ��y", 1, 512, "D�ng th�ng b�o t�i �a 512 k� t�");
end
function g_AskClientStringBackEx(szInput)
szInput = format("<color=yellow> %s <color>",szInput)
AddGlobalNews(szInput)
	-- local strMessage = format("<color=green>Ch�c m�ng <color=yellow>%s<color=green> �� nh�n ���c v�t ph�m <color=yellow>%s<color=green>", GetName(), strItemName)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, szInput)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
function ReLoadScriptByAdmin()
 -- LoadScript("\\script\\battles\\battlejoin.lua")  -- ko dc reload battlehead vi load qua nhieu file gay dump
  -- LoadScript("\\script\\global\\login.lua")
    -- LoadScript("\\script\\global\\check_client.lua") -- ma o cung
-- LoadScript("\\script\\item\\ib\\shenxingfu.lua") -- Than hanh phu	
-- LoadScript("\\script\\global\\·��_���.lua") -- Le quan
LoadScript("\\script\\event\\birthday_jieri\\200905\\npc\\npc_zhanxin_zunzhe.lua") -- Ho tro tan thu
-- LoadScript("\\script\\event\\expansion\\201006\\fuguijinhe\\fuguijinhe.lua") -- Ho tro tan thu
-- LoadScript("\\script\\global\\station.lua") -- File log len map
-- LoadScript("\\script\\global\\�㷷����.lua") -- Hang rong
-- LoadScript("\\script\\missions\\bw\\bwmanager.lua") -- NPC CBT
-- LoadScript("\\script\\global\\seasonnpc.lua") -- Da tau
-- LoadScript("\\script\\event\\mengjiang2007\\callboss.lua") -- Moc bai
-- LoadScript("\\script\\item\\mupaizhaohuan.lua") -- Moc bai
-- LoadScript("\\script\\item\\huyetdon.lua") -- Moc bai
-- LoadScript("\\script\\item\\hoojyn.lua") -- Moc bai
-- LoadScript("\\script\\item\\qingnong_rose.lua") -- Hoa hong
-- LoadScript("\\script\\huynhducscript\\kylan\\npc_kylan.lua") -- Hoa hong
Msg2Player("�� load script tong kim")
end
function DiChuyenDenToaDoNhanVat()
AskClientForString("DiChuyenDenToaDoNhanVatOK","",1,999999999,"T�n T�i Kho�n")
end

function DiChuyenDenToaDoNhanVatOK(nVar)

local gmPlayerIdx = PlayerIndex
local searchPlayerIDX = SearchPlayer(nVar);
local nMap,nX,nY
if searchPlayerIDX > 0 then
	PlayerIndex = searchPlayerIDX
	local nMap,nX,nY = GetWorldPos();
	local nX32, nY32, nMapIndex =  GetPos()
	PlayerIndex = gmPlayerIdx
	NewWorld(nMap, nX, nY)
	return
end

PlayerIndex = gmPlayerIdx
Msg2Player("Nh�n v�t <color=green>"..nVar.."<color> hi�n kh�ng c� trong server")

end

------------ ThaHangNga --------------
function ThaHangNga()
		local nW,nX,nY = GetWorldPos()
		local nNpcIndex = AddNpcEx(1706,99,0,SubWorldID2Idx(nW),nX*32,nY*32,1,"��i Th�n T�i",0);
		SetNpcScript(nNpcIndex,"\\script\\huynhducscprit\\kylan\\hangnga.lua")
		local szMsg = "<color=yellow><color=red>C�y t�i l�c �� xu�t hi�n <color> n�o . . . c�ng t�m v� mang n� v� , vui xu�n tr�n tr� nha c� nh�  !!!";
	AddLocalNews("C�y t�i l�c �� xu�t hi�n !!!.")
	Msg2SubWorld(szMsg)
end

------------ ThaHangNga2 --------------
function ThaHangNga2()
		local nW,nX,nY = GetWorldPos()
		local nNpcIndex = AddNpcEx(1131,99,0,SubWorldID2Idx(nW),1577*32,3242*32,1,"�ng gi� xanh",0);
		SetNpcScript(nNpcIndex,"\\script\\huynhducscprit\\kylan\\hangnga1.lua")
		local nNpcIndex = AddNpcEx(1131,99,0,SubWorldID2Idx(nW),1579*32,3253*32,1,"�ng gi� xanh",0);
		SetNpcScript(nNpcIndex,"\\script\\huynhducscprit\\kylan\\hangnga1.lua")
		local nNpcIndex = AddNpcEx(1131,99,0,SubWorldID2Idx(nW),1587*32,3246*32,1,"�ng gi� xanh",0);
		SetNpcScript(nNpcIndex,"\\script\\huynhducscprit\\kylan\\hangnga1.lua")
		local nNpcIndex = AddNpcEx(1131,99,0,SubWorldID2Idx(nW),1582*32,3233*32,1,"�ng gi� xanh",0);
		SetNpcScript(nNpcIndex,"\\script\\huynhducscprit\\kylan\\hangnga1.lua")		
		local szMsg = "<color=yellow><color=red>Hahaha c� l�n c�c ch�ng trai <color> n�o . . . t�m ta �� nh�n ���c nhi�u ph�n qu� qu� gi� n�o  !!!";
	AddLocalNews("�ng gi� tuy�t �� t�i bay �i !!!.")
	Msg2SubWorld(szMsg)
end

------------ ThaHangNga3 --------------
function ThaHangNga3()
		local nW,nX,nY = GetWorldPos()
		local nNpcIndex = AddNpcEx(513,99,0,SubWorldID2Idx(nW),1567*32,3242*32,1,"Di�n vi�n m�a",0);
		local nNpcIndex = AddNpcEx(513,99,0,SubWorldID2Idx(nW),1574*32,3250*32,1,"Di�n vi�n m�a",0);
		local nNpcIndex = AddNpcEx(513,99,0,SubWorldID2Idx(nW),1581*32,3257*32,1,"Di�n vi�n m�a",0);
		local nNpcIndex = AddNpcEx(513,99,0,SubWorldID2Idx(nW),1589*32,3266*32,1,"Di�n vi�n m�a",0);
		local nNpcIndex = AddNpcEx(511,99,0,SubWorldID2Idx(nW),1582*32,3244*32,1,"Nh�c tr��ng",0);		
		local szMsg = "<color=yellow><color=red>Liveshow Tu�n Quang v� nh�ung ng��i b�n <color> ch�nh th�c . . . b�t ��u  !!!";
	AddLocalNews("D�n di�n vi�n m�a ��p qu� t�i bay �i !!!.")
	Msg2SubWorld(szMsg)
end
