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
	local szTitle = "<npc><color=gold> GM_"..GetName().." <color>chµo mõng b¹n ®Õn víi hÖ thèng <color=yellow>Vâ L©m TruyÒn Kú<color> - <color=green>CTC<color> 8 Acc / 1 PC -- 16 Acc / 1 IP\n"
	local Opt = 
	{	
		
		--{"Mua s¸t thñ gi¶n", satthugian},
		--{"Mua Viªm §Õ lÖnh", testitem},
		
		{"NhËn Quµ Hç Trî", nhanquatanthu},
	--	{"Code LikeShare", phanthuongcodenew2},
--		{"Mua 50 Phi Tèc + 50 LÖnh Bµi + 50 ChiÕn Cæ (50 Xu).", MuaChienCo50 },
--		{"Hñy VËt PhÈm Khãa", huyVPkhoa},
	--	{"Shop TiÒn V¹n", ShowTopThiep},
	
	{"NhËn Th­ëng §Òn Bï 50 TriÖu EXP",nhanthuongonline},
		{"NhËn Bé Kim Phong 14 Ngµy",NhanDenBuSuCo2},
		{"NhËn Tµi L·nh §¹o + 500 Danh Väng",NhanDenBuSuCo},
	--	{"NhËn ThÇn Hµnh Phï + Thæ §Þa Phï",lenhbaitanthu},
	
	--	{"§æi Ngäc BÝch --> 10.000.000 Exp skill 120", doingocbich},
--	{"§æi 15 M¶nh TÈy Tñy Kinh --> 1 Cuèn TÈy Tñy Kinh", doitaytuykinh},
--	{"§æi 15 M¶nh Vâ L©m MËt TÞch --> 1 Cuèn Vâ L©m MËt TÞch", doivolammattich},
	--	{"Code LikeShare", phanthuongcodenew_50k},
	--	{"Mua Vßng S¸ng Phôc Håi Sinh Lùc + Néi Lùc (60 Xu - 7 Ngµy)", muavongsang1},
--		{"NhËn vßng s¸ng t©n thñ.", nhanvongsang},
		{"§æi Mµu Nh©n VËt", doimau},
--		{"Thuª Bé Trang BÞ May M¾n. (100Xu - 1 Ngµy)", thuedomayman},
	--	{"Khãa VËt PhÈm",KhoaVatPham},
--		{"Mua Ngäc Gi¶m PK (50 v¹n)", muaevent},
	--	--{"LÖnh bµi ho¹t ®éng", cuahanghoatdong},
	--	{"ChuyÓn giíi tÝnh (100 xu)", chuyen_gt},
		{"Më Réng R­¬ng", morongruong},
		{"Häc khinh c«ng ( Free)", hockhinhcong},
	--	{"Gi¶m ®iÓm PK (20 xu)", sachgiampk},
	--	{"Mua ThÇn Hµnh Phï h¹n 30 Ngµy (20xu)", muatinvatmonphai},
	--	{"Tr¶ NhiÖm Vô H»ng Ngµy", nhiemvuhangngay},
		--{"NhËn Hç trî 500 danh väng", denbu3},
		--{"XuÊt S­", doimau},

		--{"NhËn ®Ìn bï 50tr EXP céng dån<lÇn 2>", denbu2},

		--{"NhËn ®Ìn bï 50tr EXP céng dån", denbu1},

		--{"NhËn Tiªn th¶o lé tan thu", denbu},
	--	{"NhËp CODE Mõng Xu©n .", QuaTanThuongHangNgay},

		
		
		
		--{"Tin Vat Mon Phai ", tinvatmonphai},
		{"Më Khãa §å §Ýnh Nhanh (100 Xu)", MoKhoaDinh},
	--	{"NhËn ®iÓm Danh Väng ", nhandiemdanhvong},
	--	{"Më réng 4 r­¬ng (20 xu) ", moruong},
	--	{"LËp Bang Héi.", dmcreattongtest_c},
		--{"Gift Combo cho mem n¹p 100k trë lªn",QuaTanThuongHangNgay},
--	{"Xãa Pass r­¬ng ", mokhoa1},
		{"KÕt thóc ®èi tho¹i. ", End}
	}
	local nHour = tonumber(GetLocalDate("%Y%m%d%H%M"))
	if nHour<202104251800 then
	--	tinsert(Opt, 2, {"Code LikeShare", codechungmoi}) 
	end
	local szAccount = GetAccount()
	for i=1, getn(%tbGMAccount) do
		if szAccount == %tbGMAccount[i] then
		tinsert(Opt, 1, {"Chøc N¨ng Qu¶n Lý GM", ChucNangGM}) 
		--	tinsert(Opt, 1, {"Do Test", testcodeadmin}) 
		--	tinsert(Opt, 1, {"LayTienDongtesst", LayTienDOngtest}) 
			break
		end
	end
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure == TONG_MASTER) then
--	tinsert(Opt, 1, {"NhËn §iÓm KiÕn ThiÕt", kienthiet}) 
--	tinsert(Opt, 1, {"Göi Ng©n Quü Bang", nganquyban}) 
	end;
	CreateNewSayEx(szTitle,Opt)
end
function hockhinhcong()
		AddMagic(210,1)
		Msg2Player("Chóc mõng ®¹i hiÖp ®· häc Khinh C«ng.")
end
function MuaChienCo50()
if CalcFreeItemCellCount() < 5 then
		return Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang")
end
if CalcEquiproomItemCount(4,417,1,1)<50 then
	Say("Hµnh trang kh«ng ®ñ 50 Xu.")
	return
end
ConsumeEquiproomItem(50,4,417,1,1)
local tbAwardcc={
{szName="ChiÕn cæ ", tbProp={6,1,156,1,0,0},nCount = 50},
{szName="LÖnh bµi", tbProp={6,1,157,1,0,0},nCount = 50},
{szName="Phong V©n Phi Tèc hoµn", tbProp={6,1,190,1,0,0},nCount = 50},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "PhÇn Th­ëng");
end
function testcodeadmin()
local lamthuytinh = CalcEquiproomItemCount(4,238,1,1)
local tuthuytinh = CalcEquiproomItemCount(4,239,1,1)
local lucthuytinh = CalcEquiproomItemCount(4,240,1,1)
local tylethanhcong= (lamthuytinh*5)+(lucthuytinh*5)+(tuthuytinh*5)+50
	GiveItemUI("Trang BÞ", "Bá Vò KhÝ Xanh Vµo, Nguyªn LiÖu §Ó Ngoµi Hµnh Trang\n Nguyªn LiÖu: \n- Ho¸n Binh Phï (50% Tû LÖ) \n- 1 Kim Tª\n- 1 ThÇn BÝ Kho¸ng Th¹ch\n- Thñy Tinh (1 Viªn + 5% Tû lÖ)\n Tû LÖ Thµnh C«ng: "..tylethanhcong.." %", "testcodeadmin_ok", "no", 1)
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
		Talk(1,"", "Trang bÞ ®ang trong tr¹ng th¸i khãa, kh«ng thÓ Ðp")
		return
	end
	
        if  timeitem > 0	then
		Talk(1,"", "Trang bÞ ®ang cã h¹n sö dông, kh«ng thÓ Ðp")
		return
		end	
		if nG == 4 or nG == 6 then
			Say("ng­¬i ®Æt c¸i g× vµo thÕ nµy ",0);
			return
		end
		if nQuality ~= 0 then
					Say("chØ ®Æt vµo trang bÞ xanh",0);
			return
		end
		if nDetailType ~= 0 and nDetailType  ~= 1 then
				Say("chØ ®Æt vµo vò khÝ",0);
			return
		end

	local nDetailTypeR = random(0,1)
		local nParticularR = random(0,5)
				if 	nDetailTypeR == nDetailType and nParticularR == nParticular then
			Say("LÇn ho¸n ®æi nµy thÊt b¹i mÊt hÕt nguyªn liÖu xin ®õng n¶n chÝ..",0)
			return
		end
		if 	nDetailTypeR == 1 and nParticularR > 2  then
		Say("LÇn ho¸n ®æi nµy thÊt b¹i mÊt hÕt nguyªn liÖu xin ®õng n¶n chÝ..",0)
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
		local szNews = format("Chóc mõng   <color=green>"..GetName().."<color> ho¸n ®æi trang bÞ xanh<color=cyan> "..nTen.."<color> thµnh c«ng.")
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
		else
				ConsumeEquiproomItem(lamthuytinh,4,238,1,1)
		ConsumeEquiproomItem(tuthuytinh,4,239,1,1)
		ConsumeEquiproomItem(lucthuytinh,4,240,1,1)
		ConsumeEquiproomItem(1,4,979,1,1)
		ConsumeEquiproomItem(1,6,1,398,-1)
		ConsumeEquiproomItem(1,6,1,30354,-1)
	local szNews = format("Chi buån cïng   <color=green>"..GetName().."<color> ho¸n ®æi trang bÞ xanh<color=cyan> "..nTen.."<color> thÊt b¹i.")
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
		end
	else
		Say("Hµnh trang kh«ng ®ñ nguyªn liÖu.")
		return
	end
end
function muavongsang()
local szTitle = "<npc><color=gold>"..GetName().." <color>Vui Lßng Lùa Chän Chøc n¨ng."
	local Opt = 
	{	
	{"Mua Vßng Phôc Håi 40 Néi Lùc + X3 Kinh NghiÖm h¹n 2 Ngµy (100 V¹n)", muavongsang1},
{"Mua Vßng Phôc Håi 40 Néi Lùc + X3 Kinh NghiÖm h¹n 7 Ngµy (300 V¹n)", muavongsang2},
		{"KÕt thóc ®èi tho¹i. ", End}
	}

	CreateNewSayEx(szTitle,Opt)
end
function doitaytuykinh()
	if CalcEquiproomItemCount(4,1643,1,1)>=15 then
		ConsumeEquiproomItem(15,4,1643,1,1)
		local tbAward= {
	{szName="TÈy Tñy Kinh",tbProp={6,1,22,1,0,0},nCount=1},	
	}
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn th­ëng")	
	else
		Say("Hµnh trang kh«ng ®ñ 15 m¶nh TÈy Tñy Kinh")
		return
	end
end
function doivolammattich()
	if CalcEquiproomItemCount(4,1644,1,1)>=15 then
		ConsumeEquiproomItem(15,4,1644,1,1)
		local tbAward= {
	{szName="Vâ L©m MËt TÞch",tbProp={6,1,26,1,0,0},nCount=1},	
	}
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn th­ëng")	
	else
		Say("Hµnh trang kh«ng ®ñ 15 m¶nh Vâ L©m MËt TÞch")
		return
	end
end
function muavongsang1()
if GetLevel()<80 then
	Say("CÊp 80 trë lªn míi mua ®­îc vßng s¸ng nµy.")
	return
end
	if GetSkillState(1688)>=1 then
		--RemoveSkillState(1512,20,3,559872000,1) 
		Say("Trªn ng­êi ®¹i hiÖp ®· cã hiÖu øng vßng s¸ng nµy, kh«ng thÓ mua thªm.")
	return
	end

	if CalcEquiproomItemCount(4,417,1,1)>=60 then
		ConsumeEquiproomItem(60,4,417,1,1)
		local ntime = 18*60*60*24*7
	--PlayerFunLib:AddSkillState(1686,20,3,ntime,1)
	PlayerFunLib:AddSkillState(1688,20,3,ntime,1)
	else
		Say("Hµnh trang kh«ng ®ñ  60 Xu.")
		return
	end
end
function muavongsang2()
if GetLevel()<100 then
	Say("CÊp 100 trë lªn míi mua ®­îc vßng s¸ng nµy.")
	return
end
	if GetCash()>=3000000 then
	Pay(3000000)
		local ntime = 18*60*60*24*7
	PlayerFunLib:AddSkillState(1686,20,3,ntime,1)
	PlayerFunLib:AddSkillState(1687,20,3,ntime,1)
	else
		Say("Hµnh trang kh«ng ®ñ 300 V¹n L­îng.")
		return
	end
end

function morongruong()
local szTitle = "<npc><color=gold>"..GetName().." <color>Vui Lßng Lùa Chän Chøc n¨ng."
	local Opt = 
	{	
	{"Më réng r­¬ng 1 (50 xu)", moruong1},
	{"Më réng r­¬ng 2 (50 xu)", moruong2},
	{"Më réng r­¬ng 3 (50 xu)", moruong3},
		{"KÕt thóc ®èi tho¹i. ", End}
	}

	CreateNewSayEx(szTitle,Opt)
end
function npcchat_npcmacdinh1()
local nNpcIndex = GetLastDiagNpc();
local nTaskChat = GetNpcParam(nNpcIndex,1);
if nTaskChat == 0 then 
SetNpcParam(nNpcIndex,1,1); --set index ®Çu tiªn cña table npc chat.
SetNpcTimer(nNpcIndex,5000); --Tuú chØnh thêi gian npc tù chat (20 s)
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
--Msg2SubWorld("<color=yellow>21h00 B¶o Tr× SV 5 Phót Nha Anh Em, Mong Anh Em Th«ng C¶m.<color>")
--Msg2SubWorld(tbChat[nTaskChat])
--NpcChat(nNpcIndex,tbChat[nTaskChat],1);
SetNpcParam(nNpcIndex,1,nTaskChat)
SetNpcTimer(nNpcIndex,5000);
end
function huyVPkhoa()

	Say("§¹i hiÖp: Ng­¬i cÇn g× ë ta?." ,3,"Phi shop mét mãn ®å! /banshop","Hñy bá mét mãn ®å! /Huydeltem","§Ó ta suy nghÜ l¹i. /0")
end
function nhanthuongonline()
	if GetTask(3902)<=1 then
				local tbAward= {
--	{szName="Tói Nguyªn LiÖu",tbProp={6,1,4485,1,0,0},nCount=300},	
	{szName="§iÓm Kinh NghiÖm",nExp_tl = 50e6},
	}
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn th­ëng")	
	SetTask(3902,2)
else
	Say("NhËn th­ëng chØ nhËn ®­îc 1 lÇn.")
	return
end
end

function banshop()
Sale(149)
end;
function Huydeltem()
	if (GetBoxLockState() ~= 0) then
		Say("Xin më khãa r­¬ng tr­íc !", 0)
		return
	end
GiveItemUI("Hñy VËt PhÈm Khãa", " §¹i hiÖp cÇn hñy g× xin ®Æt vµo « d­íi ®©y! Cã thÓ hñy nhiÒu vËt phÈm cïng lóc", "DisposeConfirm", "onCancel", 1);
end

function DisposeConfirm(nCount)
for i=1, nCount do
local nItemIndex = GetGiveItemUnit(i)
local strItem = GetItemName(nItemIndex)
RemoveItemByIndex(nItemIndex)
end
Msg2Player("Thao t¸c b¸n vËt phÈm thµnh c«ng")
Talk(1, "", "<color=green> Chóc mïng §¹i HiÖp ®· hñy vËt phÈm khãa thµnh c«ng!"); 
end
function lenhbaitanthu()
	if CalcFreeItemCellCount()<5 then
		Say("Hµnh trang kh«ng ®ñ 5 « trèng.")
		return
	end
	local Index = AddItem(6,1,1266,1,0,0) SetItemBindState(Index, -2)
	local Index = AddItem(6,1,438,1,0,0) SetItemBindState(Index, -2)
end
function thuedomayman()
	if CalcFreeItemCellCount()<20 then
		Say("Hµnh trang kh«ng ®ñ 20 « trèng")
		return
	end
	if CalcEquiproomItemCount(4,417,1,1)>=100 then
		ConsumeEquiproomItem(100,4,417,1,1)
			local tbAward= {
	{szName="§éng S¸t",tbProp={0,6251},nCount=1,nQuality=1,nExpiredTime=24*60},
	{szName="§éng S¸t",tbProp={0,6252},nCount=1,nQuality=1,nExpiredTime=24*60},
	{szName="§éng S¸t",tbProp={0,6253},nCount=1,nQuality=1,nExpiredTime=24*60},
	{szName="§éng S¸t",tbProp={0,6254},nCount=1,nQuality=1,nExpiredTime=24*60},
	}
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn th­ëng")	
	else
		Say("Hµnh trang kh«ng ®ñ 100 Xu")
		return
	end
end
function doingocbich()
	if CalcEquiproomItemCount(6,1,30350,-1)>=1 then
		Add120SkillExp(10000000)
	Clear120SkillExpLimit ()
	ConsumeEquiproomItem(1, 6,1, 30350,-1)
	else
		Say("Hµnh trang kh«ng cã viªn ngäc bÝch nµo.")
		return
	end
end
function nganquyban()
	AskClientForNumber("nganquyban_ok", 1, 2000000000, "NhËp sè l­îng")
end
function nhanmautanthu()
	if GetLevel()<80 then
		PlayerFunLib:AddSkillState(1680,20,3,7*60*60*18,1)
		Msg2Player("NhËn vßng s¸ng t©n thñ thµnh c«ng")
	else
		Say("ChØ hç trî vßng s¸ng ®Õn cÊp 79.")
		return
	end
end
function nganquyban_ok(nNum)
	local sltien = GetCash()
	local nAdd = 10000000
	local szMember = GetName()
	local _, nTongID = GetTongName()
	if(sltien < nNum) then
		Say("§¹i hiÖp kh«ng mang ®ñ: "..nNum.." l­îng")
		return
		end
	szMsg = szMember.." ®· ®ãng gãp "..nNum.." l­îng vµo ng©n quü bang héi"
	Msg2Tong(nTongID, szMsg)
	TONG_ApplyAddMoney(nTongID, nNum)
	Pay(nNum)
end

function kienthiet()
		local nBuildFund = 10000000
	local _, nTongID = GetTongName()
	if(nTongID == 0) then
		Msg2Player("Ch­a gia nhËp bang héi, kh«ng thÓ sö dông ®¹o cô nµy.");
		return 1
	end
	local figure = TONGM_GetFigure(nTongID, GetName())

	if (figure == TONG_MASTER)then
		TONG_ApplyAddBuildFund(nTongID,nBuildFund)
		Msg2Player(format("N¹p thµnh c«ng %d ®iÓm KiÕn thiÕt", nBuildFund))
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
		Talk(1,"no","<color=red>B¹n kh«ng ®ñ tiÒn.")	
	end
end
function moruong2()
	if CalcEquiproomItemCount(4,417,1,-1)>=50 then 
		ConsumeEquiproomItem(50,4,417,1,-1);
		OpenStoreBox(2);
		SaveNow();
	else
		Talk(1,"no","<color=red>B¹n kh«ng ®ñ tiÒn.")	
	end
end
function moruong3()
	if CalcEquiproomItemCount(4,417,1,-1)>=50 then 
		ConsumeEquiproomItem(50,4,417,1,-1);
		OpenStoreBox(3);
		SaveNow();
	else
		Talk(1,"no","<color=red>B¹n kh«ng ®ñ tiÒn.")	
	end
end
function nhanvongsang()
	if GetLevel()>=80 then
		Say("ChØ nhËn ®­îc ®Õn cÊp 79")
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
	Say("Hµnh trang kh«ng ®ñ 5 « trèng.")
	return
end
if CalcEquiproomItemCount(4,417,1,1)<20 then
	Say("Hµnh trang kh«ng cã ®ñ 20 xu.")
	return
end
ConsumeEquiproomItem(20,4,417,1,1)
AddItem(6,1,1375,1,1,0,0)
end
function chuyen_gt()
	local szTitle = "<npc><color=Pink>Nam<color> => Nga My hoÆc Thóy Yªn <color=Green>N÷ <color> => ThiÕu L©m hoÆc Thiªn V­¬ng<enter> Sau khi gia nhËp m«n ph¸i cã thÓ ®Õn gÆp ta ®Ó ®æi giíi tÝnh "
	local tbOpt =
	{
		{"ChuyÓn Nam Thµnh N÷", NamNu},
		{"ChuyÓn N÷ Thµnh Nam", NuNam},
		{"Tho¸t/no"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function NamNu()
		if (CalcItemCount(2,0,-1,-1,-1) > 0) then
			return Say("Muèn ®æi giíi tÝnh cÇn ph¶i c­ëi bá hÕt trang bÞ trªn ng­êi .",0);

		end
if GetCurCamp() == 0 then
		Talk(1, "", "<color=green>"..myplayersex().."<color> vÉn ch­a gia nhËp m«n ph¸i ?")
return end
if CalcEquiproomItemCount(4,417,1,1)<100 then
	Say("ChuyÓn giíi tÝnh cÇn 100 xu trong hµnh trang.")
	return
end
if GetSex() == 1 then
Talk(1, "", "<color=green>"..myplayersex().."<color> ®ang lµ <color=red>G¸i §Ñp<color> mµ?\n Cã ph¶i "..myplayersex().." thuéc thÕ giíi thø 3 kh«ng?")
else
ConsumeEquiproomItem(100,4,417,1,1)
SetSex(1) ---nu 1
KickOutSelf()
Msg2SubWorld("<color=cyan>Chóc mõng nam ®¹i hiÖp <color=green>"..GetName().."<color=cyan> chuyÓn ®æi giíi tÝnh thµnh c«ng thµnh N÷ Giai Nh©n")
end
end

function NuNam()
		if (CalcItemCount(2,0,-1,-1,-1) > 0) then
			return Say("Muèn ®æi giíi tÝnh cÇn ph¶i c­ëi bá hÕt trang bÞ trªn ng­êi .",0);

		end
if GetCurCamp() == 0 then
		Talk(1, "", "<color=green>"..myplayersex().."<color> vÉn ch­a gia nhËp m«n ph¸i ?")
return end
if CalcEquiproomItemCount(4,417,1,1)<100 then
	Say("ChuyÓn giíi tÝnh cÇn 100 xu trong hµnh trang.")
	return
end
if GetSex() == 0 then
Talk(1, "", "<color=green>"..myplayersex().."<color> ®ang lµ <color=red>Trai Xinh<color> mµ?\n Cã ph¶i "..myplayersex().." thuéc thÕ giíi thø 3 kh«ng?")
else
ConsumeEquiproomItem(100,4,417,1,1)
SetSex(0)---nam 0
KickOutSelf()
Msg2SubWorld("<color=cyan>Chóc mõng n÷ ®¹i hiÖp <color=green>"..GetName().."<color=cyan> chuyÓn ®æi giíi tÝnh thµnh c«ng thµnh Nam Mü Nh©n")
end
end


function KhoaVatPham()
GiveItemUI("Hñy VËt PhÈm Khãa", " §¹i hiÖp cÇn khãa g× xin ®Æt vµo « d­íi ®©y! Cã thÓ khãa nhiÒu vËt phÈm cïng lóc", "KhoaVatPham_ok", "onCancel", 1);
end

function KhoaVatPham_ok(nCount)
for i=1, nCount do
local nItemIndex = GetGiveItemUnit(i)
SetItemBindState(nItemIndex,-2)
end
Msg2Player("Thao t¸c b¸n vËt phÈm thµnh c«ng")
Talk(1, "", "<color=green> Chóc mïng §¹i HiÖp ®· khãa vËt phÈm khãa thµnh c«ng!"); 

end
function MoKhoaDinh() 
	if (GetBoxLockState() ~= 0) then
		Say("Xin më khãa r­¬ng tr­íc !", 0)
		return
end
GiveItemUI("Më Khãa §Ýnh", "<color=white>cÇn 100 Xu trong hµnh trang.", "batdaucheckngay", "onCancel", 1);
end

function codechungmoi()

	if GetTask(3902) <5 then
		AskClientForString("codechungmoi_ok","",1,99999999999,"NhËp GiftCode")
	else
	Talk(1,"","<bclr=violet>"..myplayersex().." §· NhËn Th­ëng Råi HoÆc Kh«ng §ñ Chç Trèng Kh«ng ThÓ NhËn N÷a"..GetTask(3902) .."")
	end
end
tbKandy2 = {}
tbKandy2.szFile = "\\dulieu\\checkcode503k.dat"
--server_loadfile(tbKandy2.szFile)
function codechungmoi_ok(nVar)
	local tbAwardgift = {

--{szName="NhÊt Kû Cµn Kh«n Phï", tbProp={6,1,4363,1,0,0},nCount = 1,nExpiredTime=3*24*60,nBindState=-2},
		{szName="Phi Phong", tbProp={0,5970},nCount = 1,nExpiredTime=20210426,nQuality=1,nBindState = -2},
	
	}


	local IsClone = server_getdata(tbKandy2.szFile,"GIFT_CODE_CHECK",nVar);
	local nillVar = 0
	if IsClone ~= "" then 
		return Say("<bclr=red>M· GIFTCODE ChØ NhËp Tèi §a 1 LÇn Vui Lßng Liªn HÖ GM §Ó\n§­îc Gi¶i QuyÕt<bclr>")
	end
	if CalcFreeItemCellCount() >= 10 then
		for k=1,getn(giftcode200k) do
			if nVar == giftcode200k[k][1] then
			--Msg2Player("---"..GetTask(3902).."----------------------------"); 

				SetTask(3902, 5) 

				tbAwardTemplet:GiveAwardByList(tbAwardgift,"PhÇn Th­ëng GiftCode")
				Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> NhËn Thµnh C«ng GiftCode LikeShare")
				server_setdata(tbKandy2.szFile,"GIFT_CODE_CHECK",nVar,"1");	
				server_savedata(tbKandy2.szFile);
			return
			else 
				nillVar = 0
			end
		end
	else return Say("Kh«ng §ñ 10 ¤ Trèng")
	end
	if nillVar == 0 then
		return Say("M· gift ng­¬i võa nhËp vµo kh«ng tån t¹i trong hÖ thèng!")
	end;
end;

function batdaucheckngay(nItemIdx)
local nSilverCount = CalcEquiproomItemCount(4, 417, 1, -1) ;
	local chikhoalaplanh = CalcEquiproomItemCount(6, 1, 1371, -1) ;
	if	(nSilverCount < 100)  then -- gia xu
	Say("<color=yellow>B¹n CÇn 100 Xu trong Hµnh Trang") -- go
	return
	end
		local nItemIdx = GetGiveItemUnit(1);
		local bindState = GetItemBindState(nItemIdx)
		if (bindState == -2) then
			Talk(1,"", "Trang bÞ do BQT khãa vÜnh viÔn kh«ng thÓ më khãa ®­îc rÊt tiÕc.")
		return
	end
	    local strItemlock = GetItemName(nItemIdx)
		Msg2Player("<color=red>Më khãa vËt phÈm "..strItemlock, " thµnh c«ng")
Talk(1, "", "<color=green> Chóc mïng §¹i HiÖp më khãa thµnh c«ng "..strItemlock, "!"); 
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
			Msg2Player("Chóc mõng §¹i HiÖp ®· nhËn ®­îc 10k ®iÓm Danh Väng.")
		else
			Talk(1, "", "Ng­¬i ®· nhËn råi kh«ng thÓ nhËn n÷a. ")
		end
end
function ShowTopThiep()
Sale(185)
end
function muatinvatmonphai()
	if CalcFreeItemCellCount() < 5 then
	Talk(1,"","<color=green> H·y §Ó Trèng 5 ¤ Råi Mua...!")
	return
	end
	if (CalcEquiproomItemCount(4,417,1,-1)<20) then
		Talk(1,"","<color=green> C¸c h¹ kh«ng ®ñ 20 xu...!")
		return
	end
	ConsumeEquiproomItem(20,4,417,1,-1)
	local tbAwardcc={
	{szName="ThÇn Hµnh Phï", tbProp={6,1,1266,1,0,0},nCount = 1,nExpiredTime=30*24*60},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "ThÇn Hµnh Phï");
end
function nhiemvuhangngay()
	if CalcFreeItemCellCount()<10 then
	Say("Kh«ng ®ñ 10 « trèng.")
	return 1;
	end
	if CalcEquiproomItemCount(6,1,4422,-1) < 1 then
	Say("Kh«ng ®ñ 1 TÝn VËt Viªm §Õ.")
	return 1;
	end
	if CalcEquiproomItemCount(6,1,4423,-1) < 1 then
	Say("Kh«ng ®ñ 1 TÝn VËt V­ît ¶i.")
	return 1;
	end
	if CalcEquiproomItemCount(6,1,4424,-1) < 1 then
	Say("Kh«ng ®ñ 1 TÝn VËt Phong L¨ng §é.")
	return 1;
	end
	if CalcEquiproomItemCount(6,1,4425,-1) < 1 then
	Say("Kh«ng ®ñ 1 TÝn VËt Tèng Kim.")
	return 1;
	end
	if CalcEquiproomItemCount(6,1,4426,-1) < 1 then
	Say("Kh«ng ®ñ 1 TÝn VËt TÝn Sø.")
	return 1;
	end
		
	local tbAward= {
	{szName="D©y Thõng",tbProp={6,1,4416,1,1,0},nCount=2},
	{szName="Bã Cá",tbProp={6,1,4415,1,1,0},nCount=2},
	--{szName="Tinh Ngäc",tbProp={6,1,4409,1,1,0},nCount=20},
	--	{szName = "Tói Quµ Sù KiÖn",tbProp={6,1,1627,0},nCount=50},
		{szName="TiÒn §ång",tbProp={4,417,1,1,0,0},nCount=5},
	--	{szName = "Hé Tiªu LÖnh",tbProp={6,1,30317,1,0,0},nCount=2},
	}
	AddOwnExp(5000000000)
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn th­ëng H»ng Ngµy")			
	ConsumeEquiproomItem(1, 6,1, 4422,-1)
	ConsumeEquiproomItem(1, 6,1, 4423,-1)
	ConsumeEquiproomItem(1, 6,1, 4424,-1)
	ConsumeEquiproomItem(1, 6,1, 4425,-1)
	ConsumeEquiproomItem(1, 6,1, 4426,-1)

end
---------------lap bang
function dmcreattongtest_c()
local strTongName = GetTongName()
local tszTitle = "Chµo mõng ®¹i hiÖp ®· tham gia hÖ thèng <color=yellow>Bang Héi<color>"
if (strTongName == nil or strTongName == "") then
	Say(tszTitle,2,"T¹o bang héi/dmcreateit","KÕt thóc ®èi tho¹i")
else
	Say(tszTitle,0)
end	
end


function dmcreateit()
	Tong_name,oper = GetTong()
	if (oper == 0) and (GetTask(99) == 1) then
		Say("TiÕp tôc t¹o bang." ,2,"T¹o Bang/Direct_CreateTong","§Ó ta suy nghÜ l¹it/wait_a_moment")
	elseif (oper == 0) and (GetCamp() == 4) and (GetLevel() >= 50) and (GetReputeLevel(GetRepute()) >= 6) and (GetLeadLevel() >= 30) and (HaveItem(195) == 1) then
	Say("§¹i hiÖp: Ng­¬i cã muèn lËp bang?." ,2,"Kh«ng thµnh vÊn ®Ò ta muèn lËp bang ngay! /create_pay_yes","§Ó ta suy nghÜ l¹i. /0")
	else	
		i = random(0,1)
		if (i == 0) then
			Talk(1,"", "Ng­êi lËp bang hái ph¶i cã nh¹c v­¬ng kiÕm chõng nµo ®ñ h·y quay l¹i gÆp ta.")
		else
			Talk(6,"", "Ng­êi lËp bang hái ph¶i cã nh¹c v­¬ng kiÕm chõng nµo ®ñ h·y quay l¹i gÆp ta.")
		end
	end
end


function create_pay_yes()

	if (GetCash() >= 0) then
		Pay(0)				-- ÊÕ·Ñ
		DelItem(195)			-- É¾³ýÏµ¹Øµµ¾ß
		SetTask(99,1)				-- ²¢´òÉÏ±ê¼Ç£¨Ý¬Ê±¶¨ÒåÎª°ïÅÉÖÐµÄµóÒ»¸öÈË£¨¼´°ïÖ÷±¾ÈË£©£©
		Direct_CreateTong()		
		
	else
		Talk(1,"", "Muèn lËp bang th× ph¶i cã tiÒn ng­¬i mau mang tiÒn l¹i ®©y råi h·y nãi chuyÖn. ")	
end
end


function Direct_CreateTong()
	CreateTong(1)
Msg2SubWorld("Ta ®©y lµ trïm bang chñ <color=green>"..GetName().." <color=pink>muèn thèng trÞ server nµy anh em nµo muèn theo ta xin mêi vµo bang")				
end

function NhanDenBuSuCo2()
if CalcFreeItemCellCount()<50 then
	Say("Hµnh trang kh«ng ®ñ 50 « trèng.")
	return
end
	if (GetTask(5998) <=5)then
		for i = 1,9 do local Index = AddGoldItem(0,176+i) ITEM_SetExpiredTime(Index,60*24*14)  SyncItem(Index) SetItemBindState(Index, -2) end --Kim Phong
		SetTask(5998,6)
	else
		Say("§¹i hiÖp ®· nhËn th­ëng råi....")
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
		Say("§¹i hiÖp ®· nhËn råi... ®õng qu¸ tham lam.")
		return
	end
end

function testitem()
local tbAwardItem = {tbProp={6,1,4348,0,0,0}, nCount = 2}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Më ra vËt phÈm mua ë Kú Tr©n C¸c");		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><S¸t thñ gi¶n><color>");

end

function satthugian1()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,-1)
	if  nCount_muaban >= 4  then
		ConsumeEquiproomItem(4, 4,417, 1,-1)
		local tbAwardItem = {tbProp={6,1,400,90,nSeries,0}, nCount = 2}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Më ra vËt phÈm mua ë Kú Tr©n C¸c");		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><S¸t thñ gi¶n><color>");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>10 TiÒn §ång <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end

end

function satthugian()
	if CalcEquiproomItemCount(4,417,1,-1)>=2 then 
		ConsumeEquiproomItem(2,4,417,1,-1);
		local tbAwardItem = {tbProp={6,1,400,90,nSeries,0}, nCount = 1}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Më ra vËt phÈm mua ë Kú Tr©n C¸c");		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><S¸t thñ gi¶n><color>");

		SaveNow();
	else
		Talk(1,"no","<color=red>B¹n kh«ng ®ñ tiÒn.")	
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
		Talk(1, "", "§¹i hiÖp ch­a ®· gia nhËp m«n ph¸i.")
		return 1
	end


	local tbOpt =
	{
		{"ChÝnh ph¸i (mµu vµng)", mauvang},
		{"Tµ ph¸i (mµu tÝm)", mautim},
		{"Trung lËp (mµu xanh)", mauxanh},
		{"S¸t Thñ - Mµu §á XuÊt S­", maudo},
		{"Trë l¹i", dialog_main},
	--	{"Tho¸t"},
	}
	CreateNewSayEx("<npc>Chän mµu", tbOpt)
end
function mauvang()
		SetCurCamp(1)
		SetCamp(1)
		Say("§æi mµu PK ChÝnh Ph¸i thµnh c«ng.")
	--	Pay(50000)
end
function mautim()
		SetCurCamp(2)
		SetCamp(2)
		Say("§æi mµu PK Tµ Ph¸i thµnh c«ng.")
	--	Pay(50000)
end
function mauxanh()
		SetCurCamp(3)
		SetCamp(3)
		Say("§æi mµu PK Trung LËp thµnh c«ng.")
	--	Pay(50000)
end
function maudo()
		SetCurCamp(4)
		SetCamp(4)
		Say("§æi mµu PK S¸t Thñ thµnh c«ng.")	
end


function moruong()
	if CalcEquiproomItemCount(4,417,1,-1)>=20 then 
		ConsumeEquiproomItem(20,4,417,1,-1);
		OpenStoreBox(1);
		OpenStoreBox(2);
		OpenStoreBox(3);
		SaveNow();
	else
		Talk(1,"no","<color=red>B¹n kh«ng ®ñ tiÒn.")	
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
	--	tinsert(tbSay,"Mua LÖnh bµi d· tÈu<20v¹n> ./datau")

	--	tinsert(tbSay,"Mua Siªu Quang(200 xu) ./MuaSieuQuang")
	--	tinsert(tbSay,"Mua Phiªn Vò (30 xu) ./MuaPhienVu")
		tinsert(tbSay,"Mua LÖnh bµi thñy tÆc + LÖnh bµi Vi S¬n ®¶o<10v¹n> ./thuytac")

		tinsert(tbSay,"Mua Long LB PLD<10van>./MuaLenhBaiPLD")
		tinsert(tbSay,"Mua S¸t thñ gi¶n<10v¹n>./satthugian_van")
		tinsert(tbSay,"Viªm §Õ LÖnh./viemdelenhvan")
	--	tinsert(tbSay,"Tói Tö MÉu./tuitumau")
	--	tinsert(tbSay,"50 ¢m D­¬ng Ho¹t HuyÕt §¬n + 50 C«ng KÝch Trî Lôc Hoµn(15 xu)./AmDuongCongKichXu")
		
       	tinsert(tbSay,"Mua Long huyÕt hoµn<10van>./longhuyethoan")
       
		--tinsert(tbSay,"Mua ThÇn hµnh phï - Thæ ®Þa phï./muathptdp")
		--tinsert(tbSay,"Mua cöu ch©u lÖnh<10xu hoac 10 van>./cuuchaulenh")
		--tinsert(tbSay,"Mua h¹t gièng c©y ®a<10xu hoac 10 van>./hatgiongcayda")
		--tinsert(tbSay,"Mua phó quý cÈm h¹p<10xu 10 xu hoac 10 van>./phuquycamhap")
		--tinsert(tbSay,"Mua ti¸n vËt m«n ph¸i<500xu>./tinvatmonphai")
	--	tinsert(tbSay,"Mua ti¸n vËt D­¬ng Anh<500xu>./tinvatduonganh")


		tinsert(tbSay,"Tho¸t/no")
		Say(" §¹i hiÖp cÇn ta gióp vÊn ®Ò g× ? ", getn(tbSay), tbSay)


end
function MuaPhienVu()
local tbAward ={
	{szName="Phien Vu",tbProp={0,10,7,10,0,0,0},nCount=1,nExpiredTime=30*24*60},
	--{szName="¢m D­¬ng Ho¹t HuyÕt §¬n",tbProp={6,1,2953,1,0,0},nCount=50},
}
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 30  then
		ConsumeEquiproomItem(30, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 1000")
		Talk(1, "", "Trao ®æi thµnh c«ng");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>30 TiÒn §ång <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end

end
function MuaSieuQuang()
local tbAward ={
	{szName="SieuQuang",tbProp={0,10,13,10,0,0,0},nCount=1,nExpiredTime=30*24*60},
	--{szName="¢m D­¬ng Ho¹t HuyÕt §¬n",tbProp={6,1,2953,1,0,0},nCount=50},
}
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 200  then
		ConsumeEquiproomItem(200, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 1000")
		Talk(1, "", "Trao ®æi thµnh c«ng");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>200 TiÒn §ång <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end

end
function MuaHanHuyet()
local tbAward ={
	{szName="Phien Vu",tbProp={0,10,18,10,0,0,0},nCount=1,nExpiredTime=30*24*60},
	--{szName="¢m D­¬ng Ho¹t HuyÕt §¬n",tbProp={6,1,2953,1,0,0},nCount=50},
}
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 200  then
		ConsumeEquiproomItem(200, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 1000")
		Talk(1, "", "Trao ®æi thµnh c«ng");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>200 TiÒn §ång <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end

end
function MuaLenhBaiPLD()
	local Index = AddItem(4,489,1,1,0,0)	
	Msg2Player("Chóc Mõng "..myplayersex().." §· OK")
end

function tuitumau()
	local Index = AddItem(6,1,1427,1,0,0)	
	Msg2Player("Chóc Mõng "..myplayersex().." §· OK")
end

function AmDuongCongKichXu()
local tbAward ={
	{szName="KÝch C«ng Trî Lùc Hoµn",tbProp={6,1,2952,1,0,0},nCount=50},
	{szName="¢m D­¬ng Ho¹t HuyÕt §¬n",tbProp={6,1,2953,1,0,0},nCount=50},
}
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 15  then
		ConsumeEquiproomItem(15, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 1000")
		Talk(1, "", "Trao ®æi thµnh c«ng");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>15 TiÒn §ång <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end

end
function anhhungthiep()
local tbSay = {}
		tinsert(tbSay,"Mua anh hïng thiªp 50xu ./anhhungthiepxu")
		tinsert(tbSay,"Mua anh hïng thiªp 200 van./anhhungthiepvan")
       		


		tinsert(tbSay,"Tho¸t/no")
		Say(" §¹i hiÖp cÇn ta gióp vÊn ®Ò g× ? ", getn(tbSay), tbSay)


end


function anhhungthiepxu()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 50  then
		ConsumeEquiproomItem(50, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "anh hïng thiªp", tbProp ={ 6, 1, 1604, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "anh hïng thiªp"))
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><anh hïng thiªp><color>");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>10 TiÒn §ång <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end

end



function viemdelenhvan()
	local nCount_muaban = GetCash()
	if  nCount_muaban >= 2000000  then
		Pay(2000000)
		tbAwardTemplet:GiveAwardByList({{szName = "anh hïng thiªp", tbProp ={ 6, 1, 1604, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "anh hïng thiªp"))
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><anh hïng thiªp><color>");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>40 van <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end

end



function viemdelenh()
local tbSay = {}
		tinsert(tbSay,"Mua Viªm ®Õ lªnh 10xu ./viemdelenhxu")
		tinsert(tbSay,"Mua viªm ®Õ lÖnh 40 van./viemdelenhvan")
       		


		tinsert(tbSay,"Tho¸t/no")
		Say(" §¹i hiÖp cÇn ta gióp vÊn ®Ò g× ? ", getn(tbSay), tbSay)


end


function viemdelenhxu()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 10  then
		ConsumeEquiproomItem(10, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "Viªm ®Õ lªnh", tbProp ={ 6, 1, 1617, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "Viªm ®Õ lªnh"))
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><Viªm ®Õ lªnh><color>");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>10 TiÒn §ång <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end

end



function viemdelenhvan()
	local nCount_muaban = GetCash()
	if  nCount_muaban >= 400000  then
		Pay(400000)
		tbAwardTemplet:GiveAwardByList({{szName = "Viªm ®Õ lªnh", tbProp ={ 6, 1, 1617, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "Viªm ®Õ lªnh"))
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><Viªm ®Õ lªnh><color>");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>40 van <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end

end



function hatgiongcayda()
local tbSay = {}
		tinsert(tbSay,"Mua hat giong cay da 10xu ./hatgiongcaydaxu")
		tinsert(tbSay,"Mua hat giong cay da 10 van./hatgiongcaydavan")
       		


		tinsert(tbSay,"Tho¸t/no")
		Say(" §¹i hiÖp cÇn ta gióp vÊn ®Ò g× ? ", getn(tbSay), tbSay)


end


function cuuchaulenh()
local tbSay = {}
		tinsert(tbSay,"Mua cuu chau lenh 10xu ./cuuchaulenhxu")
		tinsert(tbSay,"Mua cuu chau lenh 10 van./cuuchaulenhvan")
       		


		tinsert(tbSay,"Tho¸t/no")
		Say(" §¹i hiÖp cÇn ta gióp vÊn ®Ò g× ? ", getn(tbSay), tbSay)


end


function phuquycamhap()
local tbSay = {}
		tinsert(tbSay,"Mua phu quy cam hap 10xu ./phuquycamhapxu")
		tinsert(tbSay,"Mua phu quy cam hap 10 van./phuquycamhapvan")
       		


		tinsert(tbSay,"Tho¸t/no")
		Say(" §¹i hiÖp cÇn ta gióp vÊn ®Ò g× ? ", getn(tbSay), tbSay)


end


function phuquycamhapxu()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 10  then
		ConsumeEquiproomItem(10, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "Phó quý cÈm h¹p", tbProp ={ 6, 1, 2402, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "Phó quý cÈm h¹p"))
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><Phó quý cÈm h¹p><color>");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>10 TiÒn §ång <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end

end

function phuquycamhapvan()
	local nCount_muaban = GetCash()
	if  nCount_muaban >= 100000  then
		Pay(100000)
		tbAwardTemplet:GiveAwardByList({{szName = "Phó quý cÈm h¹p", tbProp ={ 6, 1, 2402, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "Phó quý cÈm h¹p"))
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><Phó quý cÈm h¹p><color>");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>10 van <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end

end


function hatgiongcaydaxu()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 10  then
		ConsumeEquiproomItem(10, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "H¹t gièng c©y ®a", tbProp ={ 6, 1, 30157, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "H¹t gièng c©y ®a"))
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><H¹t gièng c©y ®a><color>");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>10 TiÒn §ång <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end

end



function hatgiongcaydavan()
	local nCount_muaban = GetCash()
	if  nCount_muaban >= 100000  then
		Pay(100000)
		tbAwardTemplet:GiveAwardByList({{szName = "H¹t gièng c©y ®a", tbProp ={ 6, 1, 30157, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "H¹t gièng c©y ®a"))
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><H¹t gièng c©y ®a><color>");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>10 van <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end

end



function tinvatmonphai()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 500  then
		ConsumeEquiproomItem(500, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "TÝn vËt m«n ph¸i", tbProp ={ 6, 1, 1670, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "TÝn vËt m«n ph¸i"))
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><TÝn vËt m«n ph¸i><color>");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>500 TiÒn §ång <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end

end

function tinvatduonganh()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 500  then
		ConsumeEquiproomItem(500, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "TÝn vËt m«n ph¸i", tbProp ={ 6, 1, 1671, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "TÝn vËt m«n ph¸i"))
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><TÝn vËt m«n ph¸i><color>");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>500 TiÒn §ång <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end

end

function cuuchaulenhxu()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 10  then
		ConsumeEquiproomItem(10, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "Cuu chau lenh", tbProp ={ 6, 1, 30117, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "Cuu chau lenh"))
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><Cuu chau lenh><color>");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>10 TiÒn §ång <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end


end

function cuuchaulenhvan()
	local nCount_muaban = GetCash()
	if  nCount_muaban >= 100000  then
		Pay(100000)
		tbAwardTemplet:GiveAwardByList({{szName = "Cuu chau lenh", tbProp ={ 6, 1, 30117, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "Cuu chau lenh"))
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><Cuu chau lenh><color>");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>10 van <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end


end


function muaevent()

	local nCount_muaban = GetCash()
	if  nCount_muaban >= 500000  then
	--	ConsumeEquiproomItem(4, 4,417, 1,-1)
		Pay(500000)
		tbAwardTemplet:GiveAwardByList({{szName = "Ngäc Gi¶m PK", tbProp ={ 6, 1, 30353, 1, 1, 0, 0, 0},  nCount=1}}, format("Get %s", "Cuu chau lenh"))
	--	Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><Thiªn S¬n B¶o Lé><color>");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>50 V¹n <color>, cã ®ñ tiÒn råi ®Õn nhÐ!", 0)
	end

end

function muathptdp()
local tbSay = {}
		tinsert(tbSay,"ThÇn hµn phï 1 th¸ng<300v¹n> ./thanhanhphu")
		tinsert(tbSay,"Thæ ®Þa phï 1 th¸ng<300v¹n>./thodiaphu")
		tinsert(tbSay,"ThÇn hµn phï 1 tuÇn<100v¹n> ./thanhanhphu1tuan")
		tinsert(tbSay,"Thæ ®Þa phï 1 tuÇn<100v¹n>./thodiaphu1tuan")

       		--tinsert(tbSay,"Mua 1 ch×a khãa nhøy<20v¹n>./event1")
		tinsert(tbSay,"Tho¸t/no")
		Say(" §¹i hiÖp cÇn ta gióp vÊn ®Ò g× ? ", getn(tbSay), tbSay)


end


function event50van()
	local nCount_muaban = GetCash()
	if  nCount_muaban >= 5000000  then
		Pay(5000000)
		tbAwardTemplet:GiveAwardByList({{szName = "Hai vi bong lai", tbProp ={ 6, 1, 30129, 1, 0,0}, nRate = 100, nCount=50,nExpiredTime=20180903}}, format("Get %s", "Hai vi bong lai"))
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><50 hai vi bong lai><color>");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>500 van <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end

end

function event1van()
	local nCount_muaban = GetCash()
	if  nCount_muaban >= 100000  then
		Pay(100000)
		tbAwardTemplet:GiveAwardByList({{szName = "Hai vi", tbProp ={ 6, 1, 30129, 1, 0,0}, nRate = 100, nCount=1,nExpiredTime=20180903}}, format("Get %s", "Hai vi"))
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><1 hai vi><color>");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>10 van <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end

end


function event50xu()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 250  then
		ConsumeEquiproomItem(250, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "hai vi", tbProp ={6,1,30129,1,0,0}, nRate = 100, nCount=50,nExpiredTime=20180903}}, format("Get %s", "Hai vi"))
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><50 Hai vi><color>");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>250 xu <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end

end

function event1xu()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 5  then
		ConsumeEquiproomItem(5, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({{szName = "hai vi", tbProp ={6,1,30129,1,0,0}, nRate = 100, nCount=1,nExpiredTime=20180903}}, format("Get %s", "Hai vi"))
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><50 Hai vi><color>");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>250 xu <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end

end


function event1()
	local nCount_muaban = GetCash()
	if  nCount_muaban >= 200000  then
		Pay(200000)
		tbAwardTemplet:GiveAwardByList({{szName = "Ch×a khãa nh­ ý", tbProp ={ 6, 1, 2744, 1, 1, 0, 0, 0}, nRate = 100, nCount=1}}, format("Get %s", "Ch×a khãa nhøy"))
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><1 ch×a khãa nhøy><color>");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>20 van <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
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
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>300 van <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
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
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>100 van <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
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
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>300 van <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
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
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>100 van <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
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
		AskClientForString("CODELIKESHARE50K","",1,99999999999,"NhËp GiftCode")
	else
	Talk(1,"","<bclr=violet>"..myplayersex().." §· NhËn Th­ëng Råi HoÆc Kh«ng §ñ Chç Trèng Kh«ng ThÓ NhËn N÷a")
	end
end

function CODELIKESHARE50K(nVar)
	local tbAwardgift = {

	{szName="Lam Thñy Tinh", tbProp={4,238,1,1},nCount = 1,nBindState = -2},
		{szName="Lôc Thñy Tinh", tbProp={4,239,1,1},nCount = 1,nBindState = -2},
		{szName="Tö Thñy Tinh", tbProp={4,240,1,1},nCount = 1,nBindState = -2},
	
		{szName="TTL", tbProp={6,1,71,1,1},nCount = 3,nBindState = -2},
	--	{szName = "Phien Vu", tbProp = {0,10,7,10,0,0,0}, nCount = 1,nExpiredTime=7*60*24,nBindState=-2},	
	--	{szName="NhÊt Kû Cµn Kh«n Phï", tbProp={6,1,2126,1,0,0},nCount = 1,nExpiredTime=7*24*60,nBindState = -2},
	--	{szName="vlmt", tbProp={0,3772},nCount = 2,nExpiredTime=7*24*60,nQuality=1,nBindState = -2},
	--	{szName="MÆt n¹ tèng kim", tbProp={6,1,4443,1,0,0},nCount = 1,nExpiredTime=7*24*60,nBindState = -2},
	--	{szName="R­¬ng vò khÝ hkmp maxx", tbProp={6,1,1946,1,0,0},nCount = 1,nExpiredTime=7*24*60,nBindState = -2},
	--	{szName="V« Danh", tbProp={0,141},nCount = 1,nQuality=1,nBindState = -2},
	--	{szName="V« Danh", tbProp={0,142},nCount = 1,nQuality=1,nBindState = -2},
	--	{szName="MÆt N¹ ChiÕn Tr­êng Th¸nh Gi¶",tbProp={0,11,647,1,0,0},nCount=1,nExpiredTime=7*24*60,nBindState = -2},
	--	{szName="KÝch C«ng Trî Lùc Hoµn", tbProp={6,1,2952,1,0,0},nCount = 50,nExpiredTime=10*24*60,nBindState = -2},
	--	{szName="¢m D­¬ng Ho¹t HuyÕt §¬n", tbProp={6,1,2953,1,0,0},nCount = 50,nExpiredTime=10*24*60,nBindState = -2},		
	--	{szName="Cong Kick", tbProp={6,1,1704,1,0,0},nCount = 15,nExpiredTime=10*24*60,nBindState = -2},		
	--	{szName="¢m D­¬ng", tbProp={6,1,1705,1,0,0},nCount = 15,nExpiredTime=10*24*60,nBindState = -2},		
	--	{szName="mau TK", tbProp={6,1,215,1,0,0},nCount = 2000,nExpiredTime=20*24*60,nBindState = -2},		
	--	{szName="[Cùc PhÈm]Nhu T×nh C©n Quèc Nghª Th­êng", tbProp={0,416},nQuality=1,nCount = 1,nBindState = -2},		
	--	{szName="Trang Søc", tbProp={0,3505},nQuality=1,nCount = 1,nExpiredTime=30*60*24,nBindState = -2},		
		
	}
	local IsClone = server_getdata(tbKandy1.szFile1,"GIFT_CODE_CHECK",nVar);
	local nillVar = 0
	if IsClone ~= "" then 
		return Say("<bclr=red>M· GIFTCODE ChØ NhËp Tèi §a 1 LÇn Vui Lßng Liªn HÖ GM §Ó\n§­îc Gi¶i QuyÕt<bclr>")
	end
	if CalcFreeItemCellCount() >= 20 then
		for k=1,getn(CodeTanThuGift) do
			if nVar == CodeTanThuGift[k][1] then
			--Msg2Player("---"..GetTask(3902).."----------------------------"); 

			SetTask(3902, 1) 
				tbAwardTemplet:GiveAwardByList(tbAwardgift,"PhÇn Th­ëng GiftCode")
				Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> NhËn Thµnh C«ng GiftCode  LikeShare")
						server_setdata(tbKandy1.szFile1,"GIFT_CODE_CHECK",nVar,"1");	
				server_savedata(tbKandy1.szFile1);
			return
			else 
				nillVar = 0
			end
		end
	else return Say("Kh«ng §ñ 20 ¤ Trèng")
	end
	if nillVar == 0 then
		return Say("M· gift ng­¬i võa nhËp vµo kh«ng tån t¹i trong hÖ thèng!")
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
Msg2Player("ChØ Cã <color=pink>Ban Qu¶n TrÞ <color>Míi Cã QuyÒn Sö Dông Chøc N¨ng Nµy")
end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function MoChucNangGM()
	local tbOpt = {
		{"NhËn LÖnh Bµi Admin", LBAdmin},
		{"Kªt Thóc §èi Tho¹i."},
	}
	CreateNewSayEx("<npc>L·o Phu Cã Mét Sè Man Cùc PhÈm, Ng­êi CÇn Mãn Nµo", tbOpt)
end
-----------------------------------------------------------------------------------------------------------------------------------
function LBAdmin()
local index = AddItem(6,1,4357,0,0,0,0); SetItemBindState(index,-2)
local index = AddItem(6,1,4358,0,0,0,0); SetItemBindState(index,-2)
Msg2Player("Chóc Mõng <color=green>§¹i HiÖp <color> NhËn §­îc <color=yellow>LÖnh Bµi <color> <color=pink>ADMIN <color>")
end
function phanthuongcodenew()

if GetTask(3901) <= 1  then
		AskClientForString("CODELIKESHARE","",1,99999999999,"NhËp GiftCode")
	else
	Talk(1,"","<bclr=violet>"..myplayersex().." §· NhËn Th­ëng Råi HoÆc Kh«ng §ñ Chç Trèng Kh«ng ThÓ NhËn N÷a")
	end
end
function nhanquatanthu()
if CalcFreeItemCellCount()<5 then
	Say("Hµnh trang cÇn cã 5 « trèng.")
	return
end
		if GetTask(3901)>=1 then
			Say("Mçi nh©n vËt chØ ®­îc nhËn 1 lÇn duy nhÊt.")
			return
		else
				local tbAwardgift = {
	--	{szName="MÆt N¹ ChiÕn Tr­êng Th¸nh Gi¶",tbProp={0,11,647,1,0,0},nCount=1,nExpiredTime=30*24*60,nBindState = -2},
		{szName="Tiªn Th¶o Lé ", tbProp={6,1,1181,1,0,0},nCount = 2,nBindState = -2},
		{szName="BÝ KÝp 8x", tbProp={6,1,2426,1,0,0},nCount = 1,nBindState = -2},
	--	{szName="Ngùa 6x", tbProp={0,10,2,9,0,0,0},nCount = 1,nBindState = -2},
	--	{szName="Chuyªn dïng cho Phong V©n Háa phßng hoµn", tbProp={6,1,194,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
--		{szName="mau tk", tbProp={6,1,215,1,0,0},nCount = 2000,nBindState = -2},
--	{szName="KÝch C«ng Trî Lùc Hoµn", tbProp={6,1,2952,1,0,0},nCount = 50,nExpiredTime=3*24*60,nBindState = -2},
	--	{szName="¢m D­¬ng Ho¹t HuyÕt §¬n", tbProp={6,1,2953,1,0,0},nCount = 50,nExpiredTime=3*24*60,nBindState = -2},			
	}
	tbAwardTemplet:GiveAwardByList(tbAwardgift,"PhÇn Th­ëng")
			SetTask(3901,1)
		end
end
function CODELIKESHARE(nVar)
if (CountFreeRoomByWH(5,8,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 5x8 « trèng");
		return 1;
	end
	
	local tbAwardgift = {


	--	{szName="MÆt N¹ ChiÕn Tr­êng Th¸nh Gi¶",tbProp={0,11,647,1,0,0},nCount=1,nExpiredTime=30*24*60,nBindState = -2},
		{szName="Tiªn Th¶o Lé ", tbProp={6,1,1181,1,0,0},nCount = 2,nBindState = -2},
		{szName="cÈm nang t©n thñ ", tbProp={6,1,2426,1,0,0},nCount = 1,nBindState = -2},
	--	{szName="Ngùa 6x", tbProp={0,10,2,9,0,0,0},nCount = 1,nBindState = -2},
	--	{szName="Chuyªn dïng cho Phong V©n Háa phßng hoµn", tbProp={6,1,194,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
--		{szName="mau tk", tbProp={6,1,215,1,0,0},nCount = 2000,nBindState = -2},
--	{szName="KÝch C«ng Trî Lùc Hoµn", tbProp={6,1,2952,1,0,0},nCount = 50,nExpiredTime=3*24*60,nBindState = -2},
	--	{szName="¢m D­¬ng Ho¹t HuyÕt §¬n", tbProp={6,1,2953,1,0,0},nCount = 50,nExpiredTime=3*24*60,nBindState = -2},			
	}

	if CalcFreeItemCellCount()>=50 then
		if nVar == "volamctcxua" or nVar == "VOLAMCTCXUA" then
			--Msg2Player("---"..GetTask(3902).."----------------------------");
					Earn(5000)

				SetTask(3901, 2) 
PlayerFunLib:AddSkillState(1512,20,3,18*60*60*24*1,2)
for i = 1,9 do local Index = AddGoldItem(0,176+i)  SyncItem(Index) SetItemBindState(Index, -2) end --Kim Phong
				tbAwardTemplet:GiveAwardByList(tbAwardgift,"PhÇn Th­ëng GiftCode")
				Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> nhËn thµnh c«ng GiftCode T©n Thñ")
			--	server_setdata(tbKandy.szFile,"GIFT_CODE_CHECK",nVar,"1");	
			--	server_savedata(tbKandy.szFile);
			return
			else 
				nillVar = 0
			end
	else
		Say("Hµnh trang kh«ng ®ñ 50 « trèng")
		return
	end
	local IsClone = server_getdata(tbKandy.szFile,"GIFT_CODE_CHECK",nVar);
	local nillVar = 0
	if IsClone ~= "" then 
		return Say("<bclr=red>M· GIFTCODE ChØ NhËp Tèi §a 1 LÇn Vui Lßng Liªn HÖ GM §Ó\n§­îc Gi¶i QuyÕt<bclr>")
	end
	
	if CalcFreeItemCellCount() >= 30 then
		
		for k=1,getn(CodeLikeShared) do
			if nVar == CodeLikeShared[k][1] then
			--Msg2Player("---"..GetTask(3902).."----------------------------"); 

				SetTask(3901, 3) 

				tbAwardTemplet:GiveAwardByList(tbAwardgift,"PhÇn Th­ëng GiftCode")
				Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> NhËn Thµnh C«ng GiftCode LikeShare 2")
				server_setdata(tbKandy.szFile,"GIFT_CODE_CHECK",nVar,"1");	
				server_savedata(tbKandy.szFile);
			return
			else 
				nillVar = 0
			end
		end
	else return Say("Kh«ng §ñ 30 ¤ Trèng")
	end
	if nillVar == 0 then
		return Say("M· gift ng­¬i võa nhËp vµo kh«ng tån t¹i trong hÖ thèng!")
	end;
end;


function phanthuongcodenew2()

if GetTask(3902) <= 1  then
		AskClientForString("CODELIKESHARE2","",1,99999999999,"NhËp GiftCode")
	else
	Talk(1,"","<bclr=violet>"..myplayersex().." §· NhËn Th­ëng Råi HoÆc Kh«ng §ñ Chç Trèng Kh«ng ThÓ NhËn N÷a")
	end
end

function CODELIKESHARE2(nVar)
if (CountFreeRoomByWH(5,8,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 5x8 « trèng");
		return 1;
	end
	
	local tbAwardgift = {


	--	{szName="MÆt N¹ ChiÕn Tr­êng Th¸nh Gi¶",tbProp={0,11,647,1,0,0},nCount=1,nExpiredTime=30*24*60,nBindState = -2},
--		{szName="Vò KhÝ T©n Thñ", tbProp={6,1,4460,1,0,0},nCount = 1,nBindState = -2},
--		{szName="Vâ L©m MËt TÞch", tbProp={6,1,26,1,0,0},nCount = 1,nBindState = -2},
		{szName="Thiªn S¬n ", tbProp={6,1,72,1,0,0},nCount = 5,nBindState = -2},
		{szName="QuÕ Hoa", tbProp={6,1,125,1,0,0},nCount = 1,nBindState = -2},
{szName="Tiªn Th¶o lé ", tbProp={6,1,71,1,0,0},nCount = 5,nBindState = -2},
{szName="Tiªn Th¶o lé ", tbProp={6,1,1181,1,0,0},nCount = 1,nBindState = -2},
--{szName="Tiªn Th¶o lé ", tbProp={6,1,4407,1,0,0},nCount = 10,nBindState = -2},
{szName="Tiªn Th¶o lé ", tbProp={6,1,2514,1,0,0},nCount = 1,nBindState = -2},
	--	{szName="Chuyªn dïng cho Phong V©n Háa phßng hoµn", tbProp={6,1,194,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
--		{szName="mau tk", tbProp={6,1,215,1,0,0},nCount = 2000,nBindState = -2},
--	{szName="KÝch C«ng Trî Lùc Hoµn", tbProp={6,1,2952,1,0,0},nCount = 50,nExpiredTime=3*24*60,nBindState = -2},
	--	{szName="¢m D­¬ng Ho¹t HuyÕt §¬n", tbProp={6,1,2953,1,0,0},nCount = 50,nExpiredTime=3*24*60,nBindState = -2},			
	}

	if CalcFreeItemCellCount()>=50 then
		if nVar == "ctcxua2022"  then
			--Msg2Player("---"..GetTask(3902).."----------------------------");
					Earn(5000)

				SetTask(3902, 2) 
				tbAwardTemplet:GiveAwardByList(tbAwardgift,"PhÇn Th­ëng GiftCode")
				Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> nhËn thµnh c«ng GiftCode T©n Thñ")
			--	server_setdata(tbKandy.szFile,"GIFT_CODE_CHECK",nVar,"1");	
			--	server_savedata(tbKandy.szFile);
			return
			else 
				nillVar = 0
			end
	else
		Say("Hµnh trang kh«ng ®ñ 50 « trèng")
		return
	end
	local IsClone = server_getdata(tbKandy.szFile,"GIFT_CODE_CHECK",nVar);
	local nillVar = 0
	if IsClone ~= "" then 
		return Say("<bclr=red>M· GIFTCODE ChØ NhËp Tèi §a 1 LÇn Vui Lßng Liªn HÖ GM §Ó\n§­îc Gi¶i QuyÕt<bclr>")
	end
	
	if CalcFreeItemCellCount() >= 30 then
		
		for k=1,getn(CodeLikeShared) do
			if nVar == CodeLikeShared[k][1] then
			--Msg2Player("---"..GetTask(3902).."----------------------------"); 

				SetTask(3901, 3) 

				tbAwardTemplet:GiveAwardByList(tbAwardgift,"PhÇn Th­ëng GiftCode")
				Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> NhËn Thµnh C«ng GiftCode LikeShare 2")
				server_setdata(tbKandy.szFile,"GIFT_CODE_CHECK",nVar,"1");	
				server_savedata(tbKandy.szFile);
			return
			else 
				nillVar = 0
			end
		end
	else return Say("Kh«ng §ñ 30 ¤ Trèng")
	end
	if nillVar == 0 then
		return Say("M· gift ng­¬i võa nhËp vµo kh«ng tån t¹i trong hÖ thèng!")
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
		AskClientForString("CODECHECKLQ","",1,99999999999,"NhËp GiftCode")
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· NhËn Th­ëng Råi HoÆc Kh«ng §ñ Chç Trèng Kh«ng ThÓ NhËn N÷a")
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
{szName="B¶o r­¬ng HKMP 5 Ngµy", tbProp={6,1,4437,1,0,0},nCount = 1, nBindState = -2,nExpiredTime=60*24*5},

	}
	local IsClone = server_getdata(tbKandy.szFile,"GIFT_CODE_CHECK",nVar);
	local nillVar = 0
	if IsClone ~= "" then 
	return Say("<bclr=red>M· GIFTCODE ChØ NhËp Tèi §a 1 LÇn Vui Lßng Liªn HÖ GM §Ó\n§­îc Gi¶i QuyÕt<bclr>")
	end
	if CalcFreeItemCellCount() >= 5  then
		for k=1,getn(CodeTanThuGift_chung) do
			if nVar == CodeTanThuGift_chung[k][1] then

				SetTask(3028, 1) 

				tbAwardTemplet:GiveAwardByList(tbAwardgift,"PhÇn Th­ëng GiftCode")
				--local Index = AddItem(0,10,7,10,0,0,0)  ITEM_SetExpiredTime(Index,60*24) SyncItem(Index)
				Msg2Player("NhËn Th­ëng <color=yellow>GIFTCODE Mõng Xu©n<color> Thµnh C«ng")
				--Msg2SubWorld("<color=green>Chóc mõng §¹i HiÖp <color=red>"..GetName().."<color> ®· nhËn thµnh c«ng <color=cyan>GiftCode Mõng Xu©n")
				server_setdata(tbKandy.szFile,"GIFT_CODE_CHECK",nVar,"1");	
				server_savedata(tbKandy.szFile);
			return
			else 
				nillVar = 0
			end
		end
	else return Say("Kh«ng §ñ 5 ¤ Trèng")
	end
	if nillVar == 0 then
		return Say("M· gift ng­¬i võa nhËp vµo kh«ng tån t¹i trong hÖ thèng!")
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
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>20 van <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end


end


function thuytac()
	local tbItem = 
	{	

		{szName = "da tau", tbProp = {6, 1, 2745, 1,0,0}, nCount = 1},
		{szName = "LÖnh bµi Vi S¬n ®¶o", tbProp = {6, 1, 2432, 1,0,0}, nCount = 1, nExpiredTime=10080},

		
	}
	local nCount_muaban = GetCash()

	if  nCount_muaban >= 100000  then
		Pay(100000)

		tbAwardTemplet:GiveAwardByList(tbItem, "thuy tac");
	
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>10 van <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
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
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>10 van <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
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
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>10 van <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end


end

