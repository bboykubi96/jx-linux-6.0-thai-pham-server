-- script viet hoa By http://tranhba.com description: Thi�n v��ng gi�p ti�n �i�n v��ng t� # Thi�n v��ng 10 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/24 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nh�p m�n ph�i nhi�m v� c�p b�c y�u c�u 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_tw = GetTask(3); 
if (GetSeries() == 0) and (GetFaction() == "tianwang") then 
if (UTask_tw == 10*256) and (GetLevel() >= 10) then 
Say("Ng��i l� m�i gia nh�p b�n bang ��ch huynh �� �i ? mu�n th�ng l�m b�n bang ��ch th� v� tr��ng , ph�i �i <color=Red> Thi�n v��ng ��o s�n ��ng <color> b�t ���c <color=Red> ba m�u g� th�ch <color>. ng��i c� can ��m ti�p nh�n c�i n�y khi�u chi�n sao ?", 2,"���ng nhi�n l� c� . /L10_get_yes","T�i h� mu�n nhi�u h�n n�a ma luy�n m�t �o�n th�i gian /L10_get_no") 
		elseif (UTask_tw == 10*256+20) and (GetItemCount(91) >= 3 ) then				-- script viet hoa By http://tranhba.com ��Ѫʯ��Ŀ����Ϊ3
L10_prise() 
		elseif (UTask_tw > 10*256) and (UTask_tw < 10*256+50) then					-- script viet hoa By http://tranhba.com �Ѿ��ӵ�10��������δ���
Talk(1,"","��n <color=Red> Thi�n v��ng s�n ��ng <color> b�t ���c <color=Red> ba m�u g� th�ch <color> sau t�i t�m ta n�a !") 
else -- script viet hoa By http://tranhba.com  �� ho�n th�nh 10 c�p nhi�m v� , ch�a xu�t s� # thi�u t�nh ��i tho�i # 
Talk(1,"","B�n m�n huynh �� c�ng c� ��i ho�i b�o ��ch , l�o phu h�n nh�t ch�nh l� g� g�y ch� ��o h�ng ng��i ") 
end 
elseif (UTask_tw >= 70*256) then -- script viet hoa By http://tranhba.com  �� xu�t s� 
Talk(1,"","Nam t� h�n ��i tr��ng phu h�nh t�u giang h� mu�n ��nh thi�n l�p ��a , ng��i n�u l� l�m c�i g� vi ph�m ��o ngh�a chuy�n c�a t�nh l�o phu nh�t ��nh kh�ng bu�ng tha ng��i ") 
else 
Talk(1,""," l�o phu coi tr� gi�p v� m�nh ��ch n� nhi ru�t th�t , b�t lu�n c� chuy�n g� l�o phu c�ng s� h�t s�c b�o v� n�ng ") 
end 
end; 

function L10_get_yes() 
Talk(1,"","R�t t�t # ��y m�i l� nam t� h�n # ��n <color=Red> Thi�n v��ng ��o s�n ��ng <color> b�t ���c <color=Red>3 vi�n m�u g� th�ch <color> sau tr� v� n�a t�m ta !") 
	SetTask(3, 10*256+20)
AddNote(" � tr�n tr�i v��ng gi�p ti�n �i�n (201, 198) t�m v��ng t� , ti�p nh�n <color=red> m�u g� th�ch nhi�m v� <color>, ��n tr�n ��o s�n ��ng t�m 3 vi�n m�u g� th�ch ") 
Msg2Player(" � tr�n tr�i v��ng gi�p ti�n �i�n t�m v��ng t� , ti�p nh�n m�u g� th�ch nhi�m v� ��n tr�n ��o s�n ��ng t�m 3 vi�n m�u g� th�ch . ") 
end; 

function L10_get_no() 
end; 

function L10_prise() 
Talk(1,""," l�m t�t l�m # l�o phu phong ng��i v� th� v� tr��ng # sau c�n c� r�t nhi�u kh�o nghi�m ch� ng��i , ng��i mu�n ti�p t�c c� g�ng ") 
for i = 1, (GetItemCount(91)) do DelItem(91) end 
SetTask(3, 20*256) 
SetRank(44) 
add_tw(20) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
-- script viet hoa By http://tranhba.com  AddMagic(26) 
-- script viet hoa By http://tranhba.com  AddMagic(23) 
-- script viet hoa By http://tranhba.com  AddMagic(24) 
Msg2Player("Ch�c m�ng ng��i b� ��ng c�a v� th� v� tr��ng . h�c ���c Thi�n v��ng ch�y ph�p , Thi�n v��ng th��ng ph�p , Thi�n v��ng �ao ph�p . ") 
AddNote("Tr� l�i ti�n �i�n , �em 3 vi�n m�u g� th�ch giao cho v��ng t� , ho�n th�nh m�u g� th�ch nhi�m v� , b� ��ng c�a v� th� v� tr��ng ") 
end; 
