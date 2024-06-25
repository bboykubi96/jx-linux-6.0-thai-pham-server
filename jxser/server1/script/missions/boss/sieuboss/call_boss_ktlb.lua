-------------------------------***Edit*By*Heart*Doldly***----------------------------------------
IncludeLib("TASKSYS");
Include("\\script\\missions\\boss\\sieuboss\\heart_death.lua")
--------------------------------------------------------------------
function BossLyBach1()
		local nW = "Thi�n V��ng Bang"; local nX = 189; local nY = 194
		local npcindex = AddNpcEx(1951, 100,random(0,4), SubWorldID2Idx(59), 1512*32, 3104*32, 1, "Ki�m Ti�n L� B�ch", 1)
		SetNpcParam(npcindex, 1, 1951)
		SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\heart_death.lua")
		SetNpcTimer(npcindex, 120*60*18);
		str = ("Tr�m n�m Hi�m Th�y Th�n Ti�n H� Ph�m <color=orange>Ki�m Ti�n L� B�ch<color> �� Xu�t Hi�n T�i <color=green>"..nW.."<color> <color=yellow>"..nX.."/"..nY.."<color> h�y nhanh ch�n ��n th� s�c");
		AddGlobalNews(str);
		Msg2SubWorld(str);
		end
		
function BossLyBach2()
		local nW = "Thi�u L�m Ph�i"; local nX = 196; local nY = 208
		local npcindex = AddNpcEx(1951, 100, random(0,4), SubWorldID2Idx(103), 1568*32, 3328*32, 1, "Ki�m Ti�n L� B�ch", 1)
		SetNpcParam(npcindex, 1, 1951)
		SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\heart_death.lua")
		SetNpcTimer(npcindex, 120*60*18);
		str = ("Tr�m n�m Hi�m Th�y Th�n Ti�n H� Ph�m <color=orange>Ki�m Ti�n L� B�ch<color> �� Xu�t Hi�n T�i <color=green>"..nW.."<color> <color=yellow>"..nX.."/"..nY.."<color> h�y nhanh ch�n ��n th� s�c");
		AddGlobalNews(str);
		Msg2SubWorld(str);
end

function BossLyBach3()
		local nW = "���ng M�n Ph�i"; local nX = 487; local nY = 339
		local npcindex = AddNpcEx(1951, 100,random(0,4), SubWorldID2Idx(25), 3896*32, 5424*32, 1, "Ki�m Ti�n L� B�ch", 1)
		SetNpcParam(npcindex, 1, 1951)
		SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\heart_death.lua")
		SetNpcTimer(npcindex, 120*60*18);
		str = ("Tr�m n�m Hi�m Th�y Th�n Ti�n H� Ph�m <color=orange>Ki�m Ti�n L� B�ch<color> �� Xu�t Hi�n T�i <color=green>"..nW.."<color> <color=yellow>"..nX.."/"..nY.."<color> h�y nhanh ch�n ��n th� s�c");
		AddGlobalNews(str);
		Msg2SubWorld(str);
end
function BossLyBach4()
		local nW = "Ng� ��c Gi�o"; local nX = 201; local nY = 204
		local npcindex = AddNpcEx(1951, 100, random(0,4), SubWorldID2Idx(183), 1587*32, 3301*32, 1, "Ki�m Ti�n L� B�ch", 1)
		SetNpcParam(npcindex, 1, 1951)
		SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\heart_death.lua")
		SetNpcTimer(npcindex, 120*60*18);
		str = ("Tr�m n�m Hi�m Th�y Th�n Ti�n H� Ph�m <color=orange>Ki�m Ti�n L� B�ch<color> �� Xu�t Hi�n T�i <color=green>"..nW.."<color> <color=yellow>"..nX.."/"..nY.."<color> h�y nhanh ch�n ��n th� s�c");
		AddGlobalNews(str);
		Msg2SubWorld(str);
end
function BossLyBach5()
		local nW = "Nga My Ph�i"; local nX = 230; local nY = 312
		local npcindex = AddNpcEx(1951, 100,random(0,4), SubWorldID2Idx(13), 1840*32, 4992*32, 1, "Ki�m Ti�n L� B�ch", 1)
		SetNpcParam(npcindex, 1, 1951)
		SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\heart_death.lua")
		SetNpcTimer(npcindex, 120*60*18);
		str = ("Tr�m n�m Hi�m Th�y Th�n Ti�n H� Ph�m <color=orange>Ki�m Ti�n L� B�ch<color> �� Xu�t Hi�n T�i <color=green>"..nW.."<color> <color=yellow>"..nX.."/"..nY.."<color> h�y nhanh ch�n ��n th� s�c");
		AddGlobalNews(str);
		Msg2SubWorld(str);
end
function BossLyBach6()
		local nW = "Th�y Y�n M�n"; local nX = 76; local nY = 94
		local npcindex = AddNpcEx(1951, 100, random(0,4), SubWorldID2Idx(154), 608*32, 1504*32, 1, "Ki�m Ti�n L� B�ch", 1)
		SetNpcParam(npcindex, 1, 1951)
		SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\heart_death.lua")
		SetNpcTimer(npcindex, 120*60*18);
		str = ("Tr�m n�m Hi�m Th�y Th�n Ti�n H� Ph�m <color=orange>Ki�m Ti�n L� B�ch<color> �� Xu�t Hi�n T�i <color=green>"..nW.."<color> <color=yellow>"..nX.."/"..nY.."<color> h�y nhanh ch�n ��n th� s�c");
		AddGlobalNews(str);
		Msg2SubWorld(str);
end
function BossLyBach7()
		local nW = "Thi�n Nh�n Gi�o"; local nX = 208; local nY = 202
		local npcindex = AddNpcEx(1951, 100, random(0,4), SubWorldID2Idx(45), 1664*32, 3232*32, 1, "Ki�m Ti�n L� B�ch", 1)
		SetNpcParam(npcindex, 1, 1951)
		SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\heart_death.lua")
		SetNpcTimer(npcindex, 120*60*18);
		str = ("Tr�m n�m Hi�m Th�y Th�n Ti�n H� Ph�m <color=orange>Ki�m Ti�n L� B�ch<color> �� Xu�t Hi�n T�i <color=green>"..nW.."<color> <color=yellow>"..nX.."/"..nY.."<color> h�y nhanh ch�n ��n th� s�c");
		AddGlobalNews(str);
		Msg2SubWorld(str);
end
function BossLyBach8()
		local nW = "C�i Bang"; local nX = 200; local nY = 201
		local npcindex = AddNpcEx(1951, 100, random(0,4), SubWorldID2Idx(115), 1600*32, 3216*32, 1, "Ki�m Ti�n L� B�ch", 1)
		SetNpcParam(npcindex, 1, 1951)
		SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\heart_death.lua")
		SetNpcTimer(npcindex, 120*60*18);
		str = ("Tr�m n�m Hi�m Th�y Th�n Ti�n H� Ph�m <color=orange>Ki�m Ti�n L� B�ch<color> �� Xu�t Hi�n T�i <color=green>"..nW.."<color> <color=yellow>"..nX.."/"..nY.."<color> h�y nhanh ch�n ��n th� s�c");
		AddGlobalNews(str);
		Msg2SubWorld(str);
		end
function BossLyBach9()
		local nW = "V� �ang Ph�i"; local nX = 214; local nY = 205
		local npcindex = AddNpcEx(1951, 100, random(0,4), SubWorldID2Idx(81), 1712*32, 3280*32, 1, "Ki�m Ti�n L� B�ch", 1)
		SetNpcParam(npcindex, 1, 1951)
		SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\heart_death.lua")
		SetNpcTimer(npcindex, 120*60*18);
		str = ("Tr�m n�m Hi�m Th�y Th�n Ti�n H� Ph�m <color=orange>Ki�m Ti�n L� B�ch<color> �� Xu�t Hi�n T�i <color=green>"..nW.."<color> <color=yellow>"..nX.."/"..nY.."<color> h�y nhanh ch�n ��n th� s�c");
		AddGlobalNews(str);
		Msg2SubWorld(str);
		end
function BossLyBach10()
		local nW = "C�n L�n Ph�i"; local nX = 212; local nY = 208
		local npcindex = AddNpcEx(1951, 100, random(0,4), SubWorldID2Idx(131), 1696*32, 3328*32, 1, "Ki�m Ti�n L� B�ch", 1)
		SetNpcParam(npcindex, 1, 1951)
		SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\heart_death.lua")
		SetNpcTimer(npcindex, 120*60*18);
		str = ("Tr�m n�m Hi�m Th�y Th�n Ti�n H� Ph�m <color=orange>Ki�m Ti�n L� B�ch<color> �� Xu�t Hi�n T�i <color=green>"..nW.."<color> <color=yellow>"..nX.."/"..nY.."<color> h�y nhanh ch�n ��n th� s�c");
		AddGlobalNews(str);
		Msg2SubWorld(str);
	end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------