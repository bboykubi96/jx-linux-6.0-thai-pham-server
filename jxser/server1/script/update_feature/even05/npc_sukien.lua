---------------------***Script*By*Heart*Doldly***--------------------------------
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
--------------------------------------------------------
HOAPHUONGDO	 = 4965
NHANTHUONGMOC1	 = 4962
NHANTHUONGMOC2	 = 4961
NHANTHUONGMOC3	 = 4960
NHANTHUONGMOC4	 = 4959
NHANTHUONGMOC5	 = 4958
NHANTHUONGMOC6	 = 4957
NHANTHUONGMOC7	 = 4956
MOCDACBIET	 = 4955
---------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
--------------------------------------------------------------
function main()
dofile("script/update_feature/even05/npc_sukien.lua")

	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName);
	end
	
	local tbDailog = DailogClass:new(szNpcName);
	tbDailog.szTitleMsg = "<npc><color=green>Chµo Mõng Sù KiÖn H­¬ng S¾c Mïa H¹ <color>",
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)

	local nTimes = tonumber(GetLocalDate("%Y%m%d%H%M"))
	local nDate = tonumber(GetLocalDate("%d"))
	if (nTimes >= 201905010000) and (nTimes <= 202502282400) then
		tbDailog:AddOptEntry("NhËn Th­ëng §¹t Mèc",NhanMoc);
                tbDailog:AddOptEntry("Nép Hoa Ph­îng TÝm §Ó Sö Dông Thªm 1 LÇn",reset_event);
          	tbDailog:Show();
	else   
		Talk(1,"","<color=green>Ho¹t §éng DiÔn Ra Tõ:\n\n <color=red>0h Ngµy 01 - 05 - 2019 §Õn 24h Ngµy 30 - 10 - 2021<color><color>")
	end
end				
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanMoc()
	local tbOpt = {
		{"NhËn Th­ëng Mèc 10000 Hoa Ph­îng §á",PhanThuong6},
		{"NhËn Th­ëng Mèc 20000 Hoa Ph­îng §á",PhanThuong7},
		{"NhËn PhÇn Th­ëng §Æc BiÖt 40000 Hoa Ph­îng §á",PhanThuongDacBiet},
		{"Hñy Bá",},
	}
	CreateNewSayEx("<npc><color=green>"..myplayersex().." Muèn NhËn Mèc Nµo<color>\n<color=red>HiÖn T¹i Ng­¬i §· Sö Dông <color=yellow>"..GetTask(HOAPHUONGDO).."<color> Hoa Ph­îng §á \ B¹n §· Sö Dông Hoa Ph­îng TÝm<color=red>"..GetTask(4953).." LÇn<color>", tbOpt)
end	

----------------------------------------------------------Moc 4000--------------------------------------------------------------------------------
function PhanThuong6()
if  GetTask(4957) > 0 then
Talk(1,""," §· NhËn Th­ëng Råi")
return end
	if (GetTask(NHANTHUONGMOC6) == 0) then
		if (GetTask(HOAPHUONGDO) < 10000) then
			Say("<color=green>PhÇn Th­ëng Mèc 10000:<color>\n<bclr=blue><color>")
		else
			Say("<color=green>PhÇn Th­ëng Mèc 10000:<color>\n<bclr=blue><color>",2,"NhËn Th­ëng/Moc4000","Th«i Ta Quay L¹i Sau/No")
		end
	else
		Say("<color=green>"..myplayersex().." §· NhËn PhÇn Th­ëng Nµy Råi")
	end
end

function Moc4000()
if (CalcFreeItemCellCount() < 30) then
		Talk(1,"","H·y §Ó Trèng 30 ¤ Råi NhËn Th­ëng")
		return
	end
      if (GetTask(5969) >=  4) then
	     tl_addPlayerExp(5000000000)   
	   Msg2Player("NhËn ®­îc 5 ty Khong céng dån") 
        end
       if (GetTask(5969) < 4) then
	     tl_addPlayerExp(20000000000)   
	   Msg2Player("NhËn ®­îc 20 ty Khong céng dån") 
        end
	
	local tbAward = {
         {szName="NL ",tbProp={4,1507,1,1,0,0},nCount=50},
         {szName="NL ",tbProp={4,1508,1,1,0,0},nCount=200},
         {szName="cang khon",tbProp={0,random(4745,4759)},nQuality=1,nCount=1},	
	}
	tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 3000") SetTask(NHANTHUONGMOC6,1)
	--AddGlobalNews("<color=green>Chóc Mõng "..myplayersex().." <color=yellow>"..GetName().." §· NhËn Th­ëng Mèc 10000 Hoa Ph­îng §á<color>")
	--Msg2SubWorld("<color=green>Chóc Mõng "..myplayersex().." <color=yellow>"..GetName().." §· NhËn Th­ëng Mèc 10000 Hoa Ph­îng §á<color>")
	WriteLogPro("dulieu/even/moc10k.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nnhan moc moc10k \n");
end
----------------------------------------------------------Moc 5000--------------------------------------------------------------------------------
function PhanThuong7()
if  GetTask(4956) > 0 then
Talk(1,""," §· NhËn Th­ëng Råi")
return end
	if (GetTask(NHANTHUONGMOC7) == 0) then
		if (GetTask(HOAPHUONGDO) < 20000) then
			Say("<color=green>PhÇn Th­ëng Mèc 20000:<color>\n<bclr=blue><color>")
		else
			Say("<color=green>PhÇn Th­ëng Mèc 20000:<color>\n<bclr=blue><color>",2,"NhËn Th­ëng/Moc5000","Th«i Ta Quay L¹i Sau/No")
		end
	else
		Say("<color=green>"..myplayersex().." §· NhËn PhÇn Th­ëng Nµy Råi")
	end
end

function Moc5000()
if (CalcFreeItemCellCount() < 40) then
		Talk(1,"","H·y §Ó Trèng 40 ¤ Råi NhËn Th­ëng")
		return
	end
 if (GetTask(5969) >=  4) then
	     tl_addPlayerExp(10000000000)   
	   Msg2Player("NhËn ®­îc 10 ty Khong céng dån") 
        end
       if (GetTask(5969) < 4) then
	     tl_addPlayerExp(50000000000)   
	   Msg2Player("NhËn ®­îc 50 ty Khong céng dån") 
        end
	
	local tbAward = {
                 {szName="NL ",tbProp={6,1,6054,1,0,0},nCount=1,tbParam={11,0,0,0,0,0}},
                 {szName="NL ",tbProp={4,1507,1,1,0,0},nCount=100},
                 {szName="NL ",tbProp={4,1508,1,1,0,0},nCount=300},
                 {szName="cang khon",tbProp={0,random(4745,4759)},nQuality=1,nCount=1},		
		
        
}
	tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 3000") SetTask(NHANTHUONGMOC7,1)
	--AddGlobalNews("<color=green>Chóc Mõng "..myplayersex().." <color=yellow>"..GetName().." §· NhËn Th­ëng Mèc 20000 Hoa Ph­îng §á<color>")
	--Msg2SubWorld("<color=green>Chóc Mõng "..myplayersex().." <color=yellow>"..GetName().." §· NhËn Th­ëng Mèc 20000 Hoa Ph­îng §á<color>")
	
	WriteLogPro("dulieu/even/moc20k.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nnhan moc moc20k \n");
end
-------------------------------------------------------------------------------------------------------------------------------------------
function PhanThuongDacBiet()
if  GetTask(4955) > 0 then
Talk(1,""," §· NhËn Th­ëng Råi")
return end
	if (GetTask(MOCDACBIET) == 0) then
		if (GetTask(HOAPHUONGDO) < 40000) then
			Say("<color=green>PhÇn Th­ëng Mèc §Æc BiÖt:<color>\n<bclr=blue><color>")
		else
			Say("<color=green>PhÇn Th­ëng Mèc §Æc BiÖt:<color>\n<bclr=blue><color>",2,"NhËn Th­ëng/MocDacBiet","Th«i Ta Quay L¹i Sau/No")
		end
	else
		Say("<color=green>"..myplayersex().." §· NhËn PhÇn Th­ëng Nµy Råi")
	end
end

function MocDacBiet()
	if (CalcFreeItemCellCount() < 40) then
		Talk(1,"","H·y §Ó Trèng 30 ¤ Råi NhËn Th­ëng")
		return
	end
      if (GetTask(5969) >=  4) then
	     tl_addPlayerExp(15000000000)   
	   Msg2Player("NhËn ®­îc 15 ty Khong céng dån") 
        end
       if (GetTask(5969) < 4) then
	     tl_addPlayerExp(70000000000)   
	   Msg2Player("NhËn ®­îc 70 ty Khong céng dån") 
        end
	
	local tbAward = {
                 {szName="NL ",tbProp={6,1,5337,1,0,0},nCount=50},
                 {szName="NL ",tbProp={6,1,30160,1,0,0},nCount=10},
                 {szName="NL ",tbProp={6,1,30161,1,0,0},nCount=10},
                 {szName="NL ",tbProp={4,1507,1,1,0,0},nCount=200},
                 {szName="NL ",tbProp={4,1508,1,1,0,0},nCount=500},
                 {szName="NL ",tbProp={6,1,30008,1,0,0},nCount=3},
                 {szName="cang khon",tbProp={0,random(4977,4978)},nQuality=1,nCount=1},	
                 {szName="cang khon",tbProp={0,random(5262,5266)},nQuality=1,nCount=1},	
              
	}
	tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc §Æc BiÖt") SetTask(MOCDACBIET,1); SetTask(5145,GetTask(5145)+1)  
	--AddGlobalNews("<color=green>Chóc Mõng "..myplayersex().." <color=yellow>"..GetName().." §· NhËn Th­ëng Mèc §Æc BiÖt<color>")
	--Msg2SubWorld("<color=green>Chóc Mõng "..myplayersex().." <color=yellow>"..GetName().." §· NhËn Th­ëng Mèc §Æc BiÖt<color>")
	WriteLogPro("dulieu/even/mocdacbiet.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nnhan moc dac biet \n");
end
function reset_event()
if (GetTask(4953) >= 4) then
		Say("<color=green>Ng­¬i ChØ Cã ThÓ Reset Even 4 L©n Lµ Tèi §a, H·y Cè G¾ng ¡n Cho Tµi Kho¶n Kh¸c, Xin C¶m ¥n\n<color>")
	return end
local nCongHuan = CalcEquiproomItemCount(6, 1, 3162, 1) ;
		if (nCongHuan < 1) then
				Talk(1,"","<color=white>thiÕu hiÖp kh«ng mang theo Hoa Ph­îng TÝm Råi !!") 
			return
		end
local event =1
local ktra_event = GetTask(4955) ;
if ktra_event < event then
Talk(1,"","Ng­¬i Ch­a NhËn Mèc ®Æc BiÖt  "..event.." LÇn, lµm sao ¡n Thªm §©y ®©y!")
return end
local tiendong = 40000
local ktra_tien = GetTask(4965) ;
if ktra_tien < tiendong then
Talk(1,"","Kh«ng ¡n ®ñ "..tiendong.." Hoa Ph­îng §á lµm sao  ¡n Thªm LÇn Sö Dông ®©y!")
return end
SetTask(4955,0)
SetTask(4956,0)
SetTask(4957,0)
SetTask(4958,0)
SetTask(4959,0)
SetTask(4960,0)
SetTask(4962,0)
SetTask(4963,0)
SetTask(4964,0)
SetTask(4965,0)
SetTask(4953,GetTask(4953)+1)
ConsumeEquiproomItem(1, 6, 1, 3162, 1)
Talk(1,"","Chóc Mõng Ng­¬i §· T¨ng Thªm LÇn Sö Dông Hoa Ph­îng §á!")
Msg2SubWorld("<color=yellow>Chóc Mõng §¹i Cao Thñ <color> "..GetName().." <color=violet> §· SD Hoa Ph­îng TÝm, <color=red>T¨ng Thªm 1 LÇn SD Hoa Ph­îng §á <color>  ")
WriteLogPro("dulieu/even/hoaphuongtim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." "..GetIP().." \n");		
end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end