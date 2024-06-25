Include("\\script\\missions\\freshman_match\\head.lua")
MISSIONID = 18; 
MATCH_MS_ID = 19; 
FRAME2TIME = 18; -- script viet hoa By http://tranhba.com 18 tr¸nh trß ch¬i thêi gian t­¬ng ®­¬ng víi 1 gi©y 

UP_A_TIME = 20 
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
local str = " vèn ®æi phiªn tranh tµi sè ng­êi ®· ®ñ , xin chê chót mét vßng !" 
for i = 201, getn(tabplayindex) do 
PlayerIndex = tabplayindex[i] 
Msg2Player(str) 
nt_settask(CP_TASKID_ENEMY, 0) 
NewWorld(SubWorldIdx2ID(SubWorld), CP_MAPPOS_IN[1], CP_MAPPOS_IN[2]) 
end 
else 
tab_index = tabplayindex 
end 
PlayerIndex = oldplayer 
return tab_index 
end 

function join_tryout() 
if (nt_gettask(CP_TASKID_ROUND) >= CP_MAXROUND ) then 
Say("Ng­¬i tranh tµi sè lÇn ®· ®ñ # #"..CP_MAXROUND.." lÇn , kh«ng thÓ tiÕp tôc tham gia .", 0) 
return 
end 
local subworldid = SubWorldIdx2ID (SubWorld) 
AddMSPlayer(MISSIONID,1); 
nt_settask(CP_TASKID_FLAG, 0) 
SetRevPos(subworldid, 1) 
WL_set_pl_state() 
SetCurCamp(1); 
nt_settask(CP_TASKID_ENEMY, 0) 
for i = 1, getn(CP_FORBID_ITEM) do 
AddSkillState(CP_FORBID_ITEM[i][3], 20, 1, 0) 
end 

NewWorld(subworldid, CP_MAPPOS_PRE[1], CP_MAPPOS_PRE[2]) 
local mm = RUN_A_TIME - GetMissionV(MS_A_TIME) 
Msg2Player("Ng­¬i ®· tiÕn vµo chuÈn bÞ tranh tµi khu vùc , tranh tµi ®em víi "..mm.." phót sau b¾t ®Çu ") 
end 

function join_match() 
WriteLog(date("%Y-%m-%d,%H:%M,").." ®øng hµng thø "..GetMissionV(MS_ROUND).." tuÇn lÔ "..checkmap(1).." tham gia tranh tµi nh©n sè v× "..GetMSPlayerCount(MISSIONID, 0)) 
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
nt_settask(CP_TASKID_LOGOUT, 1) 
SetCurCamp(2) 
WL_set_pl_state() 
SetRevPos(org_mapid, 1) 
Msg2Player("Ng­¬i ®· tiÕn vµo cuéc so tµi trµng , 10 gi©y sau ®em chÝnh thøc b¾t ®Çu .") 
Msg2Player("§èi thñ cña ng­¬i "..eny_plyname.." tr­íc m¾t kÕt qu¶ :"..eny_plywin.." th¾ng "..eny_plylose.." thua "..eny_plytie.." cïng ") 
WriteLog(date("%Y-%m-%d %H%M%S,")..GetAccount().."["..GetName().."], tham gia tranh tµi giai ®o¹n , ng­¬i tr­íc m¾t ®Ých chiÕn tÝch v× # th¾ng "..org_plywin.." thua "..org_plylose.." cïng "..org_plytie..", ®· tham gia "..nt_gettask(CP_TASKID_ROUND)) 
Msg2Player("TiÕn vµo tranh tµi khu vùc sau , kh«ng thÓ di ®éng trang bÞ dÆm vËt phÈm , nh­ng lµ cßn cã thÓ sö dông vËt phÈm "); 
		SetDeathScript("\\script\\missions\\freshman_match\\match\\playerdeath.lua");

PlayerIndex = eny_plyidx 
NewWorld (new_mapid, posx, posy) 
		AddMSPlayer(MATCH_MS_ID, i + 100);
nt_settask(CP_TASKID_ENEMY, i) 
		nt_settask(CP_TASKID_ROUND, nt_gettask(CP_TASKID_ROUND) + 1)
nt_settask(CP_TASKID_LOGOUT, 1) 
SetCurCamp(3) 
WL_set_pl_state() 
SetRevPos(org_mapid, 1) 
Msg2Player("Ng­¬i ®· tiÕn vµo cuéc so tµi trµng , 10 gi©y sau ®em chÝnh thøc b¾t ®Çu .") 
Msg2Player("§èi thñ cña ng­¬i "..eny_plyname.." tr­íc m¾t kÕt qu¶ :"..eny_plywin.." th¾ng "..eny_plylose.." thua "..eny_plytie.." cïng ") 
WriteLog(date("%Y-%m-%d %H%M%S,")..GetAccount().."["..GetName().."], tham gia tranh tµi giai ®o¹n , ng­¬i tr­íc m¾t ®Ých chiÕn tÝch v× # th¾ng "..org_plywin.." thua "..org_plylose.." cïng "..org_plytie..", ®· tham gia "..nt_gettask(CP_TASKID_ROUND)) 
Msg2Player("TiÕn vµo tranh tµi khu vùc sau , kh«ng thÓ di ®éng trang bÞ dÆm vËt phÈm , nh­ng lµ cßn cã thÓ sö dông vËt phÈm "); 
		SetDeathScript("\\script\\missions\\freshman_match\\match\\playerdeath.lua");
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
str = " lÇn nµy tranh tµi sè ng­êi ®· ®ñ , xin chê chót mét lÇn !" 
for i = 1, getn(playeridx) do 
PlayerIndex = playeridx[i] 
Msg2Player(str) 
nt_settask(CP_TASKID_ENEMY, 0) 
DelMSPlayer(MISSIONID, PlayerIndex, 1) 
SetLogoutRV(0); 
NewWorld(SubWorldIdx2ID(SubWorld), CP_MAPPOS_IN[1], CP_MAPPOS_IN[2]) 
end 
else 
str = " vèn ®æi phiªn tham gia nh©n sè kh«ng ®ñ , kh«ng thÓ lùa chän ®èi thñ cña ng­¬i , vèn ®æi phiªn ng­¬i th¾ng ra , ®¹t ®­îc 3 ph©n ." 
for i = 1, getn(playeridx) do 
PlayerIndex = playeridx[i] 
enyname = GetName() 
				nt_settask(CP_TASKID_WIN, nt_gettask(CP_TASKID_WIN) + 1)
				nt_settask(CP_TASKID_ROUND, nt_gettask(CP_TASKID_ROUND) + 1)
				nt_settask(CP_TASKID_POINT, nt_gettask(CP_TASKID_POINT) + 3)
Ladder_NewLadder(checkmap(2), GetName(), nt_gettask(CP_TASKID_POINT), 1) 
Msg2Player(str) 
DelMSPlayer(MISSIONID, PlayerIndex, 1) 
WriteLog("Nhµ ch¬i ["..enyname.."], bëi v× kh«ng cã ®èi víi tay , tr­íc m¾t chiÕn tÝch v× # th¾ng "..nt_gettask(CP_TASKID_WIN)..", bÞ/cha/chÞu "..nt_gettask(CP_TASKID_LOSE)..", cïng "..nt_gettask(CP_TASKID_TIE)..", quyÕt cuéc so tµi "..nt_gettask(CP_TASKID_POINT)) 
AddAword(GetLevel(), 60) 
nt_settask(CP_TASKID_ENEMY, 0) 

SetLogoutRV(0); 
NewWorld(SubWorldIdx2ID(SubWorld), CP_MAPPOS_IN[1], CP_MAPPOS_IN[2]) 
end 
end 
PlayerIndex = orgplayeridx 
end 

function GameOver() 
cp_clearplstate() 
WriteLog(date("%Y-%m-%d %H%M%S,").." nªn b¶n ®å ["..SubWorldIdx2ID(SubWorld).."] vâ l©m t©n tó liªn cuéc so tµi ®· kÕt thóc .") 
end 

function cp_clearplstate() 
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
WL_clear_pl_state() 
nt_settask(CP_TASKID_ENEMY, 0) 

SetLogoutRV(0); 
NewWorld(SubWorldIdx2ID(SubWorld), CP_MAPPOS_IN[1], CP_MAPPOS_IN[2]) 
end 
end 
