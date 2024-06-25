Include([[\script\missions\springfestival\festival_head.lua]]); 
Include("\\script\\maps\\newworldscript_default.lua")

function OnNewWorld(szParam) 
if (GetGlbValue(GLB_FE_PHASE) ~= 1) then -- script viet hoa By http://tranhba.com  thÍi gian Æ∑ qua 
Say(FE_SIGNNPCNAME.." thÀt xin lÁi , ng≠¨i tÌi chÀm . hoπt ÆÈng mÌi vıa bæt Æ«u . ", 0) 
NewWorld(GetTask(TK_FE_LEAVERMAPID), GetTask(TK_FE_LEAVERPOSX), GetTask(TK_FE_LEAVERPOSY)); 
return 
end 

local nPlayerCount = GetMSPlayerCount(FE_PREPAREMISSIONID, 0); 
if (nPlayerCount >= FE_ALL_MAXPLAYERCOUNT) then 
Say(FE_SIGNNPCNAME.." tham gia hoπt ÆÈng ng≠Íi cÒa Æ∑ ÆÒ rÂi , ng≠¨i tham gia l«n sau Æ›ch Æi !", 0); 
NewWorld(GetTask(TK_FE_LEAVERMAPID), GetTask(TK_FE_LEAVERPOSX), GetTask(TK_FE_LEAVERPOSY)); 
return 
end; 

festival_setplayertoprepare(); -- script viet hoa By http://tranhba.com  thi’t tr› nhµ ch¨i ti’n vµo trﬂ ch¨i trπng th∏i 

AddMSPlayer(FE_PREPAREMISSIONID, 1); 
OnNewWorldDefault(szParam) 
end 

function OnLeaveWorld(szParam) 
festival_setplayerleaverstate(); 
OnLeaveWorldDefault(szParam) 
end 
