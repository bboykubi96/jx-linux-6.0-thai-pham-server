Include("\\script\\missions\\boss\\sieuboss\\heart_death.lua")
IncludeLib("TASKSYS");

function NewBoss()
	IDBoss = {1505,1869,1506,1870,1507,1871,1508,1872}
	local AddIDBoss = IDBoss[random(1,8)]
	local mapidx = SubWorldID2Idx(959)
	local npcindex = AddNpcEx(AddIDBoss, 95, random(0,4), mapidx, 1465*32, 3070*32, 1, "§«ng Ph­¬ng BÊt B¹i", 1)
		SetNpcParam(npcindex, 1, AddIDBoss)
		SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\heart_death.lua");
		SetNpcTimer(npcindex, 120*60*18);
		str = ("CÊp B¸o ! CÊp B¸o<color=orange>§«ng Ph­¬ng BÊt B¹i B¹i<color> §· XuÊt HiÖn . Cã Ng­êi Nh×n ThÊy H¾n Ta ë <color=Cyan>ChiÕn Long §éng<color> Täa §é<color=yellow>183/191<color> Mau Mau §Õn Thö Tµi...!");
		AddGlobalNews(str);
		Msg2SubWorld(str);
end