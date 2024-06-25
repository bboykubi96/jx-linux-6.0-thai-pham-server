---------------------***Script*By*Heart*Doldly***--------------------------------
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
--------------------------------------------------------
HOAPHUONGTRANG	 = 4996
NHANTHUONGMOC		 = 4995

----------------------config-----------
startdate= 20190307
endate=20191210

subknmoc1="1 Mãn Hoµn Mü An Bang 30 Ngµy Random"
subknmoc2="1 Mãn Hoµn Mü An Bang 30 Ngµy Random"
subknmoc3="1 XÝch Long C©u 7 Ngµy"
subknmoc4=""
subknmoc5=""

pt1moc1=""
pt2moc1=""

pt1moc2=""
pt2moc2=""
pt3moc2=""

pt1moc3=""
pt2moc3=""
pt3moc3=""


pt1moc4=""
pt2moc4=""
pt3moc4=""

pt1moc5=""
pt2moc5=""
pt3moc5=""
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
--dofile("script/global/g7vn/event83/eventmain.lua");
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	local nTime = tonumber(GetLocalDate("%H%M"));
	
	if (nDate >= startdate and nDate <= endate and nTime >= 0000 and nTime <= 2359) then
	local szTitlezs = "<color=yellow>Ho¹t §éng Kû NiÖm 8-3:<color>\n<color=red>Mèc 1: 1 Mãn AB Hoµn Mü 30 Ngµy\nMèc 2: 1 Mãn AB Hoµn Mü 30 Ngµy\nMèc 3: 1 XÝch Long C©u 7 Ngµy<color>\n<color=green>Nhµ Ng­êi §· §¹t §Õn Mèc Nµo Råi???<color>"
		local tbOpt = {
			{"NhËn Th­ëng Mèc",NhanMoc},
			{"Tho¸t",},
		}
		CreateNewSayEx(szTitlezs, tbOpt)
else
Talk(1,"","<bclr=violet>Ho¹t §éng ChØ Më Tõ 0h Ngµy 04 - 05 - 2018 §Õn 23h 59 Ngµy 30 - 06 - 2018 Xin Mêi Quay L¹i Sau<bclr>")
return 0;
end
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanMoc()
		Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."<color> Giá Hoa Hång VÜnh Cöu<color>\n<color=orange>L­u ý: NhËn Mèc Tèi §a 300 Giá Hoa Hång VÜnh Cöu\nTrong Suèt Thêi Gian Ho¹t §éng<color>\n<color=pink>               T¨ng Thªm LÇn Sö Dông: 0KNB/LÇn<color>",5,"Xem PhÇn Th­ëng Mèc 100/XemMoc2000","Xem PhÇn Th­ëng Mèc 200/XemMoc4000","Xem PhÇn Th­ëng Mèc 300/XemMoc6000","Hñy Bá/No")
end
function XemMoc2000()
if (GetTask(NHANTHUONGMOC) == 0) then
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/100<color> Giá Hoa Hång VÜnh Cöu<color>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : \n "..subknmoc1.." \n "..pt1moc1.." \n "..pt2moc1.."<color>",2,"NhËn PhÇn Th­ëng Mèc 100/Moc2000","Hñy Bá/No")
else 
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/100<color> Giá Hoa Hång VÜnh Cöu<color>\n<color=red>Kh«ng §ñ §iÒu KiÖn §Ó NhËn Mèc Nµy HoÆc §· NhËn Råi<color=red>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : \n "..subknmoc1.." Kinh NghiÖm\n "..pt1moc1.." \n "..pt2moc1.."<color>",1,"Hñy Bá/No")
end
end

function XemMoc4000()
if (GetTask(NHANTHUONGMOC) == 1) then
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/200<color> Giá Hoa Hång VÜnh Cöu<color>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : \n "..subknmoc2.."\n "..pt1moc2.."\n "..pt2moc2.."\n "..pt3moc2.."<color>",2,"NhËn PhÇn Th­ëng Mèc 200/Moc4000","Hñy Bá/No")
else 
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/200<color> Giá Hoa Hång VÜnh Cöu<color>\n<color=red>Kh«ng §ñ §iÒu KiÖn §Ó NhËn Mèc Nµy HoÆc §· NhËn Råi<color=red>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : \n "..subknmoc2.."\n "..pt1moc2.."\n "..pt2moc2.."\n "..pt3moc2.."<color>",1,"Hñy Bá/No")
end
end
function XemMoc6000()
if (GetTask(NHANTHUONGMOC) == 2) then
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/300<color> Giá Hoa Hång VÜnh Cöu<color>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : \n "..subknmoc3.."\n "..pt1moc3.."\n "..pt2moc3.."\n "..pt3moc3.."<color>",2,"NhËn PhÇn Th­ëng Mèc 300/Moc6000","Hñy Bá/No")
else 
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/300<color> Giá Hoa Hång VÜnh Cöu<color>\n<color=red>Kh«ng §ñ §iÒu KiÖn §Ó NhËn Mèc Nµy HoÆc §· NhËn Råi<color=red>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : \n "..subknmoc3.."\n "..pt1moc3.."\n "..pt2moc3.."\n "..pt3moc3.."<color>",1,"Hñy Bá/No")
end
end
function XemMoc8000()
if (GetTask(NHANTHUONGMOC) == 3) then
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/800<color> Giá Hoa Hång VÜnh Cöu<color>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : \n "..subknmoc4.."\n "..pt1moc4.."\n "..pt2moc4.."\n "..pt3moc4.."<color>",2,"NhËn PhÇn Th­ëng Mèc 8000/Moc8000","Hñy Bá/No")
else 
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/800<color> Giá Hoa Hång VÜnh Cöu<color>\n<color=red>Kh«ng §ñ §iÒu KiÖn §Ó NhËn Mèc Nµy HoÆc §· NhËn Råi<color=red>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : \n "..subknmoc4.."\n "..pt1moc4.."\n "..pt2moc4.."\n "..pt3moc4.."<color>",1,"Hñy Bá/No")
end
end
function XemMoc10k()
if (GetTask(NHANTHUONGMOC) == 4) then
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/1000<color> Giá Hoa Hång VÜnh Cöu<color>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : \n "..subknmoc5.."\n "..pt1moc5.."\n "..pt2moc5.."\n "..pt3moc5.."<color>",2,"NhËn PhÇn Th­ëng Mèc 10000/Moc10000","Hñy Bá/No")
else 
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/1000<color> Giá Hoa Hång VÜnh Cöu<color>\n<color=red>Kh«ng §ñ §iÒu KiÖn §Ó NhËn Mèc Nµy HoÆc §· NhËn Råi<color=red>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : \n "..subknmoc5.."\n "..pt1moc5.."\n "..pt2moc5.."\n "..pt3moc5.."<color>",1,"Hñy Bá/No")
end
end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc2000()
	if (GetTask(HOAPHUONGTRANG) >= 100) and (GetTask(NHANTHUONGMOC) == 0) then
		local tbAward = {
		{szName="[Hoµn Mü] An Bang B¨ng Tinh Th¹ch H¹ng Liªn",tbProp={0,424},nQuality=1,nCount=1,nExpiredTime=60*24*30,nRate=25},
		{szName="[Hoµn Mü] An Bang Cóc Hoa Th¹ch ChØ Hoµn",tbProp={0,425},nQuality=1,nCount=1,nExpiredTime=60*24*30,nRate=25},
		{szName="[Hoµn Mü] An Bang §iÒn Hoµng Th¹ch Ngäc Béi",tbProp={0,426},nQuality=1,nCount=1,nExpiredTime=60*24*30,nRate=25},
		{szName="[Hoµn Mü] An Bang Kª HuyÕt Th¹ch Giíi ChØ",tbProp={0,427},nQuality=1,nCount=1,nExpiredTime=60*24*30,nRate=25},			
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 100") SetTask(NHANTHUONGMOC,1)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch­a §¹t Tíi Mèc Nµy")
	end
end
----------------------------------------------------Nhan Moc 2000 -----------------------------------------------------------------------------------------------------
function Moc4000()
	if (GetTask(HOAPHUONGTRANG) >= 200)  and (GetTask(NHANTHUONGMOC) == 1)then
		local tbAward = {
			[1] = {
		{szName="[Hoµn Mü] An Bang B¨ng Tinh Th¹ch H¹ng Liªn",tbProp={0,424},nQuality=1,nCount=1,nExpiredTime=60*24*30,nRate=25},
		{szName="[Hoµn Mü] An Bang Cóc Hoa Th¹ch ChØ Hoµn",tbProp={0,425},nQuality=1,nCount=1,nExpiredTime=60*24*30,nRate=25},
		{szName="[Hoµn Mü] An Bang §iÒn Hoµng Th¹ch Ngäc Béi",tbProp={0,426},nQuality=1,nCount=1,nExpiredTime=60*24*30,nRate=25},
		{szName="[Hoµn Mü] An Bang Kª HuyÕt Th¹ch Giíi ChØ",tbProp={0,427},nQuality=1,nCount=1,nExpiredTime=60*24*30,nRate=25},	
			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 400") SetTask(NHANTHUONGMOC,2)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch­a §¹t Tíi Mèc Nµy")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc6000()
	if (GetTask(HOAPHUONGTRANG) >= 300)  and (GetTask(NHANTHUONGMOC) == 2)then
		local Index = AddItem(0,10,9,10,0,0,0)   ITEM_SetExpiredTime(Index,24*60*7) SyncItem(Index)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch­a §¹t Tíi Mèc Nµy")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc8000()
	if (GetTask(HOAPHUONGTRANG) >= 8000) and (GetTask(NHANTHUONGMOC) == 3) then
		local tbAward = {
			[1] = {
				{nExp_tl = 10e9},
				{szName="Minh Ph­îng LÖnh",tbProp={6,1,2371,1,0,0},nCount=3},
				{szName="§»ng Long LÖnh",tbProp={6,1,2372,1,0,0},nCount=3},
				{szName="B¶o R­¬ng ThÇn BÝ",tbProp={6,1,30036,1,0,0},nCount=100},
				--{szName="XÝch Long C©u TruyÒn ThuyÕt",tbProp={0,3941},nQuality=1,nCount=1},
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
				
				{szName="§»ng Long LÖnh",tbProp={6,1,2372,1,0,0},nCount=3},
				{szName="B¶o R­¬ng ThÇn BÝ",tbProp={6,1,30036,1,0,0},nCount=100},
				{szName="Long T­¬ng Chi L©n H¹ Giíi",tbProp={0,4026},nQuality=1,nCount=1},
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
	if (GetTask(NHANTHUONGMOC) >= 5) then
		if (Xu >= 1) then
			SetTask(HOAPHUONGTRANG,0) ConsumeEquiproomItem(1,4,417,1,-1) SetTask(NHANTHUONGMOC,0)
			Talk(1,"","<color=red>"..myplayersex().." Chóc Mõng B¹n §· Reset Thµnh C«ng...!")
		else
			Talk(1,"","<color=red>"..myplayersex().." Kh«ng §ñ 1 Xu Xin KiÓm Tra L¹i...!")
		end
	else
		Talk(1,"","<color=red>"..myplayersex().." Ch­a Sö Dông §ñ 10000 Giá Hoa Hång VÜnh Cöu")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------
