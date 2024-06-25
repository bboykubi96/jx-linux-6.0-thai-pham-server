-- script viet hoa By http://tranhba.com  qu©n Kim tö vong 
Include("\\script\\missions\\ËÎ½ðÕ½³¡PKÕ½\\ËÎ½ðÕ½³¡Í·ÎÄ¼þ.lua");
function OnDeath(Launcher) 


State = GetMissionV(1) ; 
if (State ~= 2) then 
return 
end; 

npccount = GetTask(SJKILLNPC) + 1;
SetTask(SJKILLNPC, npccount); 
str1 = "<#> ng­¬i tr­íc m¾t céng giÕt ®Þch Npc sè l­îng t¨ng v× "..npccount; 
Msg2Player(str1); 

nCount = GetMissionV(MS_J_NPCDEATH) + 1;
SetMissionV(MS_J_NPCDEATH, nCount); 

if (nCount == MS_SHOWKINGCOUNT) then 
CheckShowKing(2); 
end; 

end;
