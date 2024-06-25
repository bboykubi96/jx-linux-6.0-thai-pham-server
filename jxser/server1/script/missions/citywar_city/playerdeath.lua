Include("\\script\\missions\\citywar_city\\head.lua");
function OnDeath(Launcher) 
local State = GetMissionV(MS_STATE) ; 
if (State ~= 2) then 
return 
end; 

local PlayerIndex1 = NpcIdx2PIdx(Launcher); 
local OrgPlayer = PlayerIndex; 
local DeathName = GetName(); 
local deathcamp = GetCurCamp(); 
local currank = BT_GetData(PL_CURRANK); 

if (PlayerIndex1 > 0) then 
PlayerIndex = PlayerIndex1; 
local launchrank = BT_GetData(PL_CURRANK); 
if (GetCurCamp() ~= deathcamp) then 
local LaunName = GetName(); 
-- script viet hoa By http://tranhba.com  ®æi míi giÕt Npc sè l­îng cïng b¶ng xÕp h¹ng 
			BT_SetData(PL_KILLPLAYER, BT_GetData(PL_KILLPLAYER) + 1); -- script viet hoa By http://tranhba.com ¼ÇÂ¼Íæ¼ÒÉ±ÆäËüÍæ¼ÒµÄ×ÜÊý
			local serieskill = BT_GetData(PL_SERIESKILL) + 1;
BT_SetData(PL_SERIESKILL, serieskill); -- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i tr­íc mÆt ®Ých chÐm liªn tôc ®Õm 

if (TAB_SERIESKILL[launchrank][currank] == 1) then 
serieskill_r = GetTask(TV_SERIESKILL_REALY) 
				serieskill_r = serieskill_r + 1
SetTask(TV_SERIESKILL_REALY,serieskill_r) 
if (mod(serieskill_r, 3) == 0) then 
if (deathcamp == 1) then 
bt_addtotalpoint(BT_GetTypeBonus(PL_MAXSERIESKILL, 2)) 
Msg2Player("<color=yellow> ng­¬i ®¹t ®­îc chÐm liªn tôc ®iÓm "..BT_GetTypeBonus(PL_MAXSERIESKILL, 2)) 
else 
bt_addtotalpoint(BT_GetTypeBonus(PL_MAXSERIESKILL, 1)) 
Msg2Player("<color=yellow> ng­¬i ®¹t ®­îc chÐm liªn tôc ®iÓm "..BT_GetTypeBonus(PL_MAXSERIESKILL, 1)) 
end 
end 
end 

if (BT_GetData(PL_MAXSERIESKILL) < serieskill) then 
BT_SetData(PL_MAXSERIESKILL, serieskill) -- script viet hoa By http://tranhba.com  thèng kª nhµ ch¬i ®Ých lín nhÊt chÐm liªn tôc ®Õm 
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
earnbonus = floor(BT_GetTypeBonus(PL_KILLPLAYER, 2) * rankradio) 
else 
earnbonus = floor(BT_GetTypeBonus(PL_KILLPLAYER, 1) * rankradio) 
end 

bt_addtotalpoint(earnbonus) 

local rankname = ""; 
rankname = tbRANKNAME[currank] 
launchrank = BT_GetData(PL_CURRANK); 
launrankname = tbRANKNAME[launchrank] 

BT_SortLadder(); 
BT_BroadSelf(); 

if (GetCurCamp() == 1) then 
str = format("Thñ ph­¬ng %s%s tiªu diÖt c«ng ph­¬ng %s%s, PK ®Õm gia t¨ng %s",launrankname,LaunName,rankname,DeathName,BT_GetData(PL_KILLPLAYER)); 
else 
str = " c«ng ph­¬ng "..launrankname..LaunName.." tiªu diÖt thñ ph­¬ng "..rankname..DeathName..", tæng PK lµ "..BT_GetData(PL_KILLPLAYER); 
end 

Msg2Player(format("<color=pink> chóc mõng : ®· tiªu diÖt ®Þch qu©n : %s%s, PK ®Õm gia t¨ng %s",rankname,DeathName,BT_GetData(PL_KILLPLAYER))); 
Msg2MSAll(MISSIONID, str); 
end 
PlayerIndex = OrgPlayer; 
end; 

	BT_SetData(PL_BEKILLED, BT_GetData(PL_BEKILLED) + 1);
bt_addtotalpoint(BT_GetTypeBonus(PL_BEKILLED, deathcamp)) 
BT_SetData(PL_SERIESKILL, 0); 
SetTask(TV_SERIESKILL_REALY,0) 

BT_SortLadder(); 
BT_BroadSelf(); 
sf_onplayerleave();-- script viet hoa By http://tranhba.com  cÇm kú ®Ých nhµ ch¬i tö vong hoÆc ®o¹n tuyÕn lóc , cÇn ®em kú r¬i trªn mÆt ®Êt 
end;
