-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n in t� n�t b�n ��i l�c b�n - l�i ��i Trap 
-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##trap_arena.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ## t� kh�ng ph�i l� ng� 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2011-04-24 17:22:25 

-- script viet hoa By http://tranhba.com  ====================================================== 


function main(index) 
-- script viet hoa By http://tranhba.com HundredArena.tbFieldList[index]:InTrap(); 

	DynamicExecuteByPlayer(PlayerIndex, "\\script\\missions\\bairenleitai\\hundred_arena.lua", "HundredArena:InTrap", index)	
end 
