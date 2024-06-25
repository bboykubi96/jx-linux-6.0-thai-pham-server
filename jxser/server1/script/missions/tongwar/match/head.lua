Include("\\script\\missions\\tongwar\\head.lua")

-- script viet hoa By http://tranhba.com  trë xuèng lµ mét Ýt trÞ gi¸ ghi chÐp ë MissionValue trung ®Ých t¸c dÉn vÞ trÝ , th«ng qua GetMissionV(MS_XXX) tíi ®¹t ®­îc thùc tÕ trÞ gi¸ 

MS_STATE = 1; -- script viet hoa By http://tranhba.com  nhiÖm vô trung ghi chÐp nhiÖm vô tr¹ng th¸i thay ®æi l­îng ID 
-- script viet hoa By http://tranhba.com  nªn thay ®æi l­îng chØ h­íng ®Ých tr¹ng th¸i trÞ gi¸ 0 bµy tá chiÕn dÞch v× më ra , 1 bµy tá chiÕn dÞch ghi danh trung , 2 bµy tá chiÕn dÞch chiÕn ®Êu tiÕn hµnh trung , 3 bµy tá chiÕn dÞch míi võa kÕt thóc 

MS_butcher = 2;-- script viet hoa By http://tranhba.com  ghi chÐp tr­íc mÆt sinh ra lµ tèng qu©n Nguyªn so¸i #1# cßn lµ kim qu©n Nguyªn so¸i #2# cßn lµ còng sinh ra #3# 

MS_CENTER_X1 = 4; -- script viet hoa By http://tranhba.com  khu vùc 1# khi ghi danh giai ®o¹n lóc , cÊm chØ nhµ ch¬i rêi ®i ®¹i doanh lóc , ®em nhµ ch¬i nÐm trë vÒ ®¹i doanh ®Ých täa ®é 
MS_CENTER_Y1 = 5; 
MS_CENTER_X2 = 6; -- script viet hoa By http://tranhba.com  khu vùc 2 
MS_CENTER_Y2 = 7; 

MS_HOMEIN_X1 = 8; -- script viet hoa By http://tranhba.com  khu vùc 1# sau doanh bªn trong täa ®é 
MS_HOMEIN_Y1 = 9; 
MS_HOMEOUT_X1 = 10; -- script viet hoa By http://tranhba.com  sau doanh bªn ngoµi täa ®é 
MS_HOMEOUT_Y1 = 11; 
MS_HOMEIN_X2 = 12; -- script viet hoa By http://tranhba.com  khu vùc 2 
MS_HOMEIN_Y2 = 13; 
MS_HOMEOUT_X2 = 14; 
MS_HOMEOUT_Y2 = 15; 
MS_TIMER1 = 17; -- script viet hoa By http://tranhba.com  ghi chÐp Timer1 thi hµnh ®Ých sè lÇn 

MS_MOSTDEATH = 18 -- script viet hoa By http://tranhba.com  nÕu nh­ nhÊt ph­¬ng §¹i t­íng tö vong , lµ v× #1# tèng # lÊy ®­îc 2# kim ## nÕu kh«ng v× #0 

MS_TOTALPOINT_S = 19 -- script viet hoa By http://tranhba.com  lÇn nµy chiÕn dÞch kÕt thóc lóc xin/mêi sè kh«ng , b¶n ghi chÐp lÇn chiÕn dÞch tèng Ph­¬ng tæng tÝch ph©n 
MS_TOTALPOINT_J = 20 -- script viet hoa By http://tranhba.com  lÇn nµy chiÕn dÞch kÕt thóc lóc xin/mêi sè kh«ng , b¶n ghi chÐp lÇn chiÕn dÞch kim Ph­¬ng tæng tÝch ph©n 

MS_TONGWAR_S = 21 -- script viet hoa By http://tranhba.com  lÇn nµy chiÕn dÞch tèng ph­¬ng ®¹i biÓu thµnh phè ID 
MS_TONGWAR_J = 22 -- script viet hoa By http://tranhba.com  lÇn nµy chiÕn dÞch kim ph­¬ng ®¹i biÓu thµnh phè ID 
MS_CAMP1AREA = 23 -- script viet hoa By http://tranhba.com  tèng ®èi øng sau doanh 
MS_CAMP2AREA = 24 -- script viet hoa By http://tranhba.com  kim ®èi øng sau doanh 
MS_KEYNUMBER = 25 -- script viet hoa By http://tranhba.com  vèn ®æi phiªn lÇn duy nhÊt trÞ gi¸ 

MS_PL2RANK1_S = 70 -- script viet hoa By http://tranhba.com  tr­íc mÆt mission , tèng ph­¬ng trung ®· trë thµnh " binh lÝnh " ®Çu hµm nh©n sè 
MS_PL2RANK2_S = 71 
MS_PL2RANK3_S = 72 
MS_PL2RANK4_S = 73 
MS_PL2RANK5_S = 74 
MS_PL2RANK6_S = 75 

MS_PL2RANK1_J = 76 -- script viet hoa By http://tranhba.com  tr­íc mÆt mission , kim ph­¬ng trung ®· trë thµnh " binh lÝnh " ®Çu hµm nh©n sè 
MS_PL2RANK2_J = 77 -- script viet hoa By http://tranhba.com  gi¸o óy 
MS_PL2RANK3_J = 78 -- script viet hoa By http://tranhba.com  thèng lÜnh 
MS_PL2RANK4_J = 79 -- script viet hoa By http://tranhba.com  phã t­íng 
MS_PL2RANK5_J = 80 -- script viet hoa By http://tranhba.com  §¹i t­íng 
MS_PL2RANK6_J = 81 -- script viet hoa By http://tranhba.com  Nguyªn so¸i 

MS_S_CITYNAME_S = 3 -- script viet hoa By http://tranhba.com  lÇn nµy chiÕn dÞch tèng ph­¬ng thµnh phè tªn 
MS_S_CITYNAME_J = 4 -- script viet hoa By http://tranhba.com  lÇn nµy chiÕn dÞch kim ph­¬ng thµnh phè tªn 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function sf_onplayerleave() 
RestoreOwnFeature() 
ST_SyncMiniMapObj(-1, -1); 
tongwar_setdata(TONGWAR_RLTASK_LASTDTIME, GetGameTime()) 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function but_addmissionpoint(totalpoint) 
if (totalpoint == 0) then 
return 
end 
if (GetCurCamp() == 1) then 
		SetMissionV(MS_TOTALPOINT_S, GetMissionV(MS_TOTALPOINT_S)+totalpoint)
else 
		SetMissionV(MS_TOTALPOINT_J, GetMissionV(MS_TOTALPOINT_J)+totalpoint)
end 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function GameOver() 
local bonus_s = GetMissionV(MS_TOTALPOINT_S) 
local bonus_j = GetMissionV(MS_TOTALPOINT_J) 
WriteLog("tongwar is ending. now member "..GetMissionS(MS_S_CITYNAME_S).."PlayerCount:"..GetMSPlayerCount(MISSIONID, 1)..", Score:"..bonus_s..","..GetMissionS(MS_S_CITYNAME_J).."PlayerCount:"..GetMSPlayerCount(MISSIONID, 2)..", Score:"..bonus_j) 
local resultstr = ""; 
local OldPlayerIndex = PlayerIndex 


if (GetMissionV(MS_MOSTDEATH) == 0) then 
if (bonus_s > bonus_j ) then 
resultstr = " vâ l©m ®Ö nhÊt bang "..GetMissionS(MS_S_CITYNAME_S).." cïng "..GetMissionS(MS_S_CITYNAME_J).." - chiÕn sù kÕt thóc , song ph­¬ng ®¹t tíi tæng chia lµm "..bonus_s..":"..bonus_j..","..GetMissionS(MS_S_CITYNAME_S).." ®¹t ®­îc th¾ng lîi !"; 
Msg2MSAll(MISSIONID, resultstr) 
WriteLog(resultstr) 
sf_winbouns(GetMissionV(MS_TONGWAR_S), GetMissionV(MS_TONGWAR_J), bonus_s, bonus_j) 
elseif (bonus_s < bonus_j) then 
resultstr = " vâ l©m ®Ö nhÊt bang "..GetMissionS(MS_S_CITYNAME_S).." cïng "..GetMissionS(MS_S_CITYNAME_J).." - chiÕn sù kÕt thóc , song ph­¬ng ®¹t tíi tæng chia lµm "..bonus_s..":"..bonus_j..","..GetMissionS(MS_S_CITYNAME_J).." ®¹t ®­îc th¾ng lîi !"; 
Msg2MSAll(MISSIONID, resultstr) 
WriteLog(resultstr) 
sf_winbouns(GetMissionV(MS_TONGWAR_J), GetMissionV(MS_TONGWAR_S), bonus_j, bonus_s) 
else 
resultstr = " vâ l©m ®Ö nhÊt bang "..GetMissionS(MS_S_CITYNAME_S).." cïng "..GetMissionS(MS_S_CITYNAME_J).." - chiÕn sù kÕt thóc , song ph­¬ng ®¹t tíi tæng chia lµm "..bonus_s..":"..bonus_j.." ®· b×nh côc "; 
Msg2MSAll(MISSIONID, resultstr) 
WriteLog(resultstr) 
sf_winbouns(GetMissionV(MS_TONGWAR_S), GetMissionV(MS_TONGWAR_J), 0) 
end; 

AddGlobalNews(resultstr) 

elseif (GetMissionV(MS_MOSTDEATH) == 1) then 
resultstr = " vâ l©m ®Ö nhÊt bang "..GetMissionS(MS_S_CITYNAME_S).." ®¸nh ngang tay "..GetMissionS(MS_S_CITYNAME_J).." - chiÕn sù kÕt thóc ."..GetMissionS(MS_S_CITYNAME_S).." ®¹t ®­îc th¾ng lîi !" 
Msg2MSAll(MISSIONID, resultstr) 
WriteLog(resultstr) 
sf_winbouns(GetMissionV(MS_TONGWAR_S), GetMissionV(MS_TONGWAR_J), bonus_s, bonus_j) 
AddGlobalNews(resultstr) 
elseif (GetMissionV(MS_MOSTDEATH) == 2) then 
resultstr = " vâ l©m ®Ö nhÊt bang "..GetMissionS(MS_S_CITYNAME_S).." ®¸nh ngang tay "..GetMissionS(MS_S_CITYNAME_J).." - chiÕn sù kÕt thóc ."..GetMissionS(MS_S_CITYNAME_J).." ®¹t ®­îc th¾ng lîi !" 
Msg2MSAll(MISSIONID, resultstr) 
WriteLog(resultstr) 
sf_winbouns(GetMissionV(MS_TONGWAR_J), GetMissionV(MS_TONGWAR_S), bonus_j, bonus_s) 
AddGlobalNews(resultstr) 
end 

local tbPlayer = {}; 
idx = 0; 
for i = 1 , 500 do 
idx, pidx = GetNextPlayer(MISSIONID,idx, 0); 
if( pidx > 0 ) then 
			tbPlayer[ getn(tbPlayer) + 1 ] = pidx
end 
if (idx <= 0) then 
break 
end; 
end 

for i= 1, getn(tbPlayer) do 
PlayerIndex = tbPlayer[i]; 
l_curcamp = GetCurCamp(); 
camp = GetCamp(); 
-- script viet hoa By http://tranhba.com SetCurCamp(camp); 
SetTaskTemp(200,0); 
SetLogoutRV(1); 
SetCreateTeam(1); 
SetDeathScript(""); 
SetFightState(0) -- script viet hoa By http://tranhba.com  ®¸nh giÆc xong sau ®æi thµnh kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu #by Dan_Deng# 
SetPunish(1) 
ForbidChangePK(0); 
SetPKFlag(0) 
SetDeathType(0) 

if (l_curcamp == 1) then 
SetRevPos(GetPlayerRev()) 
NewWorld(tongwar_getsignpos(1)) 
else 
SetRevPos(GetPlayerRev()) 
NewWorld(tongwar_getsignpos(2)) 
end; 
end; 
PlayerIndex = OldPlayerIndex 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

function sf_winbouns(wincity, losecity, winbonus, losebonus) 
if (losebonus == nil) then 
tongwar_dorelay(wincity, losecity, 3, 0) 
else 
if (winbonus <= losebonus) then 
tongwar_dorelay(wincity, losecity, 1, 0) 
else 
tongwar_dorelay(wincity, losecity, 1, (winbonus - losebonus)) 
end 
end 
end 

function tongwar_dorelay(...) 
local szParam = tostring(arg[1]).." "..tostring(arg[2]).." "..tostring(arg[3]).." "..tostring(arg[4]) 
LG_ApplyDoScript(1, "", "", "\\script\\event\\tongwar\\score.lua", "tongwar_score", szParam , "", "")
end 


-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

-- script viet hoa By http://tranhba.com  thiÕt trÝ nhiÖm vô tr¹ng th¸i 
function nt_setTask(nTaskID, nTaskValue) 
SetTask(nTaskID, nTaskValue) 
SyncTaskValue(nTaskID) -- script viet hoa By http://tranhba.com  cïng b­íc ®Õn kh¸ch hµng b­ng 
end 

-- script viet hoa By http://tranhba.com  lÊy ®­îc nhiÖm vô tr¹ng th¸i 
function nt_getTask(nTaskID) 
return GetTask(nTaskID) 
end 

function but_pop2home( camp ) 
oldPlayerIndex = PlayerIndex 
tbPlayer = { } 
tbRMPlayer = {} 
count = 0 
count_remain = 0 
idx = 0; 
for i = 1 , 500 do 
idx, pidx = GetNextPlayer( MISSIONID,idx, camp ); 
if( pidx > 0 ) then 
PlayerIndex = pidx 
if (tongwar_check_outmatch() ~= 1) then 
if ( GetFightState( ) == 0 and ( ( GetGameTime() - tongwar_getdata( TONGWAR_RLTASK_LASTDTIME ) ) >= TIME_PLAYER_STAY ) ) then 
			 		count = count + 1
tbPlayer[ count ] = pidx 
elseif ( GetFightState( ) == 0 ) then 
			 		count_remain = count_remain + 1
tbRMPlayer[ count_remain ] = pidx 
end 
end 
end 
if (idx <= 0) then 
break 
end; 
end 

local mapfile = GetMapInfoFile(SubWorldIdx2ID(SubWorld)) 

if ( count > 0 ) then 
if ( camp == 1 ) then 
area = GetMissionV(MS_CAMP1AREA); 
else 
area = GetMissionV(MS_CAMP2AREA); 
end 
npcfile = GetIniFileData(mapfile, "Area_"..area, tbNPCPOS[random(2)]); 
for i = 1, count do 
PlayerIndex = tbPlayer[ i ] 
bt_JudgePLAddTitle(); 
x,y = bt_getadata(npcfile) 
SetPos(floor(x/32), floor(y/32)) 
SetFightState(1) 
Msg2Player("<color=pink> ng­¬i kh«ng thÓ ë phÝa sau doanh ") 
end 
end 

if ( count_remain > 0 ) then 
for i = 1, count_remain do 
PlayerIndex = tbRMPlayer[ i ] 
remain_time = TIME_PLAYER_STAY - ( GetGameTime() - tongwar_getdata( TONGWAR_RLTASK_LASTDTIME ) ) 
if( remain_time > 0) then 
Msg2Player("<color=pink> ng­¬i cã thÓ ë l¹i "..remain_time.." gi©y ") 
end 
end 
end 
PlayerIndex = oldPlayerIndex 
end 



-- script viet hoa By http://tranhba.com  ®¹t ®­îc tranh tµi b¶n ®å ®Ých ghi danh ®iÓm 
function tongwar_getsignpos(camp) 
local matchmap = SubWorldIdx2ID(SubWorld) 
for i = 1, getn(tbTONGWARMAP) do 
if (matchmap == tbTONGWARMAP[i][1]) then 
			signmap = tbTONGWARMAP[i][camp + 1]
break 
end 
end 
local ranm = random(getn(tbTONGWAR_SIGNMAP_POS)) 
return signmap, tbTONGWAR_SIGNMAP_POS[ranm][1], tbTONGWAR_SIGNMAP_POS[ranm][2] 
end 

function tongwar_getmatchmap(mapid) 
for i = 1, getn(tbTONGWARMAP) do 
if (mapid == tbTONGWARMAP[i][2] or mapid == tbTONGWARMAP[i][3]) then 
matchmap = tbTONGWARMAP[i][1] 
break 
end 
end 
return matchmap 
end 


-- script viet hoa By http://tranhba.com  c¨n cø trapfile ®Ých v¨n kiÖn ®Ých täa ®é tËp häp biÓu , sinh ra tÊt c¶ trap ®iÓm , còng liªn hÖ scriptfile ch©n cña vèn 
function bt_addtrap(trapfile, scriptfile) 
local count = GetTabFileHeight(trapfile); 
scriptid = FileName2Id(scriptfile); 

ID = SubWorldIdx2ID(SubWorld); 

for i = 1, count - 1 do 
		x = GetTabFileData(trapfile, i + 1, 1);
		y = GetTabFileData(trapfile, i + 1, 2);
AddMapTrap(ID, x,y, scriptfile); 
end; 
end; 

-- script viet hoa By http://tranhba.com "123,234" -> 123 , 234, ®em mét ch÷ phï chuçi viÕt thµnh täa ®é sè liÖu chuyÓn hãa thµnh hai con sè thay ®æi l­îng 
function bt_str2xydata(str) 
m = strfind(str,",") 
x = tonumber(strsub(str,0,m-1)) 
	y = tonumber(strsub(str,m+1))
return x,y 
end 

-- script viet hoa By http://tranhba.com  tõ täa ®é v¨n kiÖn trung ngÉu nhiªn ®¹t ®­îc mét täa ®é 
function bt_getadata(file) 
local totalcount = GetTabFileHeight(file) - 1; 
id = random(totalcount); 
	x = GetTabFileData(file, id + 1, 1);
	y = GetTabFileData(file, id + 1, 2);
return x,y 
end 

-- script viet hoa By http://tranhba.com  c¨n cø npcfile ®Ých v¨n kiÖn ®Ých täa ®é tËp häp biÓu , sinh ra tÊt c¶ npc m« b¶n sè v× tnpcid ®Ých ®èi tho¹i npc , còng liªn hÖ scriptfile ch©n cña vèn 
function bt_adddiagnpc(npcfile, scriptfile, tnpcid, name) 
addcount = 0; 
local count = GetTabFileHeight(npcfile); 

for i = 1, count - 1 do 
		x = GetTabFileData(npcfile, i + 1, 1);
		y = GetTabFileData(npcfile, i + 1, 2);
if (name ~= nil or name ~= "") then 
npcidx = AddNpc(tnpcid, 1, SubWorld, x, y, 1, name) 
else 
npcidx = AddNpc(tnpcid, 1, SubWorld, x, y); 
end 

if (npcidx > 0) then 
SetNpcScript(npcidx, scriptfile) 
			addcount = addcount + 1
else 
print("error!can not add dialog npc !tnpcid:"..tnpcid.." ["..SubWorldIdx2ID(SubWorld)..","..x..","..y); 
end 
end; 
return addcount 
end; 
function bt_add_a_diagnpc(scriptfile, tnpcid, x, y, name) 
if (name ~= nil or name ~= "") then 
npcidx = AddNpc(tnpcid, 1, SubWorld, x, y, 1 , name); 
else 
npcidx = AddNpc(tnpcid, 1, SubWorld, x, y ) 
end 

if (npcidx > 0) then 
SetNpcScript(npcidx, scriptfile) 
else 
print("error!can not add dialog npc !tnpcid:"..tnpcid.." ["..SubWorldIdx2ID(SubWorld)..","..x..","..y); 
end 
return npcidx 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function bt_setnormaltask2type() 
BT_SetType2Task(PL_TOTALPOINT, TONGWAR_RLTASK_POINT) 
BT_SetType2Task(PL_BEKILLED, TONGWAR_RLTASK_NDEATH) 
BT_SetType2Task(PL_KILLPLAYER, TONGWAR_RLTASK_KILLPLAYER) 
BT_SetType2Task(PL_LASTDEATHTIME, TONGWAR_RLTASK_LASTDTIME) 
BT_SetType2Task(PL_CURRANK, TONGWAR_RLTASK_CURRANK) 
BT_SetType2Task(PL_SERIESKILL, TONGWAR_RLTASK_SERIESKILL) 
BT_SetType2Task(PL_MAXSERIESKILL, TONGWAR_RLTASK_MAXSERIESKILL) 
-- script viet hoa By http://tranhba.com BT_SetType2Task(, TONGWAR_RLTASK_MAXDEATH) 
BT_SetType2Task(PL_KEYNUMBER, TONGWAR_RLTASK_KEYNUMBER) 
BT_SetType2Task(PL_BATTLEPOINT, TONGWAR_RLTASK_TOTALPOINT) 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  ®em tù phï chuçi theo nh­ ph©n chia phï ph©n chia , trë vÒ c¸c ph©n chia ®o¹n t¹o thµnh ®Õm tæ 
-- script viet hoa By http://tranhba.com  lÖ 1#strsplit( "abc,bcd,efg", "," ) -> { "abc", "bcd", "efg" } 
-- script viet hoa By http://tranhba.com  lÖ 2#strsplit( ",abc,,bcd,,,efg,,", ",," ) -> { ",abc", "bcd", ",efg" } 
function strsplit( strText, strSeparator ) 
local arySlice = {}; 
local nSliceCount = 0; 
local nStartIdx, nEndIdx; 
while( 1 ) do 
nStartIdx, nEndIdx = strfind( strText, strSeparator, 1, 1 ); 
if( nStartIdx == nil ) then 
break 
end 
if( nStartIdx > 1 ) then 
			nSliceCount = nSliceCount + 1;
arySlice[nSliceCount] = strsub( strText, 1, nStartIdx - 1 ); 
end 
		strText = strsub( strText, nEndIdx + 1 );
end 
if( strlen( strText ) > 0 ) then 
		arySlice[nSliceCount+1] = strText;
end 
return arySlice; 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function getNpcInfo( strNpcInfo ) 
local arystrInfo = strsplit( strNpcInfo, "," ); 
return tonumber( arystrInfo[1] ), tonumber( arystrInfo[2] ), tonumber( arystrInfo[3] ); 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function GetIniFileData(mapfile, sect, key) 
if (IniFile_Load(mapfile, mapfile) == 0) then 
print("Load IniFile Error!"..mapfile) 
return "" 
else 
return IniFile_GetData(mapfile, sect, key) 
end 
end 

function GetTabFileHeight(mapfile) 
if (TabFile_Load(mapfile, mapfile) == 0) then 
print("Load TabFileError!"..mapfile); 
return 0 
end 
return TabFile_GetRowCount(mapfile) 
end; 

function GetTabFileData(mapfile, row, col) 
if (TabFile_Load(mapfile, mapfile) == 0) then 
print("Load TabFile Error!"..mapfile) 
return 0 
else 
return tonumber(TabFile_GetCell(mapfile, row, col)) 
end 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function bt_addtotalpoint(point) 
if (point == 0) then 
return 
end 
	tongwar_setdata(TONGWAR_RLTASK_TOTALPOINT, tongwar_getdata(TONGWAR_RLTASK_TOTALPOINT) + point)
	tongwar_setdata(TONGWAR_RLTASK_POINT, tongwar_getdata(TONGWAR_RLTASK_POINT) + point)
if (GetCurCamp() == 1) then 
tongwar_contribute(GetName(), GetMissionS(MS_S_CITYNAME_S), point) 
else 
tongwar_contribute(GetName(), GetMissionS(MS_S_CITYNAME_J), point) 
end 
bt_JudgePLAddTitle() 
end 


-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - tiÕn vµo chiÕn tr­êng lóc phó cho nhµ ch¬i t­¬ng øng ®Çu hµm BEGIN-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function bt_JudgePLAddTitle() 
-- script viet hoa By http://tranhba.com  ®¹t ®­îc tr­íc mÆt ®Ých Rank , nÕu nh­ tÝch ph©n ®¹t tíi h¹ cÊp mét Rank ®Ých yªu cÇu trÞ gi¸ lµ cho nªn nhµ ch¬i nªn Rank, nÕu nh­ Rank trÞ gi¸ ®· ®¹t tíi th­îng h¹n lµ kh«ng thªm 
local nCurRank = tongwar_getdata(TONGWAR_RLTASK_CURRANK) 
if ( nCurRank >= getn(TAB_RANKBONUS)) then 
return 
end 
	if (tongwar_getdata(TONGWAR_RLTASK_POINT) < TAB_RANKBONUS[nCurRank + 1]) then
return 
end 
local nRankCount = getn(TAB_RANKBONUS) 
for i = 1, getn(TAB_RANKBONUS) do 
		if (tongwar_getdata(TONGWAR_RLTASK_POINT) >= TAB_RANKBONUS[nRankCount - i + 1] ) then
				bt_RankEffect(nRankCount - i + 1)
return 
end 
end 
end 

-- script viet hoa By http://tranhba.com  ®Ó cho ®Çu hµm 
function bt_RankEffect(rank) 
if (rank == 0) then 
rank = 1 
end 
local campnum = 100 
	Title_AddTitle(campnum + rank - 1, 0, 9999999)
	Title_ActiveTitle(campnum + rank - 1)
AddSkillState(RANK_SKILL, rank - 1, 0, 999999); 
Msg2Player(TAB_RANKMSG[rank]); 
tongwar_setdata(TONGWAR_RLTASK_CURRANK, rank); 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - tiÕn vµo chiÕn tr­êng lóc phó cho nhµ ch¬i t­¬ng øng ®Çu hµm ENDING-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  


function bt_autoselectmaparea(mapfile,areacount) -- script viet hoa By http://tranhba.com  ngÉu nhiªn lùa chän trong s©n , song ph­¬ng chç ë trËn doanh ®Þa 
local s_area = 0 
local j_area = 0 
local areatmp = random(areacount); 
local wwt = tonumber(GetIniFileData(mapfile, "Area_"..areatmp, "camparea")) 
if (wwt == 0 or wwt == 1) then 
s_area = areatmp 
while(j_area == 0) do 
areatmp = random(areacount) 
if (areatmp ~= s_area) then 
wwt1 = tonumber(GetIniFileData(mapfile, "Area_"..areatmp, "camparea")) 
if (wwt1 == 0 or wwt1 == 2) then 
j_area = areatmp 
end 
end 
end 
else 
j_area = areatmp 
while(s_area == 0) do 
areatmp = random(areacount) 
if (areatmp ~= j_area) then 
wwt1 = tonumber(GetIniFileData(mapfile, "Area_"..areatmp, "camparea")) 
if (wwt1 == 0 or wwt1 == 1) then 
s_area = areatmp 
end 
end 
end 
end 
return s_area,j_area 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - ®em gi©y truyÖn ®æi thµnh ph©n cïng gi©y , tû nh­ 62s = 1m2s 
function GetMinAndSec(nSec) 
nRestMin = floor(nSec / 60); 
nRestSec = mod(nSec,60) 
return nRestMin, nRestSec; 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -BT simulator start-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com BT_SetData(task, value) 
function tongwar_setdata(task, value) 
-- script viet hoa By http://tranhba.com BT_SetData(task - 2368, value) 
nt_setTask(task, value) 
end 
-- script viet hoa By http://tranhba.com BT_GetData(task, value) 
function tongwar_getdata(task) 
-- script viet hoa By http://tranhba.com return BT_GetData(task - 2368) 
return GetTask(task) 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -BT simulator end-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function tongwar_GetTypeBonus(bonus) 
return bonus 
end 


function tongwar_check_outmatch() 
if (tongwar_getdata(TONGWAR_RLTASK_NDEATH) >= tongwar_getdata(TONGWAR_RLTASK_MAXDEATH)) then 
local signmap, posx, posy = tongwar_getsignpos(GetCurCamp()) 
SetPunish(1) 
SetFightState(0) 
SetTaskTemp(200,0) 
SetRevPos(GetPlayerRev()) 
SetCurCamp(GetCamp()) 
SetDeathType(0) 
NewWorld(signmap, posx, posy) 
return 1 
end 
return nil 
end
