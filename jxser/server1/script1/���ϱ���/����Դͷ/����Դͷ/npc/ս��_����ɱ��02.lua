function OnDeath () 
Uworld128 = GetTask(128) 
Uworld134 = GetTask(134) 
if (Uworld128 == 30) then 
Uworld134 = SetBit(Uworld134,2,1) 
if (Uworld134 == 1023) then 
SetTask(128,40) 
Msg2Player("Ng��i tho�t �i th�n b� s�t th� , c� th� �i gi�i c�u gi�i v� t� ") 
AddNote("Ng��i tho�t �i th�n b� s�t th� , c� th� �i gi�i c�u gi�i v� t� ") 
elseif (Uworld134 ~= GetTask(134)) then 
SetTask(134,Uworld134) 
Msg2Player("Ng��i gi�t ch�t m�t ng��i th�n b� s�t th� ") 
else 
-- script viet hoa By http://tranhba.com  t�i di�n gi�t ch�t c�ng ch� NPC , kh�ng cho �� k� 
end 
end 
end
