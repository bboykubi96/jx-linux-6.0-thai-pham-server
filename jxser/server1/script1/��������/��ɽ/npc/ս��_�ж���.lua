-- script viet hoa By http://tranhba.com  \script\ t�y b�c nam khu \ Hoa S�n \npc\ chi�n ��u _ kim qu�c t��ng l�nh b�y ng��i h�n .lua 
-- script viet hoa By http://tranhba.com  by xiaoyang (2004\4\15) Thi�u L�m 90 c�p nhi�m v� 

function OnDeath() 
Uworld122 = GetTask(122) 
if (Uworld122 == 55) then -- script viet hoa By http://tranhba.com  tr�ng th�i trung , n�i n�y kh�ng ki�m tra l�nh b�i 
Talk(1,"","Ng��i l�i h� kim qu�c ��ch ��i s� , kim ch� nh�t ��nh s� kh�ng b� qua ng��i !") 
SetTask(122,60) -- script viet hoa By http://tranhba.com  thi�t tr� nhi�m v� thay ��i l��ng v� 60 
Msg2Player("Gi�t kim qu�c t��ng l�nh b�y ng��i h�n , tr�c ti�p ��n doanh tr�i c�u th��ng tr�m d�m c�ng qu� ��ch phong ") 
AddNote("Gi�t kim qu�c t��ng l�nh b�y ng��i h�n , tr�c ti�p ��n doanh tr�i c�u th��ng tr�m d�m c�ng qu� ��ch phong . ") 
end 
end 
