Include([[\script\missions\tong\collectgoods\head.lua]]); 
Include("\\script\\maps\\newworldscript_default.lua")

function OnNewWorld(szParam) 
if (GetGlbValue(GLB_COLLG_PHASE) ~= 1) then -- script viet hoa By http://tranhba.com  thêi gian ®· qua 
Say("<color=yellow> ho¹t ®éng ph­êng tæng qu¶n <color>: thËt lµ ng­îng ngïng , ng­êi dÉn ®­êng ®· mang mét Ýt hiÖp kh¸ch ®i råi , chê mét chót míi trë vÒ , xin chê chót mét lÇn ®i .", 0) 
Msg2Player("Ho¹t ®éng ®ang tiÕn hµnh , xin chê chót mét lÇn ®i ."); 
NewWorld(GetTask(TK_LEAVERMAPID), GetTask(TK_LEAVERPOSX), GetTask(TK_LEAVERPOSY)) 
return 
end 

local nPlayerCount = GetMSPlayerCount(COLLG_PREPAREMISSIONID, 0); 
if (nPlayerCount >= COLLG_ALL_MAXPLAYERCOUNT) then 
Talk(1, "", "<color=yellow> ho¹t ®éng ph­êng tæng qu¶n <color>: ®· ®ñ kÝch thÝch ho¹t ®éng nh©n sè cña liÔu , bän ng­¬i lÇn sau ®i !"); 
NewWorld(GetTask(TK_LEAVERMAPID), GetTask(TK_LEAVERPOSX), GetTask(TK_LEAVERPOSY)) 
return 
end; 

collg_setplayerreadystate(); -- script viet hoa By http://tranhba.com  thiÕt trÝ nhµ ch¬i tiÕn vµo trß ch¬i tr¹ng th¸i 
AddMSPlayer(COLLG_PREPAREMISSIONID, 1); 
OnNewWorldDefault(szParam) 
end 

function OnLeaveWorld(szParam) 
collg_setplayerleaverstate(); 
OnLeaveWorldDefault(szParam) 
end 
