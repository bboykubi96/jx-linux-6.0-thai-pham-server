Include([[\script\missions\tong\collectgoods\head.lua]]); 
Include("\\script\\maps\\newworldscript_default.lua")

function OnNewWorld(szParam) 
if (GetGlbValue(GLB_COLLG_PHASE) ~= 1) then -- script viet hoa By http://tranhba.com  th�i gian �� qua 
Say("<color=yellow> ho�t ��ng ph��ng t�ng qu�n <color>: th�t l� ng��ng ng�ng , ng��i d�n ���ng �� mang m�t �t hi�p kh�ch �i r�i , ch� m�t ch�t m�i tr� v� , xin ch� ch�t m�t l�n �i .", 0) 
Msg2Player("Ho�t ��ng �ang ti�n h�nh , xin ch� ch�t m�t l�n �i ."); 
NewWorld(GetTask(TK_LEAVERMAPID), GetTask(TK_LEAVERPOSX), GetTask(TK_LEAVERPOSY)) 
return 
end 

local nPlayerCount = GetMSPlayerCount(COLLG_PREPAREMISSIONID, 0); 
if (nPlayerCount >= COLLG_ALL_MAXPLAYERCOUNT) then 
Talk(1, "", "<color=yellow> ho�t ��ng ph��ng t�ng qu�n <color>: �� �� k�ch th�ch ho�t ��ng nh�n s� c�a li�u , b�n ng��i l�n sau �i !"); 
NewWorld(GetTask(TK_LEAVERMAPID), GetTask(TK_LEAVERPOSX), GetTask(TK_LEAVERPOSY)) 
return 
end; 

collg_setplayerreadystate(); -- script viet hoa By http://tranhba.com  thi�t tr� nh� ch�i ti�n v�o tr� ch�i tr�ng th�i 
AddMSPlayer(COLLG_PREPAREMISSIONID, 1); 
OnNewWorldDefault(szParam) 
end 

function OnLeaveWorld(szParam) 
collg_setplayerleaverstate(); 
OnLeaveWorldDefault(szParam) 
end 
