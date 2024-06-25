Include("\\script\\missions\\championship\\head.lua")
MISSIONID = 18; 
MATCH_MS_ID = 19; 
FRAME2TIME = 18; -- script viet hoa By http://tranhba.com 18 tr�nh tr� ch�i th�i gian t��ng ���ng v�i 1 gi�y 

UP_A_TIME = 15 
RUN_A_TIME = 5 -- script viet hoa By http://tranhba.com  ghi danh 5 ph�t sau , t� ��ng ti�n v�o chi�n ��u cu�c so t�i tr�ng 

MS_STATE = 1; -- script viet hoa By http://tranhba.com  nhi�m v� trung ghi ch�p nhi�m v� tr�ng th�i thay ��i l��ng ID 
MS_TIME_1 = 2 -- script viet hoa By http://tranhba.com  m�i 20 gi�y th�m m�t smalltimer x�c ph�t kh� 
MS_TIME_2 = 3 -- script viet hoa By http://tranhba.com totaltimer x�c ph�t kh� 
MS_ROUND = 4 -- script viet hoa By http://tranhba.com  ghi ch�p ng�y �� cu�c so t�i chuy�n ��ch ��i phi�n l�n 
MS_A_TIME = 5 -- script viet hoa By http://tranhba.com  tr��c m�t ��i phi�n l�n d�ng h�t ��ch th�i gian 

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
local str = " v�n n�y ��ch tranh t�i nh�n s� �� �� r�i , xin ch� ch�t m�t cu�c !" 
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
Say("Ng��i tham gia v� l�m ��i h�i d� ch�n cu�c so t�i ��ch s� l�n �� �� r�i .", 0) 
return 
end 
local subworldid = SubWorldIdx2ID (SubWorld) 
LeaveTeam() 
DisabledStall(1) -- script viet hoa By http://tranhba.com  c�m ch� b�y s�p 
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
DisabledUseTownP(1) -- script viet hoa By http://tranhba.com  h�n ch� k� �ang chu�n b� t�ch c�ng tranh t�i d�ng ��a b�n trong s� d�ng tr� v� th�nh ph� 
local mm = RUN_A_TIME - GetMissionV(MS_A_TIME) 
Msg2Player("Ng��i �� ti�n v�o tranh t�i chu�n b� khu . tranh t�i �em � "..mm.." ph�t b�t ��u ti�n h�nh ") 
end 

function join_match() 
WriteLog(date("%Y-%m-%d,%H:%M,").." ��ng h�ng th� "..GetMissionV(MS_ROUND).." th� m�y "..checkmap(1).." tham gia m�n ph�i d� ch�n cu�c so t�i nh�n s� c�a l� "..GetMSPlayerCount(MISSIONID, 0)) 
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
DisabledStall(1) -- script viet hoa By http://tranhba.com  c�m ch� b�y s�p 
SetTaskTemp(200, 1) 
SetLogoutRV(1); 
ForbitTrade(1) 
ForbidChangePK(1); 
SetRevPos(org_mapid, 1) 
Msg2Player("Ng��i �� v�o cu�c so t�i tr�ng , 10 gi�y sau ch�nh th�c b�t ��u .") 
Msg2Player("��i th� c�a ng��i "..eny_plyname.." b�y gi� k�t qu� :"..eny_plywin.." th�ng "..eny_plylose.." b�i "..eny_plytie.." c�ng ") 
WriteLog(date("%Y-%m-%d %H%M%S,")..GetAccount().."["..GetName().."], tham gia chi�n ��u giai �o�n , ng��i b�y gi� ��ch chi�n t�ch l� # th�ng "..org_plywin.." b�/cha/ch�u "..org_plylose.." c�ng "..org_plytie..", �� tham gia "..nt_gettask(CP_TASKID_ROUND)) 
Msg2Player("Ti�n v�o tranh t�i khu v�c sau , kh�ng th� d�i �i t�i �eo l�ng trang b� , nh�ng l� v�n nh� c� c� th� s� d�ng t�i �eo l�ng c�ng c�ng c� bi�u trung ��ch v�t ph�m . "); 
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
DisabledStall(1) -- script viet hoa By http://tranhba.com  c�m ch� b�y s�p 
SetTaskTemp(200, 1) 
SetLogoutRV(1); 
ForbitTrade(1) 
ForbidChangePK(1); 
SetRevPos(org_mapid, 1) 
Msg2Player("Ng��i �� ti�n v�o cu�c so t�i tr�ng , 10 gi�y sau �em ch�nh th�c b�t ��u .") 
Msg2Player("��i th� c�a ng��i "..org_plyname.." b�y gi� k�t qu� :"..org_plywin.." th�ng "..org_plylose.." b�i "..org_plytie.." c�ng ") 
WriteLog(date("%Y-%m-%d %H%M%S,")..GetAccount().."["..GetName().."], tham gia chi�n ��u giai �o�n , ng��i b�y gi� ��ch chi�n t�ch l� # th�ng "..eny_plywin.." b�i "..eny_plylose.." c�ng "..eny_plytie..", �� tham gia "..nt_gettask(CP_TASKID_ROUND)) 
Msg2Player("Ti�n v�o tranh t�i khu v�c sau , kh�ng th� d�i �i t�i �eo l�ng trang b� , nh�ng l� v�n nh� c� c� th� s� d�ng t�i �eo l�ng c�ng c�ng c� bi�u trung ��ch v�t ph�m "); 
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
str = " v�n n�y tranh t�i nh�n s� �� tr�n �� , xin ch� ch�t m�t cu�c !" 
for i = 1, getn(playeridx) do 
PlayerIndex = playeridx[i] 
Msg2Player(str) 
end 
else 
str = " v�n n�y tranh t�i ng��i tham gia ch�a �� , kh�ng th� l�a ch�n ��i th� c�a ng��i , v�n n�y ng��i �� th�ng , ph�i 3 ph�n ." 
for i = 1, getn(playeridx) do 
PlayerIndex = playeridx[i] 
enyname = GetName() 
				nt_settask(CP_TASKID_WIN, nt_gettask(CP_TASKID_WIN) + 1)
				nt_settask(CP_TASKID_ROUND, nt_gettask(CP_TASKID_ROUND) + 1)
				nt_settask(CP_TASKID_POINT, nt_gettask(CP_TASKID_POINT) + 3)
Ladder_NewLadder(checkmap(2), GetName(), nt_gettask(CP_TASKID_POINT), 1) 
Msg2Player(str) 
WriteLog("Nh� ch�i ["..enyname.."], b�i v� kh�ng c� ��i v�i tay , b�y gi� chi�n t�ch l� # th�ng "..nt_gettask(CP_TASKID_WIN)..", b�i "..nt_gettask(CP_TASKID_LOSE)..", c�ng "..nt_gettask(CP_TASKID_TIE)..", cu�i c�ng k�t qu� "..nt_gettask(CP_TASKID_POINT)) 
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
DisabledStall(0) -- script viet hoa By http://tranhba.com  cho ph�p b�y s�p 
SetTaskTemp(200, 0) 
SetFightState(0); 
SetPunish(1); 
ForbidChangePK(0); 
SetPKFlag(0); 
ForbitTrade(0) 
nt_settask(CP_TASKID_ENEMY, 0) 
NewWorld(SubWorldIdx2ID(SubWorld), CP_MAPPOS_IN[1], CP_MAPPOS_IN[2]) 
end 
WriteLog(date("%Y-%m-%d %H%M%S,").." n�i ��y �� ["..SubWorldIdx2ID(SubWorld).."] h�m nay d� ch�n cu�c so t�i k�t th�c .") 
end
