-- script viet hoa By http://tranhba.com  t�y b�c nam khu \ ki�m c�c t�y b�c \npc\ chi�n ��u _uworld127_ ��i �i�u 
-- script viet hoa By http://tranhba.com  ng�y nh�n 90 c�p nhi�m v� ��i �i�u 
-- script viet hoa By http://tranhba.com  by xiaoyang(2004\4\12) 


function OnDeath() 
Uworld127 = GetTask(127) 
if ((Uworld127 == 20) or (Uworld127 ==30)) and (HaveItem(369) == 0) and (random(0,99) < 66) then 
AddEventItem(369) 
Msg2Player("Ng��i b�t ���c li�u ng�n n�m th�n �i�u ") 
AddNote("Ng��i b�t ���c li�u linh �i�u tr� v� c�ng ch�a ph� ph�c m�nh . ") 
SetTask(127,30) 
end 
end 
