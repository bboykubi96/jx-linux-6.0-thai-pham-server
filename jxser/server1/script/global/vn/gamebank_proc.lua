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
		return "N� Hi�p";
	else
		return "��i Hi�p";
	end
end
-------------------------------------------------------------------------
function main()
local CheckXu = GetExtPoint(1)
local SoXuCon = CheckXu *1
  if  GetExtPoint(1)>= 40000 then
          -- NewWorld(208,1566,3235) 
          -- Msg2SubWorld("Nh�n V�t:<color=red> "..GetName().."<color> <color=violet> �� ���c 1 V� Vip Tham Quan  ��o Hoang Kh�ng Kh� H�i<color=>,<color=red>  V� Gian Th��ng C� Bug KNB T�i Ti�n Trang, ae Ch� � T�n N�y  !") 
         --WriteLogPro("dulieu/nganhang/HackBank.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\ hack bank -- -- Ti�n Trang ["..SoXuCon.." KNB\n");
	end
if (GetBoxLockState() == 1) then
	Talk(1,"","<bclr=violet>M�i "..myplayersex().." M� Kh�a R��ng Tr��c<bclr>")
return end
	local tbOpt = {
		{"Ta Mu�n Ki�m Tra Kim Nguy�n B�o",KiemTra_TD},
		{"��i 1 KNB Sang 100 Ti�n ��ng",DoiTienDong},
		-- {"Nh�n Ph�c L�i N�p Th�",NhanMoc},
        -- {"Ta Mu�n ��i �i�m TK L�y KNB",DoiDiemTongKim},
                --{"Ta Mu�n ��i Ti�n ��ng Kh�a l�y KNB",mocnap},
		{"Nh�n Ti�n Gh� Qua Th�i",No},
	}
	CreateNewSayEx("Kh�ch Quan Gh� Th�m B�n Ti�m C� Vi�c G�", tbOpt)
end
function NhanMoc()
		Say("<color=green>"..myplayersex().." �� N�p T�ng S� Ti�n L�:  <color=red>"..GetTask(HOAPHUONGTRANG)..".000<color> Vi�t Nam ��ng<color>\n<color=orange>L�u �: da rut moc<color=red>"..GetTask(4992).."/2.000.000 VI�t Nam ��ng\nTrong Su�t Th�i Gian Ho�t ��ng<color>",5,"Xem Ph�n Th��ng M�c 5.00.0000 VND/XemMoc1000","Xem Ph�n Th��ng M�c 1.000.0000 VND/XemMoc2000","Xem Ph�n Th��ng M�c 2.000.0000 VND/XemMoc4000","H�y B�/No")
end
function XemMoc1000()
if (GetTask(NHANTHUONGMOC) == 0) then
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG)..".000/500.0000 <color> VND<color>\n<color=orange>Ph�n Th��ng M�c N�y G�m : Xem Tr�n Wep\n<color>",2,"Nh�n Ph�n Th��ng M�c 500.000/Moc1000","H�y B�/No")
else 
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG)..".000/500.0000 <color>VND<color>\n<color=red>Kh�ng �� �i�u Ki�n �� Nh�n M�c N�y Ho�c �� Nh�n R�i<color=red>\n<color=orange>Ph�n Th��ng M�c N�y G�m : Xem Tr�n Wep \n<color>",1,"H�y B�/No")
end
end
function XemMoc2000()
if (GetTask(NHANTHUONGMOC) == 1) then
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG)..".000/1.000.0000 <color> VND<color>\n<color=orange>Ph�n Th��ng M�c N�y G�m : Xem Tr�n Wep\n<color>",2,"Nh�n Ph�n Th��ng M�c 1.000.000/Moc2000","H�y B�/No")
else 
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG)..".000/1.000.0000 <color>VND<color>\n<color=red>Kh�ng �� �i�u Ki�n �� Nh�n M�c N�y Ho�c �� Nh�n R�i<color=red>\n<color=orange>Ph�n Th��ng M�c N�y G�m : Xem Tr�n Wep \n<color>",1,"H�y B�/No")
end
end
function XemMoc4000()
if (GetTask(NHANTHUONGMOC) == 2) then
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG)..".000/2.000.0000 <color> VND<color>\n<color=orange>Ph�n Th��ng M�c N�y G�m : Xem Tr�n Wep\n <color>",2,"Nh�n Ph�n Th��ng M�c 2.000.000/Moc4000","H�y B�/No")
else 
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG)..".000/2.000.0000 <color> VND<color>\n<color=red>Kh�ng �� �i�u Ki�n �� Nh�n M�c N�y Ho�c �� Nh�n R�i<color=red>\n<color=orange>Ph�n Th��ng M�c N�y G�m : Xem Tr�n Wep\n<color>",1,"H�y B�/No")
end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc1000()
	if (GetTask(HOAPHUONGTRANG) >= 500) and (GetTask(NHANTHUONGMOC) == 0) then
		local tbAward = {
                                {szName="nl",tbProp={6,1,5337,1,0,0},nCount=1},
				 {szName="bachho",tbProp={0,9379},nQuality=1,nCount=1},
                            		
		}
                   AddGlobalNews("<color=green>Ch�c M�ng "..myplayersex().." <color=yellow>"..GetName().." �� Nh�n Th��ng M�c 500.000 Ng�n Vi�t Nam ��ng<color>")
                   Msg2SubWorld("<color=green>Ch�c M�ng "..myplayersex().." <color=yellow>"..GetName().." �� Nh�n Th��ng M�c 500.000 Ng�n Vi�t Nam ��ng<color>")
                  WriteLogPro("dulieu/nganhang/moc50trk.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nnhan moc moc200k \n");
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 1000") SetTask(NHANTHUONGMOC,1)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch�a ��t T�i M�c N�y")
	end
end
function Moc2000()
	if (GetTask(HOAPHUONGTRANG) >= 1000) and (GetTask(NHANTHUONGMOC) == 1) then
		local tbAward = {
                                {szName="nl",tbProp={6,1,5337,1,0,0},nCount=2},

				 {szName="an",tbProp={0,9347},nQuality=1,nCount=1},
        {szName="B�o R��ng Minh Ph��ng H� Uy�n",tbProp={6,1,6416,1,0,0},nCount=1,tbParam={1,0,0,0,0,0}},
	{szName="B�o R��ng Minh Ph��ng Y�u ��i",tbProp={6,1,6418,1,0,0},nCount=1,tbParam={3,0,0,0,0,0}},
	{szName="B�o R��ng Minh Ph��ng Y�u ��i",tbProp={6,1,6419,1,0,0},nCount=1,tbParam={4,0,0,0,0,0}},
	{szName="B�o R��ng Minh Ph��ng Y�u ��i",tbProp={6,1,6420,1,0,0},nCount=1,tbParam={5,0,0,0,0,0}},
	{szName="B�o R��ng Minh Ph��ng Y�u ��i",tbProp={6,1,6423,1,0,0},nCount=1,tbParam={8,0,0,0,0,0}},
	{szName="B�o R��ng Minh Ph��ng Y�u ��i",tbProp={6,1,6424,1,0,0},nCount=1,tbParam={9,0,0,0,0,0}},
	{szName="B�o R��ng Minh Ph��ng Y�u ��i",tbProp={6,1,6425,1,0,0},nCount=1,tbParam={10,0,0,0,0,0}},

						
		}
                   AddGlobalNews("<color=green>Ch�c M�ng "..myplayersex().." <color=yellow>"..GetName().." �� Nh�n Th��ng M�c 1000.000 Ng�n Vi�t Nam ��ng<color>")
                   Msg2SubWorld("<color=green>Ch�c M�ng "..myplayersex().." <color=yellow>"..GetName().." �� Nh�n Th��ng M�c 1000.000 Ng�n Vi�t Nam ��ng<color>")
                  WriteLogPro("dulieu/nganhang/moc1trk.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nnhan moc moc200k \n");
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 2000") SetTask(NHANTHUONGMOC,2)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch�a ��t T�i M�c N�y")
	end
end
----------------------------------------------------Nhan Moc 2000 -----------------------------------------------------------------------------------------------------
function Moc4000()
	if (GetTask(HOAPHUONGTRANG) >= 2000)  and (GetTask(NHANTHUONGMOC) == 2)then
		local tbAward = {
        {szName="nl",tbProp={6,1,5337,1,0,0},nCount=3},
	{szName="B�o R��ng Minh Ph��ng Y�u ��i",tbProp={6,1,6417,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}},
	{szName="B�o R��ng Minh Ph��ng Y�u ��i",tbProp={6,1,6421,1,0,0},nCount=1,tbParam={6,0,0,0,0,0}},
	{szName="B�o R��ng Minh Ph��ng Y�u ��i",tbProp={6,1,6422,1,0,0},nCount=1,tbParam={7,0,0,0,0,0}},
	{szName="xuyen y",tbProp={0,9360},nQuality=1,nCount=1},
        {szName="mn",tbProp={0,9333},nQuality=1,nCount=1},
	{szName="nl",tbProp={6,1,4347,1,0,0},nCount=1},	
{szName = "C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=5000},	
		}
                      AddGlobalNews("<color=green>Ch�c M�ng "..myplayersex().." <color=yellow>"..GetName().." �� Nh�n Th��ng M�c 2000.000 Ng�n Vi�t Nam ��ng<color>")
                       Msg2SubWorld("<color=green>Ch�c M�ng "..myplayersex().." <color=yellow>"..GetName().." �� Nh�n Th��ng M�c 2000.000 Ng�n Vi�t Nam ��ng<color>")
                       WriteLogPro("dulieu/nganhang/moc2trk.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nnhan moc moc400k  \n");
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 4000") SetTask(NHANTHUONGMOC,3)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch�a ��t T�i M�c N�y")
	end
end
function DoiDiemTongKim()
local tichluy=nt_getTask(747)
if nt_getTask(747)<300000 then
return Talk(1,"","b�n Kh�ng �� 300.000 T�ch L�y, �i�m T�ch L�y Hi�n T�i L� "..tichluy.."")
end
SetTask(747,GetTask(747)-300000)
tbAwardTemplet:GiveAwardByList({tbProp={4,1496,1,1,0,0},nCount=10},1)
Msg2SubWorld("Ch�c M�ng "..myplayersex().." �� ��i <color=yellow>200.000<color> �i�m  Th�nh <color=yellow> 10 <color> KNB Th�nh C�ng")
WriteLogPro("dulieu/nganhang/Doidiemtk.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." "..GetIP().." da doi 300.000 diemtk( ��i KNB) thanh 10 knb\n");

end
----------------------------------------------------------------------------Ki�m Tra Ti�n ��ng-----------------------------------------------------------------------------------------------------------------------
function KiemTra_TD()
	local nMoney = GetExtPoint(1)
	if (nMoney >= 32768) then
		nMoney = 0
		Msg2Player("T�m th�i kh�ng th� r�t Ti�n ��ng! Xin li�n h� v�i nh� s�n xu�t �� gi�i quy�t!") 
		return
	end
	if (nMoney == 0) then
		Say("Xin L�i: <color=yellow>"..myplayersex().."<color> Kh�ng C� G�i Kim Nguy�n B�o T�i ��y...!")
	else
		local nCurVar = nMoney
		Say("Xin Ch�o <color=yellow>"..myplayersex()..":<color> \nHi�n T�i <color=yellow>"..myplayersex().."<color> �ang G�i T�i ��y<color=yellow> "..nCurVar.." <color>Kim Nguy�n B�o",3,
		"Ta Mu�n R�t/Rut_KNB",
                   
		"Bi�t r�i/no") 
	end
end

---------------------------------------------------------------------------R�t Ti�n ��ng-------------------------------------------------------------------------------------------------------------------------------
function Rut_KNB()
	AskClientForNumber("RutKNB",2,200,"S� L��ng KNB")
end
function RutKNB(num)
if (num >= 32768) then
		num = 0
		Msg2Player("T�m th�i kh�ng th� r�t Ti�n ��ng! Xin li�n h� v�i nh� s�n xu�t �� gi�i quy�t!") 
		return
	end
local nGoldPoint = GetExtPoint(1);
	if nGoldPoint >= num and num>0 then
			PayExtPoint(1,num);
			AddStackItem(num,4,1496,1,1,0,0)
            SetTask(5120,GetTask(5120)+num)
   -- SetTask(5138,GetTask(5138)+1)
			WriteLogPro("dulieu/DoiTienDong.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Rut THanh Cong "..num.."\n");
		Msg2Player("Ch�c M�ng "..myplayersex().." �� R�t Th�nh C�ng "..num.." Kim Nguy�n B�o")
		-- Msg2SubWorld("<color=green>Xin Ch�c M�ng<color> "..GetName().." <color=green> R�t Th�nh C�ng "..num.." KNB")
	else
		Talk(1, "", ""..myplayersex().." �ang C�: <color=yellow>"..nGoldPoint.."<color> Kim Nguy�n B�o\nC�n Thi�u: "..nGoldPoint-num.." Kim Nguy�n B�o<bclr>")
	end
end
---------------------------------------------------------R�t Kim Nguy�n B�o-----------------------------------------------------------------------------------------------------------------------------
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
		Talk(1, "", "<color=red>"..myplayersex().." �ang C�: <color=yellow>"..GetExtPoint(1).."<color> Ti�n M�t, N�n Kh�ng �� R�t<color>")
	end
end
--------------------------------------------------------------------------G�i Ti�n ��ng-----------------------------------------------------------------------------------------------------------
function Gui_KNB()
	AskClientForNumber("GuiKNB",1,1000,"S� L��ng KNB")
end
function GuiKNB(num)
local KNB = CalcEquiproomItemCount(4,1496,1,1);
	if KNB >= 1 then
			ConsumeEquiproomItem(num,4,1496,1,-1)
			AddExtPoint(1,num)
			WriteLogPro("dulieu/nganhang/napKNB.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da nap THanh Cong "..num.."con lai"..GetExtPoint(1).."\n");
		Msg2Player("Ch�c M�ng "..myplayersex().." �� G�i Th�nh C�ng "..num.." Kim Nguy�n B�o")
	else
		Talk(1, "", "<bclr=red>"..myplayersex().." �ang C�: "..KNB.." Kim Nguy�n B�o\n                    C�n Thi�u: "..num-KNB.." Kim Nguy�n B�o<bclr>")
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
	WriteLogPro("dulieu/nganhang/hackdoixu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da rut "..num.." Kim nguyen bao- Tang Them : "..Check.." NL BKim - Ti�n Trang ["..SoXuCon.." KNB\n");
	return
	end
	if (Free >= 20) then
		if (KNB >= num) then
			ConsumeEquiproomItem(num,4,1496,1,-1)
			tbAwardTemplet:GiveAwardByList({tbProp={4,417,1,1,0,0},nCount=Xu},1)
			-- Msg2SubWorld("Ch�c M�ng <color=green>"..GetName().." <color=>�� ��i <color=yellow>"..num.."<color> Kim Nguy�n B�o Th�nh <color=yellow>"..Xu.."<color> Ti�n ��ng Th�nh C�ng")
			Msg2Player("Ch�c M�ng <color=green>"..GetName().." <color=>�� ��i <color=yellow>"..num.."<color> Kim Nguy�n B�o Th�nh <color=yellow>"..Xu.."<color> Ti�n ��ng Th�nh C�ng")
			WriteLogPro("dulieu/nganhang/DoiTienDong.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." "..GetIP().." da rut "..num.." kim nguyen bao thanh "..Xu.." xu\n");
		else
			Talk(1, "", "<color=red>"..myplayersex().." �ang C�: <color=yellow>"..KNB.."<color> Kim Nguy�n B�o\n         S� L��ng C�n ��i: <color=yellow>"..num.."<color> Kim Nguy�n B�o\n                    C�n Thi�u: <color=yellow>"..num-KNB.."<color> Kim Nguy�n B�o<color>")
		end
	else
		Talk(1,"","H�nh Trang Kh�ng �� 20 � Tr�ng H�y S�p X�p L�i �i")
	end 
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiTienDong1knb()
local tbItem = {
	{szName="Ti�n ��ng", tbProp={4,417,1,1,0,0},nCount = 100},
}
local KNB = CalcEquiproomItemCount(4,1509,1,1);
	if KNB>= 1 then
			ConsumeEquiproomItem(1,4,1496,1,-1)
			tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n Th��ng");
			WriteLogPro("dulieu/nganhang/DoiTienDong.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi 1 KNB Thanh 100 Xu\n");
		Msg2Player("Ch�c M�ng "..myplayersex().." �� G�i Th�nh C�ng 1000 Ti�n ��ng")
		Msg2SubWorld("<color=green>Xin Ch�c M�ng<color> "..GetName().." <color=green> ��i Th�nh C�ng 1 KNB Sang 100 Xu")
	else
		Talk(1, "", "<bclr=red>"..myplayersex().." B�n Kh�ng �� 1 Kim Nguy�n B�o\n  ")
	end
end
----------------------------------------------------------------------��i Ti�n ��ng------------------------------------------------------------------------------------------------------------------------------------
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
