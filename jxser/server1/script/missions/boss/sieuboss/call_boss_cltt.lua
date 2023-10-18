-------------------------------***Edit*By*Heart*Doldly***----------------------------------------
IncludeLib("TASKSYS");
Include("\\script\\missions\\boss\\sieuboss\\heart_death.lua")
--------------------------------------------------------------------
function BossTamThanh()
local Map = random(1,10)
	if (Map == 1) then
		local nW = "Tr­êng B¹ch S¬n Nam"; local nX = 149; local nY = 159
		local npcindex = AddNpcEx(1950, 100, 1, SubWorldID2Idx(321), 1198*32, 2557*32, 1, "C«n L«n Tam Th¸nh", 1)
		SetNpcParam(npcindex, 1, 1950)
		SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\heart_death.lua")
		SetNpcTimer(npcindex, 120*60*18);
		str = ("Tr¨m n¨m HiÕm ThÊy ThÇn Tiªn H¹ Phµm <color=orange>C«n L«n Tam Th¸nh<color> §· XuÊt HiÖn T¹i <color=green>"..nW.."<color> <color=yellow>"..nX.."/"..nY.."<color> h·y nhanh ch©n ®Õn thñ søc");
		AddGlobalNews(str);
		Msg2SubWorld(str);
	elseif (Map == 2) then
		local nW = "Tr­êng B¹ch S¬n B¾c"; local nX = 220; local nY = 220
		local npcindex = AddNpcEx(1950, 100, 1, SubWorldID2Idx(322), 1766*32, 3521*32, 1, "C«n L«n Tam Th¸nh", 1)
		SetNpcParam(npcindex, 1, 1950)
		SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\heart_death.lua")
		SetNpcTimer(npcindex, 120*60*18);
		str = ("Tr¨m n¨m HiÕm ThÊy ThÇn Tiªn H¹ Phµm <color=orange>C«n L«n Tam Th¸nh<color> §· XuÊt HiÖn T¹i <color=green>"..nW.."<color> <color=yellow>"..nX.."/"..nY.."<color> h·y nhanh ch©n ®Õn thñ søc");
		AddGlobalNews(str);
		Msg2SubWorld(str);
	elseif (Map == 3) then
		local nW = "Kháa Lang §éng"; local nX = 214; local nY = 193
		local npcindex = AddNpcEx(1950, 100, 1, SubWorldID2Idx(75), 1719*32, 3089*32, 1, "C«n L«n Tam Th¸nh", 1)
		SetNpcParam(npcindex, 1, 1950)
		SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\heart_death.lua")
		SetNpcTimer(npcindex, 120*60*18);
		str = ("Tr¨m n¨m HiÕm ThÊy ThÇn Tiªn H¹ Phµm <color=orange>C«n L«n Tam Th¸nh<color> §· XuÊt HiÖn T¹i <color=green>"..nW.."<color> <color=yellow>"..nX.."/"..nY.."<color> h·y nhanh ch©n ®Õn thñ søc");
		AddGlobalNews(str);
		Msg2SubWorld(str);
	elseif (Map == 4) then
		local nW = "Sa M¹c S¬n §éng (1)"; local nX = 185; local nY = 198
		local npcindex = AddNpcEx(1950, 100, 1, SubWorldID2Idx(225), 1485*32, 3177*32, 1, "C«n L«n Tam Th¸nh", 1)
		SetNpcParam(npcindex, 1, 1950)
		SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\heart_death.lua")
		SetNpcTimer(npcindex, 120*60*18);
		str = ("Tr¨m n¨m HiÕm ThÊy ThÇn Tiªn H¹ Phµm <color=orange>C«n L«n Tam Th¸nh<color> §· XuÊt HiÖn T¹i <color=green>"..nW.."<color> <color=yellow>"..nX.."/"..nY.."<color> h·y nhanh ch©n ®Õn thñ søc");
		AddGlobalNews(str);
		Msg2SubWorld(str);
	elseif (Map == 5) then
		local nW = "Sa M¹c S¬n §éng (2)"; local nX = 215; local nY = 201
		local npcindex = AddNpcEx(1950, 100, 1, SubWorldID2Idx(226), 1722*32, 3231*32, 1, "C«n L«n Tam Th¸nh", 1)
		SetNpcParam(npcindex, 1, 1950)
		SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\heart_death.lua")
		SetNpcTimer(npcindex, 120*60*18);
		str = ("Tr¨m n¨m HiÕm ThÊy ThÇn Tiªn H¹ Phµm <color=orange>C«n L«n Tam Th¸nh<color> §· XuÊt HiÖn T¹i <color=green>"..nW.."<color> <color=yellow>"..nX.."/"..nY.."<color> h·y nhanh ch©n ®Õn thñ søc");
		AddGlobalNews(str);
		Msg2SubWorld(str);
	elseif (Map == 6) then
		local nW = "Sa M¹c S¬n §éng (3)"; local nX = 207; local nY = 190
		local npcindex = AddNpcEx(1950, 100, 1, SubWorldID2Idx(227), 1658*32, 3050*32, 1, "C«n L«n Tam Th¸nh", 1)
		SetNpcParam(npcindex, 1, 1950)
		SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\heart_death.lua")
		SetNpcTimer(npcindex, 120*60*18);
		str = ("Tr¨m n¨m HiÕm ThÊy ThÇn Tiªn H¹ Phµm <color=orange>C«n L«n Tam Th¸nh<color> §· XuÊt HiÖn T¹i <color=green>"..nW.."<color> <color=yellow>"..nX.."/"..nY.."<color> h·y nhanh ch©n ®Õn thñ søc");
		AddGlobalNews(str);
		Msg2SubWorld(str);
	elseif (Map == 7) then
		local nW = "Phong L¨ng §é"; local nX = 155; local nY = 190
		local npcindex = AddNpcEx(1950, 100, 1, SubWorldID2Idx(336), 1250*32, 3025*32, 1, "C«n L«n Tam Th¸nh", 1)
		SetNpcParam(npcindex, 1, 1950)
		SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\heart_death.lua")
		SetNpcTimer(npcindex, 120*60*18);
		str = ("Tr¨m n¨m HiÕm ThÊy ThÇn Tiªn H¹ Phµm <color=orange>C«n L«n Tam Th¸nh<color> §· XuÊt HiÖn T¹i <color=green>"..nW.."<color> <color=yellow>"..nX.."/"..nY.."<color> h·y nhanh ch©n ®Õn thñ søc");
		AddGlobalNews(str);
		Msg2SubWorld(str);
	elseif (Map == 8) then
		local nW = "M¹c Cao QuËt"; local nX = 214; local nY = 184
		local npcindex = AddNpcEx(1950, 100, 1, SubWorldID2Idx(340), 1717*32, 2945*32, 1, "C«n L«n Tam Th¸nh", 1)
		SetNpcParam(npcindex, 1, 1950)
		SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\heart_death.lua")
		SetNpcTimer(npcindex, 120*60*18);
		str = ("Tr¨m n¨m HiÕm ThÊy ThÇn Tiªn H¹ Phµm <color=orange>C«n L«n Tam Th¸nh<color> §· XuÊt HiÖn T¹i <color=green>"..nW.."<color> <color=yellow>"..nX.."/"..nY.."<color> h·y nhanh ch©n ®Õn thñ søc");
		AddGlobalNews(str);
		Msg2SubWorld(str);
	elseif (Map == 9) then
		local nW = "Vi S¬n §¶o"; local nX = 188; local nY = 154
		local npcindex = AddNpcEx(1950, 100, 1, SubWorldID2Idx(342), 1511*32, 2474*32, 1, "C«n L«n Tam Th¸nh", 1)
		SetNpcParam(npcindex, 1, 1950)
		SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\heart_death.lua")
		SetNpcTimer(npcindex, 120*60*18);
		str = ("Tr¨m n¨m HiÕm ThÊy ThÇn Tiªn H¹ Phµm <color=orange>C«n L«n Tam Th¸nh<color> §· XuÊt HiÖn T¹i <color=green>"..nW.."<color> <color=yellow>"..nX.."/"..nY.."<color> h·y nhanh ch©n ®Õn thñ søc");
		AddGlobalNews(str);
		Msg2SubWorld(str);
	elseif (Map == 10) then
		local nW = "M¹c B¾c Th¶o Nguyªn"; local nX = 177; local nY = 158
		local npcindex = AddNpcEx(1950, 100, 1, SubWorldID2Idx(341), 1421*32, 2534*32, 1, "C«n L«n Tam Th¸nh", 1)
		SetNpcParam(npcindex, 1, 1950)
		SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\heart_death.lua")
		SetNpcTimer(npcindex, 120*60*18);
		str = ("Tr¨m n¨m HiÕm ThÊy ThÇn Tiªn H¹ Phµm <color=orange>C«n L«n Tam Th¸nh<color> §· XuÊt HiÖn T¹i <color=green>"..nW.."<color> <color=yellow>"..nX.."/"..nY.."<color> h·y nhanh ch©n ®Õn thñ søc");
		AddGlobalNews(str);
		Msg2SubWorld(str);
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------