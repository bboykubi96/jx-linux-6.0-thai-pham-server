Include([[\script\missions\chrismas\ch_head.lua]]); 
Include("\\script\\maps\\newworldscript_default.lua")

function OnNewWorld(szParam) 
if (GetGlbValue(GLB_CH_PHASE) ~= 1) then -- script viet hoa By http://tranhba.com  thêi gian ®· qua 
Say("<color=yellow> «ng giµ n« en <color>: ng­îng ngïng , ng­¬i tíi chËm , ho¹t ®éng míi võa võa míi b¾t ®Çu # ta ®­a ng­¬i trë vÒ ", 0) 
NewWorld(GetTask(TK_LEAVERMAPID), GetTask(TK_LEAVERPOSX), GetTask(TK_LEAVERPOSY)) 
return 
end 

local nPlayerCount = GetMSPlayerCount(CH_PREPAREMISSIONID, 0); 
if (nPlayerCount >= CH_ALL_MAXPLAYERCOUNT) then 
Talk(1, "", "<color=yellow> «ng giµ n« en <color>: tham gia ho¹t ®éng ng­êi cña qu¸ nhiÒu , xin chê chót lÇn !"); 
NewWorld(GetTask(TK_LEAVERMAPID), GetTask(TK_LEAVERPOSX), GetTask(TK_LEAVERPOSY)) 
return 
end; 

setplayerreadystate(); -- script viet hoa By http://tranhba.com  thiÕt trÝ nhµ ch¬i tiÕn vµo trß ch¬i tr¹ng th¸i 

AddMSPlayer(CH_PREPAREMISSIONID, 1); 
OnNewWorldDefault(szParam) 
end 

function OnLeaveWorld(szParam) 
setplayerleaverstate(); 
OnLeaveWorldDefault(szParam) 
end 
