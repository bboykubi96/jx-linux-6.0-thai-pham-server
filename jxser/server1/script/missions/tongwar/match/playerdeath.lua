-- script viet hoa By http://tranhba.com  nh� ch�i t� vong ch�n v�n 

Include("\\script\\missions\\tongwar\\match\\head.lua")

function OnDeath(Launcher) 

State = GetMissionV(MS_STATE) ; 
if (State ~= 2) then 
return 
end; 

PlayerIndex1 = NpcIdx2PIdx(Launcher); 
OrgPlayer = PlayerIndex; 
DeathName = GetName(); 
deathcamp = GetCurCamp(); 
currank = tongwar_getdata(TONGWAR_RLTASK_CURRANK) 


if (PlayerIndex1 > 0) then 
PlayerIndex = PlayerIndex1; 
launchrank = tongwar_getdata(TONGWAR_RLTASK_CURRANK) 
if (GetCurCamp() ~= deathcamp) then 
LaunName = GetName(); 

-- script viet hoa By http://tranhba.com  ��i m�i gi�t Npc s� l��ng c�ng b�ng x�p h�ng 
			tongwar_setdata(TONGWAR_RLTASK_KILLPLAYER, tongwar_getdata(TONGWAR_RLTASK_KILLPLAYER) + 1); -- script viet hoa By http://tranhba.com ��¼���ɱ������ҵ�����
			serieskill = tongwar_getdata(TONGWAR_RLTASK_SERIESKILL) + 1;
tongwar_setdata(TONGWAR_RLTASK_SERIESKILL, serieskill); -- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i tr��c m�t ��ch ch�m li�n t�c ��m 

if (TAB_SERIESKILL[launchrank][currank] == 1) then 
serieskill_r = GetTask(TV_SERIESKILL_REALY) 
			serieskill_r = serieskill_r + 1
SetTask(TV_SERIESKILL_REALY,serieskill_r) 
if (mod(serieskill_r, 3) == 0) then 
if (deathcamp == 1) then 
bt_addtotalpoint(tongwar_GetTypeBonus(BONUS_MAXSERIESKILL)) 
but_addmissionpoint(tongwar_GetTypeBonus(BONUS_MAXSERIESKILL)) 
Msg2Player("<color=yellow> ng��i ��t ���c ch�m li�n t�c t�ch ph�n "..tongwar_GetTypeBonus(BONUS_MAXSERIESKILL)) 
else 
bt_addtotalpoint(tongwar_GetTypeBonus(BONUS_MAXSERIESKILL)) 
but_addmissionpoint(tongwar_GetTypeBonus(BONUS_MAXSERIESKILL)) 
Msg2Player("<color=yellow> ng��i ��t ���c ch�m li�n t�c t�ch ph�n "..tongwar_GetTypeBonus(BONUS_MAXSERIESKILL)) 
end 
end 
if (mod(tongwar_getdata(TONGWAR_RLTASK_KILLPLAYER), 5) == 0) then 
				tongwar_setdata(TONGWAR_RLTASK_MAXDEATH, GetTask(TONGWAR_RLTASK_MAXDEATH) + 1)
Msg2Player("<color=green> t� vong gia t�ng s� l�n :"..(GetTask(TONGWAR_RLTASK_MAXDEATH)- GetTask(TONGWAR_RLTASK_NDEATH)).." l�n ") 
end 
end 

if (tongwar_getdata(TONGWAR_RLTASK_MAXSERIESKILL) < serieskill) then 
tongwar_setdata(TONGWAR_RLTASK_MAXSERIESKILL, serieskill) -- script viet hoa By http://tranhba.com  th�ng k� nh� ch�i ��ch l�n nh�t ch�m li�n t�c ��m 
end 

local rankradio = 1; 

if ( RANK_PKBONUS[launchrank] == nil or RANK_PKBONUS[launchrank][currank] == nil) then 
rankradio = 1 
print("battle rank tab error!!!please check it !") 
else 
rankradio = RANK_PKBONUS[launchrank][currank] 
end 
local earnbonus = 0 
if (deathcamp == 1) then 
earnbonus = floor(tongwar_GetTypeBonus(BONUS_KILLPLAYER) * rankradio) 
else 
earnbonus = floor(tongwar_GetTypeBonus(BONUS_KILLPLAYER) * rankradio) 
end 
bt_addtotalpoint(earnbonus) 
but_addmissionpoint(earnbonus) 

local rankname = ""; 
rankname = tbRANKNAME[currank] 
launchrank = tongwar_getdata(TONGWAR_RLTASK_CURRANK); 
launrankname = tbRANKNAME[launchrank] 
BT_SortLadder(); 
BT_BroadSelf(); 

if (GetCurCamp() == 1) then 
str = GetMissionS(MS_S_CITYNAME_S)..launrankname..LaunName.." gi�t ch�t "..GetMissionS(MS_S_CITYNAME_J)..rankname..DeathName..", t�ng PK v� "..tongwar_getdata(TONGWAR_RLTASK_KILLPLAYER); 
else 
str = GetMissionS(MS_S_CITYNAME_J)..launrankname..LaunName.." gi�t ch�t "..GetMissionS(MS_S_CITYNAME_S)..rankname..DeathName..", t�ng PK v� "..tongwar_getdata(TONGWAR_RLTASK_KILLPLAYER); 
end 
Msg2Player("<color=pink> ch�c m�ng , ng��i h� ph�i :"..rankname..DeathName..", t�ng PK v� "..tongwar_getdata(TONGWAR_RLTASK_KILLPLAYER)); 
Msg2MSAll(MISSIONID, str); 
end 
PlayerIndex = OrgPlayer; 
end; 

	tongwar_setdata(TONGWAR_RLTASK_NDEATH, tongwar_getdata(TONGWAR_RLTASK_NDEATH) + 1)
tongwar_setdata(TONGWAR_RLTASK_SERIESKILL, 0) 
SetTask(TV_SERIESKILL_REALY,0) 
Msg2Player("<color=green> t� vong s� l�n c�n l�i :"..(GetTask(TONGWAR_RLTASK_MAXDEATH)- GetTask(TONGWAR_RLTASK_NDEATH)).." l�n ") 
BT_SortLadder(); 
BT_BroadSelf(); 
sf_onplayerleave() 
tongwar_setdata(TONGWAR_RLTASK_LASTDTIME, GetGameTime()) 
end
