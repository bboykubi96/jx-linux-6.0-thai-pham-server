Include("\\script\\missions\\tongwar\\head.lua")

-- script viet hoa By http://tranhba.com  tr� xu�ng l� m�t �t tr� gi� ghi ch�p � MissionValue trung ��ch t�c d�n v� tr� , th�ng qua GetMissionV(MS_XXX) t�i ��t ���c th�c t� tr� gi� 

MS_STATE = 1; -- script viet hoa By http://tranhba.com  nhi�m v� trung ghi ch�p nhi�m v� tr�ng th�i thay ��i l��ng ID 
-- script viet hoa By http://tranhba.com  n�n thay ��i l��ng ch� h��ng ��ch tr�ng th�i tr� gi� 0 b�y t� chi�n d�ch v� m� ra , 1 b�y t� chi�n d�ch ghi danh trung , 2 b�y t� chi�n d�ch chi�n ��u ti�n h�nh trung , 3 b�y t� chi�n d�ch m�i v�a k�t th�c 

MS_butcher = 2;-- script viet hoa By http://tranhba.com  ghi ch�p tr��c m�t sinh ra l� t�ng qu�n Nguy�n so�i #1# c�n l� kim qu�n Nguy�n so�i #2# c�n l� c�ng sinh ra #3# 

MS_CENTER_X1 = 4; -- script viet hoa By http://tranhba.com  khu v�c 1# khi ghi danh giai �o�n l�c , c�m ch� nh� ch�i r�i �i ��i doanh l�c , �em nh� ch�i n�m tr� v� ��i doanh ��ch t�a �� 
MS_CENTER_Y1 = 5; 
MS_CENTER_X2 = 6; -- script viet hoa By http://tranhba.com  khu v�c 2 
MS_CENTER_Y2 = 7; 

MS_HOMEIN_X1 = 8; -- script viet hoa By http://tranhba.com  khu v�c 1# sau doanh b�n trong t�a �� 
MS_HOMEIN_Y1 = 9; 
MS_HOMEOUT_X1 = 10; -- script viet hoa By http://tranhba.com  sau doanh b�n ngo�i t�a �� 
MS_HOMEOUT_Y1 = 11; 
MS_HOMEIN_X2 = 12; -- script viet hoa By http://tranhba.com  khu v�c 2 
MS_HOMEIN_Y2 = 13; 
MS_HOMEOUT_X2 = 14; 
MS_HOMEOUT_Y2 = 15; 
MS_TIMER1 = 17; -- script viet hoa By http://tranhba.com  ghi ch�p Timer1 thi h�nh ��ch s� l�n 

MS_MOSTDEATH = 18 -- script viet hoa By http://tranhba.com  n�u nh� nh�t ph��ng ��i t��ng t� vong , l� v� #1# t�ng # l�y ���c 2# kim ## n�u kh�ng v� #0 

MS_TOTALPOINT_S = 19 -- script viet hoa By http://tranhba.com  l�n n�y chi�n d�ch k�t th�c l�c xin/m�i s� kh�ng , b�n ghi ch�p l�n chi�n d�ch t�ng Ph��ng t�ng t�ch ph�n 
MS_TOTALPOINT_J = 20 -- script viet hoa By http://tranhba.com  l�n n�y chi�n d�ch k�t th�c l�c xin/m�i s� kh�ng , b�n ghi ch�p l�n chi�n d�ch kim Ph��ng t�ng t�ch ph�n 

MS_TONGWAR_S = 21 -- script viet hoa By http://tranhba.com  l�n n�y chi�n d�ch t�ng ph��ng ��i bi�u th�nh ph� ID 
MS_TONGWAR_J = 22 -- script viet hoa By http://tranhba.com  l�n n�y chi�n d�ch kim ph��ng ��i bi�u th�nh ph� ID 
MS_CAMP1AREA = 23 -- script viet hoa By http://tranhba.com  t�ng ��i �ng sau doanh 
MS_CAMP2AREA = 24 -- script viet hoa By http://tranhba.com  kim ��i �ng sau doanh 
MS_KEYNUMBER = 25 -- script viet hoa By http://tranhba.com  v�n ��i phi�n l�n duy nh�t tr� gi� 

MS_PL2RANK1_S = 70 -- script viet hoa By http://tranhba.com  tr��c m�t mission , t�ng ph��ng trung �� tr� th�nh " binh l�nh " ��u h�m nh�n s� 
MS_PL2RANK2_S = 71 
MS_PL2RANK3_S = 72 
MS_PL2RANK4_S = 73 
MS_PL2RANK5_S = 74 
MS_PL2RANK6_S = 75 

MS_PL2RANK1_J = 76 -- script viet hoa By http://tranhba.com  tr��c m�t mission , kim ph��ng trung �� tr� th�nh " binh l�nh " ��u h�m nh�n s� 
MS_PL2RANK2_J = 77 -- script viet hoa By http://tranhba.com  gi�o �y 
MS_PL2RANK3_J = 78 -- script viet hoa By http://tranhba.com  th�ng l�nh 
MS_PL2RANK4_J = 79 -- script viet hoa By http://tranhba.com  ph� t��ng 
MS_PL2RANK5_J = 80 -- script viet hoa By http://tranhba.com  ��i t��ng 
MS_PL2RANK6_J = 81 -- script viet hoa By http://tranhba.com  Nguy�n so�i 

MS_S_CITYNAME_S = 3 -- script viet hoa By http://tranhba.com  l�n n�y chi�n d�ch t�ng ph��ng th�nh ph� t�n 
MS_S_CITYNAME_J = 4 -- script viet hoa By http://tranhba.com  l�n n�y chi�n d�ch kim ph��ng th�nh ph� t�n 

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
resultstr = " v� l�m �� nh�t bang "..GetMissionS(MS_S_CITYNAME_S).." c�ng "..GetMissionS(MS_S_CITYNAME_J).." - chi�n s� k�t th�c , song ph��ng ��t t�i t�ng chia l�m "..bonus_s..":"..bonus_j..","..GetMissionS(MS_S_CITYNAME_S).." ��t ���c th�ng l�i !"; 
Msg2MSAll(MISSIONID, resultstr) 
WriteLog(resultstr) 
sf_winbouns(GetMissionV(MS_TONGWAR_S), GetMissionV(MS_TONGWAR_J), bonus_s, bonus_j) 
elseif (bonus_s < bonus_j) then 
resultstr = " v� l�m �� nh�t bang "..GetMissionS(MS_S_CITYNAME_S).." c�ng "..GetMissionS(MS_S_CITYNAME_J).." - chi�n s� k�t th�c , song ph��ng ��t t�i t�ng chia l�m "..bonus_s..":"..bonus_j..","..GetMissionS(MS_S_CITYNAME_J).." ��t ���c th�ng l�i !"; 
Msg2MSAll(MISSIONID, resultstr) 
WriteLog(resultstr) 
sf_winbouns(GetMissionV(MS_TONGWAR_J), GetMissionV(MS_TONGWAR_S), bonus_j, bonus_s) 
else 
resultstr = " v� l�m �� nh�t bang "..GetMissionS(MS_S_CITYNAME_S).." c�ng "..GetMissionS(MS_S_CITYNAME_J).." - chi�n s� k�t th�c , song ph��ng ��t t�i t�ng chia l�m "..bonus_s..":"..bonus_j.." �� b�nh c�c "; 
Msg2MSAll(MISSIONID, resultstr) 
WriteLog(resultstr) 
sf_winbouns(GetMissionV(MS_TONGWAR_S), GetMissionV(MS_TONGWAR_J), 0) 
end; 

AddGlobalNews(resultstr) 

elseif (GetMissionV(MS_MOSTDEATH) == 1) then 
resultstr = " v� l�m �� nh�t bang "..GetMissionS(MS_S_CITYNAME_S).." ��nh ngang tay "..GetMissionS(MS_S_CITYNAME_J).." - chi�n s� k�t th�c ."..GetMissionS(MS_S_CITYNAME_S).." ��t ���c th�ng l�i !" 
Msg2MSAll(MISSIONID, resultstr) 
WriteLog(resultstr) 
sf_winbouns(GetMissionV(MS_TONGWAR_S), GetMissionV(MS_TONGWAR_J), bonus_s, bonus_j) 
AddGlobalNews(resultstr) 
elseif (GetMissionV(MS_MOSTDEATH) == 2) then 
resultstr = " v� l�m �� nh�t bang "..GetMissionS(MS_S_CITYNAME_S).." ��nh ngang tay "..GetMissionS(MS_S_CITYNAME_J).." - chi�n s� k�t th�c ."..GetMissionS(MS_S_CITYNAME_J).." ��t ���c th�ng l�i !" 
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
SetFightState(0) -- script viet hoa By http://tranhba.com  ��nh gi�c xong sau ��i th�nh kh�ng ph�i l� tr�ng th�i chi�n ��u #by Dan_Deng# 
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

-- script viet hoa By http://tranhba.com  thi�t tr� nhi�m v� tr�ng th�i 
function nt_setTask(nTaskID, nTaskValue) 
SetTask(nTaskID, nTaskValue) 
SyncTaskValue(nTaskID) -- script viet hoa By http://tranhba.com  c�ng b��c ��n kh�ch h�ng b�ng 
end 

-- script viet hoa By http://tranhba.com  l�y ���c nhi�m v� tr�ng th�i 
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
Msg2Player("<color=pink> ng��i kh�ng th� � ph�a sau doanh ") 
end 
end 

if ( count_remain > 0 ) then 
for i = 1, count_remain do 
PlayerIndex = tbRMPlayer[ i ] 
remain_time = TIME_PLAYER_STAY - ( GetGameTime() - tongwar_getdata( TONGWAR_RLTASK_LASTDTIME ) ) 
if( remain_time > 0) then 
Msg2Player("<color=pink> ng��i c� th� � l�i "..remain_time.." gi�y ") 
end 
end 
end 
PlayerIndex = oldPlayerIndex 
end 



-- script viet hoa By http://tranhba.com  ��t ���c tranh t�i b�n �� ��ch ghi danh �i�m 
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


-- script viet hoa By http://tranhba.com  c�n c� trapfile ��ch v�n ki�n ��ch t�a �� t�p h�p bi�u , sinh ra t�t c� trap �i�m , c�ng li�n h� scriptfile ch�n c�a v�n 
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

-- script viet hoa By http://tranhba.com "123,234" -> 123 , 234, �em m�t ch� ph� chu�i vi�t th�nh t�a �� s� li�u chuy�n h�a th�nh hai con s� thay ��i l��ng 
function bt_str2xydata(str) 
m = strfind(str,",") 
x = tonumber(strsub(str,0,m-1)) 
	y = tonumber(strsub(str,m+1))
return x,y 
end 

-- script viet hoa By http://tranhba.com  t� t�a �� v�n ki�n trung ng�u nhi�n ��t ���c m�t t�a �� 
function bt_getadata(file) 
local totalcount = GetTabFileHeight(file) - 1; 
id = random(totalcount); 
	x = GetTabFileData(file, id + 1, 1);
	y = GetTabFileData(file, id + 1, 2);
return x,y 
end 

-- script viet hoa By http://tranhba.com  c�n c� npcfile ��ch v�n ki�n ��ch t�a �� t�p h�p bi�u , sinh ra t�t c� npc m� b�n s� v� tnpcid ��ch ��i tho�i npc , c�ng li�n h� scriptfile ch�n c�a v�n 
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
-- script viet hoa By http://tranhba.com  �em t� ph� chu�i theo nh� ph�n chia ph� ph�n chia , tr� v� c�c ph�n chia �o�n t�o th�nh ��m t� 
-- script viet hoa By http://tranhba.com  l� 1#strsplit( "abc,bcd,efg", "," ) -> { "abc", "bcd", "efg" } 
-- script viet hoa By http://tranhba.com  l� 2#strsplit( ",abc,,bcd,,,efg,,", ",," ) -> { ",abc", "bcd", ",efg" } 
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


-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - ti�n v�o chi�n tr��ng l�c ph� cho nh� ch�i t��ng �ng ��u h�m BEGIN-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function bt_JudgePLAddTitle() 
-- script viet hoa By http://tranhba.com  ��t ���c tr��c m�t ��ch Rank , n�u nh� t�ch ph�n ��t t�i h� c�p m�t Rank ��ch y�u c�u tr� gi� l� cho n�n nh� ch�i n�n Rank, n�u nh� Rank tr� gi� �� ��t t�i th��ng h�n l� kh�ng th�m 
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

-- script viet hoa By http://tranhba.com  �� cho ��u h�m 
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

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - ti�n v�o chi�n tr��ng l�c ph� cho nh� ch�i t��ng �ng ��u h�m ENDING-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  


function bt_autoselectmaparea(mapfile,areacount) -- script viet hoa By http://tranhba.com  ng�u nhi�n l�a ch�n trong s�n , song ph��ng ch� � tr�n doanh ��a 
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

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - �em gi�y truy�n ��i th�nh ph�n c�ng gi�y , t� nh� 62s = 1m2s 
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
