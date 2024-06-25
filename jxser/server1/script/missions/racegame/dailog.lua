-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn ##dailog.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ##zhongchaolong 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2008-04-17 11:00:21 
-- script viet hoa By http://tranhba.com  ghi danh ®Ých ®èi tho¹i 
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\missions\\racegame\\ready\\ready.lua")
function racegame_SignUp_main(nStep) 
jiefang_0804_ResetTask() 
local tbSay = {} 
if nStep == 1 then 
tbSay = 
{ 
"<dec><npc> tõ 2008-06-11 ngµy ®Õn 2008-7-13 ngµy 24 lóc , minh chñ vâ l©m ®em ë c¸c thµnh phè cö hµnh cÊp bèn tranh tµi , ®Çu 30 c¸ tíi ®iÓm cuèi còng cïng n¬i chèn l·o b¶n ®èi tho¹i ng­êi cña ®em ®¹t ®­îc ­u hËu ®Ých t­ëng th­ëng , ng­¬i nghÜ tham gia c¸i nµy ho¹t ®éng sao ?", 
" ngµn n¨m mét gÆp , ta sÏ kh«ng bá qua ®Ých !/#racegame_SignUp_main(2)", 
" hiÓu râ ho¹t ®éng tin tøc /#racegame_SignUp_main(3)", 
" thËt lµ ng­îng ngïng , ta sÏ tíi sau ./OnCancel", 
} 
elseif nStep == 2 then 
local nReadyMissionState = gb_GetTask(racegame_tbMission.G_TSK_NAME, racegame_tbMission.ReadyMissionState) 
local nMissionState = gb_GetTask(racegame_tbMission.G_TSK_NAME, racegame_tbMission.MissionState) 
-- script viet hoa By http://tranhba.com local nPlayerCount = racegame_tbReadyMission:GetMSPlayerCount() 

-- script viet hoa By http://tranhba.com  if nPlayerCount >= racegame_tbReadyMission.nPlayerCountLimit then 
-- script viet hoa By http://tranhba.com  Say("S©n nµy ho¹t ®éng nh©n sè ®· ®¹t tíi th­îng h¹n , ng­¬i tham gia cuéc kÕ tiÕp ®i #",0) 
-- script viet hoa By http://tranhba.com  return 
-- script viet hoa By http://tranhba.com  end 

if GetLevel() < racegame_tbReadyMission.nLevelLimit then 
Say(format("CÊp bËc kh«ng ®ñ %s, kh«ng thÓ tham gia ho¹t ®éng .", racegame_tbReadyMission.nLevelLimit), 0 ) 
return 
end 


if nReadyMissionState == 1 then 

local w = GetWorldPos() 
SetTask(jiefang_0804_TSK_MapId, w) 
local nRandId = random(1, getn(racegame_tbReadyMission.tbWaitPos) ) 
return NewWorld(racegame_tbReadyMission.nMapId, racegame_tbReadyMission.tbWaitPos[nRandId][1], racegame_tbReadyMission.tbWaitPos[nRandId][2]) 
elseif (nReadyMissionState == 0 and nMissionState ~= 0) or nReadyMissionState == 3 then 
tbSay = 
{ 
" ®¹i hiÖp ®· ®· tíi chËm , tranh tµi ®· b¾t ®Çu . mçi tuÇn ®Ých tranh tµi thêi gian : <enter> thø hai ®Õn thø s¸u , buæi s¸ng 10:00 ®Õn 11:00, buæi chiÒu 22:00 ®Õn 23:00<enter> th¸ng t­ ba m­¬i ngµy thø b¶y cïng th¸ng n¨m mét ngµy ; buæi s¸ng 02:00 ®Õn 03:00, buæi s¸ng 10:00 ®Õn 11:00, buæi chiÒu 14:00 ®Õn 15:00, buæi tèi 22:00 ®Õn 23:00<enter> chñ nhËt , buæi s¸ng 10:00 ®Õn 11:00, buæi tr­a 14:00 ®Õn 15:00, buæi tèi 22:00 ®Õn 23:00.", 
" thËt lµ ng­îng ngïng , ta sÏ tíi sau ./OnCancel", 
} 
tbSay[1] = "<dec><npc>"..tbSay[1] 
elseif nReadyMissionState == 0 and nMissionState == 0 then 
tbSay = 
{ 
" tranh tµi cßn ch­a b¾t ®Çu . mçi tuÇn ®Ých tranh tµi thêi gian :<enter> thø hai ®Õn thø s¸u , buæi s¸ng 10:00 ®Õn 11:00, buæi chiÒu 22:00 ®Õn 23:00<enter> th¸ng t­ ba m­¬i ngµy thø b¶y cïng th¸ng n¨m mét ngµy ; buæi s¸ng 02:00 ®Õn 03:00, buæi s¸ng 10:00 ®Õn 11:00, buæi chiÒu 14:00 ®Õn 15:00, buæi tèi 22:00 ®Õn 23:00<enter> chñ nhËt , buæi s¸ng 10:00 ®Õn 11:00, buæi tr­a 14:00 ®Õn 15:00, buæi tèi 22:00 ®Õn 23:00.", 
" thËt lµ ng­îng ngïng , ta sÏ tíi sau ./OnCancel", 
} 
tbSay[1] = "<dec><npc>"..tbSay[1] 
end 
elseif nStep == 3 then 
tbSay = 
{ 
"<dec><npc> mçi cuéc tranh tµi 15 phót , trong ®ã cã 1 phót chuÈn bÞ . ghi danh tham gia sau , nhµ ch¬i sÏ bÞ ®­a ®Õn chuÈn bÞ khu . tranh tµi b¾t ®Çu sau , lùa chän tay mau sím ch¹y vÒ môc ®Ých ®Þa . ë tranh tµi trong qu¸ tr×nh , sÏ xuÊt hiÖn c¸c lo¹i h÷u dông ®¹o cô , dïng nh÷ng thø nµy ®¹o cô cã thÓ gióp m×nh gia t¨ng tèc ®é ch¹y trèn hoÆc lµ khiÕn cho ng­êi kh¸c chËm l¹i . ®Çu 30 c¸ tíi ®iÓm cuèi còng cïng n¬i chèn l·o b¶n ®èi tho¹i ng­êi cña ®em ®¹t ®­îc ­u hËu ®Ých t­ëng th­ëng ", 
" thËt lµ ng­îng ngïng , ta sÏ tíi sau ./OnCancel", 
} 

end 
CreateTaskSay(tbSay) 
end 



function racegame_Award_main() 
jiefang_0804_ResetTask() 
local nAwardState = GetTask(jiefang_0804_TSK_AwardState) 
local nPlayerMapId = GetTask(jiefang_0804_TSK_MapId) 
if nPlayerMapId == 0 then 
nPlayerMapId = 520 
end 
if nAwardState == 1 then 
return NewWorld(nPlayerMapId, racegame_tbMission.tbSignUpPos[1], racegame_tbMission.tbSignUpPos[2]) 
end 
local nRankCount = racegame_tbMission:GetMissionV(racegame_tbMission.tbMissionV.RANK_COUNTER) 
	nRankCount = nRankCount + 1
racegame_tbMission:SetMissionV(racegame_tbMission.tbMissionV.RANK_COUNTER, nRankCount) 
local szMsg = format("Ha ha , ë n¬i nµy cuéc tranh tµi ®¹i hiÖp ®øng hµng <color=yellow>%d<color>.", nRankCount) 

Msg2MSAll(racegame_tbMission.nMissionId, format("<color=yellow>%s<color> ë n¬i nµy cuéc tranh tµi ®øng hµng <color=yellow>%d<color>.",GetName(), nRankCount)) 
Msg2Player(szMsg) 
if nRankCount >= 1 and nRankCount <= 10 then 
tbAwardTemplet:GiveAwardByList(%tbAward[1],"PhÇn Th­ëng §ua Ngùa XÕp H¹ng "..nRankCount.."")
elseif nRankCount >= 11 and nRankCount <= 20 then 
tbAwardTemplet:GiveAwardByList(%tbAward[2],"PhÇn Th­ëng §ua Ngùa XÕp H¹ng "..nRankCount.."")
elseif nRankCount >= 21 and nRankCount <= 30 then 
tbAwardTemplet:GiveAwardByList(%tbAward[3],"PhÇn Th­ëng §ua Ngùa XÕp H¹ng "..nRankCount.."")
end 

SetTask(jiefang_0804_TSK_AwardState, 1) 
if nRankCount >= 30 then 
racegame_tbMission:CloseGame(); 
end 

NewWorld(nPlayerMapId, racegame_tbMission.tbSignUpPos[1], racegame_tbMission.tbSignUpPos[2]) 
end 

function OnCancel() 
end
tbAward = {--PhÇn Th­ëng TÝn Sø
[1] = {--Phong Ky
		[1] = {
                {szName="KNB",tbProp={4,1506,1,1,0,0},nCount=400},
		
		},
		[2] = {
			
		},
	},
	[2] = {--Son Than Mieu
		[1] = {
                {szName="KNB",tbProp={4,1506,1,1,0,0},nCount=200},
		},
		[2] = {
			
		},
	},
	[3] = {--Thien Bao Kho
		{nExp_tl = 2e7},
                {szName="KNB",tbProp={4,1506,1,1,0,0},nCount=50},
              
		},
		
	[4] = {--Thien Bao Kho Dac Biet
		[1] = {
		      {nExp_tl = 4e8},
		{szName="Tinh Ngoc",tbProp={6,1,4807,1,0,0},nCount=50},

		},
		[2] = {
		  --  {szName="Ngu Linh Kiem Dinh Phu",tbProp={6,1,3007,1,1,0},nCount=1,nRate=10,CallBack= _Message},
		  --  {szName="Quy Nguyen ",tbProp={6,1,3008,1,1,0},nCount=1,nRate=1,CallBack= _Message},
		},
		
	},
}