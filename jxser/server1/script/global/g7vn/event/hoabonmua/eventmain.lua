---------------------***Script*By*Heart*Doldly***--------------------------------
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\logevent\\logevent.lua");
Include("\\script\\logevent\\variables.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")
--------------------------------------------------------
HOAPHUONGTRANG	 = 4997
NHANTHUONGMOC		 = 4998

----------------------config-----------
startdate= 20210830
endate=20221231

subknmoc1="§å Phæ Tinh S­¬ng Y"
subknmoc2="Ngùa Ngù Phong"
subknmoc3=""
subknmoc4=""
subknmoc5=""

pt1moc1="MÆt N¹ V­¬ng Gi¶"
pt2moc1="05 Tinh S­¬ng Th¹ch (§¹i)"

pt1moc2="Ngò Hµnh Ên + Xuyªn Y CÊp 4"
pt2moc2="05 Tinh S­¬ng Th¹ch (§¹i)"
pt3moc2="01 BÝ KÝp 150 21 + ...."

pt1moc3=""
pt2moc3=""
pt3moc3=""


pt1moc4="4 XÝch L©n LÖnh"
pt2moc4="500 Hµnh HiÖp LÖnh"
pt3moc4=""

pt1moc5="4 XÝch L©n LÖnh"
pt2moc5="500 Hµnh HiÖp LÖnh"
pt3moc5="1 Minh Ph­îng LÖnh"
---------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
----------------------------------------
function main()
dofile("script/global/g7vn/event/hoabonmua/eventmain.lua")
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName);
	end
	if GetTask(5334)>=10 then
		--tbLogEvent:LuuDSNhanVat()
	--	tbLogEvent:SapXepDSXepHang()
end
	local tbDailog = DailogClass:new(szNpcName);
	tbDailog.szTitleMsg = "<npc>§¹i HiÖp <color=yellow>"..GetName().."<color> ®· sö dông\n <color=red>"..GetTask(4996).."<color> <color=cyan>Phong Ph¸o Trung<color>\n <color=red>"..GetTask(4994).."<color> <color=cyan>Phong Ph¸o §¹i<color>",
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)
EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
	local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"));
	local nTime = tonumber(GetLocalDate("%H%M"));
	if nDate>=202205221900 and nDate<=202207302359 then

--	tbDailog:AddOptEntry("§æi Cµn Kh«n Song TuyÖt Béi", doicankhongstb);
--	
--	tbDailog:AddOptEntry("Mua Hép Diªm (5xu-1hép)", muahopdiem);

	if GetAccount()=="thaitrinhpham" or GetAccount()=="kimluyen2002"  or GetAccount()=="cuckold010203" then


	end


		--		tbDailog:AddOptEntry("Mua 100 Hoa Hång (1300 Xu)", MuaEvent500xu);
		--	tbDailog:AddOptEntry("Mua NÕn (1 Xu - 1 C¸i)", BatDauMuaHoa);
		--	tbDailog:AddOptEntry("Mua N¬ §á (1 V¹n - 1 C¸i)", BatDauMuaHoa2);
				 --  tbDailog:AddOptEntry("GhÐp Hoa Cóc Vµng (Event TiÒn V¹n)", GhepBoHoaBonMua3);
				   	  tbDailog:AddOptEntry("GhÐp Phong Ph¸o Trung (Event V¹n)", GhepBoHoaBonMua2);
	 tbDailog:AddOptEntry("GhÐp Phong Ph¸o §¹i (Event Xu)", GhepBoHoaBonMua);
		tbDailog:AddOptEntry("NhËn Th­ëng Mèc 300 Event V¹n + 300 Event Xu", Moc2000);	
	--tbDailog:AddOptEntry("Show Top L¸ Cê §á ThiÕu Nhi", ShowTopThiep);
	--tbDailog:AddOptEntry("Reset Mèc Event B¸nh Kem (20xu)", Reset);


tbDailog:Show();
	
else
Talk(1,"","<bclr=violet>Event ch­a më hoÆc ®· hÕt h¹n.<bclr>")
return 0;
end

end
function doicankhongstb()
if CalcFreeItemCellCount()<5 then
	Say("Hµnh trang kh«ng ®ñ 5 « trèng.")
	return
end
	local lamthuytinh=CalcEquiproomItemCount(4,238,1,1)
	local lucthuytinh=CalcEquiproomItemCount(4,239,1,1)
	local tuthuytinh=CalcEquiproomItemCount(4,240,1,1)
	local nhatky=CalcEquiproomItemCount(6,1,2126,-1)
	if lamthuytinh>=10 and lucthuytinh>=10 and tuthuytinh>=10 and nhatky>=2 then
		local cankhon=random(1,3)
		if cankhon==1 then
			local rcankhon=random(1,10)
			if rcankhon<6 then
			tbAwardTemplet:GiveAwardByList({{szName = "Cµn kh«n song tuyÖt béi",tbProp={6,1,4377,1,0,0},nCount=1,nExpiredTime=7*24*60},}, "test", 1);
			Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· ®æi thµnh c«ng <color=cyan> Cµn Kh«n Song TuyÖt Béi 7 Ngµy<color>")
			elseif rcankhon>=6 and rcankhon<=9 then
			tbAwardTemplet:GiveAwardByList({{szName = "Cµn kh«n song tuyÖt béi",tbProp={6,1,4446,1,0,0},nCount=1,nExpiredTime=15*24*60},}, "test", 1);
			Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· ®æi thµnh c«ng <color=cyan> Cµn Kh«n Song TuyÖt Béi 15 Ngµy<color>")
			elseif rcankhon==10 then
			tbAwardTemplet:GiveAwardByList({{szName = "Cµn kh«n song tuyÖt béi",tbProp={6,1,2219,1,0,0},nCount=1,nExpiredTime=30*24*60},}, "test", 1);
			Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· ®æi thµnh c«ng <color=cyan> Cµn Kh«n Song TuyÖt Béi 30 Ngµy<color>")
			end
			ConsumeEquiproomItem(10,4,238,1,1)
			ConsumeEquiproomItem(10,4,239,1,1)
			ConsumeEquiproomItem(10,4,240,1,1)
			ConsumeEquiproomItem(2,6,1,2126,-1)
		else
		ConsumeEquiproomItem(10,4,238,1,1)
			ConsumeEquiproomItem(10,4,239,1,1)
			ConsumeEquiproomItem(10,4,240,1,1)
			ConsumeEquiproomItem(2,6,1,2126,-1)
			Msg2SubWorld("<color=green>Xin chia buån cïng cao thñ <color=yellow>"..GetName().."<color> ®· Ðp xÞt <color=cyan>Cµn Kh«n Song TuyÖt Béi<color>")
		end
else
Say("Hµnh trang kh«ng ®ñ <color=yellow>10 Bé Thuû Tinh + <color=red>2 NhÊt Kû Cµn Kh«n Phï")
return	
	end
end
function muahopdiem()

AskClientForNumber("batdaumuahopdiem", 1, 200, "NhËp sè l­îng")

end
function batdaumuahopdiem(nNum)
local tbItem = {
	{szName="Hép Diªm", tbProp={6,1,30309,1,0,0},nCount = nNum},
}
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 5*nNum  then
		ConsumeEquiproomItem(5*nNum, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
		Msg2Player("Chóc mõng "..myplayersex().." ®· mua thµnh c«ng <color=cyan>"..nNum.." Hép Diªm ")
	else
		Say("Kh«ng ®ñ  Xu, Xin Xem L¹i")
	end

end
--------------------------------------

function ShowTopThiep()

tbLogEvent:ShowTopList()
end
function MuaEvent500xu()
local tbItem = {
	{szName="Hoa Hång", tbProp={6,1,3122,1,0,0},nCount = 100},
}
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 1300  then
		ConsumeEquiproomItem(1300, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
		Msg2Player("Chóc Mõng "..myplayersex().." §· Mua Thµnh C«ng 100 Hoa Hång")
		--Msg2SubWorld("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· mua thµnh c«ng <color=red> 200 Bã Hoa 20-10 <color> gi¸ <color=cyan>500xu<color>")
	else
		Say("Kh«ng ®ñ  Xu, Xin Xem L¹i")
	end
end
function GhepBoHoaBonMua3 ()
local phaotieu= CalcEquiproomItemCount(6,1,1436,-1)
local phaodai= CalcEquiproomItemCount(6,1,4315,-1)
local hoavang= CalcEquiproomItemCount(6,1,4316,-1)
local diemtongkim=GetTask(747)
local tien= CalcEquiproomItemCount(4,417,1,-1)
local szTitle = "B¹n §ang Cã : \n<color=green>"..phaotieu.." <color>GiÊy Gãi Hoa \n<color=green>"..phaodai.."<color> D©y Cét Hoa\n<color=green>"..hoavang.."<color> ChiÕc N¬\n<color=green>"..diemtongkim.."<color> §iÓm Tèng Kim\n<color=yellow>3 Nguyªn LiÖu + 500 §iÓm Tèng Kim= 1 Hoa Cóc Vµng<color>"
	local Opt = 
	{	
		{"Ta Muèn B¾t §Çu GhÐp", BatDauGhepHoa3},
		{"KÕt thóc ®èi tho¹i. ", End}
	}
	CreateNewSayEx(szTitle,Opt)
end
function BatDauGhepHoa3()

AskClientForNumber("BatDauGhepHoa_3", 1, 200, "NhËp sè l­îng")

end
function BatDauGhepHoa_3(nNum)
	local tbItem = 
	{	
		{szName = "Hoa Cóc Vµng", tbProp = {6, 1, 4311, 1,0,0}, nCount = nNum},	
	}

local phaotieu= CalcEquiproomItemCount(6,1,1436,-1)
local phaodai= CalcEquiproomItemCount(6,1,4315,-1)
local hoavang= CalcEquiproomItemCount(6,1,4316,-1)
local diemtongkim=GetTask(747)
	
if phaotieu>=nNum  and phaodai>=nNum and hoavang>=nNum and diemtongkim>=nNum*500 then
--Msg2Player(""..hoamai..","..hoaphuong..","..nNum.."")
--ConsumeEquiproomItem(nNum, 4,417, 1,-1)
ConsumeEquiproomItem(nNum, 6,1, 1436,-1)
ConsumeEquiproomItem(nNum, 6,1, 4315,-1)
ConsumeEquiproomItem(nNum, 6,1, 4316,-1)
SetTask(747,GetTask(747)-(nNum*500))
Msg2Player("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· dïng nguyªn liÖu ghÐp thµnh <color=cyan> "..nNum.." Hoa Cóc Vµng.")
tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
else 
	Say("Kh«ng §ñ Nguyªn LiÖu HoÆc 10 Chç Trèng");

end
end
function GhepBoHoaBonMua2 ()
local phaotieu= CalcEquiproomItemCount(6,1,4524,-1)
local phaodai= CalcEquiproomItemCount(6,1,4525,-1)
local hoavang= CalcEquiproomItemCount(6,1,4526,-1)
local diemtongkim=GetCash()
local tien= CalcEquiproomItemCount(4,417,1,-1)
local szTitle = "B¹n §ang Cã : \n<color=green>"..phaotieu.." <color>Ph¸o TiÓu \n<color=green>"..phaodai.."<color> Ph¸o Trung\n<color=green>"..hoavang.."<color> Ph¸o §¹i\n<color=yellow>3 Nguyªn LiÖu + 2000 l­îng = 1 Phong Ph¸o Trung<color>"
	local Opt = 
	{	
		{"Ta Muèn B¾t §Çu GhÐp", BatDauGhepHoa2},
		{"KÕt thóc ®èi tho¹i. ", End}
	}
	CreateNewSayEx(szTitle,Opt)
end

---------------------------------------
function GhepBoHoaBonMua ()
local phaotieu= CalcEquiproomItemCount(6,1,4524,-1)
local phaodai= CalcEquiproomItemCount(6,1,4525,-1)
local hoavang= CalcEquiproomItemCount(6,1,4526,-1)
local diemtongkim=GetCash()
local tien= CalcEquiproomItemCount(4,417,1,-1)
local szTitle = "B¹n §ang Cã : \n<color=green>"..phaotieu.." <color>Ph¸o TiÓu \n<color=green>"..phaodai.."<color> Ph¸o Trung\n<color=green>"..hoavang.."<color> Ph¸o §¹i\n<color=yellow>3 Nguyªn LiÖu + 1 Xu = 1 Phong Ph¸o §¹i<color>"
	local Opt = 
	{	
		{"Ta Muèn B¾t §Çu GhÐp", BatDauGhepHoa},
		{"KÕt thóc ®èi tho¹i. ", End}
	}
	CreateNewSayEx(szTitle,Opt)
end
function BatDauMuaHoa()

AskClientForNumber("MuaKhanChoangDo", 1, 500, "NhËp sè l­îng")

end
function BatDauMuaHoa2()

AskClientForNumber("MuaKhanChoangDo2", 1, 500, "NhËp sè l­îng")

end
function BatDauGhepHoa()

AskClientForNumber("BatDauGhepHoa_1", 1, 200, "NhËp sè l­îng")

end
function BatDauGhepHoa2()

AskClientForNumber("BatDauGhepHoa_2", 1, 200, "NhËp sè l­îng")

end
function BatDauGhepHoa_2(nNum)
	local tbItem = 
	{	
		{szName = "Phong Ph¸o Trung", tbProp = {6, 1, 4527, 1,0,0}, nCount = nNum},	
	}

local phaotieu= CalcEquiproomItemCount(6,1,4524,-1)
local phaodai= CalcEquiproomItemCount(6,1,4525,-1)
local hoavang= CalcEquiproomItemCount(6,1,4526,-1)
local diemtongkim=GetCash()
	
if phaotieu>=nNum  and phaodai>=nNum and hoavang>=nNum and diemtongkim>=2000*nNum  then
--Msg2Player(""..hoamai..","..hoaphuong..","..nNum.."")
--ConsumeEquiproomItem(nNum, 4,417, 1,-1)
ConsumeEquiproomItem(nNum, 6,1, 4525,-1)
ConsumeEquiproomItem(nNum, 6,1, 4524,-1)
ConsumeEquiproomItem(nNum, 6,1, 4526,-1)
Pay(2000*nNum)
--Msg2Player("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· dïng nguyªn liÖu ghÐp thµnh <color=cyan> "..nNum.." Phong Ph¸o Trung")
tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
else 
	Say("Kh«ng §ñ Nguyªn LiÖu HoÆc 10 Chç Trèng");

end
end
function BatDauGhepHoa_1(nNum)
	local tbItem = 
	{	
		{szName = "Phong Ph¸o §¹i", tbProp = {6, 1, 4528, 1,0,0}, nCount = nNum},	
	}
local phaotieu= CalcEquiproomItemCount(6,1,4524,-1)
local phaodai= CalcEquiproomItemCount(6,1,4525,-1)
local hoavang= CalcEquiproomItemCount(6,1,4526,-1)
local diemtongkim=GetCash()
local tien= CalcEquiproomItemCount(4,417,1,1)
	
if phaotieu>=nNum and hoavang>=nNum and phaodai>=nNum and tien>=nNum  then
--Msg2Player(""..hoamai..","..hoaphuong..","..nNum.."")
ConsumeEquiproomItem(nNum, 6,1, 4525,-1)
ConsumeEquiproomItem(nNum, 6,1, 4524,-1)
ConsumeEquiproomItem(nNum, 6,1, 4526,-1)
ConsumeEquiproomItem(nNum,4,417,1,1)
--Msg2Player("<color=green>Chóc mõng <color=yellow>"..GetName().."<color> ®· dïng nguyªn liÖu ghÐp thµnh <color=cyan> "..nNum.." B¸nh Kem ThiÕu Nhi.")
tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");

else 
	Say("Kh«ng §ñ Nguyªn LiÖu HoÆc 10 Chç Trèng");

end

end

---------------------------------------
function MuaNguyenLieuEvent()
local tbSay = {}

		tinsert(tbSay,"Mua 10Kg ThÞt Chã <20 Xu> ./MuaKhanChoangDo")
		tinsert(tbSay,"Tho¸t/no")
		Say(" §¹i hiÖp cÇn ta gióp vÊn ®Ò g× ? ", getn(tbSay), tbSay)


end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function MuaKhanChoangDo2(nNum)
local tbItem = {
	{szName="N¬ §á", tbProp={6,1,4493,1,0,0},nCount = nNum},
}
	local nCount_muaban = GetCash()
	if  nCount_muaban >= nNum*10000  then
		Pay(nNum*10000)
		tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
		Msg2Player("Chóc mõng "..myplayersex().." ®· mua thµnh c«ng <color=cyan>"..nNum.." N¬ §á")
	else
		Say("Kh«ng ®ñ  tiÒn v¹n, Xin Xem L¹i")
	end

end
function MuaKhanChoangDo(nNum)
local tbItem = {
	{szName="NÕn", tbProp={6,1,4496,1,0,0},nCount = nNum},
}
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= nNum  then
		ConsumeEquiproomItem(nNum, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
		Msg2Player("Chóc mõng "..myplayersex().." ®· mua thµnh c«ng <color=cyan>"..nNum.." NÐn")
	else
		Say("Kh«ng ®ñ  Xu, Xin Xem L¹i")
	end

end



-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc2000_cu()
local tbSay = {
--"Ta Muèn Mèc 3000/#Moc2000(1)",
--"Ta Muèn Mèc 6000/#Moc2000(2)",
"Ta Muèn Mèc 9000/#Moc2000(3)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay),tbSay)

end

function Moc2000()
	if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
		return
	end
	if GetTask(4996)>=300 and GetTask(4994)>=300 and GetTask(4995)==0 then
		local rannnn=random(1,10)
		if rannnn>=1 and rannnn<=4 then
			local tbVnNewItemDropAward = {
				[1] = {
					{szName="LÖnh Bµi Gäi Boss",tbProp={6,1,4489,1,0,0},nCount=10},
					{szName="§iÓm Kinh NghiÖm",nExp_tl = 20e6},
				},
				}
			tbAwardTemplet:GiveAwardByList(tbVnNewItemDropAward,"PhÇn Th­ëng Mèc 300")
			local szNews="<color=green>Chóc mõng ®¹i hiÖp <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=blue>20.000.000 EXP + 10 LÖnh Bµi Gäi Boss<color> ë mèc 300 Phong Ph¸o §¹i"
			LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
		elseif rannnn>=5 and rannnn<=7 then
			local tbVnNewItemDropAward = {
				[1] = {
						--{szName="Ng©n L­îng",nJxb=20000000,nCount=1},
						{szName="§iÓm Kinh NghiÖm",nExp_tl = 20e6},
					},
					}
					tbAwardTemplet:GiveAwardByList(tbVnNewItemDropAward,"PhÇn Th­ëng Mèc 300")
					local raeee=random(1,2)
					if raeee==1 then
						tbAwardTemplet:GiveAwardByList({{szName = "TÈy Tñy Kinh",tbProp={6,1,22,1,1},nCount=1,},}, "test", 1);
						local szNews="<color=green>Chóc mõng ®¹i hiÖp <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=blue>20.000.000 EXP + 1 TÈy Tñy Kinh<color> ë mèc 300 Phong Ph¸o §¹i"
						LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
					else
						tbAwardTemplet:GiveAwardByList({{szName = "Vâ L©m MËt TÞch",tbProp={6,1,26,1,1},nCount=1,},}, "test", 1);
						local szNews="<color=green>Chóc mõng ®¹i hiÖp <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=blue>20.000.000 EXP + 1 Vâ L©m MËt TÞch<color> ë mèc 300 Phong Ph¸o §¹i"
						LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
					end
		elseif rannnn>=8 or rannnn<=10 then
			local tbVnNewItemDropAward = {
				[1] = {
					{szName="§iÓm Kinh NghiÖm",nExp_tl = 20e6},
				},
				}
			tbAwardTemplet:GiveAwardByList(tbVnNewItemDropAward,"PhÇn Th­ëng Mèc 300")
			local szNews="<color=green>Chóc mõng ®¹i hiÖp <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=blue>20.000.000 EXP<color> ë mèc 300 Phong Ph¸o §¹i"
			LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
		end
		
		SetTask(4995,1)
	else
		Say("§¹i hiÖp ch­a ¨n ®ñ 300 Phong Ph¸o Trung + 300 Phong Ph¸o §¹i hoÆc ®· nhËn th­ëng mèc.")
		return
	end
end


----------------------------------------------------Nhan Moc 2000 -----------------------------------------------------------------------------------------------------
function Moc4000()
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
		return
	end
	if (GetTask(HOAPHUONGTRANG) >= 1000)  and (GetTask(NHANTHUONGMOC) == 1)then
		local tbAward = {
			[1] = {
			{szName="Ngù Phong",tbProp={0,3964},nCount=1,nQuality=1,nExpiredTime=30*24*60},
			{{szName="Ngò Hµnh Ên",tbProp={0,3953},nQuality=1,nExpiredTime=14*24*60},},
			{{szName="Xuyªn Y Ph¸ Gi¸p",tbProp={0,3991},nQuality=1,nCount=1,nExpiredTime=14*24*60},},
			{szName="Tinh S­¬ng Th¹ch (®¹i)",tbProp={6,1,4881,1,0,0},nCount=5},	
			{szName="MËt tÞch Kü N¨ng 150 CÊp 21",tbProp={6,1,4369,1,0,0},nCount=1},	
			},
		}	
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 40e9}}, "test", 1);
		--WriteLogPro("dulieu/event_moc2.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 1000\n");
		Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· NhËn Thµnh C«ng Mèc Event 1000")
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 400") SetTask(NHANTHUONGMOC,2)
				local a = random(1,20)
				if a==11 then
					tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ Tinh S­¬ng Y",tbProp={6,1,4883,1,1},nCount=1,},}, "test", 1);
				end;

				local b = random(1,30)
				if b==15 then
					tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ Tinh S­¬ng KhÝ Giíi",tbProp={6,1,4884,1,1},nCount=1,},}, "test", 1);
				end;

				local c = random(1,50)
				if c==25 then
					tbAwardTemplet:GiveAwardByList({{szName="MÆt N¹ ChiÕn Tr­êng Vuong Gi¶",tbProp={0,11,647,1,0,0},nCount=1,nExpiredTime=14*24*60},}, "test", 1);
				end;

				local d = random(1,5)
				if d==3 then
					tbAwardTemplet:GiveAwardByList({{szName = "Cµn Kh«n Song TuyÖt Béi",tbProp={6,1,2219,1,1},nCount=1,},}, "test", 1);
				end;

				local e = random(1,20)
				if e==5 then
					tbAwardTemplet:GiveAwardByList({{szName = "MËt tÞch Kü N¨ng 150 CÊp 22",tbProp={6,1,4370,1,1},nCount=1,},}, "test", 1);
				end;

				local f = random(1,50)
				if f==24 then
					tbAwardTemplet:GiveAwardByList({{szName = "§¹i thµnh bÝ kÝp 150 lªn CÊp 21",tbProp={6,1,4889,1,1},nCount=1,},}, "test", 1);
				end;

				local i = random(1,20)
				if f==4 then
					tbAwardTemplet:GiveAwardByList({{szName = "Tinh S­¬ng LÖnh",tbProp={6,1,4811,1,1},nCount=1,},}, "test", 1);
				end;
				
				local z = random(1,30)
				if z==5 then
					tbAwardTemplet:GiveAwardByList({{nExp_tl = 5e9}}, "test", 1);
					end;
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch­a §¹t Tíi Mèc Nµy")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc6000()
	if (GetTask(HOAPHUONGTRANG) >= 6000)  and (GetTask(NHANTHUONGMOC) == 2)then
		local tbAward = {
			[1] = {
				{nExp_tl = 15e9},
				{szName="Hµnh HiÖp LÖnh",tbProp={6,1,2566,1,0,0},nCount=500},
				{szName="LÖnh Bµi XÝch L©n",tbProp={6,1,2370,1,0,0},nCount=3},	
			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 600") SetTask(NHANTHUONGMOC,3)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch­a §¹t Tíi Mèc Nµy")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc8000()
	if (GetTask(HOAPHUONGTRANG) >= 8000) and (GetTask(NHANTHUONGMOC) == 3) then
		local tbAward = {
			[1] = {
				{nExp_tl = 20e9},
				{szName="Hµnh HiÖp LÖnh",tbProp={6,1,2566,1,0,0},nCount=500},
				{szName="LÖnh Bµi XÝch L©n",tbProp={6,1,2370,1,0,0},nCount=4},
			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 800") SetTask(NHANTHUONGMOC,4)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch­a §¹t Tíi Mèc Nµy")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc10000()
	if (GetTask(HOAPHUONGTRANG) >= 10000)  and (GetTask(NHANTHUONGMOC) == 4)then
		local tbAward = {
			[1] = {
				{szName="S­ Tö Hoµng Kim",tbProp={0,189},nCount=1,nQuality=1,nExpiredTime=30*24*60},
			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 1000") SetTask(NHANTHUONGMOC,5)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch­a §¹t Tíi Mèc Nµy")
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Reset()
local Xu = CalcEquiproomItemCount(4,417,1,1)
	if (GetTask(HOAPHUONGTRANG) >= 1000) and GetTask(NHANTHUONGMOC)==0 then
		if (Xu >= 20) then
			SetTask(HOAPHUONGTRANG,0) ConsumeEquiproomItem(20,4,417,1,-1) SetTask(NHANTHUONGMOC,1) 
			Talk(1,"","<color=red>"..myplayersex().." Chóc Mõng B¹n §· Reset Thµnh C«ng...!")
	else
		Talk(1,"","<color=red>"..myplayersex().." Kh«ng §ñ 20 Xu Xin KiÓm Tra L¹i...!")
		end
	else
		Talk(1,"","<color=red>"..myplayersex().." Ch­a ¨n ®ñ 1000 <color=yellow>B¸nh Kem ThiÕu Nhi<color> hoÆc ®· max 2000 c¸i.")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
