Include("\\script\\missions\\tong\\tong_springfestival\\head.lua");
Include("\\script\\maps\\newworldscript_default.lua")

function OnNewWorld(szParam) 
if (GetGlbValue(GLB_SF_PHASE) ~= 1) then -- script viet hoa By http://tranhba.com  thêi gian ®· qua 
Say("Ho¹t ®éng ph­êng tæng qu¶n ".." thËt lµ tiÕc nuèi , ng­¬i tíi chËm , chê chót mét lÇn ho¹t ®éng ®i !", 0) 
NewWorld(GetTask(TK_LEAVERMAPID), GetTask(TK_LEAVERPOSX), GetTask(TK_LEAVERPOSY)); 
return 
end 

local nPlayerCount = GetMSPlayerCount(SF_PREPAREMISSIONID, 0); 
if (nPlayerCount >= SF_ALL_MAXPLAYERCOUNT) then 
Say("Ho¹t ®éng ph­êng tæng qu¶n ".." tham gia ho¹t ®éng nh©n sè cña ®· ®ñ råi , chê chót lÇn tham gia ®i !", 0); 
NewWorld(GetTask(TK_LEAVERMAPID), GetTask(TK_LEAVERPOSX), GetTask(TK_LEAVERPOSY)); 
return 
end; 

festival_setplayertoprepare(); -- script viet hoa By http://tranhba.com  thiÕt trÝ nhµ ch¬i tiÕn vµo trß ch¬i tr¹ng th¸i 

AddMSPlayer(SF_PREPAREMISSIONID, 1); 
OnNewWorldDefault(szParam) 
end 

function OnLeaveWorld(szParam) 
festival_setplayerleaverstate(); 
OnLeaveWorldDefault(szParam) 
end 
