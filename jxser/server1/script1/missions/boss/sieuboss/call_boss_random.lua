Include("\\script\\missions\\boss\\sieuboss\\heart_death_random.lua")
IncludeLib("TASKSYS");

function BossDongPhuong_Random()
	local idmap,nX,nY = GetWorldPos(); 
	IDBoss = {1870,1871,1872,1869}
	local AddIDBoss = IDBoss[random(1,4)]
	local mapidx = SubWorldID2Idx(idmap)
	local npcindex = AddNpcEx(AddIDBoss, 95, random(0,4), mapidx, nX*32, nY*32, 1, "§«ng Ph­¬ng BÊt B¹i", 1)
	SetNpcParam(npcindex, 1, AddIDBoss)
	SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\heart_death_random.lua");
	SetNpcTimer(npcindex, 120*60*18);
	str = ("CÊp B¸o ! CÊp B¸o <color=orange>§«ng Ph­¬ng BÊt B¹i B¹i<color> §· XuÊt HiÖn . Cã Ng­êi Nh×n ThÊy H¾n Ta ë <color=Cyan>Ba L¨ng HuyÖn<color> Täa §é <color=yellow>"..floor(nX/8).."/"..floor(nY/16).."<color> Mau Mau §Õn Thö Søc...!");
	AddGlobalNews(str);
	Msg2SubWorld(str);
end

function ConLonTamThanh_Random()

	local idmap,nX,nY = GetWorldPos(); 
	local mapidx = SubWorldID2Idx(idmap)
	local npcindex = AddNpcEx(1950, 95, random(0,4), mapidx, nX*32, nY*32, 1, "C«n L«n Tam Th¸nh", 1)
	SetNpcParam(npcindex, 1, 1950)
	SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\heart_death_random.lua");
	SetNpcTimer(npcindex, 120*60*18);
	str = ("Tr¨m n¨m HiÕm ThÊy ThÇn Tiªn H¹ Phµm <color=orange>C«n L«n Tam Th¸nh<color> §· XuÊt HiÖn T¹i <color=green>Ba L¨ng HuyÖn<color> Täa §é <color=yellow>"..floor(nX/8).."/"..floor(nY/16).."<color> h·y nhanh ch©n ®Õn thñ søc");
	AddGlobalNews(str);
	Msg2SubWorld(str);
end

function KiemTienLyBach_Random()

	local idmap,nX,nY = GetWorldPos(); 
	local mapidx = SubWorldID2Idx(idmap)
	local npcindex = AddNpcEx(1951, 95, random(0,4), mapidx, nX*32, nY*32, 1, "C«n L«n Tam Th¸nh", 1)
	SetNpcParam(npcindex, 1, 1951)
	SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\heart_death_random.lua");
	SetNpcTimer(npcindex, 120*60*18);
	str = ("Tr¨m n¨m HiÕm ThÊy ThÇn Tiªn H¹ Phµm <color=orange>KiÕm Tiªn Lý B¹ch<color> §· XuÊt HiÖn T¹i <color=green>Ba L¨ng HuyÖn<color> Täa §é <color=yellow>"..floor(nX/8).."/"..floor(nY/16).."<color> h·y nhanh ch©n ®Õn thñ søc");
	AddGlobalNews(str);
	Msg2SubWorld(str);
end
