-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n in t� n�t b�n ��i l�c b�n - tr�m ng��i l�i ��i NPC t� vong 
-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##npc_death.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ## t� kh�ng ph�i l� ng� 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2011-04-24 15:34:08 

-- script viet hoa By http://tranhba.com  ====================================================== 

Include("\\script\\missions\\bairenleitai\\hundred_arena.lua");

-- script viet hoa By http://tranhba.com  l� c�i n�o l�i ��i -- script viet hoa By http://tranhba.com  > ��i ch� ��ch t�n 
-- script viet hoa By http://tranhba.com  l� th� m�y quan ��ch 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  GetNpcKind(nNpcIndex) 

function OnDeath(nNpcIndex) 

if PlayerIndex <= 0 then 
-- script viet hoa By http://tranhba.com  ��i ch� thua 
print("HundredArenaNPC Killed By NoOne!!"); 
return 
end 

local nArenaID = ArenaNpc:GetNpcArena(nNpcIndex); 
if (HundredArena.tbArenaList[nArenaID]) then 
HundredArena.tbArenaList[nArenaID]:NpcDeath(); 
end 

end 
