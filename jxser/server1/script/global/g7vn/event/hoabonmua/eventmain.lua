---------------------***Script*By*Heart*Doldly***--------------------------------
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\logevent\\logevent.lua");
Include("\\script\\logevent\\variables.lua");
--------------------------------------------------------
HOAPHUONGTRANG	 = 4999
NHANTHUONGMOC		 = 4997

----------------------config-----------
startdate= 20181204
endate=20191230

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
	
	local tbDailog = DailogClass:new(szNpcName);
	tbDailog.szTitleMsg = "<npc><bclr=violet>Chµo Mõng Nh©n SÜ Tham Gia Vâ L©m TruyÒn Kú!...<bclr>",
	
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)
	
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	local nTime = tonumber(GetLocalDate("%H%M"));
	if (nDate >= startdate and nDate <= endate and nTime >= 0000 and nTime <= 2359) then

--	tbDailog:AddOptEntry("GhÐp Bã Hoa Bèn Mïa", GhepBoHoaBonMua);
	--tbDailog:AddOptEntry("NhËn Th­ëng Mèc", NhanMoc);
----	tbDailog:AddOptEntry("Mua Nguyªn LiÖu Event", MuaNguyenLieuEvent);
--	tbDailog:AddOptEntry("Reset Mèc Event (10 Xu)", Reset);
	tbDailog:AddOptEntry("Show Top ThiÖp Chóc Mõng", ShowTopThiep);
	tbDailog:Show();
else
Talk(1,"","<bclr=violet>Ho¹t §éng ChØ Më Tõ 0h Ngµy 04 - 05 - 2018 §Õn 23h 59 Ngµy 30 - 06 - 2018 Xin Mêi Quay L¹i Sau<bclr>")
return 0;
end
end


--------------------------------------

function ShowTopThiep()

tbLogEvent:ShowTopList()
end

---------------------------------------
function GhepBoHoaBonMua ()
local hoamai= CalcEquiproomItemCount(6,1,30325,-1)
local hoaphuong= CalcEquiproomItemCount(6,1,30326,-1)
local hoagao= CalcEquiproomItemCount(6,1,30327,-1)
local hoathong= CalcEquiproomItemCount(6,1,30328,-1)
local kembonmua= CalcEquiproomItemCount(6,1,30329,-1)
local tien= CalcEquiproomItemCount(4,417,1,-1)
local szTitle = "B¹n §ang Cã : \n<color=green>"..hoamai.." <color>Hoa Mai \n<color=green>"..hoaphuong.." <color>Hoa Ph­îng \n<color=green>"..hoagao.."<color> Hoa G¹o\n<color=green>"..hoathong.."<color> Hoa Th«ng \n<color=green>"..kembonmua.."<color> Kem Bèn Mïa \n<color=green>"..tien.."<color> Xu \n<color=yellow>4 Loµi Hoa + 1 Kem Bèn Mïa + 1 Xu = 1 Bã Hoa Bèn Mïa<color>"
	local Opt = 
	{	
		{"Ta Muèn B¾t §Çu GhÐp", BatDauGhepHoa},
		{"KÕt thóc ®èi tho¹i. ", End}
	}
	CreateNewSayEx(szTitle,Opt)
end

function BatDauGhepHoa()

AskClientForNumber("BatDauGhepHoa_1", 1, 100, "NhËp sè l­îng")

end
function BatDauGhepHoa_1(nNum)
	local tbItem = 
	{	
		{szName = "Bo Hoa Bon Mua", tbProp = {6, 1, 30330, 1,0,0}, nCount = nNum, nExpiredTime=43200},	
	}

local hoamai= CalcEquiproomItemCount(6,1,30325,-1)
local hoaphuong= CalcEquiproomItemCount(6,1,30326,-1)
local hoagao= CalcEquiproomItemCount(6,1,30327,-1)
local hoathong= CalcEquiproomItemCount(6,1,30328,-1)
local kembonmua= CalcEquiproomItemCount(6,1,30329,-1)
local tien= CalcEquiproomItemCount(4,417,1,-1)
	
if hoamai>=nNum and hoaphuong>=nNum and hoagao>=nNum and hoathong>=nNum and kembonmua>=nNum and tien>=nNum then
Msg2Player(""..hoamai..","..hoaphuong..","..nNum.."")
ConsumeEquiproomItem(nNum, 4,417, 1,-1)
ConsumeEquiproomItem(nNum, 6,1, 30325,-1)
ConsumeEquiproomItem(nNum, 6,1, 30326,-1)
ConsumeEquiproomItem(nNum, 6,1, 30327,-1)
ConsumeEquiproomItem(nNum, 6,1, 30328,-1)
ConsumeEquiproomItem(nNum, 6,1, 30329,-1)

tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");

else 
	Say("Kh«ng §ñ Nguyªn LiÖu HoÆc 10 Chç Trèng");

end

end

---------------------------------------
function MuaNguyenLieuEvent()
local tbSay = {}

		tinsert(tbSay,"Mua 10 Kem Bèn Mïa <10 Xu> ./MuaKhanChoangDo")
		tinsert(tbSay,"Tho¸t/no")
		Say(" §¹i hiÖp cÇn ta gióp vÊn ®Ò g× ? ", getn(tbSay), tbSay)


end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function MuaKhanChoangDo()
local tbItem = {
	{szName="Kh¨n Chßng §á", tbProp={6,1,30329,1,0,0},nCount = 10},
}
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 10  then
		ConsumeEquiproomItem(10, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
		Msg2Player("Chóc Mõng "..myplayersex().." §· Mua Thµnh C«ng 10 10 Kem Bèn Mïa")
	else
		Say("Kh«ng ®ñ 50 Xu, Xin Xem L¹i")
	end

end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanMoc()
		Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."<color> Bã Hoa Bèn Mïa<color>\n<color=orange>L­u ý: NhËn Mèc Tèi §a 1000 Bã Hoa Bèn Mïa\nTrong Suèt Thêi Gian Ho¹t §éng<color>\n<color=pink>               T¨ng Thªm LÇn Sö Dông: 0KNB/LÇn<color>",5,"Xem PhÇn Th­ëng Mèc 500/XemMoc2000","Xem PhÇn Th­ëng Mèc 1000/XemMoc4000","Hñy Bá/No")
end
function XemMoc2000()
if (GetTask(NHANTHUONGMOC) == 0) then
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/500<color> Bã Hoa Bèn Mïa<color>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : \n 1. "..subknmoc1.." \n 2. "..pt1moc1.." \n 3. "..pt2moc1.."<color>",2,"NhËn PhÇn Th­ëng Mèc 500/Moc2000","Hñy Bá/No")
else 
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/500<color> Bã Hoa Bèn Mïa<color>\n<color=red>Kh«ng §ñ §iÒu KiÖn §Ó NhËn Mèc Nµy HoÆc §· NhËn Råi<color=red>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : \n 1. "..subknmoc1.." Kinh NghiÖm\n 2. "..pt1moc1.." \n 3. "..pt2moc1.."<color>",1,"Hñy Bá/No")
end
end

function XemMoc4000()
if (GetTask(NHANTHUONGMOC) == 1) then
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/1000<color> Bã Hoa Bèn Mïa<color>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : \n 1. "..subknmoc2.."\n 2. "..pt1moc2.."\n 3. "..pt2moc2.."\n 4. "..pt3moc2.."<color>",2,"NhËn PhÇn Th­ëng Mèc 1000/Moc4000","Hñy Bá/No")
else 
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/1000<color> Bã Hoa Bèn Mïa<color>\n<color=red>Kh«ng §ñ §iÒu KiÖn §Ó NhËn Mèc Nµy HoÆc §· NhËn Råi<color=red>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : \n 1. "..subknmoc2.."\n 2. "..pt1moc2.."\n 3. "..pt2moc2.."\n 4. "..pt3moc2.."<color>",1,"Hñy Bá/No")
end
end
function XemMoc6000()
if (GetTask(NHANTHUONGMOC) == 2) then
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/600<color> Bã Hoa Bèn Mïa<color>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : \n 1. "..subknmoc3.."\n 2. "..pt1moc3.."\n 3. "..pt2moc3.."\n 4. "..pt3moc3.."<color>",2,"NhËn PhÇn Th­ëng Mèc 6000/Moc6000","Hñy Bá/No")
else 
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/600<color> Bã Hoa Bèn Mïa<color>\n<color=red>Kh«ng §ñ §iÒu KiÖn §Ó NhËn Mèc Nµy HoÆc §· NhËn Råi<color=red>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : \n 1. "..subknmoc3.."\n 2. "..pt1moc3.."\n 3. "..pt2moc3.."\n 4. "..pt3moc3.."<color>",1,"Hñy Bá/No")
end
end
function XemMoc8000()
if (GetTask(NHANTHUONGMOC) == 3) then
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/800<color> Bã Hoa Bèn Mïa<color>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : \n 1. "..subknmoc4.."\n 2. "..pt1moc4.."\n 3. "..pt2moc4.."\n 4. "..pt3moc4.."<color>",2,"NhËn PhÇn Th­ëng Mèc 8000/Moc8000","Hñy Bá/No")
else 
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/800<color> Bã Hoa Bèn Mïa<color>\n<color=red>Kh«ng §ñ §iÒu KiÖn §Ó NhËn Mèc Nµy HoÆc §· NhËn Råi<color=red>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : \n 1. "..subknmoc4.."\n 2. "..pt1moc4.."\n 3. "..pt2moc4.."\n 4. "..pt3moc4.."<color>",1,"Hñy Bá/No")
end
end
function XemMoc10k()
if (GetTask(NHANTHUONGMOC) == 4) then
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/1000<color> Bã Hoa Bèn Mïa<color>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : \n 1. "..subknmoc5.."\n 2. "..pt1moc5.."\n 3. "..pt2moc5.."\n 4. "..pt3moc5.."<color>",2,"NhËn PhÇn Th­ëng Mèc 10000/Moc10000","Hñy Bá/No")
else 
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/1000<color> Bã Hoa Bèn Mïa<color>\n<color=red>Kh«ng §ñ §iÒu KiÖn §Ó NhËn Mèc Nµy HoÆc §· NhËn Råi<color=red>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : \n 1. "..subknmoc5.."\n 2. "..pt1moc5.."\n 3. "..pt2moc5.."\n 4. "..pt3moc5.."<color>",1,"Hñy Bá/No")
end
end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc2000_cu()
local tbSay = {
"Ta Muèn NhËn S­ Tö Hoµng Kim/#Moc2000_ngua(4480)",
"Ta Muèn NhËn L¹c §µ M«ng Cæ/#Moc2000_ngua(5213)",
"Ta Muèn NhËn H·n HuyÕt Long C©u/#Moc2000_ngua(5214)",
"Ta Muèn NhËn B¹ch Hæ TruyÒn ThuyÕt/#Moc2000_ngua(5215)",
"Ta Muèn NhËn Kim Tinh Hæ V­¬ng/#Moc2000_ngua(5216)",
"Ta Muèn NhËn Truy §iÖn/#Moc2000_ngua(5217)",
"Ta Muèn NhËn L­u Tinh /#Moc2000_ngua(5218)",
"Ta Muèn NhËn D­¬ng Sa /#Moc2000_ngua(5093)",
"Ta Muèn NhËn Ngù Phong /#Moc2000_ngua(5094)",
"Ta Muèn NhËn 400® Liªn §Êu/#Moc2000_diemvinhdu()",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay),tbSay)

end

function Moc2000()
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
		return
	end
	
	if (GetTask(HOAPHUONGTRANG) >= 500) and (GetTask(NHANTHUONGMOC) == 0) then
		local tbAward = {
			{szName="§å Phæ Tinh S­¬ng Y",tbProp={6,1,4883,1,0,0},nCount=1},	
			{szName="Tinh S­¬ng Th¹ch (®¹i)",tbProp={6,1,4881,1,0,0},nCount=5},	
			{szName="MÆt N¹ ChiÕn Tr­êng Vuong Gi¶",tbProp={0,11,647,1,0,0},nCount=1,nExpiredTime=14*24*60},	
		}
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 20e9}}, "test", 1);
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 300") SetTask(NHANTHUONGMOC,1)
		Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· NhËn Thµnh C«ng Mèc Event 500")
		WriteLogPro("dulieu/event_moc1.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 500\n");		

	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch­a §¹t Tíi Mèc Nµy")
	end
end

function Moc2000_diemvinhdu()
	if (GetTask(HOAPHUONGTRANG) >= 300) and (GetTask(NHANTHUONGMOC) == 0) then
		local tbAward = {
		{szName="LÖnh bµi vinh dù B¹ch Ng©n",tbProp={6,1,1255,1,0,0},nCount=4},		
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 300") SetTask(NHANTHUONGMOC,1)
		Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· NhËn Thµnh C«ng Mèc Event 300")	

	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch­a §¹t Tíi Mèc Nµy")
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
		WriteLogPro("dulieu/event_moc2.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 1000\n");
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
	if (GetTask(NHANTHUONGMOC) >= 1) then
		if (Xu >= 10) then
			SetTask(HOAPHUONGTRANG,0) ConsumeEquiproomItem(10,4,417,1,-1) SetTask(NHANTHUONGMOC,0)
			Talk(1,"","<color=red>"..myplayersex().." Chóc Mõng B¹n §· Reset Thµnh C«ng...!")
		else
			Talk(1,"","<color=red>"..myplayersex().." Kh«ng §ñ 1 Xu Xin KiÓm Tra L¹i...!")
		end
	else
		Talk(1,"","<color=red>"..myplayersex().." Ch­a Sö Dông §ñ 300 Bã Hoa Bèn Mïa")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
