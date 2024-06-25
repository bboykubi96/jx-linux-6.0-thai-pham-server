Include("\\script\\missions\\tong\\tong_springfestival\\head.lua");
Include("\\script\\maps\\newworldscript_default.lua")

function OnNewWorld(szParam) 
if (GetGlbValue(GLB_SF_PHASE) ~= 1) then -- script viet hoa By http://tranhba.com  th�i gian �� qua 
Say("Ho�t ��ng ph��ng t�ng qu�n ".." th�t l� ti�c nu�i , ng��i t�i ch�m , ch� ch�t m�t l�n ho�t ��ng �i !", 0) 
NewWorld(GetTask(TK_LEAVERMAPID), GetTask(TK_LEAVERPOSX), GetTask(TK_LEAVERPOSY)); 
return 
end 

local nPlayerCount = GetMSPlayerCount(SF_PREPAREMISSIONID, 0); 
if (nPlayerCount >= SF_ALL_MAXPLAYERCOUNT) then 
Say("Ho�t ��ng ph��ng t�ng qu�n ".." tham gia ho�t ��ng nh�n s� c�a �� �� r�i , ch� ch�t l�n tham gia �i !", 0); 
NewWorld(GetTask(TK_LEAVERMAPID), GetTask(TK_LEAVERPOSX), GetTask(TK_LEAVERPOSY)); 
return 
end; 

festival_setplayertoprepare(); -- script viet hoa By http://tranhba.com  thi�t tr� nh� ch�i ti�n v�o tr� ch�i tr�ng th�i 

AddMSPlayer(SF_PREPAREMISSIONID, 1); 
OnNewWorldDefault(szParam) 
end 

function OnLeaveWorld(szParam) 
festival_setplayerleaverstate(); 
OnLeaveWorldDefault(szParam) 
end 
