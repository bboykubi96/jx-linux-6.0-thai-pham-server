function OnDeath() 
Uworld76 = GetTask(76) 
if (Uworld76 == 40) and (HaveItem(372) == 0) and (random(0,99) < 50) then 
AddEventItem(372) 
Msg2Player("B�t ���c m�y tr�ng ��ch c�y qu�t . ") 
AddNote("B�t ���c m�y tr�ng ��ch c�y qu�t . ") 
end 
end 