-- script viet hoa By http://tranhba.com description: tay m�i th�n _ c�t gia 
-- script viet hoa By http://tranhba.com author: wangzg 
-- script viet hoa By http://tranhba.com date: 2003/7/21 
-- script viet hoa By http://tranhba.com update 2003/7/24 yuanlan 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-07) 

function main() 
UTask_world42=GetTask(70) 
if (UTask_world42==2) then 
Talk(2, "step1","Ta c� th� h��ng ng��i m��n s�ch nh�n sao ?","H� , ta xem ng��i l� th�n b�c ��ch L� l�o ��u ph�i t�i ��ch �i . �� s�m �� n�i v�i h�n , mu�n m��n s�ch th� ph�i c�ng ta ��i , �� cho h�n d�ng # di ki�n ch� # �� ��i ta # k� th�n l�c #.") 
elseif ((UTask_world42==6) and (HaveItem(189) == 1)) then -- script viet hoa By http://tranhba.com  ��i s�ch 
Talk(2, "step3","��y l� ng��i mu�n s�ch .","Th�t t�t qu� , ��y ch�nh l� h�n mu�n s�ch .") 
elseif ((UTask_world == 8) and (HaveItem(188) == 0)) then -- script viet hoa By http://tranhba.com  s�ch m�t 
Talk(1,"","Ti�u t� , c�ng bi�t l� nh� v�y , l�m g� c�m s�ch c�a ta b� ch�y ") 
AddEventItem(188) 
Msg2Player(" l�y ���c k� th�n l�c ") 
else 
Talk(1,"","Ti�u t� , l�m ng��i kh�ng nh�t ��nh ph�i coi tr�ng t�nh c�m , c� th� n�i ra c�ng kh�ng c�n t�nh c�m !") 
end 
end; 

function step1() 
SetTask(70,4) 
AddNote("T�m ���c tr�n nam c�t nh� , h�n mu�n L� gia d�ng di ki�n ch� ��i k� th�n l�c . ") 
end; 

function step3() 
DelItem(189) 
AddEventItem(188) 
SetTask(70,8) 
AddNote(" � c�t nh� , d�ng di ki�n ch� ��i k� th�n l�c ") 
Msg2Player("D�ng di ki�n ch� ��i k� th�n l�c ") 
end; 
