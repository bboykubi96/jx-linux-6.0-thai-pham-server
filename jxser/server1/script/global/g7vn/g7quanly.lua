
IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
 
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\g7vn\\g7libgm.lua")

function KichToanBoSVRaNgoai1()
	local _, nTongID = GetTongName()
	Msg2Tong(nTongID,"��i hi�p "..GetName().." �� nh�t ���c qu� Huy Ho�ng")
end

function KichToanBoSVRaNgoai()
	local PlayerIndexOld = PlayerIndex
	--for i=1, GetPlayerCount() do
	for i=1, 2000 do
		PlayerIndex = i
		if(PlayerIndexOld ~= PlayerIndex) then
			--SaveNow()
			OfflineLive(PlayerIndex)
			KickOutSelf()
		end
	end
	PlayerIndex = PlayerIndexOld
	Msg2Player("Kich toan bo ra khoi server")
end

function FixSkill150()
AskClientForString("FixSkill150OK", "", 1, 50, "<#> T�n nv,skill,dangcap");
end

function FixSkill150OK(nVar)
local mysplipt = strsplit(nVar,",");

local tennv = mysplipt[1]
local nskill = tonumber(mysplipt[2])
local nlevelsk = tonumber(mysplipt[3])

local gmPlayerIndex = PlayerIndex
local searchPlayerIDX = SearchPlayer(tennv);
if searchPlayerIDX>0 then
	PlayerIndex = searchPlayerIDX
	
	sbook_150skill_list = {
		[0] = {1055, 1056, 1057},
		[1] = {1058, 1059, 1060},
		[2] = {1069, 1070, 1071, 1110},
		[3] = {1066, 1067},
		[4] = {1061, 1062, 1114},
		[5] = {1063, 1065},
		[6] = {1073, 1074},
		[7] = {1075, 1076},
		[8] = {1078, 1079},
		[9] = {1080, 1081},
	}

	sbook_factstep_list = {
		[5] = 6,
		[2] = 7,
		[4] = 7,
		[3] = 5,
		[6] = 9,
		[7] = 9,
		[0] = 6,
		[8] = 5,
		[1] = 4,
		[9] = 5,
	}
	local TSK_LV150_SKILL = 2885
	local SBOOK_150SKILL_TASKSTATE = 14
	local nFact = GetLastFactionNumber()
	local tb150Skill = sbook_150skill_list[nFact]
	SetTask(TSK_LV150_SKILL, SBOOK_150SKILL_TASKSTATE*100+sbook_factstep_list[nFact])
	if HaveMagic(nskill) > 0 then
		AddMagic(nskill,nlevelsk)
	else
		Msg2Player("Kh�ng c� skill: "..nskill)
	end

	PlayerIndex = gmPlayerIndex
	Msg2Player("�� FixSkill150 cho nh�n v�t <color=green>"..tennv.." <color>")

	return
end

Msg2Player("Nh�n v�t <color=green>"..tennv.." <color>kh�ng c� trong server")

end

function SetRankNhanVat()
AskClientForString("SetRankNhanVatOK", "", 1, 50, "<#> T�n nh�n v�t,Rank");
end

function SetRankNhanVatOK(nVar)
local mysplipt = strsplit(nVar,",");

local tennv = mysplipt[1]
local rank = tonumber(mysplipt[2])

local gmPlayerIndex = PlayerIndex
local searchPlayerIDX = SearchPlayer(tennv);
if searchPlayerIDX>0 then
	PlayerIndex = searchPlayerIDX
	SetRank(rank)
	PlayerIndex = gmPlayerIndex
	Msg2Player("�� SetRank cho nh�n v�t <color=green>"..tennv.." <color>")
	return
end

Msg2Player("Nh�n v�t <color=green>"..tennv.." <color>kh�ng c� trong server")

end

function ReSetPassRuong()
AskClientForString("ReSetPassRuongOK", "", 1, 50, "<#> T�n nh�n v�t");
end

function ReSetPassRuongOK(nVar)

local gmPlayerIndex = PlayerIndex
local searchPlayerIDX = SearchPlayer(nVar);
if searchPlayerIDX>0 then
	PlayerIndex = searchPlayerIDX
	GMCancleBoxPassword()
	PlayerIndex = gmPlayerIndex
	Msg2Player("�� RESETPASSRUONG cho nh�n v�t <color=green>"..nVar.." <color>")
	return
end

Msg2Player("Nh�n v�t <color=green>"..nVar.." <color>kh�ng c� trong server")

end

function ChuyenTrangThaiNhanVat()
AskClientForString("ChuyenTrangThaiNhanVatOK", "", 1, 50, "<#> T�n nh�n v�t");
end

function ChuyenTrangThaiNhanVatOK(nVar)

local gmPlayerIndex = PlayerIndex
local searchPlayerIDX = SearchPlayer(nVar);
if searchPlayerIDX>0 then
	PlayerIndex = searchPlayerIDX
	
	ForbidChangePK(0)
	DisabledUseTownP(0)
	DisabledStall(0)
	ForbidEnmity(0)
	ForbitTrade(0)
	SetFightState(0)

	PlayerIndex = gmPlayerIndex
	Msg2Player("�� chuy�n tr�ng th�i s� d�ng TDP cho nh�n v�t <color=green>"..nVar.." <color>")
	return
end

Msg2Player("Nh�n v�t <color=green>"..nVar.." <color>kh�ng c� trong server")

end


function DiChuyenDenBanDoViTri()
AskClientForString("DiChuyenDenBanDoViTriOK", "53,1602,3213", 1, 50, "<#> nMap, nX, nY");
end

function DiChuyenDenBanDoViTriOK(nVar)

local szICode = lib:Split(nVar, ",");
local n = getn(szICode);
if (n ~= 3) then
	Say("T�a �� nh�p v�o theo ��nh d�ng sau nMap, nX, nY")
	return
end
local nMap = tonumber(szICode[1]); 
local nX = tonumber(szICode[2]); 
local nY = tonumber(szICode[3]); 

NewWorld(nMap, nX, nY)
end

function g7kickoutEnterName()
AskClientForString("g7kickoutnv", "", 1, 50, "<#> T�n nh�n v�t");
end

function g7kickoutnv(nVar)

local gmPlayerIndex = PlayerIndex
local searchPlayerIDX = SearchPlayer(nVar);
if searchPlayerIDX>0 then
	PlayerIndex = searchPlayerIDX
	OfflineLive(PlayerIndex)
	KickOutSelf()
	PlayerIndex = gmPlayerIndex
	Msg2Player("�� k�ch (gi�i k�t) nh�n v�t <color=green>"..nVar.." <color>ra kh�i server")
	return
end

Msg2Player("Nh�n v�t <color=green>"..nVar.." <color>kh�ng c� trong server")

end

function g7mochatenterName()
AskClientForString("g7mochat", "", 1, 50, "<#> T�n nh�n v�t");
end

function g7mochat(nVar)

local gmPlayerIndex = PlayerIndex
local searchPlayerIDX = SearchPlayer(nVar);
if searchPlayerIDX>0 then
	PlayerIndex = searchPlayerIDX
	SetAutoHangMapFlag(0)
	SetChatFlag(0);
	Say("�� ���c Admin m� h�n ch� Chat")
	PlayerIndex = gmPlayerIndex
	Msg2Player("�� m� chat nh�n v�t <color=green>"..nVar.." <color>")
	return
end

Msg2Player("Nh�n v�t <color=green>"..nVar.." <color>kh�ng c� trong server")


end

function g7camchatenterName()
AskClientForString("g7camchat", "", 1, 50, "<#> T�n nh�n v�t");
end

function g7camchat(nVar)

local gmPlayerIndex = PlayerIndex
local searchPlayerIDX = SearchPlayer(nVar);
if searchPlayerIDX>0 then
	PlayerIndex = searchPlayerIDX
	SetAutoHangMapFlag(1)
	SetAutoHangMapFlag(2)
	SetAutoHangMapFlag(3)
	SetAutoHangMapFlag(4)
	SetAutoHangMapFlag(5)
	SetAutoHangMapFlag(6)
	SetAutoHangMapFlag(7)
	SetAutoHangMapFlag(8)
	SetAutoHangMapFlag(9)
	SetAutoHangMapFlag(10)
	SetChatFlag(1);
	Say("�� b� Admin h�n ch� Chat")
	PlayerIndex = gmPlayerIndex
	Msg2Player("�� c�m chat nh�n v�t <color=green>"..nVar.." <color>")
	return
end

Msg2Player("Nh�n v�t <color=green>"..nVar.." <color>kh�ng c� trong server")

end

function KeoNhanVatVeGM()
AskClientForString("KeoNhanVatVeGMOK","",1,999999999,"T�n Nh�n V�t")
end

function KeoNhanVatVeGMOK(nVar)
	
local gmPlayerIdx = PlayerIndex
local nMap,nX,nY = GetWorldPos();
local nX32, nY32, nMapIndex =  GetPos()
local searchPlayerIDX = SearchPlayer(nVar);
local trangthai = GetFightState()
if searchPlayerIDX > 0 then
	PlayerIndex = searchPlayerIDX
	NewWorld(nMap, nX, nY)
	SetFightState(trangthai)
	PlayerIndex = gmPlayerIdx
	return
end

PlayerIndex = gmPlayerIdx
Msg2Player("Nh�n v�t <color=green>"..nVar.."<color> hi�n kh�ng c� trong server")

end

function TangDiemChoNVKhac()
	AskClientForString("TangDiemChoNVKhacOK","",1,999999999,"T�n Nh�n V�t, so exp")
end

function TangDiemChoNVKhacOK(nVar)

	local szICode = lib:Split(nVar, ",");
	local n = getn(szICode);
	if (n ~= 2) then
		Say("Nh�p v�o theo ��nh d�ng sau ten nhan vat, so exp")
	return
	end
	local tennv1 = szICode[1]; 
	local cap1 = tonumber(szICode[2]); 
	
	local gmPlayerIDX = PlayerIndex
	local searchPlayerIDX = SearchPlayer(tennv1);
	PlayerIndex = searchPlayerIDX

	if searchPlayerIDX > 0 then 
		tl_addPlayerExp(cap1)
		--ST_LevelUp(cap1)
		else
		PlayerIndex = gmPlayerIDX;
		Msg2Player(format("<color=orange>GM<color>: C� th� b�n �� nh�m t�n nh�n v�t :<color=orange>[%s]<color> kh�ng c� trong server.",nVar))
	end

end

function TangLVChoNVKhac()
	AskClientForString("TangLVChoNVKhacOK","",1,999999999,"T�n Nh�n V�t, so cap")
end

function TangLVChoNVKhacOK(nVar)

	local szICode = lib:Split(nVar, ",");
	local n = getn(szICode);
	if (n ~= 2) then
		Say("Nh�p v�o theo ��nh d�ng sau ten nhan vat, so cap")
	return
	end
	local tennv1 = szICode[1]; 
	local cap1 = tonumber(szICode[2]); 
	
	local gmPlayerIDX = PlayerIndex
	local searchPlayerIDX = SearchPlayer(tennv1);
	PlayerIndex = searchPlayerIDX

	if searchPlayerIDX > 0 then 
		--tl_addPlayerExp(1000000000)
		ST_LevelUp(cap1)
		else
		PlayerIndex = gmPlayerIDX;
		Msg2Player(format("<color=orange>GM<color>: C� th� b�n �� nh�m t�n nh�n v�t :<color=orange>[%s]<color> kh�ng c� trong server.",nVar))
	end

end

function KiemTraTTNV()
	AskClientForString("KiemTraTTNVOK","",1,999999999,"T�n 1 Nh�n V�t")
end

function KiemTraTTNVOK(nVar)
	local gmPlayerIDX = PlayerIndex
	local searchPlayerIDX = SearchPlayer(nVar);
	PlayerIndex = searchPlayerIDX

	if searchPlayerIDX > 0 then 
		
		local dahocskill150G7 = "Ch�a H�c 150";
		if GetTask(833) >= 1 then
			dahocskill150G7 = "�� H�c 150"
		end
		local nTrungSinh = ST_GetTransLifeCount()
		local sex = GetSex();
		local Faction = GetLastFactionNumber();
		local nMap,nX,nY = GetWorldPos();
		local nX32, nY32, nMapIndex =  GetPos()
		local MapName = SubWorldName(nMapIndex)
		local CurLevel = GetLevel();
		local zAccount = GetAccount();
		local zFaction = "Ch�a gia nh�p m�n ph�i"
		if sex == 0 then sex = "Nam" else sex = "N�" end --ktra lai khi test ko nho 0 la nam hay 1 la nam
		if Faction == 0 then zFaction = "Thi�u L�m" 
		elseif Faction == 1 then zFaction = "Thi�n V��ng"
		elseif Faction == 2 then zFaction = "���ng M�n" 
		elseif Faction == 3 then zFaction = "Ng� ��c" 
		elseif Faction == 4 then zFaction = "Nga My" 
		elseif Faction == 5 then zFaction = "Th�y Y�n" 
		elseif Faction == 6 then zFaction = "C�i Bang" 
		elseif Faction == 7 then zFaction = "Thi�n Nh�n" 
		elseif Faction == 8 then zFaction = "V� �ang" 
		elseif Faction == 9 then zFaction = "C�n L�n" 
		elseif Faction == 10 then zFaction = "Hoa S�n"
		end
		--local zIPClient = "KhongXacDinh"
		
		--if GetTask(806) == 10 then
			--zIPClient = GetIP()
		--end
		
		PlayerIndex = gmPlayerIDX;
		
		local zMsgTalk = format("<color=Green>Th�ng tin nh�n v�t<color> :T�n nh�n v�t :<color=orange> %s<color> --- ID T�i kho�n : <color=red>( %s ) <color>\nGi�i t�nh:<color=Red> %s <color>- M�n Ph�i :<color=Yellow> %s<color>\nC�p ��: <color=red>%d<color>\nMap:<color=orange> %d (%s) <color>- t�a ��:<color=green> [%d,%d] - IP Client: NA <color> - Skill 150 <color=pink>[%s]<color> - Tr�ng sinh [%d]",nVar,zAccount,sex,zFaction,CurLevel,nMap,MapName,floor(nX/8),floor(nY/16), zIPClient,dahocskill150G7,nTrungSinh);
			if zMsgTalk ~= "" then 
				Say(zMsgTalk,0);
			else
				Msg2Player("<color=orange>GM<color> : B�n vui l�ng ki�m tra l�i th�ng tin nh�p v�o c�a nh�n v�t<color=orange> "..nVar.." player ")
			end

	else
		PlayerIndex = gmPlayerIDX;
		Msg2Player(format("<color=orange>GM<color>: C� th� b�n �� nh�m t�n nh�n v�t :<color=orange>[%s]<color> kh�ng c� trong server.",nVar))
	end

end

function BandLoginForver()
	AskClientForString("BandLoginForverOK","",1,999999999,"T�n Nh�n V�t")
end

function BandLoginForverOK(nVar)
	local gmPlayerIdx = PlayerIndex
	local szFile = "\\dulieu\\bandbygm.dat"
	local szAccount = ""

	local searchPlayerIDX = SearchPlayer(nVar);
	if searchPlayerIDX > 0 then
		PlayerIndex = searchPlayerIDX
		szAccount = GetAccount();
		server_setdata(szFile,"ACCOUNT_BAND_FORVER",szAccount,1);
		server_savedata(szFile);
		KickOutSelf()
	end

	--for i=1, GetPlayerCount() do
	--PlayerIndex = i
		--if nVar == GetName() then
			--szAccount = GetAccount();
			--server_setdata(szFile,"ACCOUNT_BAND_FORVER",szAccount,1);
			--server_savedata(szFile);
			--KickOutSelf()
		--end
	--end

	PlayerIndex = gmPlayerIdx
	if szAccount~="" then
		Msg2Player(format("B�n �� b�n nh�n v�t<color=orange> %s <color>account:<color=orange> %s <color>ra kh�i server.",nVar,szAccount));
		else
		Msg2Player("Nh�n v�t <color=green>"..nVar.."<color> hi�n kh�ng c� trong server")
	end
end

function UnBandLoginForver()
	AskClientForString("UnBandLoginForverOK","",1,999999999,"T�n T�i Kho�n")
end

function UnBandLoginForverOK(zVar)
	local szFile = "\\dulieu\\bandbygm.dat"
	local IsBand = server_getdata(szFile,"ACCOUNT_BAND_FORVER",zVar);
	if not IsBand or IsBand == "" then 
		Msg2Player("Account <color=green>"..zVar.."<color> n�y ko b� band v�nh vi�n")
		return
	end
	server_setdata(szFile,"ACCOUNT_BAND_FORVER",zVar,"")
	server_savedata(szFile);
	Msg2Player("B�n �� m� kh�a band v�nh vi�n cho account:<color=orange> "..zVar.."")
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

function gmlaykhieuchienlenh()
for i=1,20 do
	AddItem(6,1,1499,0,0,0,0)
end
end

function G7TaoItem()
AskClientForString("G7TaoItemOK","6,1,1308,1,0,0,0,1",0,256,"Th�ng tin Item")
end

function G7TaoItemOK(szItem)
	local szICode = lib:Split(szItem, ",");
	local n = getn(szICode);
	if (n ~= 1) then
	if (n < 6) then Talk(1, "", format("Sai Item code. Thi�u tr��ng d� li�u. Nh�p l�i: <color=yellow>%s<color>",n)); return end
	if (n > 8) then Talk(1, "", format("Sai Item code. V��t qu� tr��ng d� li�u. Nh�p l�i: <color=yellow>%s<color>",n)); return end
	local itclass = tonumber(szICode[1]); 
	local ittype = tonumber(szICode[2]); 
	local itid = tonumber(szICode[3]); 
	local itlv = tonumber(szICode[4]); 
	local itseri = tonumber(szICode[5]); 
	local itluck = tonumber(szICode[6]); 
	local itmagic = tonumber(szICode[7]);
	local soluong = tonumber(szICode[8]);
	if (itlv < 0) then Talk(1, "", format("C�p �� m�n �� kh�ng ���c th�p. Nh�p l�i: <color=yellow>%s<color>",itlv)); return end
	--if (itlv > 10) then Talk(1, "", format("Ch� h� tr� c�p 10. Nh�p l�i:<color=yellow>%s<color>",itlv)); return end
	if (itmagic == nil) then itmagic=0; end
	for i=1,soluong do
		AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
	end
	else
	local EquipId = tonumber(szICode[1]); 
	for i=1,6 do
		AddGoldItem(0, EquipId);
	end
	end
end

function TangDoG7TaoItem()
AskClientForString("TangDoG7TaoItemOK","6,1,1308,1,0,0,0,1,TenNhanVat",0,256,"Info Item,T�n NV")
end

function TangDoG7TaoItemOK(szItem)
	local szICode = lib:Split(szItem, ",");
	local n = getn(szICode);
	if (n ~= 1) then
		if (n < 6) then Talk(1, "", format("Sai Item code. Thi�u tr��ng d� li�u. Nh�p l�i: <color=yellow>%s<color>",n)); return end
		if (n > 9) then Talk(1, "", format("Sai Item code. V��t qu� tr��ng d� li�u. Nh�p l�i: <color=yellow>%s<color>",n)); return end
		local itclass = tonumber(szICode[1]); 
		local ittype = tonumber(szICode[2]); 
		local itid = tonumber(szICode[3]); 
		local itlv = tonumber(szICode[4]); 
		local itseri = tonumber(szICode[5]); 
		local itluck = tonumber(szICode[6]); 
		local itmagic = tonumber(szICode[7]);
		local soluong = tonumber(szICode[8]);
		local tennv1 = szICode[9];
	
		if (itlv < 0) then Talk(1, "", format("C�p �� m�n �� kh�ng ���c th�p. Nh�p l�i: <color=yellow>%s<color>",itlv)); return end

		local gmPlayerIDX = PlayerIndex
		local searchPlayerIDX = SearchPlayer(tennv1);
		PlayerIndex = searchPlayerIDX
		if searchPlayerIDX > 0 then 
			if (itmagic == nil) then 
				itmagic=0; 
			end
			for i=1,soluong do
				AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
			end
			if itmagic== 1 then
				local EquipId = tonumber(szICode[1]); 
				for i=1,6 do
					AddGoldItem(0, EquipId);
				end
			end
			PlayerIndex = gmPlayerIDX
			Msg2Player("Da tang do cho nhan vat <color=yellow>".. tennv1 .. "<color>")
			return
		end
		PlayerIndex = gmPlayerIDX
		Msg2Player("Nh�n v�t <color=green>"..tennv1.." <color>kh�ng c� trong server")
	end
end

function TangSkillChoNV()
AskClientForString("TangSkillChoNVOK","TenNV,1,20",0,256,"TenNV,IDSKILL,20")
end

function TangSkillChoNVOK(nVar)
local mysplipt = strsplit(nVar,",");

local tennv = mysplipt[1]
local nskill = tonumber(mysplipt[2])
local nlevelsk = tonumber(mysplipt[3])

local gmPlayerIndex = PlayerIndex
local searchPlayerIDX = SearchPlayer(tennv);
if searchPlayerIDX>0 then
	PlayerIndex = searchPlayerIDX
	AddMagic(nskill,nlevelsk)
	PlayerIndex = gmPlayerIndex
	Msg2Player("�� Add Skill cho nh�n v�t <color=green>"..tennv.." <color>")
	return
end
Msg2Player("Nh�n v�t <color=green>"..tennv.." <color>kh�ng c� trong server")
end