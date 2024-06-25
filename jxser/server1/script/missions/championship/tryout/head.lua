Include("\\script\\missions\\championship\\head.lua")
MISSIONID = 18; 
MATCH_MS_ID = 19; 
FRAME2TIME = 18; -- script viet hoa By http://tranhba.com 18 tr¸nh trß ch¬i thêi gian t­¬ng ®­¬ng víi 1 gi©y 

UP_A_TIME = 15 
RUN_A_TIME = 5 -- script viet hoa By http://tranhba.com  ghi danh 5 phót sau , tù ®éng tiÕn vµo chiÕn ®Êu cuéc so tµi trµng 

MS_STATE = 1; -- script viet hoa By http://tranhba.com  nhiÖm vô trung ghi chÐp nhiÖm vô tr¹ng th¸i thay ®æi l­îng ID 
MS_TIME_1 = 2 -- script viet hoa By http://tranhba.com  mçi 20 gi©y thªm mét smalltimer xóc ph¸t khÝ 
MS_TIME_2 = 3 -- script viet hoa By http://tranhba.com totaltimer xóc ph¸t khÝ 
MS_ROUND = 4 -- script viet hoa By http://tranhba.com  ghi chÐp ngµy ®ã cuéc so tµi chuyÖn ®Ých ®æi phiªn lÇn 
MS_A_TIME = 5 -- script viet hoa By http://tranhba.com  tr­íc mÆt ®æi phiªn lÇn dïng hÕt ®Ých thêi gian 

function Elect_RanField() 
local cnt_1 = 0 
local cnt_2 = 0 
local fieldtab = {} 
for i =1, 100 do 
fieldtab[i] = i 
end 
for i = 1, 100 do 
cnt_1 = random(1, 100) 
a = fieldtab[cnt_1] 
cnt_2 = random(1, 100) 
fieldtab[cnt_1] = fieldtab[cnt_2] 
fieldtab[cnt_2] = a 
end 
return fieldtab 
end 

HIGHMEMBER_PERCENT = 20 
MIDDLEMEMBER_PERCENT = 40 
LOWMEMBER_PERCENT = 100 - HIGHMEMBER_PERCENT - MIDDLEMEMBER_PERCENT 

function Elect_RanEnemy(plyidx) 
local num = getn(plyidx) 
local per_num = floor(num / 3); 

plyidx = cp_randomeny(1, per_num, plyidx) 
	plyidx = cp_randomeny(per_num + 1, per_num * 2, plyidx)
	plyidx = cp_randomeny(per_num * 2 + 1, num, plyidx)

high_count = floor(num * HIGHMEMBER_PERCENT / 100) 
plyidx = cp_randomeny(1, high_count, plyidx) 

middle_count = floor(num * MIDDLEMEMBER_PERCENT / 100) 
	plyidx = cp_randomeny(high_count + 1, high_count + middle_count, plyidx)

	plyidx = cp_randomeny(high_count + middle_count + 1, num, plyidx)
return plyidx 
end 

function cp_randomeny(q, m, tabplyidx ) 
local a = 0 
local cnt_1 = 0 
local cnt_2 = 0 
for i = q, m do 
cnt_1 = random(q, m) 
a = tabplyidx[cnt_1] 
cnt_2 = random(q, m) 
tabplyidx[cnt_1] = tabplyidx[cnt_2] 
tabplyidx[cnt_2] = a 
end 
return tabplyidx 
end 

function Run_CPMatch() 
local tbPlayer = {}; 
idx = 0; 
for i = 1 , 500 do 
idx, pidx = GetNextPlayer(MISSIONID,idx, 0); 
if (idx == 0) then 
break 
end; 
tbPlayer[i] = pidx 
end 
tbPlayer = Elect_RandomPL(tbPlayer) 
return tbPlayer 
end 

function Elect_RandomPL(tabplayindex) 
local ncount = 0 
local tab_index = {} 
oldplayer = PlayerIndex 
if (getn(tabplayindex) > 200) then 
tabplayindex = cp_randomeny(1, getn(tabplayindex), tabplayindex ) 
for i = 1, 200 do 
tab_index[i] = tabplayindex[i] 
end 
local str = " v¸n nµy ®Ých tranh tµi nh©n sè ®· ®ñ råi , xin chê chót mét cuéc !" 
for i = 201, getn(tabplayindex) do 
PlayerIndex = tabplayindex[i] 
Msg2Player(str) 
end 
else 
tab_index = tabplayindex 
end 
PlayerIndex = oldplayer 
return tab_index 
end 

function join_tryout() 
if (nt_gettask(CP_TASKID_ROUND) >= CP_MAXROUND ) then 
Say("Ng­¬i tham gia vò l©m ®¹i héi dù chän cuéc so tµi ®Ých sè lÇn ®· ®ñ råi .", 0) 
return 
end 
local subworldid = SubWorldIdx2ID (SubWorld) 
LeaveTeam() 
DisabledStall(1) -- script viet hoa By http://tranhba.com  cÊm chØ bµy s¹p 
SetTaskTemp(200, 1) 
AddMSPlayer(MISSIONID,1); 
nt_settask(CP_TASKID_FLAG, 0) 
SetLogoutRV(1); 
SetCurCamp(1); 
SetFightState(0) 
SetPunish(0); 
SetPKFlag(2) 
ForbidChangePK(1); 
SetCreateTeam(0); 
ForbitTrade(1) 
SetRevPos(subworldid, 1) 
nt_settask(CP_TASKID_ENEMY, 0) 
for i = 1, getn(CP_FORBID_ITEM) do 
AddSkillState(CP_FORBID_ITEM[i][3], 20, 1, 0) 
end 
NewWorld(subworldid, CP_MAPPOS_PRE[1], CP_MAPPOS_PRE[2]) 
DisabledUseTownP(1) -- script viet hoa By http://tranhba.com  h¹n chÕ kú ®ang chuÈn bÞ tÞch cïng tranh tµi dïng ®Þa bªn trong sö dông trë vÒ thµnh phï 
local mm = RUN_A_TIME - GetMissionV(MS_A_TIME) 
Msg2Player("Ng­¬i ®· tiÕn vµo tranh tµi chuÈn bÞ khu . tranh tµi ®em ë "..mm.." phót b¾t ®Çu tiÕn hµnh ") 
end 

function join_match() 
WriteLog(date("%Y-%m-%d,%H:%M,").." ®øng hµng thø "..GetMissionV(MS_ROUND).." thø mÊy "..checkmap(1).." tham gia m«n ph¸i dù chän cuéc so tµi nh©n sè cña lµ "..GetMSPlayerCount(MISSIONID, 0)) 
local fieldtab = {} 
local playertab = {} 
local org_mapindex = 0 
local org_mapid = 0 
local new_mapindex = 0 
local new_mapid = 0 

fieldtab = Elect_RanField() 
playertab = Run_CPMatch() 
playertab = Sort_Point(playertab) 
playertab = Elect_RanEnemy(playertab) 
if (getn(playertab) > 200) then 
num_vs = 100 
else 
num_vs = floor (getn(playertab) / 2) 
end 
org_mapindex = SubWorld 
org_mapid = SubWorldIdx2ID(SubWorld) 
	new_mapid = org_mapid + 1
new_mapindex = SubWorldID2Idx(new_mapid) 
orgplayeridx = PlayerIndex 

SubWorld = new_mapindex 
for i = 1, num_vs * 2, 2 do 
posx = GetTabFileData(CP_MATCH_POS, fieldtab[i], 1) 
posy = GetTabFileData(CP_MATCH_POS, fieldtab[i], 2) 
org_plyidx = playertab[i] 
PlayerIndex = org_plyidx 
org_plyname = GetName() 
org_plywin = nt_gettask(CP_TASKID_WIN) 
org_plylose = nt_gettask(CP_TASKID_LOSE) 
org_plytie = nt_gettask(CP_TASKID_TIE) 

		eny_plyidx = playertab[i + 1]
PlayerIndex = eny_plyidx 
eny_plyname = GetName() 
eny_plywin = nt_gettask(CP_TASKID_WIN) 
eny_plylose = nt_gettask(CP_TASKID_LOSE) 
eny_plytie = nt_gettask(CP_TASKID_TIE) 
PlayerIndex = org_plyidx 
NewWorld (new_mapid, posx, posy) 
AddMSPlayer(MATCH_MS_ID, i); 
		nt_settask(CP_TASKID_ENEMY, i + 100)
		nt_settask(CP_TASKID_ROUND, nt_gettask(CP_TASKID_ROUND) + 1)
SetCurCamp(2) 
SetFightState(0) 
SetPKFlag(2) 
SetCreateTeam(0); 
DisabledStall(1) -- script viet hoa By http://tranhba.com  cÊm chØ bµy s¹p 
SetTaskTemp(200, 1) 
SetLogoutRV(1); 
ForbitTrade(1) 
ForbidChangePK(1); 
SetRevPos(org_mapid, 1) 
Msg2Player("Ng­¬i ®· vµo cuéc so tµi trµng , 10 gi©y sau chÝnh thøc b¾t ®Çu .") 
Msg2Player("§èi thñ cña ng­¬i "..eny_plyname.." b©y giê kÕt qu¶ :"..eny_plywin.." th¾ng "..eny_plylose.." b¹i "..eny_plytie.." cïng ") 
WriteLog(date("%Y-%m-%d %H%M%S,")..GetAccount().."["..GetName().."], tham gia chiÕn ®Êu giai ®o¹n , ng­¬i b©y giê ®Ých chiÕn tÝch lµ # th¾ng "..org_plywin.." bÞ/cha/chÞu "..org_plylose.." cïng "..org_plytie..", ®· tham gia "..nt_gettask(CP_TASKID_ROUND)) 
Msg2Player("TiÕn vµo tranh tµi khu vùc sau , kh«ng thÓ dêi ®i tói ®eo l­ng trang bÞ , nh­ng lµ vÉn nh­ cò cã thÓ sö dông tói ®eo l­ng cïng c«ng cô biÓu trung ®Ých vËt phÈm . "); 
		SetDeathScript("\\script\\missions\\championship\\match\\playerdeath.lua");

PlayerIndex = eny_plyidx 
NewWorld (new_mapid, posx, posy) 
		AddMSPlayer(MATCH_MS_ID, i + 100);
nt_settask(CP_TASKID_ENEMY, i) 
		nt_settask(CP_TASKID_ROUND, nt_gettask(CP_TASKID_ROUND) + 1)
SetCurCamp(3) 
SetFightState(0) 
SetPKFlag(2) 
SetCreateTeam(0); 
DisabledStall(1) -- script viet hoa By http://tranhba.com  cÊm chØ bµy s¹p 
SetTaskTemp(200, 1) 
SetLogoutRV(1); 
ForbitTrade(1) 
ForbidChangePK(1); 
SetRevPos(org_mapid, 1) 
Msg2Player("Ng­¬i ®· tiÕn vµo cuéc so tµi trµng , 10 gi©y sau ®em chÝnh thøc b¾t ®Çu .") 
Msg2Player("§èi thñ cña ng­¬i "..org_plyname.." b©y giê kÕt qu¶ :"..org_plywin.." th¾ng "..org_plylose.." b¹i "..org_plytie.." cïng ") 
WriteLog(date("%Y-%m-%d %H%M%S,")..GetAccount().."["..GetName().."], tham gia chiÕn ®Êu giai ®o¹n , ng­¬i b©y giê ®Ých chiÕn tÝch lµ # th¾ng "..eny_plywin.." b¹i "..eny_plylose.." cïng "..eny_plytie..", ®· tham gia "..nt_gettask(CP_TASKID_ROUND)) 
Msg2Player("TiÕn vµo tranh tµi khu vùc sau , kh«ng thÓ dêi ®i tói ®eo l­ng trang bÞ , nh­ng lµ vÉn nh­ cò cã thÓ sö dông tói ®eo l­ng cïng c«ng cô biÓu trung ®Ých vËt phÈm "); 
		SetDeathScript("\\script\\missions\\championship\\match\\playerdeath.lua");
end 
SubWorld = org_mapindex 
local playeridx = {} 
idx = 0; 
for i = 1 , 500 do 
idx, pidx = GetNextPlayer(MISSIONID,idx, 0); 
if (idx == 0) then 
break 
end; 
playeridx[i] = pidx 
end 
if (getn(playeridx) > 1) then 
str = " v¸n nµy tranh tµi nh©n sè ®· trän ®ñ , xin chê chót mét cuéc !" 
for i = 1, getn(playeridx) do 
PlayerIndex = playeridx[i] 
Msg2Player(str) 
end 
else 
str = " v¸n nµy tranh tµi ng­êi tham gia ch­a ®ñ , kh«ng thÓ lùa chän ®èi thñ cña ng­¬i , v¸n nµy ng­¬i ®· th¾ng , ph¶i 3 ph©n ." 
for i = 1, getn(playeridx) do 
PlayerIndex = playeridx[i] 
enyname = GetName() 
				nt_settask(CP_TASKID_WIN, nt_gettask(CP_TASKID_WIN) + 1)
				nt_settask(CP_TASKID_ROUND, nt_gettask(CP_TASKID_ROUND) + 1)
				nt_settask(CP_TASKID_POINT, nt_gettask(CP_TASKID_POINT) + 3)
Ladder_NewLadder(checkmap(2), GetName(), nt_gettask(CP_TASKID_POINT), 1) 
Msg2Player(str) 
WriteLog("Nhµ ch¬i ["..enyname.."], bëi v× kh«ng cã ®èi víi tay , b©y giê chiÕn tÝch lµ # th¾ng "..nt_gettask(CP_TASKID_WIN)..", b¹i "..nt_gettask(CP_TASKID_LOSE)..", cïng "..nt_gettask(CP_TASKID_TIE)..", cuèi cïng kÕt qu¶ "..nt_gettask(CP_TASKID_POINT)) 
AddAword(GetLevel(), 20, 2) 
end 
end 
PlayerIndex = orgplayeridx 
end 

function GameOver() 
local tbPlayer = {}; 
idx = 0; 
for i = 1 , 500 do 
idx, pidx = GetNextPlayer(MISSIONID,idx, 0); 
if (idx == 0) then 
break 
end; 
tbPlayer[i] = pidx 
end 

for i= 1, getn(tbPlayer) do 
PlayerIndex = tbPlayer[i]; 
camp = GetCamp(); 
SetCurCamp(camp); 
SetLogoutRV(0); 
SetCreateTeam(1); 
DisabledStall(0) -- script viet hoa By http://tranhba.com  cho phÐp bµy s¹p 
SetTaskTemp(200, 0) 
SetFightState(0); 
SetPunish(1); 
ForbidChangePK(0); 
SetPKFlag(0); 
ForbitTrade(0) 
nt_settask(CP_TASKID_ENEMY, 0) 
NewWorld(SubWorldIdx2ID(SubWorld), CP_MAPPOS_IN[1], CP_MAPPOS_IN[2]) 
end 
WriteLog(date("%Y-%m-%d %H%M%S,").." n¬i ®©y ®å ["..SubWorldIdx2ID(SubWorld).."] h«m nay dù chän cuéc so tµi kÕt thóc .") 
end
