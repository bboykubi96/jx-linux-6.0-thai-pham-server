-- script viet hoa By http://tranhba.com  chi�n ��u _ v�n kh�ng t� .lua chi�n ��u v�n kh�ng t� t� vong ch�n v�n 
-- script viet hoa By http://tranhba.com  By: Xiao_Yang(2004-04-29) 

function OnDeath() 
if (GetTask(124) == 35) then 
AddEventItem(387) 
SetTask(124,40) 
Talk(1,"","Ng��i th�t �c ��c ! ") 
Msg2Player("Ng��i ��nh b�i v�n kh�ng t� , l�c so�t ng��i t�m ���c �m d��ng c��i k� ��c ��ch gi�i d��c ") 
SetFightState(0) 
NewWorld(185,1612,3204) 
end 
end 
