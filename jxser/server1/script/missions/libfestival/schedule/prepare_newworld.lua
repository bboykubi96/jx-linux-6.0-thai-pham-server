Include([[\script\missions\libfestival\head.lua]]); 
Include("\\script\\maps\\newworldscript_default.lua")

function OnNewWorld(szParam) 
if (GetGlbValue(GLB_CO_PHASE) ~= 1) then -- script viet hoa By http://tranhba.com  th�i gian �� qua 
Say(CO_SIGNNPCNAME.." th�t xin l�i , ng��i t�i ch�m , ho�t ��ng m�i v�a b�t ��u . ", 0) 
NewWorld(GetTask(TK_CO_LEAVERMAPID), GetTask(TK_CO_LEAVERPOSX), GetTask(TK_CO_LEAVERPOSY)); 
return 
end 

local nPlayerCount = GetMSPlayerCount(CO_PREPAREMISSIONID, 0); 
if (nPlayerCount >= CO_ALL_MAXPLAYERCOUNT) then 
Say(CO_SIGNNPCNAME.." tham gia ho�t ��ng ng��i c�a �� �� r�i , xin ch� ch�t m�t v�ng tham gia �i !", 0); 
NewWorld(GetTask(TK_CO_LEAVERMAPID), GetTask(TK_CO_LEAVERPOSX), GetTask(TK_CO_LEAVERPOSY)); 
return 
end; 

newworld_in_add(); 
playergetinprepare(); -- script viet hoa By http://tranhba.com  thi�t tr� nh� ch�i ti�n v�o tr� ch�i tr�ng th�i 
AddMSPlayer(CO_PREPAREMISSIONID, 1); 
OnNewWorldDefault(szParam) 
end 

function OnLeaveWorld(szParam) 
newworld_out_add(); 
playerleave(); 
OnLeaveWorldDefault(szParam) 
end 
