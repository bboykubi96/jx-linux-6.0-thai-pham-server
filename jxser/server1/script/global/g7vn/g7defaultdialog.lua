IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\npcdailog.lua")

Include("\\script\\vng_feature\\resetbox.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")
Include("\\script\\global\\g7vn\\doitennv.lua")
Include("\\script\\global\\g7vn\\resetbox.lua")

Include("\\script\\logevent\\logevent.lua");
Include("\\script\\logevent\\variables.lua");
Include("\\script\\bonus_onlinetime\\head.lua")
Include("\\script\\bonus_onlinetime\\func_onlineaward.lua")
Include("\\data\\giftcode.lua")
Include("\\data\\code100k.lua")
Include("\\data\\codevip.lua")
Include("\\script\\tong\\tong_award_head.lua");

local tbGMAccount = {"thaipham1","kimluyen2002","cuckold010203","","","",""} TENADMIN ={{"testthiennhan",99},{"GAMEMASTER",99},{"GameMaster",99},{"",99},{"",99},{"",99},{"",99},{"",99}}

function main()
	
	--dofile("script/global/g7vn/g7defaultdialog.lua")
--	dofile("data/giftcode.lua")
--	dofile("data/code100k.lua")
--	dofile("data/codevip.lua")
--	dofile("data/code200k.lua")
--	dofile("dulieu/checkcode.lua")
local szTongName, nTongID = GetTongName();

if szTongName~=nil and szTongName~="" then
	if TONG_GetMoney(nTongID)>0 then
	
	--TONG_ApplyAddMoney(nTongID, -(TONG_GetMoney(nTongID)))
	
	end
--	Msg2Player(""..nTongID.."")
end
--npcchat_npcmacdinh1()
	local playerG7Count = GetPlayerCount() + 1
	local szTitle = "<npc><color=gold> GM_"..GetName().." <color>ch�o m�ng b�n ��n v�i h� th�ng <color=yellow>V� L�m Truy�n K�<color> - <color=green>CTC<color> 8 Acc / 1 PC -- 16 Acc / 1 IP\n"
	local Opt = 
	{	
		
		--{"Mua s�t th� gi�n", satthugian},
		--{"Mua Vi�m �� l�nh", testitem},
		
		{"Nh�n Qu� H� Tr�", nhanquatanthu},
	--	{"Code LikeShare", phanthuongcodenew2},
--		{"Mua 50 Phi T�c + 50 L�nh B�i + 50 Chi�n C� (50 Xu).", MuaChienCo50 },
--		{"H�y V�t Ph�m Kh�a", huyVPkhoa},
	--	{"Shop Ti�n V�n", ShowTopThiep},
	
	{"Nh�n Th��ng ��n B� 50 Tri�u EXP",nhanthuongonline},
		{"Nh�n B� Kim Phong 14 Ng�y",NhanDenBuSuCo2},
		{"Nh�n T�i L�nh ��o + 500 Danh V�ng",NhanDenBuSuCo},
	--	{"Nh�n Th�n H�nh Ph� + Th� ��a Ph�",lenhbaitanthu},
	
	--	{"��i Ng�c B�ch --> 10.000.000 Exp skill 120", doingocbich},
--	{"��i 15 M�nh T�y T�y Kinh --> 1 Cu�n T�y T�y Kinh", doitaytuykinh},
--	{"��i 15 M�nh V� L�m M�t T�ch --> 1 Cu�n V� L�m M�t T�ch", doivolammattich},
	--	{"Code LikeShare", phanthuongcodenew_50k},
	--	{"Mua V�ng S�ng Ph�c H�i Sinh L�c + N�i L�c (60 Xu - 7 Ng�y)", muavongsang1},
--		{"Nh�n v�ng s�ng t�n th�.", nhanvongsang},
		{"��i M�u Nh�n V�t", doimau},
--		{"Thu� B� Trang B� May M�n. (100Xu - 1 Ng�y)", thuedomayman},
	--	{"Kh�a V�t Ph�m",KhoaVatPham},
--		{"Mua Ng�c Gi�m PK (50 v�n)", muaevent},
	--	--{"L�nh b�i ho�t ��ng", cuahanghoatdong},
	--	{"Chuy�n gi�i t�nh (100 xu)", chuyen_gt},
		{"M� R�ng R��ng", morongruong},
		{"H�c khinh c�ng ( Free)", hockhinhcong},
	--	{"Gi�m �i�m PK (20 xu)", sachgiampk},
	--	{"Mua Th�n H�nh Ph� h�n 30 Ng�y (20xu)", muatinvatmonphai},
	--	{"Tr� Nhi�m V� H�ng Ng�y", nhiemvuhangngay},
		--{"Nh�n H� tr� 500 danh v�ng", denbu3},
		--{"Xu�t S�", doimau},

		--{"Nh�n ��n b� 50tr EXP c�ng d�n<l�n 2>", denbu2},

		--{"Nh�n ��n b� 50tr EXP c�ng d�n", denbu1},

		--{"Nh�n Ti�n th�o l� tan thu", denbu},
	--	{"Nh�p CODE M�ng Xu�n .", QuaTanThuongHangNgay},

		
		
		
		--{"Tin Vat Mon Phai ", tinvatmonphai},
		{"M� Kh�a �� ��nh Nhanh (100 Xu)", MoKhoaDinh},
	--	{"Nh�n �i�m Danh V�ng ", nhandiemdanhvong},
	--	{"M� r�ng 4 r��ng (20 xu) ", moruong},
	--	{"L�p Bang H�i.", dmcreattongtest_c},
		--{"Gift Combo cho mem n�p 100k tr� l�n",QuaTanThuongHangNgay},
--	{"X�a Pass r��ng ", mokhoa1},
		{"K�t th�c ��i tho�i. ", End}
	}
	local nHour = tonumber(GetLocalDate("%Y%m%d%H%M"))
	if nHour<202104251800 then
	--	tinsert(Opt, 2, {"Code LikeShare", codechungmoi}) 
	end
	local szAccount = GetAccount()
	for i=1, getn(%tbGMAccount) do
		if szAccount == %tbGMAccount[i] then
		tinsert(Opt, 1, {"Ch�c N�ng Qu�n L� GM", ChucNangGM}) 
		--	tinsert(Opt, 1, {"Do Test", testcodeadmin}) 
		--	tinsert(Opt, 1, {"LayTienDongtesst", LayTienDOngtest}) 
			break
		end
	end
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure == TONG_MASTER) then
--	tinsert(Opt, 1, {"Nh�n �i�m Ki�n Thi�t", kienthiet}) 
--	tinsert(Opt, 1, {"G�i Ng�n Qu� Bang", nganquyban}) 
	end;
	CreateNewSayEx(szTitle,Opt)
end
function hockhinhcong()
		AddMagic(210,1)
		Msg2Player("Ch�c m�ng ��i hi�p �� h�c Khinh C�ng.")
end
function MuaChienCo50()
if CalcFreeItemCellCount() < 5 then
		return Talk(1,"","H�y S�p X�p L�i H�nh Trang")
end
if CalcEquiproomItemCount(4,417,1,1)<50 then
	Say("H�nh trang kh�ng �� 50 Xu.")
	return
end
ConsumeEquiproomItem(50,4,417,1,1)
local tbAwardcc={
{szName="Chi�n c� ", tbProp={6,1,156,1,0,0},nCount = 50},
{szName="L�nh b�i", tbProp={6,1,157,1,0,0},nCount = 50},
{szName="Phong V�n Phi T�c ho�n", tbProp={6,1,190,1,0,0},nCount = 50},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "Ph�n Th��ng");
end
function testcodeadmin()
local lamthuytinh = CalcEquiproomItemCount(4,238,1,1)
local tuthuytinh = CalcEquiproomItemCount(4,239,1,1)
local lucthuytinh = CalcEquiproomItemCount(4,240,1,1)
local tylethanhcong= (lamthuytinh*5)+(lucthuytinh*5)+(tuthuytinh*5)+50
	GiveItemUI("Trang B�", "B� V� Kh� Xanh V�o, Nguy�n Li�u �� Ngo�i H�nh Trang\n Nguy�n Li�u: \n- Ho�n Binh Ph� (50% T� L�) \n- 1 Kim T�\n- 1 Th�n B� Kho�ng Th�ch\n- Th�y Tinh (1 Vi�n + 5% T� l�)\n T� L� Th�nh C�ng: "..tylethanhcong.." %", "testcodeadmin_ok", "no", 1)
end
function testcodeadmin_ok()
	local nItemIdx = GetGiveItemUnit(1)
	local nMaCodeItem = ITEM_GetItemRandSeed(nItemIdx);
	local nMaCodeItem2 = ITEM_GetImmediaItemIndex(nItemIdx);
	local nMaCodeItem3 = ITEM_GetItemVersion(nItemIdx);
	local nGenre, nDetailType, nParticular, nLevel, nSeries, nLuck = GetItemProp( nItemIdx );
	local nQuality = GetItemQuality( nItemIdx );
	local arynMagLvl = GetItemAllParams( nItemIdx );
	local nStackCount = GetItemStackCount( nItemIdx );
	local nCurItemQuality	= GetItemQuality(nItemIdx);
	local bindState = GetItemBindState(nItemIdx)
	local nG, nD,nP,nLevel,nHe,nDong2 = GetItemProp(nItemIdx)
	local timeitem = ITEM_GetExpiredTime(nItemIdx)
	local nIdHKMP = GetGlodEqIndex(nItemIdx)
    local nTen=GetItemName(nItemIdx)
	local nRestCount = GetItemAllParams(nItemIdx)
	if (bindState ~=0) then
		Talk(1,"", "Trang b� �ang trong tr�ng th�i kh�a, kh�ng th� �p")
		return
	end
	
        if  timeitem > 0	then
		Talk(1,"", "Trang b� �ang c� h�n s� d�ng, kh�ng th� �p")
		return
		end	
		if nG == 4 or nG == 6 then
			Say("ng��i ��t c�i g� v�o th� n�y ",0);
			return
		end
		if nQuality ~= 0 then
					Say("ch� ��t v�o trang b� xanh",0);
			return
		end
		if nDetailType ~= 0 and nDetailType  ~= 1 then
				Say("ch� ��t v�o v� kh�",0);
			return
		end

	local nDetailTypeR = random(0,1)
		local nParticularR = random(0,5)
				if 	nDetailTypeR == nDetailType and nParticularR == nParticular then
			Say("L�n ho�n ��i n�y th�t b�i m�t h�t nguy�n li�u xin ��ng n�n ch�..",0)
			return
		end
		if 	nDetailTypeR == 1 and nParticularR > 2  then
		Say("L�n ho�n ��i n�y th�t b�i m�t h�t nguy�n li�u xin ��ng n�n ch�..",0)
		return
		end
		
		
		local lamthuytinh = CalcEquiproomItemCount(4,238,1,1)
local tuthuytinh = CalcEquiproomItemCount(4,239,1,1)
local lucthuytinh = CalcEquiproomItemCount(4,240,1,1)
local kimte = CalcEquiproomItemCount(4,979,1,1)
local thanbikhoangthach = CalcEquiproomItemCount(6,1,398,-1)
local hoanbinhphu = CalcEquiproomItemCount(6,1,30354,-1)
local tylethanhcong= (lamthuytinh*5)+(lucthuytinh*5)+(tuthuytinh*5)+50



if kimte>=1 and thanbikhoangthach>=1 and hoanbinhphu>=1 then
		local randomao = random(1,100)
		if randomao<=tylethanhcong then
		ConsumeEquiproomItem(lamthuytinh,4,238,1,1)
		ConsumeEquiproomItem(tuthuytinh,4,239,1,1)
		ConsumeEquiproomItem(lucthuytinh,4,240,1,1)
		ConsumeEquiproomItem(1,4,979,1,1)
		ConsumeEquiproomItem(1,6,1,398,-1)
		ConsumeEquiproomItem(1,6,1,30354,-1)
		RemoveItemByIndex(nItemIdx)
		AddItemEx(4,nMaCodeItem,nQuality,nGenre,nDetailTypeR,nParticularR,nLevel,nSeries,nLuck,arynMagLvl[1],arynMagLvl[2],arynMagLvl[3],arynMagLvl[4],arynMagLvl[5],arynMagLvl[6],nStackCount)
		local szNews = format("Ch�c m�ng   <color=green>"..GetName().."<color> ho�n ��i trang b� xanh<color=cyan> "..nTen.."<color> th�nh c�ng.")
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
		else
				ConsumeEquiproomItem(lamthuytinh,4,238,1,1)
		ConsumeEquiproomItem(tuthuytinh,4,239,1,1)
		ConsumeEquiproomItem(lucthuytinh,4,240,1,1)
		ConsumeEquiproomItem(1,4,979,1,1)
		ConsumeEquiproomItem(1,6,1,398,-1)
		ConsumeEquiproomItem(1,6,1,30354,-1)
	local szNews = format("Chi bu�n c�ng   <color=green>"..GetName().."<color> ho�n ��i trang b� xanh<color=cyan> "..nTen.."<color> th�t b�i.")
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
		end
	else
		Say("H�nh trang kh�ng �� nguy�n li�u.")
		return
	end
end
function muavongsang()
local szTitle = "<npc><color=gold>"..GetName().." <color>Vui L�ng L�a Ch�n Ch�c n�ng."
	local Opt = 
	{	
	{"Mua V�ng Ph�c H�i 40 N�i L�c + X3 Kinh Nghi�m h�n 2 Ng�y (100 V�n)", muavongsang1},
{"Mua V�ng Ph�c H�i 40 N�i L�c + X3 Kinh Nghi�m h�n 7 Ng�y (300 V�n)", muavongsang2},
		{"K�t th�c ��i tho�i. ", End}
	}

	CreateNewSayEx(szTitle,Opt)
end
function doitaytuykinh()
	if CalcEquiproomItemCount(4,1643,1,1)>=15 then
		ConsumeEquiproomItem(15,4,1643,1,1)
		local tbAward= {
	{szName="T�y T�y Kinh",tbProp={6,1,22,1,0,0},nCount=1},	
	}
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n th��ng")	
	else
		Say("H�nh trang kh�ng �� 15 m�nh T�y T�y Kinh")
		return
	end
end
function doivolammattich()
	if CalcEquiproomItemCount(4,1644,1,1)>=15 then
		ConsumeEquiproomItem(15,4,1644,1,1)
		local tbAward= {
	{szName="V� L�m M�t T�ch",tbProp={6,1,26,1,0,0},nCount=1},	
	}
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n th��ng")	
	else
		Say("H�nh trang kh�ng �� 15 m�nh V� L�m M�t T�ch")
		return
	end
end
function muavongsang1()
if GetLevel()<80 then
	Say("C�p 80 tr� l�n m�i mua ���c v�ng s�ng n�y.")
	return
end
	if GetSkillState(1688)>=1 then
		--RemoveSkillState(1512,20,3,559872000,1) 
		Say("Tr�n ng��i ��i hi�p �� c� hi�u �ng v�ng s�ng n�y, kh�ng th� mua th�m.")
	return
	end

	if CalcEquiproomItemCount(4,417,1,1)>=60 then
		ConsumeEquiproomItem(60,4,417,1,1)
		local ntime = 18*60*60*24*7
	--PlayerFunLib:AddSkillState(1686,20,3,ntime,1)
	PlayerFunLib:AddSkillState(1688,20,3,ntime,1)
	else
		Say("H�nh trang kh�ng ��  60 Xu.")
		return
	end
end
function muavongsang2()
if GetLevel()<100 then
	Say("C�p 100 tr� l�n m�i mua ���c v�ng s�ng n�y.")
	return
end
	if GetCash()>=3000000 then
	Pay(3000000)
		local ntime = 18*60*60*24*7
	PlayerFunLib:AddSkillState(1686,20,3,ntime,1)
	PlayerFunLib:AddSkillState(1687,20,3,ntime,1)
	else
		Say("H�nh trang kh�ng �� 300 V�n L��ng.")
		return
	end
end

function morongruong()
local szTitle = "<npc><color=gold>"..GetName().." <color>Vui L�ng L�a Ch�n Ch�c n�ng."
	local Opt = 
	{	
	{"M� r�ng r��ng 1 (50 xu)", moruong1},
	{"M� r�ng r��ng 2 (50 xu)", moruong2},
	{"M� r�ng r��ng 3 (50 xu)", moruong3},
		{"K�t th�c ��i tho�i. ", End}
	}

	CreateNewSayEx(szTitle,Opt)
end
function npcchat_npcmacdinh1()
local nNpcIndex = GetLastDiagNpc();
local nTaskChat = GetNpcParam(nNpcIndex,1);
if nTaskChat == 0 then 
SetNpcParam(nNpcIndex,1,1); --set index ��u ti�n c�a table npc chat.
SetNpcTimer(nNpcIndex,5000); --Tu� ch�nh th�i gian npc t� chat (20 s)
end
end
function OnTimer(nNpcIndex,nTimeOut)
local nTaskChat = GetNpcParam(nNpcIndex,1);
if not nTaskChat or nTaskChat <= 0 then 
nTaskChat = 1;
else
nTaskChat = nTaskChat + 1;
end

if nTaskChat > getn(tbChat) then 
nTaskChat = 1;
end
--Msg2SubWorld("<color=yellow>21h00 B�o Tr� SV 5 Ph�t Nha Anh Em, Mong Anh Em Th�ng C�m.<color>")
--Msg2SubWorld(tbChat[nTaskChat])
--NpcChat(nNpcIndex,tbChat[nTaskChat],1);
SetNpcParam(nNpcIndex,1,nTaskChat)
SetNpcTimer(nNpcIndex,5000);
end
function huyVPkhoa()

	Say("��i hi�p: Ng��i c�n g� � ta?." ,3,"Phi shop m�t m�n ��! /banshop","H�y b� m�t m�n ��! /Huydeltem","�� ta suy ngh� l�i. /0")
end
function nhanthuongonline()
	if GetTask(3902)<=1 then
				local tbAward= {
--	{szName="T�i Nguy�n Li�u",tbProp={6,1,4485,1,0,0},nCount=300},	
	{szName="�i�m Kinh Nghi�m",nExp_tl = 50e6},
	}
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n th��ng")	
	SetTask(3902,2)
else
	Say("Nh�n th��ng ch� nh�n ���c 1 l�n.")
	return
end
end

function banshop()
Sale(149)
end;
function Huydeltem()
	if (GetBoxLockState() ~= 0) then
		Say("Xin m� kh�a r��ng tr��c !", 0)
		return
	end
GiveItemUI("H�y V�t Ph�m Kh�a", " ��i hi�p c�n h�y g� xin ��t v�o � d��i ��y! C� th� h�y nhi�u v�t ph�m c�ng l�c", "DisposeConfirm", "onCancel", 1);
end

function DisposeConfirm(nCount)
for i=1, nCount do
local nItemIndex = GetGiveItemUnit(i)
local strItem = GetItemName(nItemIndex)
RemoveItemByIndex(nItemIndex)
end
Msg2Player("Thao t�c b�n v�t ph�m th�nh c�ng")
Talk(1, "", "<color=green> Ch�c m�ng ��i Hi�p �� h�y v�t ph�m kh�a th�nh c�ng!"); 
end
function lenhbaitanthu()
	if CalcFreeItemCellCount()<5 then
		Say("H�nh trang kh�ng �� 5 � tr�ng.")
		return
	end
	local Index = AddItem(6,1,1266,1,0,0) SetItemBindState(Index, -2)
	local Index = AddItem(6,1,438,1,0,0) SetItemBindState(Index, -2)
end
function thuedomayman()
	if CalcFreeItemCellCount()<20 then
		Say("H�nh trang kh�ng �� 20 � tr�ng")
		return
	end
	if CalcEquiproomItemCount(4,417,1,1)>=100 then
		ConsumeEquiproomItem(100,4,417,1,1)
			local tbAward= {
	{szName="��ng S�t",tbProp={0,6251},nCount=1,nQuality=1,nExpiredTime=24*60},
	{szName="��ng S�t",tbProp={0,6252},nCount=1,nQuality=1,nExpiredTime=24*60},
	{szName="��ng S�t",tbProp={0,6253},nCount=1,nQuality=1,nExpiredTime=24*60},
	{szName="��ng S�t",tbProp={0,6254},nCount=1,nQuality=1,nExpiredTime=24*60},
	}
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n th��ng")	
	else
		Say("H�nh trang kh�ng �� 100 Xu")
		return
	end
end
function doingocbich()
	if CalcEquiproomItemCount(6,1,30350,-1)>=1 then
		Add120SkillExp(10000000)
	Clear120SkillExpLimit ()
	ConsumeEquiproomItem(1, 6,1, 30350,-1)
	else
		Say("H�nh trang kh�ng c� vi�n ng�c b�ch n�o.")
		return
	end
end
function nganquyban()
	AskClientForNumber("nganquyban_ok", 1, 2000000000, "Nh�p s� l��ng")
end
function nhanmautanthu()
	if GetLevel()<80 then
		PlayerFunLib:AddSkillState(1680,20,3,7*60*60*18,1)
		Msg2Player("Nh�n v�ng s�ng t�n th� th�nh c�ng")
	else
		Say("Ch� h� tr� v�ng s�ng ��n c�p 79.")
		return
	end
end
function nganquyban_ok(nNum)
	local sltien = GetCash()
	local nAdd = 10000000
	local szMember = GetName()
	local _, nTongID = GetTongName()
	if(sltien < nNum) then
		Say("��i hi�p kh�ng mang ��: "..nNum.." l��ng")
		return
		end
	szMsg = szMember.." �� ��ng g�p "..nNum.." l��ng v�o ng�n qu� bang h�i"
	Msg2Tong(nTongID, szMsg)
	TONG_ApplyAddMoney(nTongID, nNum)
	Pay(nNum)
end

function kienthiet()
		local nBuildFund = 10000000
	local _, nTongID = GetTongName()
	if(nTongID == 0) then
		Msg2Player("Ch�a gia nh�p bang h�i, kh�ng th� s� d�ng ��o c� n�y.");
		return 1
	end
	local figure = TONGM_GetFigure(nTongID, GetName())

	if (figure == TONG_MASTER)then
		TONG_ApplyAddBuildFund(nTongID,nBuildFund)
		Msg2Player(format("N�p th�nh c�ng %d �i�m Ki�n thi�t", nBuildFund))
		--%tbLog:PlayerAwardLog("KienThietLebao", "SuDungVatPhamNhanDuoc5000000diemKienThiet")
		return 0;
	end
end
function moruong1()
	if CalcEquiproomItemCount(4,417,1,-1)>=50 then 
		ConsumeEquiproomItem(50,4,417,1,-1);
		OpenStoreBox(1);
		SaveNow();
	else
		Talk(1,"no","<color=red>B�n kh�ng �� ti�n.")	
	end
end
function moruong2()
	if CalcEquiproomItemCount(4,417,1,-1)>=50 then 
		ConsumeEquiproomItem(50,4,417,1,-1);
		OpenStoreBox(2);
		SaveNow();
	else
		Talk(1,"no","<color=red>B�n kh�ng �� ti�n.")	
	end
end
function moruong3()
	if CalcEquiproomItemCount(4,417,1,-1)>=50 then 
		ConsumeEquiproomItem(50,4,417,1,-1);
		OpenStoreBox(3);
		SaveNow();
	else
		Talk(1,"no","<color=red>B�n kh�ng �� ti�n.")	
	end
end
function nhanvongsang()
	if GetLevel()>=80 then
		Say("Ch� nh�n ���c ��n c�p 79")
		return
	end
	if GetSkillState(1512)>=1 then
		RemoveSkillState(1512,20,3,559872000,1) 
	--	RemoveSkillState(1679,20,3,559872000,1) 
	end
		PlayerFunLib:AddSkillState(1512,20,3,18*60*60*24*50,1)
--		PlayerFunLib:AddSkillState(1679,20,3,18*60*60*24*50,1)
end
function sachgiampk()
if CalcFreeItemCellCount()<5 then
	Say("H�nh trang kh�ng �� 5 � tr�ng.")
	return
end
if CalcEquiproomItemCount(4,417,1,1)<20 then
	Say("H�nh trang kh�ng c� �� 20 xu.")
	return
end
ConsumeEquiproomItem(20,4,417,1,1)
AddItem(6,1,1375,1,1,0,0)
end
function chuyen_gt()
	local szTitle = "<npc><color=Pink>Nam<color> => Nga My ho�c Th�y Y�n <color=Green>N� <color> => Thi�u L�m ho�c Thi�n V��ng<enter> Sau khi gia nh�p m�n ph�i c� th� ��n g�p ta �� ��i gi�i t�nh "
	local tbOpt =
	{
		{"Chuy�n Nam Th�nh N�", NamNu},
		{"Chuy�n N� Th�nh Nam", NuNam},
		{"Tho�t/no"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function NamNu()
		if (CalcItemCount(2,0,-1,-1,-1) > 0) then
			return Say("Mu�n ��i gi�i t�nh c�n ph�i c��i b� h�t trang b� tr�n ng��i .",0);

		end
if GetCurCamp() == 0 then
		Talk(1, "", "<color=green>"..myplayersex().."<color> v�n ch�a gia nh�p m�n ph�i ?")
return end
if CalcEquiproomItemCount(4,417,1,1)<100 then
	Say("Chuy�n gi�i t�nh c�n 100 xu trong h�nh trang.")
	return
end
if GetSex() == 1 then
Talk(1, "", "<color=green>"..myplayersex().."<color> �ang l� <color=red>G�i ��p<color> m�?\n C� ph�i "..myplayersex().." thu�c th� gi�i th� 3 kh�ng?")
else
ConsumeEquiproomItem(100,4,417,1,1)
SetSex(1) ---nu 1
KickOutSelf()
Msg2SubWorld("<color=cyan>Ch�c m�ng nam ��i hi�p <color=green>"..GetName().."<color=cyan> chuy�n ��i gi�i t�nh th�nh c�ng th�nh N� Giai Nh�n")
end
end

function NuNam()
		if (CalcItemCount(2,0,-1,-1,-1) > 0) then
			return Say("Mu�n ��i gi�i t�nh c�n ph�i c��i b� h�t trang b� tr�n ng��i .",0);

		end
if GetCurCamp() == 0 then
		Talk(1, "", "<color=green>"..myplayersex().."<color> v�n ch�a gia nh�p m�n ph�i ?")
return end
if CalcEquiproomItemCount(4,417,1,1)<100 then
	Say("Chuy�n gi�i t�nh c�n 100 xu trong h�nh trang.")
	return
end
if GetSex() == 0 then
Talk(1, "", "<color=green>"..myplayersex().."<color> �ang l� <color=red>Trai Xinh<color> m�?\n C� ph�i "..myplayersex().." thu�c th� gi�i th� 3 kh�ng?")
else
ConsumeEquiproomItem(100,4,417,1,1)
SetSex(0)---nam 0
KickOutSelf()
Msg2SubWorld("<color=cyan>Ch�c m�ng n� ��i hi�p <color=green>"..GetName().."<color=cyan> chuy�n ��i gi�i t�nh th�nh c�ng th�nh Nam M� Nh�n")
end
end


function KhoaVatPham()
GiveItemUI("H�y V�t Ph�m Kh�a", " ��i hi�p c�n kh�a g� xin ��t v�o � d��i ��y! C� th� kh�a nhi�u v�t ph�m c�ng l�c", "KhoaVatPham_ok", "onCancel", 1);
end

function KhoaVatPham_ok(nCount)
for i=1, nCount do
local nItemIndex = GetGiveItemUnit(i)
SetItemBindState(nItemIndex,-2)
end
Msg2Player("Thao t�c b�n v�t ph�m th�nh c�ng")
Talk(1, "", "<color=green> Ch�c m�ng ��i Hi�p �� kh�a v�t ph�m kh�a th�nh c�ng!"); 

end
function MoKhoaDinh() 
	if (GetBoxLockState() ~= 0) then
		Say("Xin m� kh�a r��ng tr��c !", 0)
		return
end
GiveItemUI("M� Kh�a ��nh", "<color=white>c�n 100 Xu trong h�nh trang.", "batdaucheckngay", "onCancel", 1);
end

function codechungmoi()

	if GetTask(3902) <5 then
		AskClientForString("codechungmoi_ok","",1,99999999999,"Nh�p GiftCode")
	else
	Talk(1,"","<bclr=violet>"..myplayersex().." �� Nh�n Th��ng R�i Ho�c Kh�ng �� Ch� Tr�ng Kh�ng Th� Nh�n N�a"..GetTask(3902) .."")
	end
end
tbKandy2 = {}
tbKandy2.szFile = "\\dulieu\\checkcode503k.dat"
--server_loadfile(tbKandy2.szFile)
function codechungmoi_ok(nVar)
	local tbAwardgift = {

--{szName="Nh�t K� C�n Kh�n Ph�", tbProp={6,1,4363,1,0,0},nCount = 1,nExpiredTime=3*24*60,nBindState=-2},
		{szName="Phi Phong", tbProp={0,5970},nCount = 1,nExpiredTime=20210426,nQuality=1,nBindState = -2},
	
	}


	local IsClone = server_getdata(tbKandy2.szFile,"GIFT_CODE_CHECK",nVar);
	local nillVar = 0
	if IsClone ~= "" then 
		return Say("<bclr=red>M� GIFTCODE Ch� Nh�p T�i �a 1 L�n Vui L�ng Li�n H� GM ��\n���c Gi�i Quy�t<bclr>")
	end
	if CalcFreeItemCellCount() >= 10 then
		for k=1,getn(giftcode200k) do
			if nVar == giftcode200k[k][1] then
			--Msg2Player("---"..GetTask(3902).."----------------------------"); 

				SetTask(3902, 5) 

				tbAwardTemplet:GiveAwardByList(tbAwardgift,"Ph�n Th��ng GiftCode")
				Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> Nh�n Th�nh C�ng GiftCode LikeShare")
				server_setdata(tbKandy2.szFile,"GIFT_CODE_CHECK",nVar,"1");	
				server_savedata(tbKandy2.szFile);
			return
			else 
				nillVar = 0
			end
		end
	else return Say("Kh�ng �� 10 � Tr�ng")
	end
	if nillVar == 0 then
		return Say("M� gift ng��i v�a nh�p v�o kh�ng t�n t�i trong h� th�ng!")
	end;
end;

function batdaucheckngay(nItemIdx)
local nSilverCount = CalcEquiproomItemCount(4, 417, 1, -1) ;
	local chikhoalaplanh = CalcEquiproomItemCount(6, 1, 1371, -1) ;
	if	(nSilverCount < 100)  then -- gia xu
	Say("<color=yellow>B�n C�n 100 Xu trong H�nh Trang") -- go
	return
	end
		local nItemIdx = GetGiveItemUnit(1);
		local bindState = GetItemBindState(nItemIdx)
		if (bindState == -2) then
			Talk(1,"", "Trang b� do BQT kh�a v�nh vi�n kh�ng th� m� kh�a ���c r�t ti�c.")
		return
	end
	    local strItemlock = GetItemName(nItemIdx)
		Msg2Player("<color=red>M� kh�a v�t ph�m "..strItemlock, " th�nh c�ng")
Talk(1, "", "<color=green> Ch�c m�ng ��i Hi�p m� kh�a th�nh c�ng "..strItemlock, "!"); 
		SetItemBindState(nItemIdx,0);
		ConsumeEquiproomItem(100,4,417,1,1);
		SaveNow();
end
function nhandiemdanhvong()
if GetTask(14)==0  then
			--FuYuan_Start()
			--FuYuan_Add(900)
			--AddLeadExp(90000000)
			AddRepute(10000)
			SetTask(14,GetTask(14)+1)
			Msg2Player("Ch�c m�ng ��i Hi�p �� nh�n ���c 10k �i�m Danh V�ng.")
		else
			Talk(1, "", "Ng��i �� nh�n r�i kh�ng th� nh�n n�a. ")
		end
end
function ShowTopThiep()
Sale(185)
end
function muatinvatmonphai()
	if CalcFreeItemCellCount() < 5 then
	Talk(1,"","<color=green> H�y �� Tr�ng 5 � R�i Mua...!")
	return
	end
	if (CalcEquiproomItemCount(4,417,1,-1)<20) then
		Talk(1,"","<color=green> C�c h� kh�ng �� 20 xu...!")
		return
	end
	ConsumeEquiproomItem(20,4,417,1,-1)
	local tbAwardcc={
	{szName="Th�n H�nh Ph�", tbProp={6,1,1266,1,0,0},nCount = 1,nExpiredTime=30*24*60},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "Th�n H�nh Ph�");
end
function nhiemvuhangngay()
	if CalcFreeItemCellCount()<10 then
	Say("Kh�ng �� 10 � tr�ng.")
	return 1;
	end
	if CalcEquiproomItemCount(6,1,4422,-1) < 1 then
	Say("Kh�ng �� 1 T�n V�t Vi�m ��.")
	return 1;
	end
	if CalcEquiproomItemCount(6,1,4423,-1) < 1 then
	Say("Kh�ng �� 1 T�n V�t V��t �i.")
	return 1;
	end
	if CalcEquiproomItemCount(6,1,4424,-1) < 1 then
	Say("Kh�ng �� 1 T�n V�t Phong L�ng ��.")
	return 1;
	end
	if CalcEquiproomItemCount(6,1,4425,-1) < 1 then
	Say("Kh�ng �� 1 T�n V�t T�ng Kim.")
	return 1;
	end
	if CalcEquiproomItemCount(6,1,4426,-1) < 1 then
	Say("Kh�ng �� 1 T�n V�t T�n S�.")
	return 1;
	end
		
	local tbAward= {
	{szName="D�y Th�ng",tbProp={6,1,4416,1,1,0},nCount=2},
	{szName="B� C�",tbProp={6,1,4415,1,1,0},nCount=2},
	--{szName="Tinh Ng�c",tbProp={6,1,4409,1,1,0},nCount=20},
	--	{szName = "T�i Qu� S� Ki�n",tbProp={6,1,1627,0},nCount=50},
		{szName="Ti�n ��ng",tbProp={4,417,1,1,0,0},nCount=5},
	--	{szName = "H� Ti�u L�nh",tbProp={6,1,30317,1,0,0},nCount=2},
	}
	AddOwnExp(5000000000)
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n th��ng H�ng Ng�y")			
	ConsumeEquiproomItem(1, 6,1, 4422,-1)
	ConsumeEquiproomItem(1, 6,1, 4423,-1)
	ConsumeEquiproomItem(1, 6,1, 4424,-1)
	ConsumeEquiproomItem(1, 6,1, 4425,-1)
	ConsumeEquiproomItem(1, 6,1, 4426,-1)

end
---------------lap bang
function dmcreattongtest_c()
local strTongName = GetTongName()
local tszTitle = "Ch�o m�ng ��i hi�p �� tham gia h� th�ng <color=yellow>Bang H�i<color>"
if (strTongName == nil or strTongName == "") then
	Say(tszTitle,2,"T�o bang h�i/dmcreateit","K�t th�c ��i tho�i")
else
	Say(tszTitle,0)
end	
end


function dmcreateit()
	Tong_name,oper = GetTong()
	if (oper == 0) and (GetTask(99) == 1) then
		Say("Ti�p t�c t�o bang." ,2,"T�o Bang/Direct_CreateTong","�� ta suy ngh� l�it/wait_a_moment")
	elseif (oper == 0) and (GetCamp() == 4) and (GetLevel() >= 50) and (GetReputeLevel(GetRepute()) >= 6) and (GetLeadLevel() >= 30) and (HaveItem(195) == 1) then
	Say("��i hi�p: Ng��i c� mu�n l�p bang?." ,2,"Kh�ng th�nh v�n �� ta mu�n l�p bang ngay! /create_pay_yes","�� ta suy ngh� l�i. /0")
	else	
		i = random(0,1)
		if (i == 0) then
			Talk(1,"", "Ng��i l�p bang h�i ph�i c� nh�c v��ng ki�m ch�ng n�o �� h�y quay l�i g�p ta.")
		else
			Talk(6,"", "Ng��i l�p bang h�i ph�i c� nh�c v��ng ki�m ch�ng n�o �� h�y quay l�i g�p ta.")
		end
	end
end


function create_pay_yes()

	if (GetCash() >= 0) then
		Pay(0)				-- �շ�
		DelItem(195)			-- ɾ��ϵ�ص���
		SetTask(99,1)				-- �����ϱ�ǣ�ݬʱ����Ϊ�����еĵ�һ���ˣ����������ˣ���
		Direct_CreateTong()		
		
	else
		Talk(1,"", "Mu�n l�p bang th� ph�i c� ti�n ng��i mau mang ti�n l�i ��y r�i h�y n�i chuy�n. ")	
end
end


function Direct_CreateTong()
	CreateTong(1)
Msg2SubWorld("Ta ��y l� tr�m bang ch� <color=green>"..GetName().." <color=pink>mu�n th�ng tr� server n�y anh em n�o mu�n theo ta xin m�i v�o bang")				
end

function NhanDenBuSuCo2()
if CalcFreeItemCellCount()<50 then
	Say("H�nh trang kh�ng �� 50 � tr�ng.")
	return
end
	if (GetTask(5998) <=5)then
		for i = 1,9 do local Index = AddGoldItem(0,176+i) ITEM_SetExpiredTime(Index,60*24*14)  SyncItem(Index) SetItemBindState(Index, -2) end --Kim Phong
		SetTask(5998,6)
	else
		Say("��i hi�p �� nh�n th��ng r�i....")
		return
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function NhanDenBuSuCo()
	if (GetTask(5999) <= 5)then
								AddLeadExp(90000000)
			AddRepute(500)
			SetTask(5999,6)
	else
		Say("��i hi�p �� nh�n r�i... ��ng qu� tham lam.")
		return
	end
end

function testitem()
local tbAwardItem = {tbProp={6,1,4348,0,0,0}, nCount = 2}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M� ra v�t ph�m mua � K� Tr�n C�c");		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><S�t th� gi�n><color>");

end

function satthugian1()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,-1)
	if  nCount_muaban >= 4  then
		ConsumeEquiproomItem(4, 4,417, 1,-1)
		local tbAwardItem = {tbProp={6,1,400,90,nSeries,0}, nCount = 2}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M� ra v�t ph�m mua � K� Tr�n C�c");		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><S�t th� gi�n><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>10 Ti�n ��ng <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end

function satthugian()
	if CalcEquiproomItemCount(4,417,1,-1)>=2 then 
		ConsumeEquiproomItem(2,4,417,1,-1);
		local tbAwardItem = {tbProp={6,1,400,90,nSeries,0}, nCount = 1}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M� ra v�t ph�m mua � K� Tr�n C�c");		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><S�t th� gi�n><color>");

		SaveNow();
	else
		Talk(1,"no","<color=red>B�n kh�ng �� ti�n.")	
	end
end

function check_faction()
	local szCurFaction = GetFaction()
	if szCurFaction ~= nil and szCurFaction ~= "" then
		return
	end
	return 1
end
function doimau()

	if check_faction() == 1 then
		Talk(1, "", "��i hi�p ch�a �� gia nh�p m�n ph�i.")
		return 1
	end


	local tbOpt =
	{
		{"Ch�nh ph�i (m�u v�ng)", mauvang},
		{"T� ph�i (m�u t�m)", mautim},
		{"Trung l�p (m�u xanh)", mauxanh},
		{"S�t Th� - M�u �� Xu�t S�", maudo},
		{"Tr� l�i", dialog_main},
	--	{"Tho�t"},
	}
	CreateNewSayEx("<npc>Ch�n m�u", tbOpt)
end
function mauvang()
		SetCurCamp(1)
		SetCamp(1)
		Say("��i m�u PK Ch�nh Ph�i th�nh c�ng.")
	--	Pay(50000)
end
function mautim()
		SetCurCamp(2)
		SetCamp(2)
		Say("��i m�u PK T� Ph�i th�nh c�ng.")
	--	Pay(50000)
end
function mauxanh()
		SetCurCamp(3)
		SetCamp(3)
		Say("��i m�u PK Trung L�p th�nh c�ng.")
	--	Pay(50000)
end
function maudo()
		SetCurCamp(4)
		SetCamp(4)
		Say("��i m�u PK S�t Th� th�nh c�ng.")	
end


function moruong()
	if CalcEquiproomItemCount(4,417,1,-1)>=20 then 
		ConsumeEquiproomItem(20,4,417,1,-1);
		OpenStoreBox(1);
		OpenStoreBox(2);
		OpenStoreBox(3);
		SaveNow();
	else
		Talk(1,"no","<color=red>B�n kh�ng �� ti�n.")	
	end
end

function resetevent()
	local ntask = GetTask(3920)
	if ntask >=1 then 
		Say("Moi nguoi chi reset event duoc 1 lan")
		return
	end
	SetTask(3920,ntask +  1)
	SetTask(4,0)
	SetTask(6,0)
	SetTask(2941,0)
	Say("Reset event thanh cong")

end

function cuahanghoatdong()
local tbSay = {}
	--	tinsert(tbSay,"Mua L�nh b�i d� t�u<20v�n> ./datau")

	--	tinsert(tbSay,"Mua Si�u Quang(200 xu) ./MuaSieuQuang")
	--	tinsert(tbSay,"Mua Phi�n V� (30 xu) ./MuaPhienVu")
		tinsert(tbSay,"Mua L�nh b�i th�y t�c + L�nh b�i Vi S�n ��o<10v�n> ./thuytac")

		tinsert(tbSay,"Mua Long LB PLD<10van>./MuaLenhBaiPLD")
		tinsert(tbSay,"Mua S�t th� gi�n<10v�n>./satthugian_van")
		tinsert(tbSay,"Vi�m �� L�nh./viemdelenhvan")
	--	tinsert(tbSay,"T�i T� M�u./tuitumau")
	--	tinsert(tbSay,"50 �m D��ng Ho�t Huy�t ��n + 50 C�ng K�ch Tr� L�c Ho�n(15 xu)./AmDuongCongKichXu")
		
       	tinsert(tbSay,"Mua Long huy�t ho�n<10van>./longhuyethoan")
       
		--tinsert(tbSay,"Mua Th�n h�nh ph� - Th� ��a ph�./muathptdp")
		--tinsert(tbSay,"Mua c�u ch�u l�nh<10xu hoac 10 van>./cuuchaulenh")
		--tinsert(tbSay,"Mua h�t gi�ng c�y �a<10xu hoac 10 van>./hatgiongcayda")
		--tinsert(tbSay,"Mua ph� qu� c�m h�p<10xu 10 xu hoac 10 van>./phuquycamhap")
		--tinsert(tbSay,"Mua ti�n v�t m�n ph�i<500xu>./tinvatmonphai")
	--	tinsert(tbSay,"Mua ti�n v�t D��ng Anh<500xu>./tinvatduonganh")


		tinsert(tbSay,"Tho�t/no")
		Say(" ��i hi�p c�n ta gi�p v�n �� g� ? ", getn(tbSay), tbSay)


end
function MuaPhienVu()
local tbAward ={
	{szName="Phien Vu",tbProp={0,10,7,10,0,0,0},nCount=1,nExpiredTime=30*24*60},
	--{szName="�m D��ng Ho�t Huy�t ��n",tbProp={6,1,2953,1,0,0},nCount=50},
}
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 30  then
		ConsumeEquiproomItem(30, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 1000")
		Talk(1, "", "Trao ��i th�nh c�ng");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>30 Ti�n ��ng <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end
function MuaSieuQuang()
local tbAward ={
	{szName="SieuQuang",tbProp={0,10,13,10,0,0,0},nCount=1,nExpiredTime=30*24*60},
	--{szName="�m D��ng Ho�t Huy�t ��n",tbProp={6,1,2953,1,0,0},nCount=50},
}
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 200  then
		ConsumeEquiproomItem(200, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 1000")
		Talk(1, "", "Trao ��i th�nh c�ng");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>200 Ti�n ��ng <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end
function MuaHanHuyet()
local tbAward ={
	{szName="Phien Vu",tbProp={0,10,18,10,0,0,0},nCount=1,nExpiredTime=30*24*60},
	--{szName="�m D��ng Ho�t Huy�t ��n",tbProp={6,1,2953,1,0,0},nCount=50},
}
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 200  then
		ConsumeEquiproomItem(200, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 1000")
		Talk(1, "", "Trao ��i th�nh c�ng");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>200 Ti�n ��ng <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end
function MuaLenhBaiPLD()
	local Index = AddItem(4,489,1,1,0,0)	
	Msg2Player("Ch�c M�ng "..myplayersex().." �� OK")
end

function tuitumau()
	local Index = AddItem(6,1,1427,1,0,0)	
	Msg2Player("Ch�c M�ng "..myplayersex().." �� OK")
end

function AmDuongCongKichXu()
local tbAward ={
	{szName="K�ch C�ng Tr� L�c Ho�n",tbProp={6,1,2952,1,0,0},nCount=50},
	{szName="�m D��ng Ho�t Huy�t ��n",tbProp={6,1,2953,1,0,0},nCount=50},
}
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 15  then
		ConsumeEquiproomItem(15, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 1000")
		Talk(1, "", "Trao ��i th�nh c�ng");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>15 Ti�n ��ng <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end
function anhhungthiep()
local tbSay = {}
		tinsert(tbSay,"Mua anh h�ng thi�p 50xu ./anhhungthiepxu")
		tinsert(tbSay,"Mua anh h�ng thi�p 200 van./anhhungthiepvan")
       		


		tinsert(tbSay,"Tho�t/no")
		Say(" ��i hi�p c�n ta gi�p v�n �� g� ? ", getn(tbSay), tbSay)


end


function anhhungthiepxu()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 50  then
		ConsumeEquiproomItem(50, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "anh h�ng thi�p", tbProp ={ 6, 1, 1604, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "anh h�ng thi�p"))
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><anh h�ng thi�p><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>10 Ti�n ��ng <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end



function viemdelenhvan()
	local nCount_muaban = GetCash()
	if  nCount_muaban >= 2000000  then
		Pay(2000000)
		tbAwardTemplet:GiveAwardByList({{szName = "anh h�ng thi�p", tbProp ={ 6, 1, 1604, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "anh h�ng thi�p"))
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><anh h�ng thi�p><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>40 van <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end



function viemdelenh()
local tbSay = {}
		tinsert(tbSay,"Mua Vi�m �� l�nh 10xu ./viemdelenhxu")
		tinsert(tbSay,"Mua vi�m �� l�nh 40 van./viemdelenhvan")
       		


		tinsert(tbSay,"Tho�t/no")
		Say(" ��i hi�p c�n ta gi�p v�n �� g� ? ", getn(tbSay), tbSay)


end


function viemdelenhxu()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 10  then
		ConsumeEquiproomItem(10, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "Vi�m �� l�nh", tbProp ={ 6, 1, 1617, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "Vi�m �� l�nh"))
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><Vi�m �� l�nh><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>10 Ti�n ��ng <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end



function viemdelenhvan()
	local nCount_muaban = GetCash()
	if  nCount_muaban >= 400000  then
		Pay(400000)
		tbAwardTemplet:GiveAwardByList({{szName = "Vi�m �� l�nh", tbProp ={ 6, 1, 1617, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "Vi�m �� l�nh"))
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><Vi�m �� l�nh><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>40 van <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end



function hatgiongcayda()
local tbSay = {}
		tinsert(tbSay,"Mua hat giong cay da 10xu ./hatgiongcaydaxu")
		tinsert(tbSay,"Mua hat giong cay da 10 van./hatgiongcaydavan")
       		


		tinsert(tbSay,"Tho�t/no")
		Say(" ��i hi�p c�n ta gi�p v�n �� g� ? ", getn(tbSay), tbSay)


end


function cuuchaulenh()
local tbSay = {}
		tinsert(tbSay,"Mua cuu chau lenh 10xu ./cuuchaulenhxu")
		tinsert(tbSay,"Mua cuu chau lenh 10 van./cuuchaulenhvan")
       		


		tinsert(tbSay,"Tho�t/no")
		Say(" ��i hi�p c�n ta gi�p v�n �� g� ? ", getn(tbSay), tbSay)


end


function phuquycamhap()
local tbSay = {}
		tinsert(tbSay,"Mua phu quy cam hap 10xu ./phuquycamhapxu")
		tinsert(tbSay,"Mua phu quy cam hap 10 van./phuquycamhapvan")
       		


		tinsert(tbSay,"Tho�t/no")
		Say(" ��i hi�p c�n ta gi�p v�n �� g� ? ", getn(tbSay), tbSay)


end


function phuquycamhapxu()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 10  then
		ConsumeEquiproomItem(10, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "Ph� qu� c�m h�p", tbProp ={ 6, 1, 2402, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "Ph� qu� c�m h�p"))
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><Ph� qu� c�m h�p><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>10 Ti�n ��ng <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end

function phuquycamhapvan()
	local nCount_muaban = GetCash()
	if  nCount_muaban >= 100000  then
		Pay(100000)
		tbAwardTemplet:GiveAwardByList({{szName = "Ph� qu� c�m h�p", tbProp ={ 6, 1, 2402, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "Ph� qu� c�m h�p"))
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><Ph� qu� c�m h�p><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>10 van <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end


function hatgiongcaydaxu()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 10  then
		ConsumeEquiproomItem(10, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "H�t gi�ng c�y �a", tbProp ={ 6, 1, 30157, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "H�t gi�ng c�y �a"))
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><H�t gi�ng c�y �a><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>10 Ti�n ��ng <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end



function hatgiongcaydavan()
	local nCount_muaban = GetCash()
	if  nCount_muaban >= 100000  then
		Pay(100000)
		tbAwardTemplet:GiveAwardByList({{szName = "H�t gi�ng c�y �a", tbProp ={ 6, 1, 30157, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "H�t gi�ng c�y �a"))
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><H�t gi�ng c�y �a><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>10 van <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end



function tinvatmonphai()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 500  then
		ConsumeEquiproomItem(500, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "T�n v�t m�n ph�i", tbProp ={ 6, 1, 1670, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "T�n v�t m�n ph�i"))
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><T�n v�t m�n ph�i><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>500 Ti�n ��ng <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end

function tinvatduonganh()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 500  then
		ConsumeEquiproomItem(500, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "T�n v�t m�n ph�i", tbProp ={ 6, 1, 1671, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "T�n v�t m�n ph�i"))
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><T�n v�t m�n ph�i><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>500 Ti�n ��ng <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end

function cuuchaulenhxu()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 10  then
		ConsumeEquiproomItem(10, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "Cuu chau lenh", tbProp ={ 6, 1, 30117, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "Cuu chau lenh"))
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><Cuu chau lenh><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>10 Ti�n ��ng <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end


end

function cuuchaulenhvan()
	local nCount_muaban = GetCash()
	if  nCount_muaban >= 100000  then
		Pay(100000)
		tbAwardTemplet:GiveAwardByList({{szName = "Cuu chau lenh", tbProp ={ 6, 1, 30117, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "Cuu chau lenh"))
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><Cuu chau lenh><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>10 van <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end


end


function muaevent()

	local nCount_muaban = GetCash()
	if  nCount_muaban >= 500000  then
	--	ConsumeEquiproomItem(4, 4,417, 1,-1)
		Pay(500000)
		tbAwardTemplet:GiveAwardByList({{szName = "Ng�c Gi�m PK", tbProp ={ 6, 1, 30353, 1, 1, 0, 0, 0},  nCount=1}}, format("Get %s", "Cuu chau lenh"))
	--	Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><Thi�n S�n B�o L�><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>50 V�n <color>, c� �� ti�n r�i ��n nh�!", 0)
	end

end

function muathptdp()
local tbSay = {}
		tinsert(tbSay,"Th�n h�n ph� 1 th�ng<300v�n> ./thanhanhphu")
		tinsert(tbSay,"Th� ��a ph� 1 th�ng<300v�n>./thodiaphu")
		tinsert(tbSay,"Th�n h�n ph� 1 tu�n<100v�n> ./thanhanhphu1tuan")
		tinsert(tbSay,"Th� ��a ph� 1 tu�n<100v�n>./thodiaphu1tuan")

       		--tinsert(tbSay,"Mua 1 ch�a kh�a nh�y<20v�n>./event1")
		tinsert(tbSay,"Tho�t/no")
		Say(" ��i hi�p c�n ta gi�p v�n �� g� ? ", getn(tbSay), tbSay)


end


function event50van()
	local nCount_muaban = GetCash()
	if  nCount_muaban >= 5000000  then
		Pay(5000000)
		tbAwardTemplet:GiveAwardByList({{szName = "Hai vi bong lai", tbProp ={ 6, 1, 30129, 1, 0,0}, nRate = 100, nCount=50,nExpiredTime=20180903}}, format("Get %s", "Hai vi bong lai"))
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><50 hai vi bong lai><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>500 van <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end

function event1van()
	local nCount_muaban = GetCash()
	if  nCount_muaban >= 100000  then
		Pay(100000)
		tbAwardTemplet:GiveAwardByList({{szName = "Hai vi", tbProp ={ 6, 1, 30129, 1, 0,0}, nRate = 100, nCount=1,nExpiredTime=20180903}}, format("Get %s", "Hai vi"))
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><1 hai vi><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>10 van <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end


function event50xu()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 250  then
		ConsumeEquiproomItem(250, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "hai vi", tbProp ={6,1,30129,1,0,0}, nRate = 100, nCount=50,nExpiredTime=20180903}}, format("Get %s", "Hai vi"))
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><50 Hai vi><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>250 xu <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end

function event1xu()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 5  then
		ConsumeEquiproomItem(5, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "hai vi", tbProp ={6,1,30129,1,0,0}, nRate = 100, nCount=1,nExpiredTime=20180903}}, format("Get %s", "Hai vi"))
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><50 Hai vi><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>250 xu <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end


function event1()
	local nCount_muaban = GetCash()
	if  nCount_muaban >= 200000  then
		Pay(200000)
		tbAwardTemplet:GiveAwardByList({{szName = "Ch�a kh�a nh� �", tbProp ={ 6, 1, 2744, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "Ch�a kh�a nh�y"))
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><1 ch�a kh�a nh�y><color>");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>20 van <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end


-----------====================-------------


function thanhanhphu()
	local tbItem = 
	{	

		--{szName = "Tho dia phu", tbProp = {6, 1, 438, 1,0,0}, nCount = 1, nExpiredTime=10080},
		{szName = "Than hanh phu", tbProp = {6, 1, 1266, 1,0,0}, nCount = 1, nExpiredTime=43200},

		
	}
	local nCount_muaban = GetCash()

	if  nCount_muaban >= 3000000  then
		Pay(3000000)

		tbAwardTemplet:GiveAwardByList(tbItem, "thp tdp");
	
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>300 van <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end


end

function thanhanhphu1tuan()
	local tbItem = 
	{	

		--{szName = "Tho dia phu", tbProp = {6, 1, 438, 1,0,0}, nCount = 1, nExpiredTime=10080},
		{szName = "Than hanh phu", tbProp = {6, 1, 1266, 1,0,0}, nCount = 1, nExpiredTime=10080},

		
	}
	local nCount_muaban = GetCash()

	if  nCount_muaban >= 1000000  then
		Pay(1000000)

		tbAwardTemplet:GiveAwardByList(tbItem, "thp tdp");
	
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>100 van <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end


end



function thodiaphu()
	local tbItem = 
	{	

		{szName = "Tho dia phu", tbProp = {6, 1, 438, 1,0,0}, nCount = 1, nExpiredTime=43200},
		--{szName = "Than hanh phu", tbProp = {6, 1, 1266, 1,0,0}, nCount = 1, nExpiredTime=10080},

		
	}
	local nCount_muaban = GetCash()

	if  nCount_muaban >= 3000000  then
		Pay(3000000)

		tbAwardTemplet:GiveAwardByList(tbItem, "thp tdp");
	
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>300 van <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end


end

function thodiaphu1tuan()
	local tbItem = 
	{	

		{szName = "Tho dia phu", tbProp = {6, 1, 438, 1,0,0}, nCount = 1, nExpiredTime=10080},
		--{szName = "Than hanh phu", tbProp = {6, 1, 1266, 1,0,0}, nCount = 1, nExpiredTime=10080},

		
	}
	local nCount_muaban = GetCash()

	if  nCount_muaban >= 1000000  then
		Pay(1000000)

		tbAwardTemplet:GiveAwardByList(tbItem, "thp tdp");
	
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>100 van <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end


end








function mokhoa1()
	ResetBox:ConfirmResetBox()
end


function LoadTabFile(szFile)
	if TabFile_Load(szFile, szFile) ~= 1 then
		print(format("%s open fail", szFile))
		return 
	end
	local nRowCount = TabFile_GetRowCount(szFile) - 1
	local tb = {}
	for i=1, nRowCount do
		for j=1, nRowCount do
			local nValue = TabFile_GetCell(szFile, i+1 , j+1)
			tb[i] = tb[i] or {}
			tb[i][j] = nValue
		end
	end
	TabFile_UnLoad(szFile)
	return tb
end


function G7VNAppendFile(url, str)
	local fs_log = openfile(url, "a");
	write(fs_log, ""..str.."");
	closefile(fs_log);
end;
--------------------------------------------code50k-------------------
function server_loadfile(filename)
	if (IniFile_Load(filename,filename) == 0) then 
			File_Create(filename)
			IniFile_Load(filename, filename)
	end
end 
--------------------------------------------code-------------------
tbKandy1 = {}
tbKandy1.szFile1 = "\\dulieu\\checkcode508k.dat"
server_loadfile(tbKandy1.szFile1)

function phanthuongcodenew_50k()

	if GetTask(3902) == 0 then
		AskClientForString("CODELIKESHARE50K","",1,99999999999,"Nh�p GiftCode")
	else
	Talk(1,"","<bclr=violet>"..myplayersex().." �� Nh�n Th��ng R�i Ho�c Kh�ng �� Ch� Tr�ng Kh�ng Th� Nh�n N�a")
	end
end

function CODELIKESHARE50K(nVar)
	local tbAwardgift = {

	{szName="Lam Th�y Tinh", tbProp={4,238,1,1},nCount = 1,nBindState = -2},
		{szName="L�c Th�y Tinh", tbProp={4,239,1,1},nCount = 1,nBindState = -2},
		{szName="T� Th�y Tinh", tbProp={4,240,1,1},nCount = 1,nBindState = -2},
	
		{szName="TTL", tbProp={6,1,71,1,1},nCount = 3,nBindState = -2},
	--	{szName = "Phien Vu", tbProp = {0,10,7,10,0,0,0}, nCount = 1,nExpiredTime=7*60*24,nBindState=-2},	
	--	{szName="Nh�t K� C�n Kh�n Ph�", tbProp={6,1,2126,1,0,0},nCount = 1,nExpiredTime=7*24*60,nBindState = -2},
	--	{szName="vlmt", tbProp={0,3772},nCount = 2,nExpiredTime=7*24*60,nQuality=1,nBindState = -2},
	--	{szName="M�t n� t�ng kim", tbProp={6,1,4443,1,0,0},nCount = 1,nExpiredTime=7*24*60,nBindState = -2},
	--	{szName="R��ng v� kh� hkmp maxx", tbProp={6,1,1946,1,0,0},nCount = 1,nExpiredTime=7*24*60,nBindState = -2},
	--	{szName="V� Danh", tbProp={0,141},nCount = 1,nQuality=1,nBindState = -2},
	--	{szName="V� Danh", tbProp={0,142},nCount = 1,nQuality=1,nBindState = -2},
	--	{szName="M�t N� Chi�n Tr��ng Th�nh Gi�",tbProp={0,11,647,1,0,0},nCount=1,nExpiredTime=7*24*60,nBindState = -2},
	--	{szName="K�ch C�ng Tr� L�c Ho�n", tbProp={6,1,2952,1,0,0},nCount = 50,nExpiredTime=10*24*60,nBindState = -2},
	--	{szName="�m D��ng Ho�t Huy�t ��n", tbProp={6,1,2953,1,0,0},nCount = 50,nExpiredTime=10*24*60,nBindState = -2},		
	--	{szName="Cong Kick", tbProp={6,1,1704,1,0,0},nCount = 15,nExpiredTime=10*24*60,nBindState = -2},		
	--	{szName="�m D��ng", tbProp={6,1,1705,1,0,0},nCount = 15,nExpiredTime=10*24*60,nBindState = -2},		
	--	{szName="mau TK", tbProp={6,1,215,1,0,0},nCount = 2000,nExpiredTime=20*24*60,nBindState = -2},		
	--	{szName="[C�c Ph�m]Nhu T�nh C�n Qu�c Ngh� Th��ng", tbProp={0,416},nQuality=1,nCount = 1,nBindState = -2},		
	--	{szName="Trang S�c", tbProp={0,3505},nQuality=1,nCount = 1,nExpiredTime=30*60*24,nBindState = -2},		
		
	}
	local IsClone = server_getdata(tbKandy1.szFile1,"GIFT_CODE_CHECK",nVar);
	local nillVar = 0
	if IsClone ~= "" then 
		return Say("<bclr=red>M� GIFTCODE Ch� Nh�p T�i �a 1 L�n Vui L�ng Li�n H� GM ��\n���c Gi�i Quy�t<bclr>")
	end
	if CalcFreeItemCellCount() >= 20 then
		for k=1,getn(CodeTanThuGift) do
			if nVar == CodeTanThuGift[k][1] then
			--Msg2Player("---"..GetTask(3902).."----------------------------"); 

			SetTask(3902, 1) 
				tbAwardTemplet:GiveAwardByList(tbAwardgift,"Ph�n Th��ng GiftCode")
				Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> Nh�n Th�nh C�ng GiftCode  LikeShare")
						server_setdata(tbKandy1.szFile1,"GIFT_CODE_CHECK",nVar,"1");	
				server_savedata(tbKandy1.szFile1);
			return
			else 
				nillVar = 0
			end
		end
	else return Say("Kh�ng �� 20 � Tr�ng")
	end
	if nillVar == 0 then
		return Say("M� gift ng��i v�a nh�p v�o kh�ng t�n t�i trong h� th�ng!")
	end;
end;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------code-------------------
tbKandy = {}
tbKandy.szFile = "\\dulieu\\checkcodelikeshare3.dat"
server_loadfile(tbKandy.szFile)
function AdminGame()
	for i = 1,getn(TENADMIN) do
		if GetName() == TENADMIN[i][1] and TENADMIN[i][2] == 99 then
		return 1
		end
	end
end
function ChucNangGM()
player = GetPlayerCount()
if AdminGame() == 1 then
MoChucNangGM()
else
Msg2Player("Ch� C� <color=pink>Ban Qu�n Tr� <color>M�i C� Quy�n S� D�ng Ch�c N�ng N�y")
end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function MoChucNangGM()
	local tbOpt = {
		{"Nh�n L�nh B�i Admin", LBAdmin},
		{"K�t Th�c ��i Tho�i."},
	}
	CreateNewSayEx("<npc>L�o Phu C� M�t S� Man C�c Ph�m, Ng��i C�n M�n N�o", tbOpt)
end
-----------------------------------------------------------------------------------------------------------------------------------
function LBAdmin()
local index = AddItem(6,1,4357,0,0,0,0); SetItemBindState(index,-2)
local index = AddItem(6,1,4358,0,0,0,0); SetItemBindState(index,-2)
Msg2Player("Ch�c M�ng <color=green>��i Hi�p <color> Nh�n ���c <color=yellow>L�nh B�i <color> <color=pink>ADMIN <color>")
end
function phanthuongcodenew()

if GetTask(3901) <= 1  then
		AskClientForString("CODELIKESHARE","",1,99999999999,"Nh�p GiftCode")
	else
	Talk(1,"","<bclr=violet>"..myplayersex().." �� Nh�n Th��ng R�i Ho�c Kh�ng �� Ch� Tr�ng Kh�ng Th� Nh�n N�a")
	end
end
function nhanquatanthu()
if CalcFreeItemCellCount()<5 then
	Say("H�nh trang c�n c� 5 � tr�ng.")
	return
end
		if GetTask(3901)>=1 then
			Say("M�i nh�n v�t ch� ���c nh�n 1 l�n duy nh�t.")
			return
		else
				local tbAwardgift = {
	--	{szName="M�t N� Chi�n Tr��ng Th�nh Gi�",tbProp={0,11,647,1,0,0},nCount=1,nExpiredTime=30*24*60,nBindState = -2},
		{szName="Ti�n Th�o L� ", tbProp={6,1,1181,1,0,0},nCount = 2,nBindState = -2},
		{szName="B� K�p 8x", tbProp={6,1,2426,1,0,0},nCount = 1,nBindState = -2},
	--	{szName="Ng�a 6x", tbProp={0,10,2,9,0,0,0},nCount = 1,nBindState = -2},
	--	{szName="Chuy�n d�ng cho Phong V�n H�a ph�ng ho�n", tbProp={6,1,194,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
--		{szName="mau tk", tbProp={6,1,215,1,0,0},nCount = 2000,nBindState = -2},
--	{szName="K�ch C�ng Tr� L�c Ho�n", tbProp={6,1,2952,1,0,0},nCount = 50,nExpiredTime=3*24*60,nBindState = -2},
	--	{szName="�m D��ng Ho�t Huy�t ��n", tbProp={6,1,2953,1,0,0},nCount = 50,nExpiredTime=3*24*60,nBindState = -2},			
	}
	tbAwardTemplet:GiveAwardByList(tbAwardgift,"Ph�n Th��ng")
			SetTask(3901,1)
		end
end
function CODELIKESHARE(nVar)
if (CountFreeRoomByWH(5,8,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 5x8 � tr�ng");
		return 1;
	end
	
	local tbAwardgift = {


	--	{szName="M�t N� Chi�n Tr��ng Th�nh Gi�",tbProp={0,11,647,1,0,0},nCount=1,nExpiredTime=30*24*60,nBindState = -2},
		{szName="Ti�n Th�o L� ", tbProp={6,1,1181,1,0,0},nCount = 2,nBindState = -2},
		{szName="c�m nang t�n th� ", tbProp={6,1,2426,1,0,0},nCount = 1,nBindState = -2},
	--	{szName="Ng�a 6x", tbProp={0,10,2,9,0,0,0},nCount = 1,nBindState = -2},
	--	{szName="Chuy�n d�ng cho Phong V�n H�a ph�ng ho�n", tbProp={6,1,194,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
--		{szName="mau tk", tbProp={6,1,215,1,0,0},nCount = 2000,nBindState = -2},
--	{szName="K�ch C�ng Tr� L�c Ho�n", tbProp={6,1,2952,1,0,0},nCount = 50,nExpiredTime=3*24*60,nBindState = -2},
	--	{szName="�m D��ng Ho�t Huy�t ��n", tbProp={6,1,2953,1,0,0},nCount = 50,nExpiredTime=3*24*60,nBindState = -2},			
	}

	if CalcFreeItemCellCount()>=50 then
		if nVar == "volamctcxua" or nVar == "VOLAMCTCXUA" then
			--Msg2Player("---"..GetTask(3902).."----------------------------");
					Earn(5000)

				SetTask(3901, 2) 
PlayerFunLib:AddSkillState(1512,20,3,18*60*60*24*1,2)
for i = 1,9 do local Index = AddGoldItem(0,176+i)  SyncItem(Index) SetItemBindState(Index, -2) end --Kim Phong
				tbAwardTemplet:GiveAwardByList(tbAwardgift,"Ph�n Th��ng GiftCode")
				Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> nh�n th�nh c�ng GiftCode T�n Th�")
			--	server_setdata(tbKandy.szFile,"GIFT_CODE_CHECK",nVar,"1");	
			--	server_savedata(tbKandy.szFile);
			return
			else 
				nillVar = 0
			end
	else
		Say("H�nh trang kh�ng �� 50 � tr�ng")
		return
	end
	local IsClone = server_getdata(tbKandy.szFile,"GIFT_CODE_CHECK",nVar);
	local nillVar = 0
	if IsClone ~= "" then 
		return Say("<bclr=red>M� GIFTCODE Ch� Nh�p T�i �a 1 L�n Vui L�ng Li�n H� GM ��\n���c Gi�i Quy�t<bclr>")
	end
	
	if CalcFreeItemCellCount() >= 30 then
		
		for k=1,getn(CodeLikeShared) do
			if nVar == CodeLikeShared[k][1] then
			--Msg2Player("---"..GetTask(3902).."----------------------------"); 

				SetTask(3901, 3) 

				tbAwardTemplet:GiveAwardByList(tbAwardgift,"Ph�n Th��ng GiftCode")
				Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> Nh�n Th�nh C�ng GiftCode LikeShare 2")
				server_setdata(tbKandy.szFile,"GIFT_CODE_CHECK",nVar,"1");	
				server_savedata(tbKandy.szFile);
			return
			else 
				nillVar = 0
			end
		end
	else return Say("Kh�ng �� 30 � Tr�ng")
	end
	if nillVar == 0 then
		return Say("M� gift ng��i v�a nh�p v�o kh�ng t�n t�i trong h� th�ng!")
	end;
end;


function phanthuongcodenew2()

if GetTask(3902) <= 1  then
		AskClientForString("CODELIKESHARE2","",1,99999999999,"Nh�p GiftCode")
	else
	Talk(1,"","<bclr=violet>"..myplayersex().." �� Nh�n Th��ng R�i Ho�c Kh�ng �� Ch� Tr�ng Kh�ng Th� Nh�n N�a")
	end
end

function CODELIKESHARE2(nVar)
if (CountFreeRoomByWH(5,8,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 5x8 � tr�ng");
		return 1;
	end
	
	local tbAwardgift = {


	--	{szName="M�t N� Chi�n Tr��ng Th�nh Gi�",tbProp={0,11,647,1,0,0},nCount=1,nExpiredTime=30*24*60,nBindState = -2},
--		{szName="V� Kh� T�n Th�", tbProp={6,1,4460,1,0,0},nCount = 1,nBindState = -2},
--		{szName="V� L�m M�t T�ch", tbProp={6,1,26,1,0,0},nCount = 1,nBindState = -2},
		{szName="Thi�n S�n ", tbProp={6,1,72,1,0,0},nCount = 5,nBindState = -2},
		{szName="Qu� Hoa", tbProp={6,1,125,1,0,0},nCount = 1,nBindState = -2},
{szName="Ti�n Th�o l� ", tbProp={6,1,71,1,0,0},nCount = 5,nBindState = -2},
{szName="Ti�n Th�o l� ", tbProp={6,1,1181,1,0,0},nCount = 1,nBindState = -2},
--{szName="Ti�n Th�o l� ", tbProp={6,1,4407,1,0,0},nCount = 10,nBindState = -2},
{szName="Ti�n Th�o l� ", tbProp={6,1,2514,1,0,0},nCount = 1,nBindState = -2},
	--	{szName="Chuy�n d�ng cho Phong V�n H�a ph�ng ho�n", tbProp={6,1,194,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
--		{szName="mau tk", tbProp={6,1,215,1,0,0},nCount = 2000,nBindState = -2},
--	{szName="K�ch C�ng Tr� L�c Ho�n", tbProp={6,1,2952,1,0,0},nCount = 50,nExpiredTime=3*24*60,nBindState = -2},
	--	{szName="�m D��ng Ho�t Huy�t ��n", tbProp={6,1,2953,1,0,0},nCount = 50,nExpiredTime=3*24*60,nBindState = -2},			
	}

	if CalcFreeItemCellCount()>=50 then
		if nVar == "ctcxua2022"  then
			--Msg2Player("---"..GetTask(3902).."----------------------------");
					Earn(5000)

				SetTask(3902, 2) 
				tbAwardTemplet:GiveAwardByList(tbAwardgift,"Ph�n Th��ng GiftCode")
				Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> nh�n th�nh c�ng GiftCode T�n Th�")
			--	server_setdata(tbKandy.szFile,"GIFT_CODE_CHECK",nVar,"1");	
			--	server_savedata(tbKandy.szFile);
			return
			else 
				nillVar = 0
			end
	else
		Say("H�nh trang kh�ng �� 50 � tr�ng")
		return
	end
	local IsClone = server_getdata(tbKandy.szFile,"GIFT_CODE_CHECK",nVar);
	local nillVar = 0
	if IsClone ~= "" then 
		return Say("<bclr=red>M� GIFTCODE Ch� Nh�p T�i �a 1 L�n Vui L�ng Li�n H� GM ��\n���c Gi�i Quy�t<bclr>")
	end
	
	if CalcFreeItemCellCount() >= 30 then
		
		for k=1,getn(CodeLikeShared) do
			if nVar == CodeLikeShared[k][1] then
			--Msg2Player("---"..GetTask(3902).."----------------------------"); 

				SetTask(3901, 3) 

				tbAwardTemplet:GiveAwardByList(tbAwardgift,"Ph�n Th��ng GiftCode")
				Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> Nh�n Th�nh C�ng GiftCode LikeShare 2")
				server_setdata(tbKandy.szFile,"GIFT_CODE_CHECK",nVar,"1");	
				server_savedata(tbKandy.szFile);
			return
			else 
				nillVar = 0
			end
		end
	else return Say("Kh�ng �� 30 � Tr�ng")
	end
	if nillVar == 0 then
		return Say("M� gift ng��i v�a nh�p v�o kh�ng t�n t�i trong h� th�ng!")
	end;
end;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------code-------------------

CodeTanThuGift_chung = {
 {'J64RVOGDEP',1},
 {'XGR42FAR13',1},
 {'AQGI3NAHJH',1},
 {'6DNBI66248',1},
 {'RI4HWGOD1S',1},
 {'ACR0BZCXKQ',1},
 {'Q6O1SUPV5T',1},
 {'KMIBUF7VFY',1},
 {'BYEKHKV8RA',1},
 {'39HW3UI0H3',1},
{'XZ8HHDUBWE',1},
 {'IHNQMUIMGI',1},
 {'V1LPN850CV',1},
 {'IH6936KGIR',1},
 {'I4QBB7569Q',1},
 {'1APVRYJK2X',1},
 {'EKVHQBI3FG',1},
 {'L6DQ18A5BU',1},
 {'YS2SOY53B7',1},
 {'04I6IJMCWD',1},
 {'kyucvolam',1},
}
function QuaTanThuongHangNgay()

	if GetTask(3028) == 0 then
		AskClientForString("CODECHECKLQ","",1,99999999999,"Nh�p GiftCode")
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� Nh�n Th��ng R�i Ho�c Kh�ng �� Ch� Tr�ng Kh�ng Th� Nh�n N�a")
	end
end
function CODECHECKLQ(nVar)
	local tbAwardgift = {

	--	{szName = "Vo lam mat tich", tbProp = {6,1,22,1,0,0}, nCount = 5, nBindState = -2},
--	{szName = "Tay tuy kinh", tbProp = {6,1,26,1,0,0}, nCount = 5, nBindState = -2},
	--	{szName = "Ngua Phien Vu", tbProp = {0,10,13,10,0,0,0}, nCount = 1, nBindState = -2,nExpiredTime=60*24*5},
	--	{szName="An bang",tbProp={0,424},nCount=1,nQuality=1,nBindState = -2},
	--	{szName="An bang",tbProp={0,425},nCount=1,nQuality=1,nBindState = -2},
	--	{szName="An bang",tbProp={0,426},nCount=1,nQuality=1,nBindState = -2},
	--	{szName="An bang",tbProp={0,427},nCount=1,nQuality=1,nBindState = -2},
{szName="B�o r��ng HKMP 5 Ng�y", tbProp={6,1,4437,1,0,0},nCount = 1, nBindState = -2,nExpiredTime=60*24*5},

	}
	local IsClone = server_getdata(tbKandy.szFile,"GIFT_CODE_CHECK",nVar);
	local nillVar = 0
	if IsClone ~= "" then 
	return Say("<bclr=red>M� GIFTCODE Ch� Nh�p T�i �a 1 L�n Vui L�ng Li�n H� GM ��\n���c Gi�i Quy�t<bclr>")
	end
	if CalcFreeItemCellCount() >= 5  then
		for k=1,getn(CodeTanThuGift_chung) do
			if nVar == CodeTanThuGift_chung[k][1] then

				SetTask(3028, 1) 

				tbAwardTemplet:GiveAwardByList(tbAwardgift,"Ph�n Th��ng GiftCode")
				--local Index = AddItem(0,10,7,10,0,0,0)  ITEM_SetExpiredTime(Index,60*24) SyncItem(Index)
				Msg2Player("Nh�n Th��ng <color=yellow>GIFTCODE M�ng Xu�n<color> Th�nh C�ng")
				--Msg2SubWorld("<color=green>Ch�c m�ng ��i Hi�p <color=red>"..GetName().."<color> �� nh�n th�nh c�ng <color=cyan>GiftCode M�ng Xu�n")
				server_setdata(tbKandy.szFile,"GIFT_CODE_CHECK",nVar,"1");	
				server_savedata(tbKandy.szFile);
			return
			else 
				nillVar = 0
			end
		end
	else return Say("Kh�ng �� 5 � Tr�ng")
	end
	if nillVar == 0 then
		return Say("M� gift ng��i v�a nh�p v�o kh�ng t�n t�i trong h� th�ng!")
	end;
end;
--------------------------------------------code-------------------
function server_setdata(filename,szsect,szkey,szvalue)
	IniFile_SetData(filename, szsect, szkey, szvalue)	
end

function server_getdata(filename,szsect,szkey)
	return IniFile_GetData(filename, szsect, szkey)
end

function server_savedata(filename)
	IniFile_Save(filename,filename)
end


function datau()
	local tbItem = 
	{	

		{szName = "da tau", tbProp = {6, 1, 4336, 1,0,0}, nCount = 1},
		--{szName = "Than hanh phu", tbProp = {6, 1, 1266, 1,0,0}, nCount = 1, nExpiredTime=10080},

		
	}
	local nCount_muaban = GetCash()

	if  nCount_muaban >= 200000  then
		Pay(200000)

		tbAwardTemplet:GiveAwardByList(tbItem, "da tau");
	
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>20 van <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end


end


function thuytac()
	local tbItem = 
	{	

		{szName = "da tau", tbProp = {6, 1, 2745, 1,0,0}, nCount = 1},
		{szName = "L�nh b�i Vi S�n ��o", tbProp = {6, 1, 2432, 1,0,0}, nCount = 1, nExpiredTime=10080},

		
	}
	local nCount_muaban = GetCash()

	if  nCount_muaban >= 100000  then
		Pay(100000)

		tbAwardTemplet:GiveAwardByList(tbItem, "thuy tac");
	
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>10 van <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end


end

function satthugian_van()
	local tbItem = 
	{	

		{szName = "satthugian", tbProp = {6, 1, 400, 90,random(0,4),0}, nCount = 1},
		--{szName = "Than hanh phu", tbProp = {6, 1, 1266, 1,0,0}, nCount = 1, nExpiredTime=10080},

		
	}
	local nCount_muaban = GetCash()

	if  nCount_muaban >= 100000  then
		Pay(100000)

		tbAwardTemplet:GiveAwardByList(tbItem, "satthugian");
	
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>10 van <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end


end

function longhuyethoan()
	local tbItem = 
	{	

		{szName = "longhuyethoan", tbProp = {6, 1, 2117, 1,0,0}, nCount = 1},
		--{szName = "Than hanh phu", tbProp = {6, 1, 1266, 1,0,0}, nCount = 1, nExpiredTime=10080},

		
	}
	local nCount_muaban = GetCash()

	if  nCount_muaban >= 100000  then
		Pay(100000)

		tbAwardTemplet:GiveAwardByList(tbItem, "longhuyethoan");
	
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>10 van <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end


end

