Include([[\script\missions\tong\tong_disciple\head.lua]]); 
Include("\\script\\maps\\newworldscript_default.lua")

function OnNewWorld(szParam) 
if (GetGlbValue(GLB_DIS_PHASE) ~= 1) then -- script viet hoa By http://tranhba.com  th�i gian �� qua 
Say("<color=yellow> ho�t ��ng ph��ng t�ng qu�n <color>: th�t l� ti�c nu�i , ng��i t�i ch�m , ch� ch�t l�n ho�t ��ng tr� l�i �i !", 0) 
NewWorld(GetTask(TK_LEAVERMAPID), GetTask(TK_LEAVERPOSX), GetTask(TK_LEAVERPOSY)) 
return 
end 

local nPlayerCount = GetMSPlayerCount(DIS_PREPAREMISSIONID, 0); 
if (nPlayerCount >= DIS_ALL_MAXPLAYERCOUNT) then 
Talk(1, "", "<color=yellow> ho�t ��ng ph��ng t�ng qu�n <color>: �� �� ho�t ��ng k�m gi�i nh�n s� , b�n ng��i l�n sau �i !"); 
NewWorld(GetTask(TK_LEAVERMAPID), GetTask(TK_LEAVERPOSX), GetTask(TK_LEAVERPOSY)) 
return 
end; 

setplayerreadystate(); -- script viet hoa By http://tranhba.com  thi�t tr� nh� ch�i ti�n v�o tr� ch�i tr�ng th�i 

AddMSPlayer(DIS_PREPAREMISSIONID, 1); 
OnNewWorldDefault(szParam) 
end 

function OnLeaveWorld(szParam) 
setplayerleaverstate(); 
OnLeaveWorldDefault(szParam) 
end 
