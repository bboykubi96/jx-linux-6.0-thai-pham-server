Include([[\script\missions\chrismas\ch_head.lua]]); 
Include("\\script\\maps\\newworldscript_default.lua")

function OnNewWorld(szParam) 
if (GetGlbValue(GLB_CH_PHASE) ~= 1) then -- script viet hoa By http://tranhba.com  th�i gian �� qua 
Say("<color=yellow> �ng gi� n� en <color>: ng��ng ng�ng , ng��i t�i ch�m , ho�t ��ng m�i v�a v�a m�i b�t ��u # ta ��a ng��i tr� v� ", 0) 
NewWorld(GetTask(TK_LEAVERMAPID), GetTask(TK_LEAVERPOSX), GetTask(TK_LEAVERPOSY)) 
return 
end 

local nPlayerCount = GetMSPlayerCount(CH_PREPAREMISSIONID, 0); 
if (nPlayerCount >= CH_ALL_MAXPLAYERCOUNT) then 
Talk(1, "", "<color=yellow> �ng gi� n� en <color>: tham gia ho�t ��ng ng��i c�a qu� nhi�u , xin ch� ch�t l�n !"); 
NewWorld(GetTask(TK_LEAVERMAPID), GetTask(TK_LEAVERPOSX), GetTask(TK_LEAVERPOSY)) 
return 
end; 

setplayerreadystate(); -- script viet hoa By http://tranhba.com  thi�t tr� nh� ch�i ti�n v�o tr� ch�i tr�ng th�i 

AddMSPlayer(CH_PREPAREMISSIONID, 1); 
OnNewWorldDefault(szParam) 
end 

function OnLeaveWorld(szParam) 
setplayerleaverstate(); 
OnLeaveWorldDefault(szParam) 
end 
