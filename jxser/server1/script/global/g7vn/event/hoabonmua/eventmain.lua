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

subknmoc1="�� Ph� Tinh S��ng Y"
subknmoc2="Ng�a Ng� Phong"
subknmoc3=""
subknmoc4=""
subknmoc5=""

pt1moc1="M�t N� V��ng Gi�"
pt2moc1="05 Tinh S��ng Th�ch (��i)"

pt1moc2="Ng� H�nh �n + Xuy�n Y C�p 4"
pt2moc2="05 Tinh S��ng Th�ch (��i)"
pt3moc2="01 B� K�p 150 21 + ...."

pt1moc3=""
pt2moc3=""
pt3moc3=""


pt1moc4="4 X�ch L�n L�nh"
pt2moc4="500 H�nh Hi�p L�nh"
pt3moc4=""

pt1moc5="4 X�ch L�n L�nh"
pt2moc5="500 H�nh Hi�p L�nh"
pt3moc5="1 Minh Ph��ng L�nh"
---------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N� Hi�p";
	else
		return "��i Hi�p";
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
	tbDailog.szTitleMsg = "<npc><bclr=violet>Ch�o M�ng Nh�n S� Tham Gia V� L�m Truy�n K�!...<bclr>",
	
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)
	
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	local nTime = tonumber(GetLocalDate("%H%M"));
	if (nDate >= startdate and nDate <= endate and nTime >= 0000 and nTime <= 2359) then

--	tbDailog:AddOptEntry("Gh�p B� Hoa B�n M�a", GhepBoHoaBonMua);
	--tbDailog:AddOptEntry("Nh�n Th��ng M�c", NhanMoc);
----	tbDailog:AddOptEntry("Mua Nguy�n Li�u Event", MuaNguyenLieuEvent);
--	tbDailog:AddOptEntry("Reset M�c Event (10 Xu)", Reset);
	tbDailog:AddOptEntry("Show Top Thi�p Ch�c M�ng", ShowTopThiep);
	tbDailog:Show();
else
Talk(1,"","<bclr=violet>Ho�t ��ng Ch� M� T� 0h Ng�y 04 - 05 - 2018 ��n 23h 59 Ng�y 30 - 06 - 2018 Xin M�i Quay L�i Sau<bclr>")
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
local szTitle = "B�n �ang C� : \n<color=green>"..hoamai.." <color>Hoa Mai \n<color=green>"..hoaphuong.." <color>Hoa Ph��ng \n<color=green>"..hoagao.."<color> Hoa G�o\n<color=green>"..hoathong.."<color> Hoa Th�ng \n<color=green>"..kembonmua.."<color> Kem B�n M�a \n<color=green>"..tien.."<color> Xu \n<color=yellow>4 Lo�i Hoa + 1 Kem B�n M�a + 1 Xu = 1 B� Hoa B�n M�a<color>"
	local Opt = 
	{	
		{"Ta Mu�n B�t ��u Gh�p", BatDauGhepHoa},
		{"K�t th�c ��i tho�i. ", End}
	}
	CreateNewSayEx(szTitle,Opt)
end

function BatDauGhepHoa()

AskClientForNumber("BatDauGhepHoa_1", 1, 100, "Nh�p s� l��ng")

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

tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n Th��ng");

else 
	Say("Kh�ng �� Nguy�n Li�u Ho�c 10 Ch� Tr�ng");

end

end

---------------------------------------
function MuaNguyenLieuEvent()
local tbSay = {}

		tinsert(tbSay,"Mua 10 Kem B�n M�a <10 Xu> ./MuaKhanChoangDo")
		tinsert(tbSay,"Tho�t/no")
		Say(" ��i hi�p c�n ta gi�p v�n �� g� ? ", getn(tbSay), tbSay)


end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function MuaKhanChoangDo()
local tbItem = {
	{szName="Kh�n Ch�ng ��", tbProp={6,1,30329,1,0,0},nCount = 10},
}
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 10  then
		ConsumeEquiproomItem(10, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n Th��ng");
		Msg2Player("Ch�c M�ng "..myplayersex().." �� Mua Th�nh C�ng 10 10 Kem B�n M�a")
	else
		Say("Kh�ng �� 50 Xu, Xin Xem L�i")
	end

end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanMoc()
		Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."<color> B� Hoa B�n M�a<color>\n<color=orange>L�u �: Nh�n M�c T�i �a 1000 B� Hoa B�n M�a\nTrong Su�t Th�i Gian Ho�t ��ng<color>\n<color=pink>               T�ng Th�m L�n S� D�ng: 0KNB/L�n<color>",5,"Xem Ph�n Th��ng M�c 500/XemMoc2000","Xem Ph�n Th��ng M�c 1000/XemMoc4000","H�y B�/No")
end
function XemMoc2000()
if (GetTask(NHANTHUONGMOC) == 0) then
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/500<color> B� Hoa B�n M�a<color>\n<color=orange>Ph�n Th��ng M�c N�y G�m : \n 1. "..subknmoc1.." \n 2. "..pt1moc1.." \n 3. "..pt2moc1.."<color>",2,"Nh�n Ph�n Th��ng M�c 500/Moc2000","H�y B�/No")
else 
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/500<color> B� Hoa B�n M�a<color>\n<color=red>Kh�ng �� �i�u Ki�n �� Nh�n M�c N�y Ho�c �� Nh�n R�i<color=red>\n<color=orange>Ph�n Th��ng M�c N�y G�m : \n 1. "..subknmoc1.." Kinh Nghi�m\n 2. "..pt1moc1.." \n 3. "..pt2moc1.."<color>",1,"H�y B�/No")
end
end

function XemMoc4000()
if (GetTask(NHANTHUONGMOC) == 1) then
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/1000<color> B� Hoa B�n M�a<color>\n<color=orange>Ph�n Th��ng M�c N�y G�m : \n 1. "..subknmoc2.."\n 2. "..pt1moc2.."\n 3. "..pt2moc2.."\n 4. "..pt3moc2.."<color>",2,"Nh�n Ph�n Th��ng M�c 1000/Moc4000","H�y B�/No")
else 
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/1000<color> B� Hoa B�n M�a<color>\n<color=red>Kh�ng �� �i�u Ki�n �� Nh�n M�c N�y Ho�c �� Nh�n R�i<color=red>\n<color=orange>Ph�n Th��ng M�c N�y G�m : \n 1. "..subknmoc2.."\n 2. "..pt1moc2.."\n 3. "..pt2moc2.."\n 4. "..pt3moc2.."<color>",1,"H�y B�/No")
end
end
function XemMoc6000()
if (GetTask(NHANTHUONGMOC) == 2) then
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/600<color> B� Hoa B�n M�a<color>\n<color=orange>Ph�n Th��ng M�c N�y G�m : \n 1. "..subknmoc3.."\n 2. "..pt1moc3.."\n 3. "..pt2moc3.."\n 4. "..pt3moc3.."<color>",2,"Nh�n Ph�n Th��ng M�c 6000/Moc6000","H�y B�/No")
else 
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/600<color> B� Hoa B�n M�a<color>\n<color=red>Kh�ng �� �i�u Ki�n �� Nh�n M�c N�y Ho�c �� Nh�n R�i<color=red>\n<color=orange>Ph�n Th��ng M�c N�y G�m : \n 1. "..subknmoc3.."\n 2. "..pt1moc3.."\n 3. "..pt2moc3.."\n 4. "..pt3moc3.."<color>",1,"H�y B�/No")
end
end
function XemMoc8000()
if (GetTask(NHANTHUONGMOC) == 3) then
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/800<color> B� Hoa B�n M�a<color>\n<color=orange>Ph�n Th��ng M�c N�y G�m : \n 1. "..subknmoc4.."\n 2. "..pt1moc4.."\n 3. "..pt2moc4.."\n 4. "..pt3moc4.."<color>",2,"Nh�n Ph�n Th��ng M�c 8000/Moc8000","H�y B�/No")
else 
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/800<color> B� Hoa B�n M�a<color>\n<color=red>Kh�ng �� �i�u Ki�n �� Nh�n M�c N�y Ho�c �� Nh�n R�i<color=red>\n<color=orange>Ph�n Th��ng M�c N�y G�m : \n 1. "..subknmoc4.."\n 2. "..pt1moc4.."\n 3. "..pt2moc4.."\n 4. "..pt3moc4.."<color>",1,"H�y B�/No")
end
end
function XemMoc10k()
if (GetTask(NHANTHUONGMOC) == 4) then
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/1000<color> B� Hoa B�n M�a<color>\n<color=orange>Ph�n Th��ng M�c N�y G�m : \n 1. "..subknmoc5.."\n 2. "..pt1moc5.."\n 3. "..pt2moc5.."\n 4. "..pt3moc5.."<color>",2,"Nh�n Ph�n Th��ng M�c 10000/Moc10000","H�y B�/No")
else 
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/1000<color> B� Hoa B�n M�a<color>\n<color=red>Kh�ng �� �i�u Ki�n �� Nh�n M�c N�y Ho�c �� Nh�n R�i<color=red>\n<color=orange>Ph�n Th��ng M�c N�y G�m : \n 1. "..subknmoc5.."\n 2. "..pt1moc5.."\n 3. "..pt2moc5.."\n 4. "..pt3moc5.."<color>",1,"H�y B�/No")
end
end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc2000_cu()
local tbSay = {
"Ta Mu�n Nh�n S� T� Ho�ng Kim/#Moc2000_ngua(4480)",
"Ta Mu�n Nh�n L�c �� M�ng C�/#Moc2000_ngua(5213)",
"Ta Mu�n Nh�n H�n Huy�t Long C�u/#Moc2000_ngua(5214)",
"Ta Mu�n Nh�n B�ch H� Truy�n Thuy�t/#Moc2000_ngua(5215)",
"Ta Mu�n Nh�n Kim Tinh H� V��ng/#Moc2000_ngua(5216)",
"Ta Mu�n Nh�n Truy �i�n/#Moc2000_ngua(5217)",
"Ta Mu�n Nh�n L�u Tinh /#Moc2000_ngua(5218)",
"Ta Mu�n Nh�n D��ng Sa /#Moc2000_ngua(5093)",
"Ta Mu�n Nh�n Ng� Phong /#Moc2000_ngua(5094)",
"Ta Mu�n Nh�n 400� Li�n ��u/#Moc2000_diemvinhdu()",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay),tbSay)

end

function Moc2000()
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 20 � tr�ng!")
		return
	end
	
	if (GetTask(HOAPHUONGTRANG) >= 500) and (GetTask(NHANTHUONGMOC) == 0) then
		local tbAward = {
			{szName="�� Ph� Tinh S��ng Y",tbProp={6,1,4883,1,0,0},nCount=1},	
			{szName="Tinh S��ng Th�ch (��i)",tbProp={6,1,4881,1,0,0},nCount=5},	
			{szName="M�t N� Chi�n Tr��ng Vuong Gi�",tbProp={0,11,647,1,0,0},nCount=1,nExpiredTime=14*24*60},	
		}
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 20e9}}, "test", 1);
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 300") SetTask(NHANTHUONGMOC,1)
		Msg2SubWorld("<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().."<color> �� Nh�n Th�nh C�ng M�c Event 500")
		WriteLogPro("dulieu/event_moc1.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 500\n");		

	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch�a ��t T�i M�c N�y")
	end
end

function Moc2000_diemvinhdu()
	if (GetTask(HOAPHUONGTRANG) >= 300) and (GetTask(NHANTHUONGMOC) == 0) then
		local tbAward = {
		{szName="L�nh b�i vinh d� B�ch Ng�n",tbProp={6,1,1255,1,0,0},nCount=4},		
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 300") SetTask(NHANTHUONGMOC,1)
		Msg2SubWorld("<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().."<color> �� Nh�n Th�nh C�ng M�c Event 300")	

	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch�a ��t T�i M�c N�y")
	end
end
----------------------------------------------------Nhan Moc 2000 -----------------------------------------------------------------------------------------------------
function Moc4000()
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 20 � tr�ng!")
		return
	end
	if (GetTask(HOAPHUONGTRANG) >= 1000)  and (GetTask(NHANTHUONGMOC) == 1)then
		local tbAward = {
			[1] = {
			{szName="Ng� Phong",tbProp={0,3964},nCount=1,nQuality=1,nExpiredTime=30*24*60},
			{{szName="Ng� H�nh �n",tbProp={0,3953},nQuality=1,nExpiredTime=14*24*60},},
			{{szName="Xuy�n Y Ph� Gi�p",tbProp={0,3991},nQuality=1,nCount=1,nExpiredTime=14*24*60},},
			{szName="Tinh S��ng Th�ch (��i)",tbProp={6,1,4881,1,0,0},nCount=5},	
			{szName="M�t t�ch K� N�ng 150 C�p 21",tbProp={6,1,4369,1,0,0},nCount=1},	
			},
		}	
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 40e9}}, "test", 1);
		WriteLogPro("dulieu/event_moc2.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 1000\n");
		Msg2SubWorld("<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().."<color> �� Nh�n Th�nh C�ng M�c Event 1000")
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 400") SetTask(NHANTHUONGMOC,2)
				local a = random(1,20)
				if a==11 then
					tbAwardTemplet:GiveAwardByList({{szName = "�� Ph� Tinh S��ng Y",tbProp={6,1,4883,1,1},nCount=1,},}, "test", 1);
				end;

				local b = random(1,30)
				if b==15 then
					tbAwardTemplet:GiveAwardByList({{szName = "�� Ph� Tinh S��ng Kh� Gi�i",tbProp={6,1,4884,1,1},nCount=1,},}, "test", 1);
				end;

				local c = random(1,50)
				if c==25 then
					tbAwardTemplet:GiveAwardByList({{szName="M�t N� Chi�n Tr��ng Vuong Gi�",tbProp={0,11,647,1,0,0},nCount=1,nExpiredTime=14*24*60},}, "test", 1);
				end;

				local d = random(1,5)
				if d==3 then
					tbAwardTemplet:GiveAwardByList({{szName = "C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,1},nCount=1,},}, "test", 1);
				end;

				local e = random(1,20)
				if e==5 then
					tbAwardTemplet:GiveAwardByList({{szName = "M�t t�ch K� N�ng 150 C�p 22",tbProp={6,1,4370,1,1},nCount=1,},}, "test", 1);
				end;

				local f = random(1,50)
				if f==24 then
					tbAwardTemplet:GiveAwardByList({{szName = "��i th�nh b� k�p 150 l�n C�p 21",tbProp={6,1,4889,1,1},nCount=1,},}, "test", 1);
				end;

				local i = random(1,20)
				if f==4 then
					tbAwardTemplet:GiveAwardByList({{szName = "Tinh S��ng L�nh",tbProp={6,1,4811,1,1},nCount=1,},}, "test", 1);
				end;
				
				local z = random(1,30)
				if z==5 then
					tbAwardTemplet:GiveAwardByList({{nExp_tl = 5e9}}, "test", 1);
					end;
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch�a ��t T�i M�c N�y")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc6000()
	if (GetTask(HOAPHUONGTRANG) >= 6000)  and (GetTask(NHANTHUONGMOC) == 2)then
		local tbAward = {
			[1] = {
				{nExp_tl = 15e9},
				{szName="H�nh Hi�p L�nh",tbProp={6,1,2566,1,0,0},nCount=500},
				{szName="L�nh B�i X�ch L�n",tbProp={6,1,2370,1,0,0},nCount=3},	
			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 600") SetTask(NHANTHUONGMOC,3)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch�a ��t T�i M�c N�y")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc8000()
	if (GetTask(HOAPHUONGTRANG) >= 8000) and (GetTask(NHANTHUONGMOC) == 3) then
		local tbAward = {
			[1] = {
				{nExp_tl = 20e9},
				{szName="H�nh Hi�p L�nh",tbProp={6,1,2566,1,0,0},nCount=500},
				{szName="L�nh B�i X�ch L�n",tbProp={6,1,2370,1,0,0},nCount=4},
			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 800") SetTask(NHANTHUONGMOC,4)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch�a ��t T�i M�c N�y")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc10000()
	if (GetTask(HOAPHUONGTRANG) >= 10000)  and (GetTask(NHANTHUONGMOC) == 4)then
		local tbAward = {
			[1] = {
				{szName="S� T� Ho�ng Kim",tbProp={0,189},nCount=1,nQuality=1,nExpiredTime=30*24*60},
			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 1000") SetTask(NHANTHUONGMOC,5)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch�a ��t T�i M�c N�y")
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Reset()
local Xu = CalcEquiproomItemCount(4,417,1,1)
	if (GetTask(NHANTHUONGMOC) >= 1) then
		if (Xu >= 10) then
			SetTask(HOAPHUONGTRANG,0) ConsumeEquiproomItem(10,4,417,1,-1) SetTask(NHANTHUONGMOC,0)
			Talk(1,"","<color=red>"..myplayersex().." Ch�c M�ng B�n �� Reset Th�nh C�ng...!")
		else
			Talk(1,"","<color=red>"..myplayersex().." Kh�ng �� 1 Xu Xin Ki�m Tra L�i...!")
		end
	else
		Talk(1,"","<color=red>"..myplayersex().." Ch�a S� D�ng �� 300 B� Hoa B�n M�a")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
