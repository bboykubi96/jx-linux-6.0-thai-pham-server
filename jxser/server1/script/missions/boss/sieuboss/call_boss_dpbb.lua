Include("\\script\\missions\\boss\\sieuboss\\heart_death.lua")
IncludeLib("TASKSYS");

function BossDongPhuong()
	IDBoss = {1870,1871,1872,1869}
	local AddIDBoss = IDBoss[random(1,4)]
	local mapidx = SubWorldID2Idx(338)
	local npcindex = AddNpcEx(AddIDBoss, 95, random(0,4), mapidx, 1620*32, 3208*32, 1, "Covid 19", 1)
	SetNpcParam(npcindex, 1, AddIDBoss)
	SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\heart_death.lua");
	SetNpcTimer(npcindex, 120*60*18);
	str = ("CÊp B¸o ! CÊp B¸o <color=orange>Covid 19<color> §· XuÊt HiÖn . Cã Ng­êi Nh×n ThÊy H¾n Ta ë <color=Cyan>Ba L¨ng HuyÖn<color> Täa §é <color=yellow>183/205<color> Mau Mau §Õn Thö Søc...!");
	AddGlobalNews(str);
	Msg2SubWorld(str);
end