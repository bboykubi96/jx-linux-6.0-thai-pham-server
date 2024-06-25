Include([[\script\missions\tong\tong_disciple\head.lua]]); 
Include("\\script\\maps\\newworldscript_default.lua")

function OnNewWorld(szParam) 
if (GetGlbValue(GLB_DIS_PHASE) ~= 1) then -- script viet hoa By http://tranhba.com  thêi gian ®· qua 
Say("<color=yellow> ho¹t ®éng ph­êng tæng qu¶n <color>: thËt lµ tiÕc nuèi , ng­¬i tíi chËm , chê chót lÇn ho¹t ®éng trë l¹i ®i !", 0) 
NewWorld(GetTask(TK_LEAVERMAPID), GetTask(TK_LEAVERPOSX), GetTask(TK_LEAVERPOSY)) 
return 
end 

local nPlayerCount = GetMSPlayerCount(DIS_PREPAREMISSIONID, 0); 
if (nPlayerCount >= DIS_ALL_MAXPLAYERCOUNT) then 
Talk(1, "", "<color=yellow> ho¹t ®éng ph­êng tæng qu¶n <color>: ®· ®ñ ho¹t ®éng kÐm giíi nh©n sè , bän ng­¬i lÇn sau ®i !"); 
NewWorld(GetTask(TK_LEAVERMAPID), GetTask(TK_LEAVERPOSX), GetTask(TK_LEAVERPOSY)) 
return 
end; 

setplayerreadystate(); -- script viet hoa By http://tranhba.com  thiÕt trÝ nhµ ch¬i tiÕn vµo trß ch¬i tr¹ng th¸i 

AddMSPlayer(DIS_PREPAREMISSIONID, 1); 
OnNewWorldDefault(szParam) 
end 

function OnLeaveWorld(szParam) 
setplayerleaverstate(); 
OnLeaveWorldDefault(szParam) 
end 
