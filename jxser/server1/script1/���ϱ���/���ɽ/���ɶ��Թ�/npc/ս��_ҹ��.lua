function OnDeath() 
Uworld125 = GetTask(125) 
if (Uworld125 == 10) or (Uworld125 == 15) then 
SetTask(125,15) 
AddEventItem(388) 
Msg2Player(" l�y ���c Nga Mi kh�ng c� ch� thi�n th� ") 
AddNote(" l�y ���c Nga Mi kh�ng c� ch� thi�n th� ") 
-- script viet hoa By http://tranhba.com  elseif (Uworld125 == 20) and (HaveItem(387) == 0) then 
-- script viet hoa By http://tranhba.com  AddEventItem(387) 
-- script viet hoa By http://tranhba.com  Msg2Player("N�ng l�y ���c Nga Mi kh�ng c� ch� thi�n th� . ") 
-- script viet hoa By http://tranhba.com  AddNote("N�ng l�y ���c Nga Mi kh�ng c� ch� thi�n th� . ") 
end 
end 
