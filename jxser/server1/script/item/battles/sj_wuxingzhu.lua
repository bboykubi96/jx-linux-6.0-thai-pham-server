-- script viet hoa By http://tranhba.com  t�ng kim ��o c� ng� h�nh tr� 
-- script viet hoa By http://tranhba.com  ph�n c�t l�a # b�ng tr� # ��c tr� # l�i tr� 

Include( "\\script\\item\\checkmapid.lua" )

function EatMedicine(nItemIdx) -- script viet hoa By http://tranhba.com  th�ng qua ph�n �o�n chi�n tr��ng ��ch c�p b�c c�ng nh� ch�i ��ch tr�n doanh t�i th�m NPC 
if (GetFightState() == 0) then 
Say(" � kh�ng ph�i l� tr�ng th�i chi�n ��u h� kh�ng th� s� d�ng !", 0) 
return -1 
end; 
tbPK_MAP = {357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374} -- script viet hoa By http://tranhba.com  m�t m�nh ��u b�n �� c�m ch� s� d�ng k�n hi�u 
for j = 1, getn(tbPK_MAP) do 
if ( nMapId == tbPK_MAP[j] ) then 
Msg2Player(" � �an ��u khu v�c kh�ng th� s� d�ng n�n v�t ph�m !"); 
return -1 
end 
end 

for j = 1, getn(tbCD_MAP) do 
if ( nMapId == tbCD_MAP[j] ) then 
Msg2Player("N�n v�t ph�m ch� c� th� � t�ng kim chi�n tr��ng s� d�ng "); 
return -1 
end 
end 

local szNpcName = ""; 
local n_player_camp = GetCurCamp(); 

if (n_player_camp == 1) then 
if (GetMissionV(MS_WUXINGZHUCNT_S) >= MAX_CALLWUXINGZHU) then 
Msg2Player("Tr��c m�t � chi�n tr��ng ��ch tr� ��m �� ��t th��ng h�n , kh�ng th� s� d�ng n�a li�u .") 
return -1 
else 
			SetMissionV(MS_WUXINGZHUCNT_S, GetMissionV(MS_WUXINGZHUCNT_S) + 1)
szNpcName = " t�ng ph��ng - "; 
end 
elseif (n_player_camp == 2) then 
if (GetMissionV(MS_WUXINGZHUCNT_J) >= MAX_CALLWUXINGZHU) then 
Msg2Player("Tr��c m�t � chi�n tr��ng ��ch tr� ��m �� ��t th��ng h�n , kh�ng th� s� d�ng n�a li�u .") 
return -1 
else 
			SetMissionV(MS_WUXINGZHUCNT_J, GetMissionV(MS_WUXINGZHUCNT_J) + 1)
szNpcName = " kim ph��ng - "; 
end 
end 

local n_level = check_pl_level(GetLevel); 
local _, _, n_part = GetItemProp(nItemIdx); 
local tb_npc_level = {50, 70, 90}; 
local tb_npc_id = { [1768] = {id = 1343, szname=" c�t l�a "}, 
[1769] = {id = 1344, szname=" b�ng tr� "}, 
[1770] = {id = 1345, szname=" ��c tr� "}, 
[1771] = {id = 1346, szname=" l�i tr� "}, 
[1772] = {id = 1347, szname=" kim tr� "}, 
}; 

if (not n_level or not tb_npc_id[n_part]) then -- script viet hoa By http://tranhba.com  kh�ng t�n t�i ��ch t�ng kim c�p b�c ho�c l� ��o c� kh�ng c�ch n�o c�ng cho g�i NPC ��i �ng 
return -1; 
end 

local n_npcidex = AddNpc( tb_npc_id[n_part].id, tb_npc_level[n_level], SubWorldID2Idx(W), (X - 3) * 32, Y * 32, 1, szNpcName..tb_npc_id[n_part].szname, 0); 
SetNpcCurCamp(n_npcidex, n_player_camp); 

end 
