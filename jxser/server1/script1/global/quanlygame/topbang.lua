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
	
	dofile("script/global/quanlygame/topbang.lua")
--	dofile("script/global/g7vn/hotrotinhnang.lua")
--	dofile("script/global/g7vn/npctanthu.lua")
	--dofile("script/global/tieungao/hotrothemtieungao.lua")
	--dofile("script/global/g7vn/g7giftcodetanthu.lua")

	local playerG7Count = GetPlayerCount() + 1
	local szTitle = " Hoan nghªn mäi ng­êi ®Õn víi <color=yellow>http://huyenthoaivolam.net<color>"
	local Opt = 
	{
		{"Nép PhiÕu Bang Héi", nopphieubang},
		{"Xem Top PhiÕu Bang Héi", topnopphieubang},
	
		{"KÕt thóc ®èi tho¹i. ", End},
	}
	
	CreateNewSayEx(szTitle,Opt)
	--end
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
		Msg2Player("Ch­a gia nhËp bang héi,  kh«ng thÓ sö dông chøc n¨ng.");
		return
    end
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure ~= TONG_MASTER) then
		--Msg2Player("<color=green>ChØ cã bang chñ míi cã ®ñ t­ c¸ch sö dông chøc n¨ng nµy.");
	--	return
	end;
	
	AskClientForNumber("nopphieubang_ok", 1, 500, "NhËp sè l­îng")
end

function nopphieubang_ok(nNum)
	if nNum<1 or nNum>500 then
		Say("NhËp sè l­îng tõ 1 ®Õn 500 th«i.")
		return
	end
		local szTongName, nTongID = GetTongName();
	local phieubang=CalcEquiproomItemCount(4,1623,1,1)
	if phieubang>=nNum then
		--SetTask(5333,GetTask(5333)+nNum)
			
		ConsumeEquiproomItem(nNum,4,1623,1,1)
		local sl=0
		for i=1,10 do
			local tenbang,soluong=Ladder_GetLadderInfo(10262,i)
			if tenbang==szTongName then
				sl=soluong
			end
		end
		Ladder_NewLadder(10262, szTongName, sl+nNum , 0);
	else
		Say("Hµnh trang kh«ng cã ®ñ phiÕu bang héi.")
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