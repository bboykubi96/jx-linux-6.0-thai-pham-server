Include([[\script\missions\springfestival\festival_head.lua]]); 
Include("\\script\\maps\\newworldscript_default.lua")

function OnNewWorld(szParam) 
if (GetGlbValue(GLB_FE_PHASE) ~= 1) then -- script viet hoa By http://tranhba.com  th�i gian �� qua 
Say(FE_SIGNNPCNAME.." th�t xin l�i , ng��i t�i ch�m . ho�t ��ng m�i v�a b�t ��u . ", 0) 
NewWorld(GetTask(TK_FE_LEAVERMAPID), GetTask(TK_FE_LEAVERPOSX), GetTask(TK_FE_LEAVERPOSY)); 
return 
end 

local nPlayerCount = GetMSPlayerCount(FE_PREPAREMISSIONID, 0); 
if (nPlayerCount >= FE_ALL_MAXPLAYERCOUNT) then 
Say(FE_SIGNNPCNAME.." tham gia ho�t ��ng ng��i c�a �� �� r�i , ng��i tham gia l�n sau ��ch �i !", 0); 
NewWorld(GetTask(TK_FE_LEAVERMAPID), GetTask(TK_FE_LEAVERPOSX), GetTask(TK_FE_LEAVERPOSY)); 
return 
end; 

festival_setplayertoprepare(); -- script viet hoa By http://tranhba.com  thi�t tr� nh� ch�i ti�n v�o tr� ch�i tr�ng th�i 

AddMSPlayer(FE_PREPAREMISSIONID, 1); 
OnNewWorldDefault(szParam) 
end 

function OnLeaveWorld(szParam) 
festival_setplayerleaverstate(); 
OnLeaveWorldDefault(szParam) 
end 
