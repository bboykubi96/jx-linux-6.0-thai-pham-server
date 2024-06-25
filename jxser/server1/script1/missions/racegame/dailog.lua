IncludeLib("SETTING")
IncludeLib("LEAGUE")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\traogiaithdnb\\thdnb7.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\missions\\racegame\\ready\\ready.lua")
IncludeLib("TASKSYS");
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")

function racegame_SignUp_main(nStep)
	if DangDuaTop == 1 then
		Say("§ang trong qu¸ tr×nh ®ua top, kh«ng thÓ thùc hiÖn thao t¸c nµy")
		return
	end
	jiefang_0804_ResetTask()
	local tbSay = {}
	if nStep == 1 then
		tbSay = 
		{
			"<dec><npc>Hµng n¨m dÞp cËn tÕt lÔ quan th­êng xuyªn tæ chøc gi¶i ®ua thó ng­¬i cã muèn tham gia kh«ng ?",
			"Ta sÏ kh«ng bá qua ngµn n¨m cã mét nµy!/#racegame_SignUp_main(2)",
			--"T×m hiÓu th«ng tin ho¹t ®éng/#racegame_SignUp_main(3)",
			"ThËt ng¹i qu¸, ta kh«ng thÝch ®ua./OnCancel",	
		}
	elseif nStep == 2 then
		local nReadyMissionState = gb_GetTask(racegame_tbMission.G_TSK_NAME, racegame_tbMission.ReadyMissionState)
		local nMissionState = gb_GetTask(racegame_tbMission.G_TSK_NAME, racegame_tbMission.MissionState)
		--local nPlayerCount	= racegame_tbReadyMission:GetMSPlayerCount()
		
--		if nPlayerCount >= racegame_tbReadyMission.nPlayerCountLimit then
--			Say("Õâ³¡»î¶¯ÈËÊýÒÑ¾­´ïµ½ÉÏÏÞ£¬Äã²Î¼ÓÏÂÒ»³¡°É£¡",0)
--			return 
--		end
		
		if GetLevel() < racegame_tbReadyMission.nLevelLimit then
			Say(format("§¼ng cÊp kh«ng ®ñ %s, kh«ng thÓ tham gia ho¹t ®éng.", racegame_tbReadyMission.nLevelLimit), 0 )
			return 
		end
		local giatochona= CalcEquiproomItemCount(6,1,4392,-1)
		if giatochona>0 then
			ConsumeEquiproomItem(giatochona,6,1,4392,-1)
		end
		
		if nReadyMissionState == 1 then
	local szNews = format("Tay ®ua <color=green>"..GetName().."<color=white> ®· vµo ®Êu tr­êng §ua Ngùa chuÈn bÞ cuéc ®ua tµi.<color=pink> (B¸o Danh 204/198 Ba L¨ng HuyÖn )");
	--AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
			local w = GetWorldPos()
			SetTask(jiefang_0804_TSK_MapId, w)			
			local nRandId = random(1, getn(racegame_tbReadyMission.tbWaitPos) )
			return NewWorld(racegame_tbReadyMission.nMapId, racegame_tbReadyMission.tbWaitPos[nRandId][1], racegame_tbReadyMission.tbWaitPos[nRandId][2])
		elseif (nReadyMissionState == 0 and nMissionState ~= 0) or nReadyMissionState == 3 then
			tbSay = 
			{
				"§¹i hiÖp ®· trÔ mÊt råi, cuéc ®ua ®· b¾t ®Çu.",
				"ThËt ng¹i qu¸, ta sÏ quay l¹i sau./OnCancel",	
			}
			tbSay[1] = "<dec><npc>"..tbSay[1]
		elseif nReadyMissionState == 0 and nMissionState == 0 then
			tbSay = 
			{
				"Cuéc ®ua vÉn ch­a b¾t ®Çu.....",
				"ThËt ng¹i qu¸, ta sÏ quay l¹i sau./OnCancel",
			}
			tbSay[1] = "<dec><npc>"..tbSay[1]
		end
	elseif nStep == 3 then
		tbSay = 
		{
			"<dec><npc>Mçi cuéc ®ua diÔn ra trong 30 phót, trong ®ã cã 5 phót ®Ó chuÈn bÞ. Sau khi b¸o danh tham gia, ng­êi ch¬i sÏ ®­îc ®­a ®Õn khu vùc chuÈn bÞ. Sau khi cuéc tranh tµi b¾t ®Çu, c¸c tuyÓn thñ ph¶i ra søc ch¹y thËt nhanh vÒ ®Ých. Trong qu¸ tr×nh ®ua, trªn ®­êng ®ua sÏ xuÊt hiÖn c¸c ®¹o cô hç trî, sö dông ®¹o cô nµy cã thÓ gióp t¨ng tèc ®é ch¹y cña b¶n th©n hoÆc lµm gi¶m tèc ®é cña ng­êi kh¸c. 30 ng­êi ®Çu tiªn vÒ ®Ých tr­íc sÏ nhËn ®­îc phÇn th­ëng cã gi¸ trÞ.",
			"ThËt ng¹i qu¸, ng­ùa ta hÕt x¨ng råi./OnCancel",	
		}
		
	end
	CreateTaskSay(tbSay)
end



function racegame_Award_main()
	jiefang_0804_ResetTask()
	local nAwardState = GetTask(jiefang_0804_TSK_AwardState)
	local nPlayerMapId = GetTask(jiefang_0804_TSK_MapId)
	if nPlayerMapId == 0 then
		nPlayerMapId = 1
	end
	if nAwardState == 1 then
		return NewWorld(nPlayerMapId, racegame_tbMission.tbSignUpPos[1], racegame_tbMission.tbSignUpPos[2])
	end
	local nRankCount = racegame_tbMission:GetMissionV(racegame_tbMission.tbMissionV.RANK_COUNTER)
	nRankCount = nRankCount + 1
	racegame_tbMission:SetMissionV(racegame_tbMission.tbMissionV.RANK_COUNTER, nRankCount)
	local szMsg = format("Ha ha, ®¹i hiÖp trong cuéc ®ua nµy ®­îc xÕp h¹ng <color=yellow>%d<color>.",  nRankCount)
	
	Msg2MSAll(racegame_tbMission.nMissionId, format("<color=yellow>%s<color> trong cuéc ®ua nµy ®­îc xÕp h¹ng <color=yellow>%d<color>.",GetName(),  nRankCount))
	Msg2Player(szMsg)
	if nRankCount >= 1 and nRankCount<=3 then
AddOwnExp(7000000)
for i=1,3 do
tbAwardTemplet:GiveAwardByList({{szName="Thñy Tinh",tbProp={4,random(238,240),1,1,0},nCount=1,},}, "test", 1);
end
Msg2SubWorld("§¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· vÒ ®Ých thø "..nRankCount.." trong gi¶i ®ua ngùa h«m nay. PhÇn th­ëng: <color=yellow> 7.000.000 EXP + 3 Thñy Tinh")
	end
	if nRankCount > 3 and nRankCount<=10 then
AddOwnExp(6000000)
tbAwardTemplet:GiveAwardByList({{szName="Thñy Tinh",tbProp={4,random(238,240),1,1,0},nCount=1,},}, "test", 1);
Msg2SubWorld("§¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· vÒ ®Ých thø "..nRankCount.." trong gi¶i ®ua ngùa h«m nay. PhÇn th­ëng: <color=yellow> 6.000.000 EXP + 1 Thñy Tinh")
	end
		if nRankCount > 10 and nRankCount<=20 then
AddOwnExp(5000000)
Msg2SubWorld("§¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· vÒ ®Ých thø "..nRankCount.." trong gi¶i ®ua ngùa h«m nay. PhÇn th­ëng: <color=yellow> 5.000.000 EXP")
	end
			if nRankCount > 20 and nRankCount<=50 then
AddOwnExp(4000000)
Msg2SubWorld("§¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· vÒ ®Ých thø "..nRankCount.." trong gi¶i ®ua ngùa h«m nay. PhÇn th­ëng: <color=yellow> 4.000.000 EXP")
	end
				if nRankCount > 50 and nRankCount<=100 then
AddOwnExp(3000000)
Msg2SubWorld("§¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· vÒ ®Ých thø "..nRankCount.." trong gi¶i ®ua ngùa h«m nay. PhÇn th­ëng: <color=yellow> 3.000.000 EXP")
	end
--	if nRankCount >= 31 and nRankCount<=40 then

--tbAwardTemplet:GiveAwardByList({{szName="Xu",tbProp={4,417,1,1,0},nCount=10,},}, "test", 1);

--Msg2SubWorld("§¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· vÒ ®Ých thø "..nRankCount.." trong gi¶i ®ua ngùa h«m nay<pic=48><pic=108>")
--	end 	

	
	SetTask(jiefang_0804_TSK_AwardState, 1)
	if nRankCount >= 100 then
		racegame_tbMission:CloseGame();
	end
	
	NewWorld(nPlayerMapId, racegame_tbMission.tbSignUpPos[1], racegame_tbMission.tbSignUpPos[2])
end

function OnCancel()
end




function vongduanguatop1() 
n_title = 363 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 432000;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
PlayerFunLib:AddSkillState(1502,1,3,7776000,1)
end

function vongduantopall() 
n_title = 364 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 107000;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
PlayerFunLib:AddSkillState(1503,1,3,3125600,1)
end




