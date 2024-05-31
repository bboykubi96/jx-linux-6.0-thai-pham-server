Include("\\script\\missions\\boss\\sieuboss\\heart_death_random.lua")
IncludeLib("TASKSYS");

function BossDongPhuong_Random()
	local idmap,nX,nY = GetWorldPos(); 
	IDBoss = {1870,1871,1872,1869}
	local AddIDBoss = IDBoss[random(1,4)]
	local mapidx = SubWorldID2Idx(idmap)
	local npcindex = AddNpcEx(AddIDBoss, 95, random(0,4), mapidx, nX*32, nY*32, 1, "��ng Ph��ng B�t B�i", 1)
	SetNpcParam(npcindex, 1, AddIDBoss)
	SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\heart_death_random.lua");
	SetNpcTimer(npcindex, 120*60*18);
	str = ("C�p B�o ! C�p B�o <color=orange>��ng Ph��ng B�t B�i B�i<color> �� Xu�t Hi�n . C� Ng��i Nh�n Th�y H�n Ta � <color=Cyan>Ba L�ng Huy�n<color> T�a �� <color=yellow>"..floor(nX/8).."/"..floor(nY/16).."<color> Mau Mau ��n Th� S�c...!");
	AddGlobalNews(str);
	Msg2SubWorld(str);
end

function ConLonTamThanh_Random()

	local idmap,nX,nY = GetWorldPos(); 
	local mapidx = SubWorldID2Idx(idmap)
	local npcindex = AddNpcEx(1950, 95, random(0,4), mapidx, nX*32, nY*32, 1, "C�n L�n Tam Th�nh", 1)
	SetNpcParam(npcindex, 1, 1950)
	SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\heart_death_random.lua");
	SetNpcTimer(npcindex, 120*60*18);
	str = ("Tr�m n�m Hi�m Th�y Th�n Ti�n H� Ph�m <color=orange>C�n L�n Tam Th�nh<color> �� Xu�t Hi�n T�i <color=green>Ba L�ng Huy�n<color> T�a �� <color=yellow>"..floor(nX/8).."/"..floor(nY/16).."<color> h�y nhanh ch�n ��n th� s�c");
	AddGlobalNews(str);
	Msg2SubWorld(str);
end

function KiemTienLyBach_Random()

	local idmap,nX,nY = GetWorldPos(); 
	local mapidx = SubWorldID2Idx(idmap)
	local npcindex = AddNpcEx(1951, 95, random(0,4), mapidx, nX*32, nY*32, 1, "C�n L�n Tam Th�nh", 1)
	SetNpcParam(npcindex, 1, 1951)
	SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\heart_death_random.lua");
	SetNpcTimer(npcindex, 120*60*18);
	str = ("Tr�m n�m Hi�m Th�y Th�n Ti�n H� Ph�m <color=orange>Ki�m Ti�n L� B�ch<color> �� Xu�t Hi�n T�i <color=green>Ba L�ng Huy�n<color> T�a �� <color=yellow>"..floor(nX/8).."/"..floor(nY/16).."<color> h�y nhanh ch�n ��n th� s�c");
	AddGlobalNews(str);
	Msg2SubWorld(str);
end
