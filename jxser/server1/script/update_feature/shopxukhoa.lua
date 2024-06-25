-------------------------------------------------Script*By*Heart*Doldly***-----------------------------------------
IncludeLib("LEAGUE");
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\global\\namcung\\thuongtoptongkim.lua")
----------------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
--------------------------NPC-----------------------------------------------------
function main()
	local szTitle = "<npc><color=gold> GM_"..GetName().." <color>Chç Ta Cã B¸n TÊt C¶ VËt PhÈm Quý\n"
	local Opt = 
	{
       --  {"NhËn Quµ Th­ëng Dua top TK", thuongtop_tongkim},	
	{"Shop §çi §iÓm",TinhNang},
	{"KÕt thóc ®èi tho¹i. ", End}
	}
	CreateNewSayEx(szTitle,Opt)
end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TinhNang()
	local tbOpt = {
		 {"NhËn §çi Quµ TÝch §iÓm Liªn §Êu ", liendau},
		{"NhËn KiÕn ThiÕt", kienthiet},
		{"Sö Dông  §iÓm Tèng Kim", doidiemtk},
		{"reset shop tèng kim ®Ó mua l¹i", doidiemrs},
		{"Th«i",},
	}
	CreateNewSayEx("<npc><bclr=violet>Xin Chµo "..myplayersex().." §· GhÐ Th¨m Cöa TiÖm Cña Ta Ng­¬i Muèn Mua G× Kh«ng<bclr>", tbOpt)
end
function doidiemtk()
local szTitle = "<npc>Ng­¬i cÇn lÊy g×? H·y chän ®i nµo !"
	if (GetTask(5131) >= 2000) then
		Talk(1,"","Mçi TuÇn 1 Nh©n VËt ChØ §­îc §çi Tèi §a 2000 LÇn")
		return
	end
         local tbOpt =
	{
                
		{"LÊy Tinh Ngäc(80 diem = 1vien)",doitinhngoc},
                {"§çi 10 ty( d­íi c·i L·o 1(600k ®iÓm = 5 ty)",DoiKinhNghiem},
                {"§çi 500 TR exp(Trªn c·i l·o 1)",DoiKinhNghiem},
		{"Tho¸t"},
	}

	CreateNewSayEx(szTitle, tbOpt)

end
function doitinhngoc()
if (GetTask(5135) >= 30000) then
	Talk(1,"","Mçi TuÇn 1 Nh©n VËt ChØ §­îc §çi Tèi §a 30000 c¸i")
		return
	end;
	doitinzzzerrer2()
end
function doitinzzzerrer2()
	AskClientForNumber("DaiTinhN94",1,3000,"80Diem/1 c¸i")
end
function DaiTinhN94(num)
local nTinhNgoc = GetTask(747)
local tbTinhNgoc = num*80
	if (nTinhNgoc >= tbTinhNgoc) then
	      SetTask(747,GetTask(747)-tbTinhNgoc) 
              SetTask(5135,GetTask(5135)+num) 
	tbAwardTemplet:GiveAwardByList({tbProp={6,1,4807,1,0,0},},"§¸",num)
     Msg2SubWorld("<color=yellow>Chóc Mõng §¹i Cao Thñ <color> "..GetName().." <color=violet> §· §çi §iÓm Tèng Kim Thµnh Tinh Ngäc <color=red>Thî Buån <color>  ")
WriteLogPro("dulieu/epdo/doitinhngoc_tongkim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi tinh ngoc "..num.." cai _ diem tong kim con "..GetTask(747).." diem\n");	


	else
		Talk(1,"","Ng­¬i Muèn §æi "..num.." Tinh Ngäc, Cßn ThiÕu "..tbTinhNgoc-nTinhNgoc.." §iÓm Tèng Kim")
	end
end
-----------------------------------------
function DoiKinhNghiem()
	CreateNewSayEx("Xin Chµo Ng­êi T×m Ta Cã ViÖc G×", {{"Ta Muèn §æi 600k §iÓm Tèng Kim",DoiKinhNghiem1},{"Hñy Bá"}})
end

function DoiKinhNghiem1()
if (GetTask(5134) >= 10) then
	Talk(1,"","Mçi TuÇn 1 Nh©n VËt ChØ §­îc §çi Tèi §a 10 Lan")
		return
	end;	
local nTransLife = ST_GetTransLifeCount()
local nDiemTongKim = GetTask(747)
	if (GetTask(5969) < 1) then
		if (nDiemTongKim >= 600000) then
		tl_addPlayerExp(5000000000) SetTask(747,nDiemTongKim-600000);   
               SetTask(5134,GetTask(5134)+1) 
                SetTask(5131,GetTask(5131)+1)
                 WriteLogPro("dulieu/epdo/doicap_tongkim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi 1 cap  cai _ diem tong kim con "..GetTask(747).." diem\n");	
		else
			Say("Ng­¬i Kh«ng §ñ 600.000 §iÓm Tèng Kim")
		end
	else
		if (nDiemTongKim >= 600000) then
			tl_addPlayerExp(500000000) SetTask(747,nDiemTongKim-600000); 
                         SetTask(5134,GetTask(5134)+1) 
                        SetTask(5131,GetTask(5131)+1) 
WriteLogPro("dulieu/epdo/doiexp_tongkim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi 1 ty exp cai _ diem tong kim con "..GetTask(747).." diem\n");	
		else
			Say("Ng­¬i Kh«ng §ñ 600.000 §iÓm Tèng Kim")
		end
	end
end
---------------------------
function liendau()
	local szTitle = "<npc>.<enter><color=yellow>§¹i hiÖp §ang Cã <bclr=red>"..GetTask(2501).."<bclr>  ®iÓm liªn ®Êu\n<bclr=violet>L­u ý ChØ NhËn Mèc Cao NhÊt\n<color=green>note: sau khi nhËn mèc toµn bé ®iÓm sÏ bÞ xãa\n<bclr=red>48 TrËn (480 ®iÓm vinh dù) NhËn 500 KNB\n40 TrËn (400 ®iÓm vinh dù) NhËn 400 knb\n30 trËn (300 ®iÓm vinh dù) nhËn 300 knb\n10 trËn (100 ®iÓm vinh dù) 30knb <bclr>!"
	local tbOpt =
	{
             {"NhËn Th­ëng Th¾ng 48 TrËn(480 ®iÓm vinh dù)",BaoRuong8Ngay},
             {"NhËn Th­ëng Th¾ng 40 TrËn(400 ®iÓm vinh dù)",BaoRuong9Ngay},
             {"NhËn Th­ëng Th¾ng 30 TrËn(300 ®iÓm vinh dù)",BaoRuong10Ngay},
             {"Quµ Tham Gia Th¾ng Trªn 10 TrËn(100 ®iÓm vinh dù)",BaoRuong11Ngay},
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	


end
function BaoRuong8Ngay()
local PlayerPoint = 2501
local nCurTD1 = GetTask(PlayerPoint)
	if (nCurTD1 < 480) then
		Say("Ta C­êi Chª Nh÷ng KÎ Kh«ng Cã §ñ 48 TrËn Liªn §Êu")
		return
	end
	SetTask(2501,GetTask(2501)- 480)
       tbAwardTemplet:GiveAwardByList({tbProp={4,1496,1,1,0,0},nCount=500},1)

        WriteLogPro("dulieu/hoason/doidiemliendau_48.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t contong diem :"..GetTask(2501).." diem   \n");
	Msg2Player("<color=green>§· NhËn Th­ëng Th¾ng 48 trËn<color> §¹t Th­ëng <color=red>500 kim nguyªn b¶o<color> thµnh c«ng. Xin kh¸ch quan kiÓm tra l¹i!", 0)
     Msg2SubWorld("<color=green>Chóc Mõng §¹i Cao Thñ <color> "..GetName().." <color=green> §· NhËn Th­ëng Th¾ng Liªn §Êu 48 TrËn Víi TiÒn Th­ëng Lµ 500 kim Nguyªn B¶o,  ThËt Lµ NÓ §¹i Cao Thñ <color> "..GetName().." <color=green> ThËt Lµ Cham ChØ Cµy ")
end
-----------------------
function BaoRuong9Ngay()
local PlayerPoint = 2501
local nCurTD1 = GetTask(PlayerPoint)
	if (nCurTD1 < 400) then
		Say("Ta C­êi Chª Nh÷ng KÎ Kh«ng Cã §ñ 40 TrËn Liªn §Êu")
		return
	end
	SetTask(2501,GetTask(2501)- 400)
       tbAwardTemplet:GiveAwardByList({tbProp={4,1496,1,1,0,0},nCount=400},1)

        WriteLogPro("dulieu/hoason/doidiemliendau_40.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t contong diem :"..GetTask(2501).." diem   \n");
	Msg2Player("<color=green>§· NhËn Th­ëng Th¾ng 40 trËn<color> §¹t Th­ëng <color=red>400 kim nguyªn b¶o<color> thµnh c«ng. Xin kh¸ch quan kiÓm tra l¹i!", 0)
     Msg2SubWorld("<color=green>Chóc Mõng §¹i Cao Thñ <color> "..GetName().." <color=green> §· NhËn Th­ëng Th¾ng Liªn §Êu 40 TrËn Víi TiÒn Th­ëng Lµ 400 kim Nguyªn B¶o, ThËt Lµ NÓ §¹i Cao Thñ <color> "..GetName().." <color=green> ThËt Lµ Cham ChØ Cµy ")
end
-----------------
function BaoRuong10Ngay()
local PlayerPoint = 2501
local nCurTD1 = GetTask(PlayerPoint)
	if (nCurTD1 < 300) then
		Say("Ta C­êi Chª Nh÷ng KÎ Kh«ng Cã §ñ 30 TrËn Liªn §Êu")
		return
	end
	SetTask(2501,GetTask(2501)- 300)
       tbAwardTemplet:GiveAwardByList({tbProp={4,1496,1,1,0,0},nCount=300},1)

        WriteLogPro("dulieu/hoason/doidiemliendau_30.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t contong diem :"..GetTask(2501).." diem   \n");
	Msg2Player("<color=green>§· NhËn Th­ëng Th¾ng 30 trËn<color> §¹t Th­ëng <color=red>300 kim nguyªn b¶o<color> thµnh c«ng. Xin kh¸ch quan kiÓm tra l¹i!", 0)
     Msg2SubWorld("<color=green>Chóc Mõng §¹i Cao Thñ <color> "..GetName().." <color=green> §· NhËn Th­ëng Th¾ng Liªn §Êu 30 TrËn Víi TiÒn Th­ëng Lµ 300 kim Nguyªn B¶o,ThËt Lµ NÓ §¹i Cao Thñ <color> "..GetName().." <color=green> ThËt Lµ Cham ChØ Cµy ")
end
------------------------------
function BaoRuong11Ngay()
local PlayerPoint = 2501
local nCurTD1 = GetTask(PlayerPoint)
	if (nCurTD1 < 100) then
		Say("Ta C­êi Chª Nh÷ng KÎ Kh«ng Cã §ñ 10 TrËn Liªn §Êu")
		return
	end
	SetTask(2501,GetTask(2501)- 100)
       tbAwardTemplet:GiveAwardByList({tbProp={4,1496,1,1,0,0},nCount=30},1)

        WriteLogPro("dulieu/hoason/doidiemliendau_10.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t contong diem :"..GetTask(2501).." diem   \n");
	Msg2Player("<color=green>§· NhËn Th­ëng Th¾ng 10 trËn<color> §¹t Th­ëng <color=red>30 kim nguyªn b¶o<color> thµnh c«ng. Xin kh¸ch quan kiÓm tra l¹i!", 0)
    Msg2SubWorld("<color=green>Chóc Mõng §¹i Cao Thñ <color> "..GetName().." <color=green> §· NhËn Th­ëng Th¾ng Liªn §Êu 10 TrËn Víi TiÒn Th­ëng Lµ 30 kim Nguyªn B¶o, ThËt Lµ NÓ §¹i Cao Thñ <color> "..GetName().." <color=green> ThËt Lµ Cham ChØ Cµy ")
end
-----------------------
function kienthiet()
if CalcFreeItemCellCount() < 40 then
		return Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang")
	end
local tbAwardczc={
                   
             {szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,5069,1,0,0},nCount=10},

}
tbAwardTemplet:GiveAwardByList(tbAwardczc, "PhÇn Th­ëng");
end

--=====================================
function doidiemrs()
local nHour = tonumber(GetLocalDate("%H%M"))
local nWeek	= tonumber(date("%w"))
 if nWeek == 1 or nWeek == 2 or nWeek == 3 or nWeek ==4 or nWeek == 5 or nWeek == 6 then
Talk(1, "", "TÝnh N¨ng Rs Shop Tèng Kim ChØ Cho PhÐp Vµo Chñ NhËt......:LÝc 21h00 ®Õn 22h10") 
return 1; 
end 
local tiendong = 200
local ktra_tien = CalcEquiproomItemCount(4, 1496, 1, 1) ;

if (GetTask(5131) == 0)   then 
	Talk(1,""," Ng­¬i Ch­a §i Chî shop tèng kim mµ ®ßi rs g×!")
return end
if ktra_tien < tiendong then
Talk(1,"","Kh«ng ®ñ "..tiendong.." KNB lµm sao reset ®©y!")
return end
if (GetTask(5131) >= 10)   then 
SetTask(5131,0)
SetTask(5132,0)
SetTask(5133,0)
SetTask(5134,0)
SetTask(5146,0)
SetTask(5349,0)
ConsumeEquiproomItem(tiendong,4,1496,1,1) ---  xoa xu
Talk(1,"","§· Reset Shop TK thµnh c«ng!")
AddGlobalNews("<color=green>Xin Chóc Mõng <color=orange>"..myplayersex().." "..GetName().."<color> §· Reset Shop ®iÓm TK Hµng TuÇn...<color>")
WriteLogPro("dulieu/epdo/rsshop_tongkim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da rs shop tèng kim\n");	
end
end
--end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
