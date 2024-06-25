-- script viet hoa By http://tranhba.com  tham chiÕn nhµ ch¬i tö vong lóc ®Ých trë vÒ ®iÒu hµm sè 
-- script viet hoa By http://tranhba.com  bªn ngoµi dÉn dïng bæn v¨n mãn lóc , nhÊt ®Þnh ph¶i ®Þnh nghÜa h¹ nhãm hµm sè 
-- script viet hoa By http://tranhba.com GetBonus(); -- script viet hoa By http://tranhba.com  cÇn bªn ngoµi ®Þnh nghÜa nªn hµm sè , dïng cho t­ëng th­ëng Launcher nhµ ch¬i . 
Include("\\script\\missions\\csbattlelib\\csbattlehead.lua");

function OnDeath(Launcher) 
curcamp = GetCurCamp(); 
DelMSPlayer(2,GetCurCamp()); 
-- script viet hoa By http://tranhba.com  thñ tiªu vai trß ë MissionGroup sau sÏ tù ®éng ®iÒu dông Mission ®Ých OnLeave() hµm sè , mµ nªn hµm sè lµm hoµn toµn thanh trõ nhµ ch¬i ®Æc thï tr¹ng th¸i chøc n¨ng 
-- script viet hoa By http://tranhba.com  ë D­¬ng Ch©u s©n ®Êu cã chót bÊt ®ång , h¾n kh«ng cã thËt ph¶i thèi lui ra b¶n ®å , cho nªn cÇn ®em sèng l¹i ®iÓm thiÕt v× cÇn dïng RevID chê 
if (curcamp ~= 4) then 
SetLogoutRV(1); 
end; 


PlayerIndex1 = NpcIdx2PIdx(Launcher); -- script viet hoa By http://tranhba.com  murder hung thñ 
OrgPlayer = PlayerIndex; -- script viet hoa By http://tranhba.com  ng­êi chÕt 
DeathName = GetName(); 

SetFightState(1) 
if (PlayerIndex1 > 0) then 
PlayerIndex = PlayerIndex1; 
LaunName = GetName(); 

		pkcount = GetTaskTemp(PLAYER_KILLCOUNT) + 1; -- script viet hoa By http://tranhba.com ¼ÆËãµ±Ç°µÄpkÈËÊý
		pkcount1 = GetTask(PLAYER_KILLCOUNT) + 1; -- script viet hoa By http://tranhba.com Í³¼Æ×Ü¹²µÄpkÈËÊý
SetTaskTemp(PLAYER_KILLCOUNT, pkcount); 
SetTask(PLAYER_KILLCOUNT, pkcount1); 


if ( curcamp == 1) then 
str = "<#> hoµng ph­¬ng :"..LaunName.."<#> ®· träng th­¬ng ["..DeathName.."<#> ], cã thÓ PK # "..pkcount; 
elseif (curcamp == 2) then 
str = "<#> tö ph­¬ng :"..LaunName.."<#> ®· träng th­¬ng ["..DeathName.."<#> ], cã thÓ PK # "..pkcount; 
elseif (curcamp == 4) then 
str = LaunName.."<#> ®· träng th­¬ng ["..DeathName.."<#> ], cã thÓ PK "..pkcount; 
end; 

GetBonus(); -- script viet hoa By http://tranhba.com  nªn hµm sè tõ bªn ngoµi ®iÒn thªm , dïng cho t­ëng th­ëng nhµ ch¬i 

Msg2MSAll(2,str); 
PlayerIndex = OrgPlayer; 
end; 
SetTaskTemp(PLAYER_KILLCOUNT, 0); 

if (curcamp == 4) then 
SetCurCamp(GetCamp()) 
SetPunish(1)-- script viet hoa By http://tranhba.com  thiÕt trÝ PK trõng ph¹t 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t¾t PK chèt më 
SetTaskTemp(JOINSTATE, 0); 
ForbidChangePK(0); 
SetLogoutRV(0);-- script viet hoa By http://tranhba.com  thiÕt trÝ sèng l¹i ®iÓm 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thiÕt trÝ tö vong ch©n vèn v× v« Ých 
SetRevPos(99,43); 
else 
SetCurCamp(0); 
end; 

	dcount = GetTaskTemp(PLAYER_DEATHCOUNT) + 1; -- script viet hoa By http://tranhba.com ¼ÆËãµ±Ç°µÄËÀÍö´ÎÊý
	dcount1 = GetTask(PLAYER_DEATHCOUNT) + 1; -- script viet hoa By http://tranhba.com Í³¼Æ×Ü¹²µÄËÀÍö×Ü´ÎÊý
SetTaskTemp(PLAYER_DEATHCOUNT, dcount); 
SetTask(PLAYER_DEATHCOUNT, dcount1); 
SetTaskTemp(JOINSTATE, 0); 
end; 
