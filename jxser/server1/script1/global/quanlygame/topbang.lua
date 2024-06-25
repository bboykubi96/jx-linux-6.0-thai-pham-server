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
	local szTitle = " Hoan ngh�n m�i ng��i ��n v�i <color=yellow>http://huyenthoaivolam.net<color>"
	local Opt = 
	{
		{"N�p Phi�u Bang H�i", nopphieubang},
		{"Xem Top Phi�u Bang H�i", topnopphieubang},
	
		{"K�t th�c ��i tho�i. ", End},
	}
	
	CreateNewSayEx(szTitle,Opt)
	--end
end
function topnopphieubang()
	local szMsg = ""
	for i=1,5 do
		szMsg = szMsg ..(format("Top <color=Green>%d <color> - <color=red>%s<color> s� l��ng <color=cyan>%d\n ",i,Ladder_GetLadderInfo(10262,i)))
	end
	Say(szMsg,0)
end
function nopphieubang()
	local nBuildFund = 5000
	local _, nTongID = GetTongName()
	if(nTongID == 0) then
		Msg2Player("Ch�a gia nh�p bang h�i,  kh�ng th� s� d�ng ch�c n�ng.");
		return
    end
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure ~= TONG_MASTER) then
		--Msg2Player("<color=green>Ch� c� bang ch� m�i c� �� t� c�ch s� d�ng ch�c n�ng n�y.");
	--	return
	end;
	
	AskClientForNumber("nopphieubang_ok", 1, 500, "Nh�p s� l��ng")
end

function nopphieubang_ok(nNum)
	if nNum<1 or nNum>500 then
		Say("Nh�p s� l��ng t� 1 ��n 500 th�i.")
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
		Say("H�nh trang kh�ng c� �� phi�u bang h�i.")
		return
	end
end

function doinguaphivan()
	if CalcFreeItemCellCount()<10 then
		Say("H�nh trang kh�ng �� 10 � tr�ng.")
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
			tbAwardTemplet:GiveAwardByList({{szName = "Phi V�n",tbProp={0,10,8,10,0,0,0},nCount=1},}, "test", 1);
			Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p <color=red>"..GetName().."<color> �� �p th�nh c�ng ng�a <color=yellow>Phi V�n<color> t�i <color=blue>NPC �p ng�a")
		else
			ConsumeEquiproomItem(10,4,1620,1,1)
			ConsumeEquiproomItem(3,4,238,1,1)
			ConsumeEquiproomItem(3,4,239,1,1)
			ConsumeEquiproomItem(3,4,240,1,1)
			ConsumeEquiproomItem(5,4,353,1,1)
			Msg2SubWorld("<color=green>Xin chia bu�n c�ng th� ch� <color=red>"..GetName().."<color> �� �p x�t ng�a <color=yellow>Phi V�n<color> t�i <color=blue>NPC �p ng�a")
		end
	else
		Say("��i ng�a Phi V�n c�n 10 Phi V�n Th�ch + 3 B� Th�y Tinh + 5 THBT. T� l� th�nh c�ng: 30%")
		return
	end
end