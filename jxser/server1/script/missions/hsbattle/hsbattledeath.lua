Include("\\script\\missions\\hsbattle\\hshead.lua");

function OnDeath(Launcher) 
curcamp = GetCurCamp(); 
DelMSPlayer(MISSIONID, curcamp); 
SetLogoutRV(1); 

PlayerIndex1 = NpcIdx2PIdx(Launcher); -- script viet hoa By http://tranhba.com  murder hung thñ 
OrgPlayer = PlayerIndex; -- script viet hoa By http://tranhba.com  ng­êi chÕt 
DeathName = GetName(); 

if (PlayerIndex1 > 0) then 
PlayerIndex = PlayerIndex1; 
LaunName = GetName(); 

		pkcount = GetTaskTemp(MS_TOTALPK) + 1; -- script viet hoa By http://tranhba.com ¼ÆËãµ±Ç°µÄpkÈËÊý
		SetTask(MS_TOTALPK, GetTask(MS_TOTALPK) + 1); -- script viet hoa By http://tranhba.com Í³¼Æ×Ü¹²µÄpkÈËÊý
SetTaskTemp(MS_TOTALPK, pkcount); 

if ( curcamp == 1) then 
str = GetMissionS(2).."<#> kÕt thóc "..LaunName.."<#> träng th­ëng liÔu ["..DeathName.."<#> ], PK ph¶i "..pkcount; 
			SetMissionV(MS_TONG2VALUE, GetMissionV(MS_TONG2VALUE) + PKWINBONUS);
SetMissionV(MS_TONG1VALUE, GetMissionV(MS_TONG1VALUE) - LOSEBONUS); 
elseif (curcamp == 2) then 
str = GetMissionS(1).."<#> kÕt thóc "..LaunName.."<#> träng th­ëng liÔu ["..DeathName.."<#> ], PK ph¶i "..pkcount; 
			SetMissionV(MS_TONG1VALUE, GetMissionV(MS_TONG1VALUE) + PKWINBONUS);
SetMissionV(MS_TONG2VALUE, GetMissionV(MS_TONG2VALUE) - LOSEBONUS); 
elseif (curcamp == 4) then 
str = LaunName.."<#> träng th­ëng liÔu ["..DeathName.."<#> ], PK ph¶i "..pkcount; 
end; 

-- script viet hoa By http://tranhba.com GetBonus(); -- script viet hoa By http://tranhba.com  nªn hµm sè tõ bªn ngoµi ®iÒn thªm , dïng cho t­ëng th­ëng nhµ ch¬i 

Msg2MSAll(MISSIONID, str); 
PlayerIndex = OrgPlayer; 
end; 


	SetTask(MS_TOTALKO, GetTask(MS_TOTALKO) + 1); -- script viet hoa By http://tranhba.com ¼ÇÂ¼×ÜËÀÍö´ÎÊý
SetCurCamp(GetCamp()) 
SetPunish(1)-- script viet hoa By http://tranhba.com  thiÕt trÝ PK trõng ph¹t 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t¾t PK chèt më 
SetTaskTemp(JOINSTATE, 0); 
ForbidChangePK(0); 
SetLogoutRV(0);-- script viet hoa By http://tranhba.com  thiÕt trÝ sèng l¹i ®iÓm 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thiÕt trÝ tö vong ch©n vèn v× v« Ých 
SetRevPos(99,43); 

SetTaskTemp(JOINSTATE, 0); 
end; 
