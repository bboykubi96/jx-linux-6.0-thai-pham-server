IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("BATTLE")
IncludeLib("RELAYLADDER");
IncludeLib("TONG")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\global\\tieungao\\hotrothemtieungao.lua")
Include("\\script\\global\\tieungao\\huyvatpham.lua")
Include("\\script\\global\\g7vn\\hotrotinhnang.lua")
Include("\\script\\global\\g7vn\\npctanthu.lua")
Include("\\script\\global\\tieungao\\lenhbaihotro.lua")

Include("\\script\\logevent\\logeventtopbang.lua");
Include("\\script\\logevent\\variablestopbang.lua");



function main()
	
	dofile("script/global/quanlygame/npcbanghoi.lua")
--	dofile("script/global/g7vn/hotrotinhnang.lua")
--	dofile("script/global/g7vn/npctanthu.lua")
	--dofile("script/global/tieungao/hotrothemtieungao.lua")
	--dofile("script/global/g7vn/g7giftcodetanthu.lua")
if GetAccount()=="testgame4" then
--	SetTask(3024,0)
--	SetTask(3025,0)
end
	local playerG7Count = GetPlayerCount() + 1
	local szTitle = " Hoan nghªnh mäi ng­êi ®Õn víi <color=yellow>http://volam1.com<color>"
	local Opt = 
	{
	--	{"NhËn §Òn Bï Long Trô", NhanDenBuSuCo3},
		{"LËp Bang Héi", dmcreattongtest_c},
	--	{"Mua 1 LÇn §æi Mµu Bang - ChØ Giµnh Cho Bang Chñ HoÆc Tr­ëng L·o (100 Xu)", mualenhbai},
		{"Nép TiÒn V¹n Vµo Bang", nganquyban},
	--	{"Nép Khiªu ChiÕn LÖnh (300 C¸i - 1 Ngµy)", nopphieubang},
		{"KÕt thóc ®èi tho¹i. ", End},
	}
	
	CreateNewSayEx(szTitle,Opt)
	--end
end
function NhanDenBuSuCo3()
	if (GetTask(5997) <2 )then
			tbAward = 
			{
			{szName="§iÓm Kinh NghiÖm",nExp_tl = 30000000},
			}
		tbAwardTemplet:Give(tbAward, 1, {"DT", "test"})
		Msg2SubWorld("<color=cyan>§¹i hiÖp <color=green>"..GetName().."<color> ®· nhËn 30.000.000 EXP ®Òn bï long trô ë NPC Bang Héi. <color>")
			SetTask(5997,2)
	else
		Say("§¹i hiÖp ®· nhËn råi... ®õng qu¸ tham lam.")
		return
	end
end
function mualandoibang()
	if CalcEquiproomItemCount(4,417,1,1)>=100 then
		ConsumeEquiproomItem(100,4,417,1,1)
		SetTask(3029,GetTask(3029)+1)
	else
	Say("Hµnh trang kh«ng cã ®ñ 100 Xu")
	return
	end
end
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
function nganquyban()
local _, nTongID = GetTongName()
	if(nTongID == 0) then
		Msg2Player("Ch­a gia nhËp bang héi,  kh«ng thÓ sö dông chøc n¨ng.");
		return
    end
	AskClientForNumber("nganquyban_ok", 1, 2000000000, "NhËp sè l­îng")
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
function mualenhbai()
		if CalcFreeItemCellCount()<10 then
		Say("Hµnh trang kh«ng ®ñ 10 « trèng.")
		return
	end
	if CalcEquiproomItemCount(4,417,1,1)>=100 then
		ConsumeEquiproomItem(100,4,417,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Th­¬ng Cæ LÖnh Bµi",tbProp={6,1,4474,1,1},nCount=1},}, "test", 1);
	else
		Say("Hµnh trang kh«ng cã ®ñ 100 Xu.")
		return
	end
end
function topnopphieubang()
	local szMsg = ""
	for i=1,5 do
		szMsg = szMsg ..(format("Top <color=Green>%d <color> - <color=red>%s<color> sè l­îng <color=cyan>%d\n ",i,Ladder_GetLadderInfo(10262,i)))
	end
	Say(szMsg,0)
end
function nopphieubang()
	local nBuildFund = 5000
	local _, nTongID = GetTongName()
	if(nTongID == 0) then
		--Msg2Player("Ch­a gia nhËp bang héi,  kh«ng thÓ sö dông chøc n¨ng.");
		--return
    end
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure ~= TONG_MASTER) then
		--Msg2Player("<color=green>ChØ cã bang chñ míi cã ®ñ t­ c¸ch sö dông chøc n¨ng nµy.");
	--	return
	end;
	
	AskClientForNumber("nopphieubang_ok", 1, 300, "NhËp sè l­îng")
end

function nopphieubang_ok(nNum)
	if nNum<1 or nNum>300 then
		Say("NhËp sè l­îng tõ 1 ®Õn 300 th«i.")
		return
	end
		local szTongName, nTongID = GetTongName();
	local phieubang=CalcEquiproomItemCount(6,1,1499,-1)
	if phieubang>=nNum then
			local nDate = tonumber(GetLocalDate("%Y%m%d"));
	if nDate ~= GetTask(3024) then
		SetTask(3024,nDate)
		SetTask(3025,0)
	end
	if (GetTask(3025)+nNum)>300 and nDate==GetTask(3024) then
		Say("Mçi ngµy chØ nép 300 Khiªu ChiÕn LÖnh. H·y ®îi ngµy mai nép tiÕp.")
		return 1
	end
	AddOwnExp(20000*nNum)
	SetTask(3025,GetTask(3025)+nNum)
	local nDate2 = tonumber(GetLocalDate("%Y%m%d"));
	SetTask(3024,nDate2)
		--SetTask(5333,GetTask(5333)+nNum)
		ConsumeEquiproomItem(nNum,6,1,1499,-1)
		
	else
		Say("Hµnh trang kh«ng cã ®ñ Khiªu ChiÕn LÖnh.")
		return
	end
end

function doinguaphivan()
	if CalcFreeItemCellCount()<10 then
		Say("Hµnh trang kh«ng ®ñ 10 « trèng.")
		return
	end
	local phivanthach=CalcEquiproomItemCount(4,1620,1,1)
	local lamthuytinh=CalcEquiproomItemCount(4,238,1,1)
	local lucthuytinh=CalcEquiproomItemCount(4,239,1,1)
	local tuthuytinh=CalcEquiproomItemCount(4,240,1,1)
	local thbt=CalcEquiproomItemCount(4,353,1,1)
	if phivanthach>=10 and lamthuytinh>=3 and lucthuytinh>=3 and tuthuytinh>=3 and thbt>=5 then
		local ngua=random(1,100)
		if ngua<=30 then
			ConsumeEquiproomItem(10,4,1620,1,1)
			ConsumeEquiproomItem(3,4,238,1,1)
			ConsumeEquiproomItem(3,4,239,1,1)
			ConsumeEquiproomItem(3,4,240,1,1)
			ConsumeEquiproomItem(5,4,353,1,1)
			tbAwardTemplet:GiveAwardByList({{szName = "Phi V©n",tbProp={0,10,8,10,0,0,0},nCount=1},}, "test", 1);
			Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp <color=red>"..GetName().."<color> ®· Ðp thµnh c«ng ngùa <color=yellow>Phi V©n<color> t¹i <color=blue>NPC Ðp ngùa")
		else
			ConsumeEquiproomItem(10,4,1620,1,1)
			ConsumeEquiproomItem(3,4,238,1,1)
			ConsumeEquiproomItem(3,4,239,1,1)
			ConsumeEquiproomItem(3,4,240,1,1)
			ConsumeEquiproomItem(5,4,353,1,1)
			Msg2SubWorld("<color=green>Xin chia buån cïng thÝ chñ <color=red>"..GetName().."<color> ®· Ðp xÞt ngùa <color=yellow>Phi V©n<color> t¹i <color=blue>NPC Ðp ngùa")
		end
	else
		Say("§æi ngùa Phi V©n cÇn 10 Phi V©n Th¹ch + 3 Bé Thñy Tinh + 5 THBT. Tû lÖ thµnh c«ng: 30%")
		return
	end
end