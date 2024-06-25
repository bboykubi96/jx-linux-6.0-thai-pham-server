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

local tbGMAccount = {"testgame",} TENADMIN ={{"ADMINBACHKIM",99}}


function main()
	
	dofile("script/global/g7vn/bachmaon.lua")
--	dofile("script/global/g7vn/hotrotinhnang.lua")
--	dofile("script/global/g7vn/npctanthu.lua")
	--dofile("script/global/tieungao/hotrothemtieungao.lua")
	--dofile("script/global/g7vn/g7giftcodetanthu.lua")

	local playerG7Count = GetPlayerCount() + 1
	local szTitle = " Hoan nghªn mäi ng­êi ®Õn víi <color=yellow>http://volam1.com<color>"
	local Opt = 
	{
		{"§æi Ngùa Phi V©n", doinguaphivan},

		{"KÕt thóc ®èi tho¹i. ", End},
	}
	
	CreateNewSayEx(szTitle,Opt)
	--end
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