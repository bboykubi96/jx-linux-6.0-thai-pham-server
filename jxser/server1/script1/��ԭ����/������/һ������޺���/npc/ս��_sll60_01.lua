-- script viet hoa By http://tranhba.com  Thi�u L�m La h�n tr�n m� cung chi�n ��u NPC ??01# Thi�u L�m xu�t s� nhi�m v� # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-04) 

function OnDeath() 
UTask_sl = GetTask(7) 
	if (UTask_sl == 60*256+10) then 		-- script viet hoa By http://tranhba.com  and (random(0,99) < 50)) then			-- script viet hoa By http://tranhba.com  �������У�50%����
i = random(0,4) 
if (i == 1) and (HaveItem(217) == 0) then 
AddEventItem(217) 
Msg2Player("Ng��i ��t ���c ��c ch�u ") 
AddNote("Ng��i ��t ���c ��c ch�u ") 
elseif (i == 2) and (HaveItem(215) == 0) then 
AddEventItem(215) 
Msg2Player("Ng��i ��t ���c thi�n tr��ng . ") 
AddNote("Ng��i ��t ���c thi�n tr��ng . ") 
elseif (i == 3) and (HaveItem(216) == 0) then 
AddEventItem(216) 
Msg2Player("Ng��i ��t ���c c� g� ") 
AddNote("Ng��i ��t ���c c� g� ") 
elseif (i == 4) and (HaveItem(214) == 0) then 
AddEventItem(214) 
Msg2Player("Ng��i ��t ���c b�t vu . ") 
AddNote("Ng��i ��t ���c b�t vu . ") 
else -- script viet hoa By http://tranhba.com  t��ng ���ng v�i 0 l�c , kh�ng ra ��o c� 
return 0 
end 
end 
end; 
