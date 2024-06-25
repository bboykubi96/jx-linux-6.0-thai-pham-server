Include("\\script\\global\\systemconfig.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua") 
Include("\\script\\misc\\maskfree\\event.lua")
Include("\\script\\event\\vnchristmas2006\\event.lua")	
Include("\\script\\global\\vn\\extpointfunc_proc.lua")
Include("\\script\\activitysys\\npcdailog.lua")
------------------------------------------------------------------------------
T_NAPTHE_X2 = 5973
CheckPass = {{"VoLamTruyenKy",1},}
HOAPHUONGTRANG	 = 5120
NHANTHUONGMOC		 = 4991
---------------------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
-------------------------------------------------------------------------
function main()
local CheckXu = GetExtPoint(1)
local SoXuCon = CheckXu *1
  if  GetExtPoint(1)>= 40000 then
          -- NewWorld(208,1566,3235) 
          -- Msg2SubWorld("Nh©n VËt:<color=red> "..GetName().."<color> <color=violet> §· §­îc 1 VÐ Vip Tham Quan  §¶o Hoang Kh«ng Khø Håi<color=>,<color=red>  V× Gian Th­¬ng Cè Bug KNB T¹i TiÒn Trang, ae Chó ý Tªn Nµy  !") 
         --WriteLogPro("dulieu/nganhang/HackBank.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\ hack bank -- -- TiÒn Trang ["..SoXuCon.." KNB\n");
	end
if (GetBoxLockState() == 1) then
	Talk(1,"","<bclr=violet>Mêi "..myplayersex().." Më Khãa R­¬ng Tr­íc<bclr>")
return end
	local tbOpt = {
		{"Ta Muèn KiÓm Tra Kim Nguyªn B¶o",KiemTra_TD},
		{"§æi 1 KNB Sang 100 TiÒn §ång",DoiTienDong},
		-- {"NhËn Phóc Lîi N¹p ThÎ",NhanMoc},
        -- {"Ta Muèn §çi §iÓm TK LÊy KNB",DoiDiemTongKim},
                --{"Ta Muèn §çi TiÒn §ång Khãa lÊy KNB",mocnap},
		{"Nh©n TiÖn GhÐ Qua Th«i",No},
	}
	CreateNewSayEx("Kh¸ch Quan GhÐ Th¨m Bæn TiÖm Cã ViÖc G×", tbOpt)
end
function NhanMoc()
		Say("<color=green>"..myplayersex().." §· N¹p Tång Sè TiÒn Lµ:  <color=red>"..GetTask(HOAPHUONGTRANG)..".000<color> ViÖt Nam §ång<color>\n<color=orange>L­u ý: da rut moc<color=red>"..GetTask(4992).."/2.000.000 VIÖt Nam §ång\nTrong Suèt Thêi Gian Ho¹t §éng<color>",5,"Xem PhÇn Th­ëng Mèc 5.00.0000 VND/XemMoc1000","Xem PhÇn Th­ëng Mèc 1.000.0000 VND/XemMoc2000","Xem PhÇn Th­ëng Mèc 2.000.0000 VND/XemMoc4000","Hñy Bá/No")
end
function XemMoc1000()
if (GetTask(NHANTHUONGMOC) == 0) then
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG)..".000/500.0000 <color> VND<color>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : Xem Trªn Wep\n<color>",2,"NhËn PhÇn Th­ëng Mèc 500.000/Moc1000","Hñy Bá/No")
else 
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG)..".000/500.0000 <color>VND<color>\n<color=red>Kh«ng §ñ §iÒu KiÖn §Ó NhËn Mèc Nµy HoÆc §· NhËn Råi<color=red>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : Xem Trªn Wep \n<color>",1,"Hñy Bá/No")
end
end
function XemMoc2000()
if (GetTask(NHANTHUONGMOC) == 1) then
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG)..".000/1.000.0000 <color> VND<color>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : Xem Trªn Wep\n<color>",2,"NhËn PhÇn Th­ëng Mèc 1.000.000/Moc2000","Hñy Bá/No")
else 
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG)..".000/1.000.0000 <color>VND<color>\n<color=red>Kh«ng §ñ §iÒu KiÖn §Ó NhËn Mèc Nµy HoÆc §· NhËn Råi<color=red>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : Xem Trªn Wep \n<color>",1,"Hñy Bá/No")
end
end
function XemMoc4000()
if (GetTask(NHANTHUONGMOC) == 2) then
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG)..".000/2.000.0000 <color> VND<color>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : Xem Trªn Wep\n <color>",2,"NhËn PhÇn Th­ëng Mèc 2.000.000/Moc4000","Hñy Bá/No")
else 
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG)..".000/2.000.0000 <color> VND<color>\n<color=red>Kh«ng §ñ §iÒu KiÖn §Ó NhËn Mèc Nµy HoÆc §· NhËn Råi<color=red>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : Xem Trªn Wep\n<color>",1,"Hñy Bá/No")
end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc1000()
	if (GetTask(HOAPHUONGTRANG) >= 500) and (GetTask(NHANTHUONGMOC) == 0) then
		local tbAward = {
                                {szName="nl",tbProp={6,1,5337,1,0,0},nCount=1},
				 {szName="bachho",tbProp={0,9379},nQuality=1,nCount=1},
                            		
		}
                   AddGlobalNews("<color=green>Chóc Mõng "..myplayersex().." <color=yellow>"..GetName().." §· NhËn Th­ëng Mèc 500.000 Ngµn ViÖt Nam §ång<color>")
                   Msg2SubWorld("<color=green>Chóc Mõng "..myplayersex().." <color=yellow>"..GetName().." §· NhËn Th­ëng Mèc 500.000 Ngµn ViÖt Nam §ång<color>")
                  WriteLogPro("dulieu/nganhang/moc50trk.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nnhan moc moc200k \n");
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 1000") SetTask(NHANTHUONGMOC,1)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch­a §¹t Tíi Mèc Nµy")
	end
end
function Moc2000()
	if (GetTask(HOAPHUONGTRANG) >= 1000) and (GetTask(NHANTHUONGMOC) == 1) then
		local tbAward = {
                                {szName="nl",tbProp={6,1,5337,1,0,0},nCount=2},

				 {szName="an",tbProp={0,9347},nQuality=1,nCount=1},
        {szName="B¶o R­¬ng Minh Ph­îng Hé UyÓn",tbProp={6,1,6416,1,0,0},nCount=1,tbParam={1,0,0,0,0,0}},
	{szName="B¶o R­¬ng Minh Ph­îng Yªu §¸i",tbProp={6,1,6418,1,0,0},nCount=1,tbParam={3,0,0,0,0,0}},
	{szName="B¶o R­¬ng Minh Ph­îng Yªu §¸i",tbProp={6,1,6419,1,0,0},nCount=1,tbParam={4,0,0,0,0,0}},
	{szName="B¶o R­¬ng Minh Ph­îng Yªu §¸i",tbProp={6,1,6420,1,0,0},nCount=1,tbParam={5,0,0,0,0,0}},
	{szName="B¶o R­¬ng Minh Ph­îng Yªu §¸i",tbProp={6,1,6423,1,0,0},nCount=1,tbParam={8,0,0,0,0,0}},
	{szName="B¶o R­¬ng Minh Ph­îng Yªu §¸i",tbProp={6,1,6424,1,0,0},nCount=1,tbParam={9,0,0,0,0,0}},
	{szName="B¶o R­¬ng Minh Ph­îng Yªu §¸i",tbProp={6,1,6425,1,0,0},nCount=1,tbParam={10,0,0,0,0,0}},

						
		}
                   AddGlobalNews("<color=green>Chóc Mõng "..myplayersex().." <color=yellow>"..GetName().." §· NhËn Th­ëng Mèc 1000.000 Ngµn ViÖt Nam §ång<color>")
                   Msg2SubWorld("<color=green>Chóc Mõng "..myplayersex().." <color=yellow>"..GetName().." §· NhËn Th­ëng Mèc 1000.000 Ngµn ViÖt Nam §ång<color>")
                  WriteLogPro("dulieu/nganhang/moc1trk.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nnhan moc moc200k \n");
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 2000") SetTask(NHANTHUONGMOC,2)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch­a §¹t Tíi Mèc Nµy")
	end
end
----------------------------------------------------Nhan Moc 2000 -----------------------------------------------------------------------------------------------------
function Moc4000()
	if (GetTask(HOAPHUONGTRANG) >= 2000)  and (GetTask(NHANTHUONGMOC) == 2)then
		local tbAward = {
        {szName="nl",tbProp={6,1,5337,1,0,0},nCount=3},
	{szName="B¶o R­¬ng Minh Ph­îng Yªu §¸i",tbProp={6,1,6417,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}},
	{szName="B¶o R­¬ng Minh Ph­îng Yªu §¸i",tbProp={6,1,6421,1,0,0},nCount=1,tbParam={6,0,0,0,0,0}},
	{szName="B¶o R­¬ng Minh Ph­îng Yªu §¸i",tbProp={6,1,6422,1,0,0},nCount=1,tbParam={7,0,0,0,0,0}},
	{szName="xuyen y",tbProp={0,9360},nQuality=1,nCount=1},
        {szName="mn",tbProp={0,9333},nQuality=1,nCount=1},
	{szName="nl",tbProp={6,1,4347,1,0,0},nCount=1},	
{szName = "Cµn Kh«n Liªn Hoa",tbProp={6,1,5041,1,0,0},nCount=5000},	
		}
                      AddGlobalNews("<color=green>Chóc Mõng "..myplayersex().." <color=yellow>"..GetName().." §· NhËn Th­ëng Mèc 2000.000 Ngµn ViÖt Nam §ång<color>")
                       Msg2SubWorld("<color=green>Chóc Mõng "..myplayersex().." <color=yellow>"..GetName().." §· NhËn Th­ëng Mèc 2000.000 Ngµn ViÖt Nam §ång<color>")
                       WriteLogPro("dulieu/nganhang/moc2trk.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nnhan moc moc400k  \n");
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 4000") SetTask(NHANTHUONGMOC,3)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch­a §¹t Tíi Mèc Nµy")
	end
end
function DoiDiemTongKim()
local tichluy=nt_getTask(747)
if nt_getTask(747)<300000 then
return Talk(1,"","b¹n Kh«ng §ñ 300.000 TÝch Lòy, §iÓm TÝch Lòy HiÖn T¹i Lµ "..tichluy.."")
end
SetTask(747,GetTask(747)-300000)
tbAwardTemplet:GiveAwardByList({tbProp={4,1496,1,1,0,0},nCount=10},1)
Msg2SubWorld("Chóc Mõng "..myplayersex().." §· §æi <color=yellow>200.000<color> §iÓm  Thµnh <color=yellow> 10 <color> KNB Thµnh C«ng")
WriteLogPro("dulieu/nganhang/Doidiemtk.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." "..GetIP().." da doi 300.000 diemtk( §çi KNB) thanh 10 knb\n");

end
----------------------------------------------------------------------------KiÓm Tra TiÒn §ång-----------------------------------------------------------------------------------------------------------------------
function KiemTra_TD()
	local nMoney = GetExtPoint(1)
	if (nMoney >= 32768) then
		nMoney = 0
		Msg2Player("T¹m thêi kh«ng thÓ rót TiÒn ®ång! Xin liªn hÖ víi nhµ s¶n xuÊt ®Ó gi¶i quyÕt!") 
		return
	end
	if (nMoney == 0) then
		Say("Xin Lçi: <color=yellow>"..myplayersex().."<color> Kh«ng Cã Göi Kim Nguyªn B¶o T¹i §©y...!")
	else
		local nCurVar = nMoney
		Say("Xin Chµo <color=yellow>"..myplayersex()..":<color> \nHiÖn T¹i <color=yellow>"..myplayersex().."<color> §ang Göi T¹i §©y<color=yellow> "..nCurVar.." <color>Kim Nguyªn B¶o",3,
		"Ta Muèn Rót/Rut_KNB",
                   
		"BiÕt råi/no") 
	end
end

---------------------------------------------------------------------------Rót TiÒn §ång-------------------------------------------------------------------------------------------------------------------------------
function Rut_KNB()
	AskClientForNumber("RutKNB",2,200,"Sè L­îng KNB")
end
function RutKNB(num)
if (num >= 32768) then
		num = 0
		Msg2Player("T¹m thêi kh«ng thÓ rót TiÒn ®ång! Xin liªn hÖ víi nhµ s¶n xuÊt ®Ó gi¶i quyÕt!") 
		return
	end
local nGoldPoint = GetExtPoint(1);
	if nGoldPoint >= num and num>0 then
			PayExtPoint(1,num);
			AddStackItem(num,4,1496,1,1,0,0)
            SetTask(5120,GetTask(5120)+num)
   -- SetTask(5138,GetTask(5138)+1)
			WriteLogPro("dulieu/DoiTienDong.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Rut THanh Cong "..num.."\n");
		Msg2Player("Chóc Mõng "..myplayersex().." §· Rót Thµnh C«ng "..num.." Kim Nguyªn B¶o")
		-- Msg2SubWorld("<color=green>Xin Chóc Mõng<color> "..GetName().." <color=green> Rót Thµnh C«ng "..num.." KNB")
	else
		Talk(1, "", ""..myplayersex().." §ang Cã: <color=yellow>"..nGoldPoint.."<color> Kim Nguyªn B¶o\nCßn ThiÕu: "..nGoldPoint-num.." Kim Nguyªn B¶o<bclr>")
	end
end
---------------------------------------------------------Rót Kim Nguyªn B¶o-----------------------------------------------------------------------------------------------------------------------------
function Rut_KNB1()
local CheckXu = GetExtPoint(1)
local SoXuCon = CheckXu *1
	if (GetExtPoint(1) >= 200) then
		PayExtPoint(1,200)
                -- SetTask(5122,GetTask(5122)+200)
   SetTask(5121,GetTask(5121)+200)
   -- SetTask(5138,GetTask(5138)+1)
		tbAwardTemplet:GiveAwardByList({tbProp={4,1496,1,1,0,0},nCount=220},1)
       		WriteLogPro("dulieu/nganhang/napKNB.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da nap THanh Cong "..num.."con lai"..GetExtPoint(1).."\n");
	else
		Talk(1, "", "<color=red>"..myplayersex().." §ang Cã: <color=yellow>"..GetExtPoint(1).."<color> TiÒn MÆt, Nªn Kh«ng §ñ Rót<color>")
	end
end
--------------------------------------------------------------------------Göi TiÒn §ång-----------------------------------------------------------------------------------------------------------
function Gui_KNB()
	AskClientForNumber("GuiKNB",1,1000,"Sè L­îng KNB")
end
function GuiKNB(num)
local KNB = CalcEquiproomItemCount(4,1496,1,1);
	if KNB >= 1 then
			ConsumeEquiproomItem(num,4,1496,1,-1)
			AddExtPoint(1,num)
			WriteLogPro("dulieu/nganhang/napKNB.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da nap THanh Cong "..num.."con lai"..GetExtPoint(1).."\n");
		Msg2Player("Chóc Mõng "..myplayersex().." §· Göi Thµnh C«ng "..num.." Kim Nguyªn B¶o")
	else
		Talk(1, "", "<bclr=red>"..myplayersex().." §ang Cã: "..KNB.." Kim Nguyªn B¶o\n                    Cßn ThiÕu: "..num-KNB.." Kim Nguyªn B¶o<bclr>")
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiTienDong()
	AskClientForNumber("DoiTD",1,200,"1 KNB => 100 Xu")
end
function DoiTD(num)
local KNB = CalcEquiproomItemCount(4,1496,1,1); local Xu = num*100
local Free = CalcFreeItemCellCount()
	if (num < 0 or num > 32768) then
	WriteLogPro("dulieu/nganhang/hackdoixu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da rut "..num.." Kim nguyen bao- Tang Them : "..Check.." NL BKim - TiÒn Trang ["..SoXuCon.." KNB\n");
	return
	end
	if (Free >= 20) then
		if (KNB >= num) then
			ConsumeEquiproomItem(num,4,1496,1,-1)
			tbAwardTemplet:GiveAwardByList({tbProp={4,417,1,1,0,0},nCount=Xu},1)
			-- Msg2SubWorld("Chóc Mõng <color=green>"..GetName().." <color=>§· §æi <color=yellow>"..num.."<color> Kim Nguyªn B¶o Thµnh <color=yellow>"..Xu.."<color> TiÒn §ång Thµnh C«ng")
			Msg2Player("Chóc Mõng <color=green>"..GetName().." <color=>§· §æi <color=yellow>"..num.."<color> Kim Nguyªn B¶o Thµnh <color=yellow>"..Xu.."<color> TiÒn §ång Thµnh C«ng")
			WriteLogPro("dulieu/nganhang/DoiTienDong.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." "..GetIP().." da rut "..num.." kim nguyen bao thanh "..Xu.." xu\n");
		else
			Talk(1, "", "<color=red>"..myplayersex().." §ang Cã: <color=yellow>"..KNB.."<color> Kim Nguyªn B¶o\n         Sè L­îng CÇn §æi: <color=yellow>"..num.."<color> Kim Nguyªn B¶o\n                    Cßn ThiÕu: <color=yellow>"..num-KNB.."<color> Kim Nguyªn B¶o<color>")
		end
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ 20 ¤ Trèng H·y S¾p XÕp L¹i §i")
	end 
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiTienDong1knb()
local tbItem = {
	{szName="TiÒn §ång", tbProp={4,417,1,1,0,0},nCount = 100},
}
local KNB = CalcEquiproomItemCount(4,1509,1,1);
	if KNB>= 1 then
			ConsumeEquiproomItem(1,4,1496,1,-1)
			tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
			WriteLogPro("dulieu/nganhang/DoiTienDong.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi 1 KNB Thanh 100 Xu\n");
		Msg2Player("Chóc Mõng "..myplayersex().." §· Göi Thµnh C«ng 1000 TiÒn §ång")
		Msg2SubWorld("<color=green>Xin Chóc Mõng<color> "..GetName().." <color=green> §æi Thµnh C«ng 1 KNB Sang 100 Xu")
	else
		Talk(1, "", "<bclr=red>"..myplayersex().." B¹n Kh«ng §ñ 1 Kim Nguyªn B¶o\n  ")
	end
end
----------------------------------------------------------------------§æi TiÒn §ång------------------------------------------------------------------------------------------------------------------------------------
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
