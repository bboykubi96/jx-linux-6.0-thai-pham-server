-- script viet hoa By http://tranhba.com  t�ng binh Npc t� vong ch�n v�n 
Include("\\script\\missions\\�ν�ս��PKս\\�ν�ս��ͷ�ļ�.lua");
function OnDeath(Launcher) 

State = GetMissionV(1) ; 
if (State ~= 2) then 
return 
end; 

npccount = GetTask(SJKILLNPC) + 1;
SetTask(SJKILLNPC, npccount); 
str1 = "<#> ng��i tr��c m�t c�ng gi�t ��ch Npc s� l��ng t�ng v� "..npccount; 
Msg2Player(str1); 

nCount = GetMissionV(MS_S_NPCDEATH) + 1;
SetMissionV(MS_S_NPCDEATH, nCount); 

if (nCount == MS_SHOWKINGCOUNT) then 
CheckShowKing(1); 
end; 


end; 
