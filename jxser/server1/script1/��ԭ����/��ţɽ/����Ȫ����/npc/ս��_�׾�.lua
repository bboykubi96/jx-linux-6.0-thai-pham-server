-- script viet hoa By http://tranhba.com  Trung Nguy�n nam khu \ ph�c b� s�n \ chu v�n tuy�n ch� � \ chi�n ��u _ l�i quy�t .lua 
-- script viet hoa By http://tranhba.com by xiaoyang (2004\4\20) 

function OnDeath() 
Uworld129 = GetTask(129) 
if (Uworld129 == 55) then 
SetTask(129,60) 
Talk(1,"","..... ch�a t�ng nh� ng��i l�i h�i nh� v�y , l�i quy�t ch�ng qua l� ng�y nh�n d�y k�m c�i ��ch �� t� , s� c� ng��i b�o th� cho ta . ng��i trong v� l�m �em b� bi�n m�t ....") 
Msg2Player("��nh b�i l�i quy�t , c�u ra b� th��ng chu v�n tuy�n . ") 
i = random(0,99) 
if (i < 33) then 
NewWorld(41, 1951, 2989) 
elseif (i < 67) then 
NewWorld(41, 1685, 3268) 
else 
NewWorld(41, 1788, 3085) 
end 
end 
end 
