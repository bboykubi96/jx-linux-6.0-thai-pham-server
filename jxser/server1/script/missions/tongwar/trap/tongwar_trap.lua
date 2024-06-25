Include("\\script\\missions\\tongwar\\match\\head.lua")

function main() 
oldSubWorld = SubWorld 
oldmapid = SubWorldIdx2ID(SubWorld) 

matchmap = tongwar_getmatchmap(oldmapid) 
mapidx = SubWorldID2Idx(matchmap) 
if (mapidx < 0) then 
return 
end 
LeaveTeam() 
SubWorld = mapidx 

if (GetMissionV(MS_STATE) == 0) then 
Say("V� l�m �� nh�t bang tranh t�i c�n ch�a b�t ��u , xin ch� m�t ch�t ", 0) 
elseif (GetMissionV(MS_STATE) == 1) then 
Say("Phe ta tr��c m�t �ang t�p h�p chu�n b� ti�n v�o chi�n tr��ng , xin m�i ng��i an t�nh , chu�n b� xong tinh th�n !", 0) 
elseif (GetMissionV(MS_STATE) == 2) then 
if (tongwar_checkjoin(oldmapid)) then 
SubWorld = oldSubWorld 
return 
end 
end 
SubWorld = oldSubWorld 
SetPos(1619,3175) 
end 

function tongwar_checkjoin(mapid) 
if (tongwar_getdata(TONGWAR_RLTASK_KEYNUMBER) ~= GetMissionV(MS_KEYNUMBER)) then 
tongwar_cleartask()-- script viet hoa By http://tranhba.com settask(ms_keynumber)-- script viet hoa By http://tranhba.com settask(maxdeath) 
end 
local tongname = GetTongName() 
local lgid = LG_GetLeagueObjByRole(10, tongname) 
if (lgid == 0 or lgid == nil) then 
return 
end 
local cityname = LG_GetLeagueInfo(lgid) 
local camp = LG_GetLeagueTask(10, cityname, TONGWAR_LGTASK_CAMP) 
if (camp == 1) then 
if (cityname == GetMissionS(MS_S_CITYNAME_S)) then 
if (not tongwar_signerror(camp, cityname)) then 
return 
end 
return tongwar_signup(camp) 
else 
Say("Ng��i li�n minh chu�n b� khu kh�ng � n�i n�y , nhanh �i minh ch� v� l�m kia l�a ch�n ch�nh x�c khu v�c ", 0) 
end 
elseif(camp == 2) then 
if (cityname == GetMissionS(MS_S_CITYNAME_J)) then 
if (not tongwar_signerror(camp, cityname)) then 
return 
end 
return tongwar_signup(camp) 
else 
Say("Ng��i li�n minh chu�n b� khu kh�ng � n�i n�y , nhanh �i minh ch� v� l�m kia l�a ch�n ch�nh x�c khu v�c ", 0) 
end 
else 
print("don't know the map"..mapid.." is which camp") 
end 
end 

function tongwar_signerror(camp, cityname) 
-- script viet hoa By http://tranhba.com VLDNB 10 - s�a ��i gia nh�p bang h�i ��ch th�i gian y�u c�u - Modified by DinhHQ - 20111017 
if (GetJoinTongTime() < 1440) then 
Say("Gia nh�p bang h�i th�i gian kh�ng �� <color=red>1 ng�y <color>, kh�ng th� v�o ��u tr��ng .", 0) 
return 
end 
if (tongwar_getdata(TONGWAR_RLTASK_NDEATH) >= tongwar_getdata(TONGWAR_RLTASK_MAXDEATH)) then 
Say("T� vong s� l�n �� v��t qua "..tongwar_getdata(TONGWAR_RLTASK_MAXDEATH).." l�n , kh�ng th� ti�p t�c tham gia tranh t�i !", 0) 
return 
end 
if (GetMSPlayerCount(MISSIONID, camp) >= MAX_MEMBERCOUNT) then 
Say("Tr��c m�t ["..cityname.."] tham gia nh�n s� v��t qua "..MAX_MEMBERCOUNT.." ng��i , t�m th�i kh�ng th� tham gia !", 0) 
return 
end 
return 1 
end 

function tongwar_signup(camp) 
if (tongwar_getdata(TONGWAR_RLTASK_KEYNUMBER) == GetMissionV(MS_KEYNUMBER)) then 
		tongwar_setdata(TONGWAR_RLTASK_NDEATH, tongwar_getdata(TONGWAR_RLTASK_NDEATH) + 1)
end 
BT_LeaveBattle() 
gametime = floor(GetMSRestTime(MISSIONID, 62) / 18); 

sf_mapid = SubWorldIdx2ID(SubWorld) 
if (camp == 1) then 
posx = GetMissionV(MS_HOMEIN_X1) 
posy = GetMissionV(MS_HOMEIN_Y1) 
EnterChannel(PlayerIndex, GetMissionS(MS_S_CITYNAME_S)) 
else 
posx = GetMissionV(MS_HOMEIN_X2) 
posy = GetMissionV(MS_HOMEIN_Y2) 
EnterChannel(PlayerIndex, GetMissionS(MS_S_CITYNAME_J)) 
end 

-- script viet hoa By http://tranhba.com BT_SetData(PL_PARAM1,0) 
-- script viet hoa By http://tranhba.com BT_SetData(PL_PARAM2,0) 
-- script viet hoa By http://tranhba.com Msg2Player("Tranh t�i ti�n h�nh trung r�i s�n ho�c h� tuy�n , <color=yellow> ��ch qu�n tr�n doanh �em ��t ���c 75 ph�n t��ng th��ng ") 
Msg2Player("�ang chi�n ��u khu v�c , c�i n�o li�n minh nh�n s� c�a <color=yellow> �t h�n so v�i 5 ng��i coi nh� thua ") 
SetRevPos(GetPlayerRev()) -- script viet hoa By http://tranhba.com  thi�t tr� s�ng l�i �i�m v� th� ra l� th�nh ph� ��ch s�ng l�i �i�m 
NewWorld(sf_mapid, posx, posy); 
tongwar_setdata(TONGWAR_RLTASK_KEYNUMBER, GetMissionV(MS_KEYNUMBER)) 
SetDeathType(-1) 
DisabledUseTownP(1) 
SetTempRevPos(sf_mapid, posx * 32, posy * 32); 
tongwar_setdata(TONGWAR_RLTASK_LASTDTIME, GetGameTime()) 
AddMSPlayer(MISSIONID,camp); 
BT_UpdateMemberCount(); 
SetCurCamp(camp); 
SetTaskTemp(200,1) 
SetFightState(0); 
SetLogoutRV(1); 
SetPunish(0); 
SetCreateTeam(0); 
SetPKFlag(1) 
ForbidChangePK(1); 
ForbidEnmity(1); 

BT_BroadView(); 
BT_BroadAllLadder(); 
BT_SetRestTime(gametime); 
BT_BroadGameData(); 
BT_SortLadder(); 
BT_BroadSelf() 
	SetDeathScript("\\script\\missions\\tongwar\\match\\playerdeath.lua");
bt_JudgePLAddTitle() 
return 1 
end 

function tongwar_cleartask() 
for i = TONGWAR_RLTASK_POINT, TONGWAR_RLTASK_MAXSERIESKILL do 
tongwar_setdata(i, 0) 
end 
tongwar_setdata(TV_SERIESKILL_REALY, 0) 
tongwar_setdata(TONGWAR_RLTASK_MAXDEATH, 10) 
BT_LeaveBattle() -- script viet hoa By http://tranhba.com  thanh tr� nh� ch�i kh�ch h�ng b�ng tr��c m�t ��ch ��ng h�ng s� li�u 
BT_ClearPlayerData() 

end 

function tongwar_getmatchcamp(mapid) 
for i = 1, getn(tbTONGWARMAP) do 
if (mapid == tbTONGWARMAP[i][1] or mapid == tbTONGWARMAP[i][2] or mapid == tbTONGWARMAP[i][3]) then 
camp = i 
break 
end 
end 
return camp 
end 
