Include("\\script\\missions\\boss\\sieuboss\\heart_death.lua")
IncludeLib("TASKSYS");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")

function BossDongPhuong()
	IDBoss = {1505,1506,1507,1508,1509}
	
	local AddIDBoss = IDBoss[random(1,4)]
		
	local mapidx = SubWorldID2Idx(IDmap[rr])
	local npcindex = AddNpcEx(563, 95, random(0,4), SubWorldID2Idx(37), 1576*32, 3253*32, 1, "BOSS ��c C�", 1)
	SetNpcParam(npcindex, 1, 563)
	SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\heart_death.lua");
	 AddTimer(40*60* 18, "OnTimeout", npcindex);--SetNpcTimer(npcindex, 40*60*18);
	str = ("C�p B�o ! C�p B�o <color=orange>��c C� Thi�n Phong<color> �� Xu�t Hi�n . C� Ng��i Nh�n Th�y H�n Ta �  <color=Cyan>Bi�n Kinh Nam - C�ng PK<color> Mau Mau ��n Th� S�c...!");
	AddGlobalNews(str);
	Msg2SubWorld(str);
end
function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
end