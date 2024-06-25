Include([[\script\missions\libfestival\head.lua]]); 
Include("\\script\\maps\\newworldscript_default.lua")

function OnNewWorld(szParam) 
if (GetGlbValue(GLB_CO_PHASE) ~= 1) then -- script viet hoa By http://tranhba.com  thêi gian ®· qua 
Say(CO_SIGNNPCNAME.." thËt xin lçi , ng­¬i tíi chËm , ho¹t ®éng míi võa b¾t ®Çu . ", 0) 
NewWorld(GetTask(TK_CO_LEAVERMAPID), GetTask(TK_CO_LEAVERPOSX), GetTask(TK_CO_LEAVERPOSY)); 
return 
end 

local nPlayerCount = GetMSPlayerCount(CO_PREPAREMISSIONID, 0); 
if (nPlayerCount >= CO_ALL_MAXPLAYERCOUNT) then 
Say(CO_SIGNNPCNAME.." tham gia ho¹t ®éng ng­êi cña ®· ®ñ råi , xin chê chót mét vßng tham gia ®i !", 0); 
NewWorld(GetTask(TK_CO_LEAVERMAPID), GetTask(TK_CO_LEAVERPOSX), GetTask(TK_CO_LEAVERPOSY)); 
return 
end; 

newworld_in_add(); 
playergetinprepare(); -- script viet hoa By http://tranhba.com  thiÕt trÝ nhµ ch¬i tiÕn vµo trß ch¬i tr¹ng th¸i 
AddMSPlayer(CO_PREPAREMISSIONID, 1); 
OnNewWorldDefault(szParam) 
end 

function OnLeaveWorld(szParam) 
newworld_out_add(); 
playerleave(); 
OnLeaveWorldDefault(szParam) 
end 
