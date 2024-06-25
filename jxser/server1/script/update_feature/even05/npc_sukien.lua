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
		return "N� Hi�p";
	else
		return "��i Hi�p";
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
	tbDailog.szTitleMsg = "<npc><color=green>Ch�o M�ng S� Ki�n H��ng S�c M�a H� <color>",
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)

	local nTimes = tonumber(GetLocalDate("%Y%m%d%H%M"))
	local nDate = tonumber(GetLocalDate("%d"))
	if (nTimes >= 201905010000) and (nTimes <= 202502282400) then
		tbDailog:AddOptEntry("Nh�n Th��ng ��t M�c",NhanMoc);
                tbDailog:AddOptEntry("N�p Hoa Ph��ng T�m �� S� D�ng Th�m 1 L�n",reset_event);
          	tbDailog:Show();
	else   
		Talk(1,"","<color=green>Ho�t ��ng Di�n Ra T�:\n\n <color=red>0h Ng�y 01 - 05 - 2019 ��n 24h Ng�y 30 - 10 - 2021<color><color>")
	end
end				
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanMoc()
	local tbOpt = {
		{"Nh�n Th��ng M�c 10000 Hoa Ph��ng ��",PhanThuong6},
		{"Nh�n Th��ng M�c 20000 Hoa Ph��ng ��",PhanThuong7},
		{"Nh�n Ph�n Th��ng ��c Bi�t 40000 Hoa Ph��ng ��",PhanThuongDacBiet},
		{"H�y B�",},
	}
	CreateNewSayEx("<npc><color=green>"..myplayersex().." Mu�n Nh�n M�c N�o<color>\n<color=red>Hi�n T�i Ng��i �� S� D�ng <color=yellow>"..GetTask(HOAPHUONGDO).."<color> Hoa Ph��ng �� \ B�n �� S� D�ng Hoa Ph��ng T�m<color=red>"..GetTask(4953).." L�n<color>", tbOpt)
end	

----------------------------------------------------------Moc 4000--------------------------------------------------------------------------------
function PhanThuong6()
if  GetTask(4957) > 0 then
Talk(1,""," �� Nh�n Th��ng R�i")
return end
	if (GetTask(NHANTHUONGMOC6) == 0) then
		if (GetTask(HOAPHUONGDO) < 10000) then
			Say("<color=green>Ph�n Th��ng M�c 10000:<color>\n<bclr=blue><color>")
		else
			Say("<color=green>Ph�n Th��ng M�c 10000:<color>\n<bclr=blue><color>",2,"Nh�n Th��ng/Moc4000","Th�i Ta Quay L�i Sau/No")
		end
	else
		Say("<color=green>"..myplayersex().." �� Nh�n Ph�n Th��ng N�y R�i")
	end
end

function Moc4000()
if (CalcFreeItemCellCount() < 30) then
		Talk(1,"","H�y �� Tr�ng 30 � R�i Nh�n Th��ng")
		return
	end
      if (GetTask(5969) >=  4) then
	     tl_addPlayerExp(5000000000)   
	   Msg2Player("Nh�n ���c 5 ty Khong c�ng d�n") 
        end
       if (GetTask(5969) < 4) then
	     tl_addPlayerExp(20000000000)   
	   Msg2Player("Nh�n ���c 20 ty Khong c�ng d�n") 
        end
	
	local tbAward = {
         {szName="NL ",tbProp={4,1507,1,1,0,0},nCount=50},
         {szName="NL ",tbProp={4,1508,1,1,0,0},nCount=200},
         {szName="cang khon",tbProp={0,random(4745,4759)},nQuality=1,nCount=1},	
	}
	tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 3000") SetTask(NHANTHUONGMOC6,1)
	--AddGlobalNews("<color=green>Ch�c M�ng "..myplayersex().." <color=yellow>"..GetName().." �� Nh�n Th��ng M�c 10000 Hoa Ph��ng ��<color>")
	--Msg2SubWorld("<color=green>Ch�c M�ng "..myplayersex().." <color=yellow>"..GetName().." �� Nh�n Th��ng M�c 10000 Hoa Ph��ng ��<color>")
	WriteLogPro("dulieu/even/moc10k.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nnhan moc moc10k \n");
end
----------------------------------------------------------Moc 5000--------------------------------------------------------------------------------
function PhanThuong7()
if  GetTask(4956) > 0 then
Talk(1,""," �� Nh�n Th��ng R�i")
return end
	if (GetTask(NHANTHUONGMOC7) == 0) then
		if (GetTask(HOAPHUONGDO) < 20000) then
			Say("<color=green>Ph�n Th��ng M�c 20000:<color>\n<bclr=blue><color>")
		else
			Say("<color=green>Ph�n Th��ng M�c 20000:<color>\n<bclr=blue><color>",2,"Nh�n Th��ng/Moc5000","Th�i Ta Quay L�i Sau/No")
		end
	else
		Say("<color=green>"..myplayersex().." �� Nh�n Ph�n Th��ng N�y R�i")
	end
end

function Moc5000()
if (CalcFreeItemCellCount() < 40) then
		Talk(1,"","H�y �� Tr�ng 40 � R�i Nh�n Th��ng")
		return
	end
 if (GetTask(5969) >=  4) then
	     tl_addPlayerExp(10000000000)   
	   Msg2Player("Nh�n ���c 10 ty Khong c�ng d�n") 
        end
       if (GetTask(5969) < 4) then
	     tl_addPlayerExp(50000000000)   
	   Msg2Player("Nh�n ���c 50 ty Khong c�ng d�n") 
        end
	
	local tbAward = {
                 {szName="NL ",tbProp={6,1,6054,1,0,0},nCount=1,tbParam={11,0,0,0,0,0}},
                 {szName="NL ",tbProp={4,1507,1,1,0,0},nCount=100},
                 {szName="NL ",tbProp={4,1508,1,1,0,0},nCount=300},
                 {szName="cang khon",tbProp={0,random(4745,4759)},nQuality=1,nCount=1},		
		
        
}
	tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 3000") SetTask(NHANTHUONGMOC7,1)
	--AddGlobalNews("<color=green>Ch�c M�ng "..myplayersex().." <color=yellow>"..GetName().." �� Nh�n Th��ng M�c 20000 Hoa Ph��ng ��<color>")
	--Msg2SubWorld("<color=green>Ch�c M�ng "..myplayersex().." <color=yellow>"..GetName().." �� Nh�n Th��ng M�c 20000 Hoa Ph��ng ��<color>")
	
	WriteLogPro("dulieu/even/moc20k.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nnhan moc moc20k \n");
end
-------------------------------------------------------------------------------------------------------------------------------------------
function PhanThuongDacBiet()
if  GetTask(4955) > 0 then
Talk(1,""," �� Nh�n Th��ng R�i")
return end
	if (GetTask(MOCDACBIET) == 0) then
		if (GetTask(HOAPHUONGDO) < 40000) then
			Say("<color=green>Ph�n Th��ng M�c ��c Bi�t:<color>\n<bclr=blue><color>")
		else
			Say("<color=green>Ph�n Th��ng M�c ��c Bi�t:<color>\n<bclr=blue><color>",2,"Nh�n Th��ng/MocDacBiet","Th�i Ta Quay L�i Sau/No")
		end
	else
		Say("<color=green>"..myplayersex().." �� Nh�n Ph�n Th��ng N�y R�i")
	end
end

function MocDacBiet()
	if (CalcFreeItemCellCount() < 40) then
		Talk(1,"","H�y �� Tr�ng 30 � R�i Nh�n Th��ng")
		return
	end
      if (GetTask(5969) >=  4) then
	     tl_addPlayerExp(15000000000)   
	   Msg2Player("Nh�n ���c 15 ty Khong c�ng d�n") 
        end
       if (GetTask(5969) < 4) then
	     tl_addPlayerExp(70000000000)   
	   Msg2Player("Nh�n ���c 70 ty Khong c�ng d�n") 
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
	tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c ��c Bi�t") SetTask(MOCDACBIET,1); SetTask(5145,GetTask(5145)+1)  
	--AddGlobalNews("<color=green>Ch�c M�ng "..myplayersex().." <color=yellow>"..GetName().." �� Nh�n Th��ng M�c ��c Bi�t<color>")
	--Msg2SubWorld("<color=green>Ch�c M�ng "..myplayersex().." <color=yellow>"..GetName().." �� Nh�n Th��ng M�c ��c Bi�t<color>")
	WriteLogPro("dulieu/even/mocdacbiet.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nnhan moc dac biet \n");
end
function reset_event()
if (GetTask(4953) >= 4) then
		Say("<color=green>Ng��i Ch� C� Th� Reset Even 4 L�n L� T�i �a, H�y C� G�ng �n Cho T�i Kho�n Kh�c, Xin C�m �n\n<color>")
	return end
local nCongHuan = CalcEquiproomItemCount(6, 1, 3162, 1) ;
		if (nCongHuan < 1) then
				Talk(1,"","<color=white>thi�u hi�p kh�ng mang theo Hoa Ph��ng T�m R�i !!") 
			return
		end
local event =1
local ktra_event = GetTask(4955) ;
if ktra_event < event then
Talk(1,"","Ng��i Ch�a Nh�n M�c ��c Bi�t  "..event.." L�n, l�m sao �n Th�m ��y ��y!")
return end
local tiendong = 40000
local ktra_tien = GetTask(4965) ;
if ktra_tien < tiendong then
Talk(1,"","Kh�ng �n �� "..tiendong.." Hoa Ph��ng �� l�m sao  �n Th�m L�n S� D�ng ��y!")
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
Talk(1,"","Ch�c M�ng Ng��i �� T�ng Th�m L�n S� D�ng Hoa Ph��ng ��!")
Msg2SubWorld("<color=yellow>Ch�c M�ng ��i Cao Th� <color> "..GetName().." <color=violet> �� SD Hoa Ph��ng T�m, <color=red>T�ng Th�m 1 L�n SD Hoa Ph��ng �� <color>  ")
WriteLogPro("dulieu/even/hoaphuongtim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." "..GetIP().." \n");		
end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end