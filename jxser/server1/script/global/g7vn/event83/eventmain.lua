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

subknmoc1="1 M�n Ho�n M� An Bang 30 Ng�y Random"
subknmoc2="1 M�n Ho�n M� An Bang 30 Ng�y Random"
subknmoc3="1 X�ch Long C�u 7 Ng�y"
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
		return "N� Hi�p";
	else
		return "��i Hi�p";
	end
end
----------------------------------------
function main()
--dofile("script/global/g7vn/event83/eventmain.lua");
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	local nTime = tonumber(GetLocalDate("%H%M"));
	
	if (nDate >= startdate and nDate <= endate and nTime >= 0000 and nTime <= 2359) then
	local szTitlezs = "<color=yellow>Ho�t ��ng K� Ni�m 8-3:<color>\n<color=red>M�c 1: 1 M�n AB Ho�n M� 30 Ng�y\nM�c 2: 1 M�n AB Ho�n M� 30 Ng�y\nM�c 3: 1 X�ch Long C�u 7 Ng�y<color>\n<color=green>Nh� Ng��i �� ��t ��n M�c N�o R�i???<color>"
		local tbOpt = {
			{"Nh�n Th��ng M�c",NhanMoc},
			{"Tho�t",},
		}
		CreateNewSayEx(szTitlezs, tbOpt)
else
Talk(1,"","<bclr=violet>Ho�t ��ng Ch� M� T� 0h Ng�y 04 - 05 - 2018 ��n 23h 59 Ng�y 30 - 06 - 2018 Xin M�i Quay L�i Sau<bclr>")
return 0;
end
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanMoc()
		Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."<color> Gi� Hoa H�ng V�nh C�u<color>\n<color=orange>L�u �: Nh�n M�c T�i �a 300 Gi� Hoa H�ng V�nh C�u\nTrong Su�t Th�i Gian Ho�t ��ng<color>\n<color=pink>               T�ng Th�m L�n S� D�ng: 0KNB/L�n<color>",5,"Xem Ph�n Th��ng M�c 100/XemMoc2000","Xem Ph�n Th��ng M�c 200/XemMoc4000","Xem Ph�n Th��ng M�c 300/XemMoc6000","H�y B�/No")
end
function XemMoc2000()
if (GetTask(NHANTHUONGMOC) == 0) then
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/100<color> Gi� Hoa H�ng V�nh C�u<color>\n<color=orange>Ph�n Th��ng M�c N�y G�m : \n "..subknmoc1.." \n "..pt1moc1.." \n "..pt2moc1.."<color>",2,"Nh�n Ph�n Th��ng M�c 100/Moc2000","H�y B�/No")
else 
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/100<color> Gi� Hoa H�ng V�nh C�u<color>\n<color=red>Kh�ng �� �i�u Ki�n �� Nh�n M�c N�y Ho�c �� Nh�n R�i<color=red>\n<color=orange>Ph�n Th��ng M�c N�y G�m : \n "..subknmoc1.." Kinh Nghi�m\n "..pt1moc1.." \n "..pt2moc1.."<color>",1,"H�y B�/No")
end
end

function XemMoc4000()
if (GetTask(NHANTHUONGMOC) == 1) then
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/200<color> Gi� Hoa H�ng V�nh C�u<color>\n<color=orange>Ph�n Th��ng M�c N�y G�m : \n "..subknmoc2.."\n "..pt1moc2.."\n "..pt2moc2.."\n "..pt3moc2.."<color>",2,"Nh�n Ph�n Th��ng M�c 200/Moc4000","H�y B�/No")
else 
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/200<color> Gi� Hoa H�ng V�nh C�u<color>\n<color=red>Kh�ng �� �i�u Ki�n �� Nh�n M�c N�y Ho�c �� Nh�n R�i<color=red>\n<color=orange>Ph�n Th��ng M�c N�y G�m : \n "..subknmoc2.."\n "..pt1moc2.."\n "..pt2moc2.."\n "..pt3moc2.."<color>",1,"H�y B�/No")
end
end
function XemMoc6000()
if (GetTask(NHANTHUONGMOC) == 2) then
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/300<color> Gi� Hoa H�ng V�nh C�u<color>\n<color=orange>Ph�n Th��ng M�c N�y G�m : \n "..subknmoc3.."\n "..pt1moc3.."\n "..pt2moc3.."\n "..pt3moc3.."<color>",2,"Nh�n Ph�n Th��ng M�c 300/Moc6000","H�y B�/No")
else 
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/300<color> Gi� Hoa H�ng V�nh C�u<color>\n<color=red>Kh�ng �� �i�u Ki�n �� Nh�n M�c N�y Ho�c �� Nh�n R�i<color=red>\n<color=orange>Ph�n Th��ng M�c N�y G�m : \n "..subknmoc3.."\n "..pt1moc3.."\n "..pt2moc3.."\n "..pt3moc3.."<color>",1,"H�y B�/No")
end
end
function XemMoc8000()
if (GetTask(NHANTHUONGMOC) == 3) then
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/800<color> Gi� Hoa H�ng V�nh C�u<color>\n<color=orange>Ph�n Th��ng M�c N�y G�m : \n "..subknmoc4.."\n "..pt1moc4.."\n "..pt2moc4.."\n "..pt3moc4.."<color>",2,"Nh�n Ph�n Th��ng M�c 8000/Moc8000","H�y B�/No")
else 
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/800<color> Gi� Hoa H�ng V�nh C�u<color>\n<color=red>Kh�ng �� �i�u Ki�n �� Nh�n M�c N�y Ho�c �� Nh�n R�i<color=red>\n<color=orange>Ph�n Th��ng M�c N�y G�m : \n "..subknmoc4.."\n "..pt1moc4.."\n "..pt2moc4.."\n "..pt3moc4.."<color>",1,"H�y B�/No")
end
end
function XemMoc10k()
if (GetTask(NHANTHUONGMOC) == 4) then
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/1000<color> Gi� Hoa H�ng V�nh C�u<color>\n<color=orange>Ph�n Th��ng M�c N�y G�m : \n "..subknmoc5.."\n "..pt1moc5.."\n "..pt2moc5.."\n "..pt3moc5.."<color>",2,"Nh�n Ph�n Th��ng M�c 10000/Moc10000","H�y B�/No")
else 
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/1000<color> Gi� Hoa H�ng V�nh C�u<color>\n<color=red>Kh�ng �� �i�u Ki�n �� Nh�n M�c N�y Ho�c �� Nh�n R�i<color=red>\n<color=orange>Ph�n Th��ng M�c N�y G�m : \n "..subknmoc5.."\n "..pt1moc5.."\n "..pt2moc5.."\n "..pt3moc5.."<color>",1,"H�y B�/No")
end
end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc2000()
	if (GetTask(HOAPHUONGTRANG) >= 100) and (GetTask(NHANTHUONGMOC) == 0) then
		local tbAward = {
		{szName="[Ho�n M�] An Bang B�ng Tinh Th�ch H�ng Li�n",tbProp={0,424},nQuality=1,nCount=1,nExpiredTime=60*24*30,nRate=25},
		{szName="[Ho�n M�] An Bang C�c Hoa Th�ch Ch� Ho�n",tbProp={0,425},nQuality=1,nCount=1,nExpiredTime=60*24*30,nRate=25},
		{szName="[Ho�n M�] An Bang �i�n Ho�ng Th�ch Ng�c B�i",tbProp={0,426},nQuality=1,nCount=1,nExpiredTime=60*24*30,nRate=25},
		{szName="[Ho�n M�] An Bang K� Huy�t Th�ch Gi�i Ch�",tbProp={0,427},nQuality=1,nCount=1,nExpiredTime=60*24*30,nRate=25},			
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 100") SetTask(NHANTHUONGMOC,1)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch�a ��t T�i M�c N�y")
	end
end
----------------------------------------------------Nhan Moc 2000 -----------------------------------------------------------------------------------------------------
function Moc4000()
	if (GetTask(HOAPHUONGTRANG) >= 200)  and (GetTask(NHANTHUONGMOC) == 1)then
		local tbAward = {
			[1] = {
		{szName="[Ho�n M�] An Bang B�ng Tinh Th�ch H�ng Li�n",tbProp={0,424},nQuality=1,nCount=1,nExpiredTime=60*24*30,nRate=25},
		{szName="[Ho�n M�] An Bang C�c Hoa Th�ch Ch� Ho�n",tbProp={0,425},nQuality=1,nCount=1,nExpiredTime=60*24*30,nRate=25},
		{szName="[Ho�n M�] An Bang �i�n Ho�ng Th�ch Ng�c B�i",tbProp={0,426},nQuality=1,nCount=1,nExpiredTime=60*24*30,nRate=25},
		{szName="[Ho�n M�] An Bang K� Huy�t Th�ch Gi�i Ch�",tbProp={0,427},nQuality=1,nCount=1,nExpiredTime=60*24*30,nRate=25},	
			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 400") SetTask(NHANTHUONGMOC,2)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch�a ��t T�i M�c N�y")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc6000()
	if (GetTask(HOAPHUONGTRANG) >= 300)  and (GetTask(NHANTHUONGMOC) == 2)then
		local Index = AddItem(0,10,9,10,0,0,0)   ITEM_SetExpiredTime(Index,24*60*7) SyncItem(Index)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch�a ��t T�i M�c N�y")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc8000()
	if (GetTask(HOAPHUONGTRANG) >= 8000) and (GetTask(NHANTHUONGMOC) == 3) then
		local tbAward = {
			[1] = {
				{nExp_tl = 10e9},
				{szName="Minh Ph��ng L�nh",tbProp={6,1,2371,1,0,0},nCount=3},
				{szName="��ng Long L�nh",tbProp={6,1,2372,1,0,0},nCount=3},
				{szName="B�o R��ng Th�n B�",tbProp={6,1,30036,1,0,0},nCount=100},
				--{szName="X�ch Long C�u Truy�n Thuy�t",tbProp={0,3941},nQuality=1,nCount=1},
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
				
				{szName="��ng Long L�nh",tbProp={6,1,2372,1,0,0},nCount=3},
				{szName="B�o R��ng Th�n B�",tbProp={6,1,30036,1,0,0},nCount=100},
				{szName="Long T��ng Chi L�n H� Gi�i",tbProp={0,4026},nQuality=1,nCount=1},
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
	if (GetTask(NHANTHUONGMOC) >= 5) then
		if (Xu >= 1) then
			SetTask(HOAPHUONGTRANG,0) ConsumeEquiproomItem(1,4,417,1,-1) SetTask(NHANTHUONGMOC,0)
			Talk(1,"","<color=red>"..myplayersex().." Ch�c M�ng B�n �� Reset Th�nh C�ng...!")
		else
			Talk(1,"","<color=red>"..myplayersex().." Kh�ng �� 1 Xu Xin Ki�m Tra L�i...!")
		end
	else
		Talk(1,"","<color=red>"..myplayersex().." Ch�a S� D�ng �� 10000 Gi� Hoa H�ng V�nh C�u")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------
