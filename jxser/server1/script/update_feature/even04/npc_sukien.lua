---------------------***Script*By*Heart*Doldly***--------------------------------
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
--------------------------------------------------------
HOAPHUONGDO		 = 5965
HOAPHUONGTRANG		 = 5963
NHANTHUONGMOC1	 = 5962
NHANTHUONGMOC2	 = 5961
NHANTHUONGMOC3	 = 5960
NHANTHUONGMOC4	 = 5959
NHANTHUONGMOC5	 = 5958
NHANTHUONGMOC6	 = 5957
NHANTHUONGMOC7	 = 5956
MOCDACBIET		 = 5955
---------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N˜ Hi÷p";
	else
		return "ßπi Hi÷p";
	end
end
--------------------------------------------------------------
function main()
dofile("script/update_feature/even04/npc_sukien.lua")

	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName);
	end
	
	local tbDailog = DailogClass:new(szNpcName);
	tbDailog.szTitleMsg = "<npc><color=green>Chµo Mıng S˘ Ki÷n Gi∂i Ph„ng Mi“n Nam <color>",
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)

	local nTimes = tonumber(GetLocalDate("%Y%m%d%H%M"))
	local nDate = tonumber(GetLocalDate("%d"))
	if (nTimes >= 201905010000) and (nTimes <= 202502302400) then
                tbDailog:AddOptEntry("NhÀn Th≠Îng Treo CÍ Chi’n Thæng",NhanMoc);
               -- tbDailog:AddOptEntry("Rest even  gi∏ 50 DKB.",reset_event);

          	tbDailog:Show();
	else   
		Talk(1,"","<color=green>Hoπt ßÈng Di‘n Ra Tı:\n\n <color=red>0h Ngµy 01 - 05 - 2019 ß’n 24h Ngµy 30 - 10 - 2021<color><color>")
	end
end				
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanMoc()
	local tbOpt = {
		{"NhÀn Th≠Îng MËc 10000 L∏ CÍ Chi’n Thæng",PhanThuong2},
		{"NhÀn Th≠Îng MËc 20000 L∏ CÍ Chi’n Thæng",PhanThuong4},
		{"NhÀn Th≠Îng MËc 40000 L∏ CÍ Chi’n Thæng",PhanThuong6},
		--{"NhÀn Th≠Îng MËc 20000 L∏ CÍ Chi’n Thæng",PhanThuong7},
		--{"NhÀn Ph«n Th≠Îng  60000 L∏ CÍ Chi’n Thæng",PhanThuongDacBiet},
		{"HÒy B·",},
	}
	CreateNewSayEx("<npc><color=green>"..myplayersex().." MuËn NhÀn MËc Nµo<color>\n<color=red>Hi÷n Tπi Ng≠¨i ß∑ Sˆ DÙng <color=yellow>"..GetTask(HOAPHUONGDO).."<color> L∏ CÍ Chi’n Thæng<color>", tbOpt)
end	
-----------------------------------------------------Moc 500-------------------------------------------------------------------------------------------------------------------------------------------
function PhanThuong2()
if (GetTask(NHANTHUONGMOC2) == 0) then
		if (GetTask(HOAPHUONGDO) < 10000) then
			Say("<color=green>Ph«n Th≠Îng MËc 10.000 L∏ CÍ Chi’n Thæng:<color>\n<bclr=blue>   <color>")
		else
			Say("<color=green>Ph«n Th≠Îng MËc 10.000 L∏ CÍ Chi’n Thæng:<color>\n<bclr=blue><color>",2,"NhÀn Th≠Îng/Moc1000","Th´i Ta Quay Lπi Sau/No")
		end
	else
		Say("<color=green>"..myplayersex().." ß∑ NhÀn Ph«n Th≠Îng Nµy RÂi")
	end
end

function Moc1000()
	if (CalcFreeItemCellCount() < 30) then
		Talk(1,"","H∑y ß” TrËng 30 § RÂi NhÀn Th≠Îng")
		return
	end
	local tbAward = {
	{nExp_tl = 20e9},
        {szName="ruong nguyen lieu",tbProp={6,1,30163,1,0,0},nCount=1},
        {szName="ruong nguyen lieu",tbProp={6,1,5447,1,0,0},nCount=100},
	}
	tbAwardTemplet:GiveAwardByList(tbAward,"Ph«n Th≠Îng MËc 1000") SetTask(NHANTHUONGMOC2,1)
	AddGlobalNews("<color=green>ChÛc Mıng "..myplayersex().." <color=yellow>"..GetName().." ß∑ NhÀn Th≠Îng MËc  10000 <color>")
	Msg2SubWorld("<color=green>ChÛc Mıng "..myplayersex().." <color=yellow>"..GetName().." ß∑ NhÀn Th≠Îng MËc 10000<color>")
end
----------------------------------------------------------Moc 2000--------------------------------------------------------------------------------
function PhanThuong4()
	if (GetTask(NHANTHUONGMOC4) == 0) then
		if (GetTask(HOAPHUONGDO) < 20000) then
			Say("<color=green>Ph«n Th≠Îng MËc 20000:<color>\n<bclr=blue><color>")
		else
			Say("<color=green>Ph«n Th≠Îng MËc 20000:<color>\n<bclr=blue><color>",2,"NhÀn Th≠Îng/Moc2000","Th´i Ta Quay Lπi Sau/No")
		end
	else
		Say("<color=green>"..myplayersex().." ß∑ NhÀn Ph«n Th≠Îng Nµy RÂi")
	end
end

function Moc2000()
	if (CalcFreeItemCellCount() < 30) then
		Talk(1,"","H∑y ß” TrËng 30 § RÂi NhÀn Th≠Îng")
		return
	end
	local tbAward = {
	{nExp_tl = 50e9},
        {szName="ruong nguyen lieu",tbProp={6,1,4346,1,0,0},nCount=1},
        {szName="ruong nguyen lieu",tbProp={6,1,4370,1,0,0},nCount=1},
        {szName="ruong nguyen lieu",tbProp={6,1,30163,1,0,0},nCount=1},
        {szName="ruong nguyen lieu",tbProp={6,1,5442,1,0,0},nCount=5},
	}
	tbAwardTemplet:GiveAwardByList(tbAward,"Ph«n Th≠Îng MËc 2000") SetTask(NHANTHUONGMOC4,1)
	AddGlobalNews("<color=green>ChÛc Mıng "..myplayersex().." <color=yellow>"..GetName().." ß∑ NhÀn Th≠Îng MËc 20000  L∏ CÍ Chi’n Thæng<color>")
	Msg2SubWorld("<color=green>ChÛc Mıng "..myplayersex().." <color=yellow>"..GetName().." ß∑ NhÀn Th≠Îng MËc 20000 L∏ CÍ Chi’n Thæng <color>")
end

----------------------------------------------------------Moc 4000--------------------------------------------------------------------------------
function PhanThuong6()
	if (GetTask(NHANTHUONGMOC6) == 0) then
		if (GetTask(HOAPHUONGDO) < 40000) then
			Say("<color=green>Ph«n Th≠Îng MËc 40000:<color>\n<bclr=blue><color>")
		else
			Say("<color=green>Ph«n Th≠Îng MËc 40000:<color>\n<bclr=blue><color>",2,"NhÀn Th≠Îng/Moc4000","Th´i Ta Quay Lπi Sau/No")
		end
	else
		Say("<color=green>"..myplayersex().." ß∑ NhÀn Ph«n Th≠Îng Nµy RÂi")
	end
end

function Moc4000()
	if (CalcFreeItemCellCount() < 30) then
		Talk(1,"","H∑y ß” TrËng 30 § RÂi NhÀn Th≠Îng")
		return
	end
	local tbAward = {
	{nExp_tl = 100e9},
        {szName="ruong nguyen lieu",tbProp={6,1,30163,1,0,0},nCount=2},
        {szName="ruong nguyen lieu",tbProp={6,1,5442,1,0,0},nCount=5},
        {szName="ruong nguyen lieu",tbProp={6,1,5447,1,0,0},nCount=100},
         {szName="cang khon",tbProp={0,random(4745,4759)},nQuality=1,nCount=1},	
	}
	tbAwardTemplet:GiveAwardByList(tbAward,"Ph«n Th≠Îng MËc 3000") SetTask(NHANTHUONGMOC6,1)
	AddGlobalNews("<color=green>ChÛc Mıng "..myplayersex().." <color=yellow>"..GetName().." ß∑ NhÀn Th≠Îng MËc 40000  L∏ CÍ Chi’n Thæng<color>")
	Msg2SubWorld("<color=green>ChÛc Mıng "..myplayersex().." <color=yellow>"..GetName().." ß∑ NhÀn Th≠Îng MËc 40000  L∏ CÍ Chi’n Thæng<color>")
end
----------------------------------------------------------Moc 5000--------------------------------------------------------------------------------
function PhanThuong7()
	if (GetTask(NHANTHUONGMOC7) == 0) then
		if (GetTask(HOAPHUONGDO) < 20000) then
			Say("<color=green>Ph«n Th≠Îng MËc 20000:<color>\n<bclr=blue><color>")
		else
			Say("<color=green>Ph«n Th≠Îng MËc 20000:<color>\n<bclr=blue><color>",2,"NhÀn Th≠Îng/Moc5000","Th´i Ta Quay Lπi Sau/No")
		end
	else
		Say("<color=green>"..myplayersex().." ß∑ NhÀn Ph«n Th≠Îng Nµy RÂi")
	end
end

function Moc5000()
	if (CalcFreeItemCellCount() < 40) then
		Talk(1,"","H∑y ß” TrËng 40 § RÂi NhÀn Th≠Îng")
		return
	end
	local tbAward = {
	{nExp_tl = 50e9},
        {szName="ruong nguyen lieu",tbProp={6,1,4837,1,0,0},nCount=1000},
	{szName="Thi÷p gi∏ng sinh 5",tbProp={4,1507,1,1,0,0},nCount=1000},
	{szName="B∂o R≠¨ng Tinh Suonf Maxoff (1 BÈ)",tbProp={6,1,48003,1,0,0},nCount=3000},	      
}
	tbAwardTemplet:GiveAwardByList(tbAward,"Ph«n Th≠Îng MËc 3000") SetTask(NHANTHUONGMOC7,1)
	AddGlobalNews("<color=green>ChÛc Mıng "..myplayersex().." <color=yellow>"..GetName().." ß∑ NhÀn Th≠Îng MËc 20000 banh chung<color>")
	Msg2SubWorld("<color=green>ChÛc Mıng "..myplayersex().." <color=yellow>"..GetName().." ß∑ NhÀn Th≠Îng MËc 20000 banh chung<color>")
end
-------------------------------------------------------------------------------------------------------------------------------------------
function PhanThuongDacBiet()
	if (GetTask(MOCDACBIET) == 0) then
		if (GetTask(HOAPHUONGDO) < 60000) then
			Say("<color=green>Ph«n Th≠Îng MËc ß∆c Bi÷t:<color>\n<bclr=blue><color>")
		else
			Say("<color=green>Ph«n Th≠Îng MËc ß∆c Bi÷t:<color>\n<bclr=blue><color>",2,"NhÀn Th≠Îng/MocDacBiet","Th´i Ta Quay Lπi Sau/No")
		end
	else
		Say("<color=green>"..myplayersex().." ß∑ NhÀn Ph«n Th≠Îng Nµy RÂi")
	end
end

function MocDacBiet()
	if (CalcFreeItemCellCount() < 40) then
		Talk(1,"","H∑y ß” TrËng 30 § RÂi NhÀn Th≠Îng")
		return
	end
	local tbAward = {
       
        {szName="ruong nguyen lieu",tbProp={6,1,5446,1,0,0},nCount=500},
        {szName="ruong nguyen lieu",tbProp={6,1,30319,1,0,0},nCount=1000},
         {szName=" n TrÓ Chi’n C p 6",tbProp={0,4907},nQuality=1,nCount=1},
	
	}
	tbAwardTemplet:GiveAwardByList(tbAward,"Ph«n Th≠Îng MËc ß∆c Bi÷t") SetTask(MOCDACBIET,1) 
	AddGlobalNews("<color=green>ChÛc Mıng "..myplayersex().." <color=yellow>"..GetName().." ß∑ NhÀn Th≠Îng MËc ß∆c Bi÷t<color>")
	Msg2SubWorld("<color=green>ChÛc Mıng "..myplayersex().." <color=yellow>"..GetName().." ß∑ NhÀn Th≠Îng MËc ß∆c Bi÷t<color>")
end

----------------------
function reset_event()
local tiendong = 50
local ktra_tien = CalcEquiproomItemCount(4, 1506, 1, 1) ;
local event =1
local ktra_event = GetTask(4955) ;
if ktra_event < event then
Talk(1,"","Ng≠¨i Ch≠a NhÀn MËc Æ∆c Bi÷t  "..event.." L«n, lµm sao reset Æ©y!")
return end
if ktra_tien < tiendong then
Talk(1,"","Kh´ng ÆÒ "..tiendong.." Dai Kim Bai lµm sao reset Æ©y!")
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
ConsumeEquiproomItem(tiendong,4,1506,1,1) ---  xoa xu
Talk(1,"","ß∑ Reset Event thµnh c´ng!")
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------


function ShowTopThiep()
tbLogEvent:ShowTopList()
end
--------------------------------------------------------------------------------------
function dua_top_nang_dong()
AskClientForNumber("Adddiemev1",0,100,"SË ThŒ") 
function Adddiemev1(num) 
if (num < 0 or num > 300) then
	WriteLogPro("dulieu/dump/hack.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da rut hack Dump        \n");
	return
	end

local nCongHuan = CalcEquiproomItemCount(6, 1, 1293, 1) ;
		if (nCongHuan < 1) then
				Talk(1,"","<color=white>Oh thi’u hi÷p kh´ng mang theo ThŒ N®ng ßÈng rÂi !!") 
			return
		end
ConsumeEquiproomItem(num, 6, 1, 1293, 1)
SetTask(5134,GetTask(5134)+num)
tbLogND:LuuDSNhanVat()
tbLogND:SapXepDSXepHang()
Msg2Player("<color=yellow>ChÛc Mıng  <color> "..GetName().." <color=violet> ß∑ NÈp ThŒ N®ng ßÈng Thµnh C´ng Cho <color=red>S˘ Ki÷n Æua top even, SË ThŒ Hi÷n c„<color=violet> : ".. GetTask(5126).." <color>  ")
WriteLogPro("dulieu/even/Nang_Dong.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nop tong so :"..GetTask(5126).."  cai   \n");
end
end
function ShowTopNangDong()
tbLogND:ShowTopList()
end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end