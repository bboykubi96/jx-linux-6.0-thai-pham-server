-- script viet hoa By http://tranhba.com  Thi�u L�m ng��i �i ���ng NPC huy�n t� 50 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-04) 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_sl = GetTask(7) 
if (GetSeries() == 0) and (GetFaction() == "shaolin") then 
		if ((UTask_sl == 50*256+30) and (HaveItem(28) == 1)) then		-- script viet hoa By http://tranhba.com  50�����������
L50_prise() 
elseif ((UTask_sl == 50*256) and (GetLevel() >= 50)) then -- script viet hoa By http://tranhba.com 50 c�p nhi�m v� kh�i ��ng 
Talk(2,"L50_get","#�# d�ch c�t tr�i qua ### D�ch c�n kinh # c�ng # T�y T�y Kinh # c�ng x�ng � Thi�u L�m tam kinh � , t��ng truy�n v� ��t Ma t� s� s� tr� , ghi l�i b�n ph�i ��ch v� h�c tinh t�y . n�m �� qu�n Kim xu�i nam , �� tr�nh Thi�u L�m b�o c�p r�i v�o tay ��ch , h�t ho�ng trong , b�n t�a ��ch �� t� r�ng xa �em tam kinh gi�u � t� sau ��ch t�ng l�m trong , chi�n h�a trung , r�ng xa v� b�o v� t�ng kinh c�c m� ch�t , chuy�n sau ch�ng �� t� � t�ng trong r�ng ch� t�m ���c # D�ch c�n kinh # c�ng # T�y T�y Kinh # , m� # d�ch c�t tr�i qua # l�m th� n�o c�ng t�m kh�ng ���c .") 
-- script viet hoa By http://tranhba.com 		elseif (UTask_sl == 70*256+10) then			-- script viet hoa By http://tranhba.com  �ط������������
-- script viet hoa By http://tranhba.com  Say("Huy�n t� # m��i ��nh t�ng m�o ng��i thu t�p �� sao ? ",2,"�� chu�n b� xong /return_completed","Xin/m�i ��i th�m m�t �o�n th�i gian /return_sele_no") 
-- script viet hoa By http://tranhba.com  elseif (UTask_sl == 70) then -- script viet hoa By http://tranhba.com  tr� l�i m�n ph�i nhi�m v� 
-- script viet hoa By http://tranhba.com  Talk(1,"return_sele","Nh� ch�i # s� ph� , ta xu�t s� c�n c� th� m��n xem trong t�ng kinh c�c ��ch b� s�ch sao ? ") 
else -- script viet hoa By http://tranhba.com  th��ng quy ��i tho�i 
Talk(1,"","V�n t� b�o �i�n c� t�ch r�t nhi�u , kim qu�c d�m ng� �� l�u .") 
end 
else 
Talk(1,"","T�ng kinh c�c c�n l� ph�p ���ng , l� cao t�ng n�i tr�i qua n�i ph�p ��ch ��a ph��ng , t�ng kinh c�c c� r�t nhi�u kinh ph�t , r�t nhi�u tuy�t b�n tr�n ph�m .") 
end 
end; 

function L50_get() 
Say("N�u nh� d�ch c�t tr�i qua th�t b� ch�ng ta �� t� l�y n�m , th�t l� m�t th� di�n ",2,"Tr� gi�p /L50_get_yes","Ta kh�ng quan t�m !/L50_get_no") 
end 

function L50_get_yes() 
	SetTask(7,50*256+10)
AddNote("Nh�n Thi�u L�m t�m tr�i qua nhi�m v� # t�m ���c b� t�n phong ��ch d�ch c�t tr�i qua . ") 
Msg2Player("Nh�n Thi�u L�m t�m tr�i qua nhi�m v� # t�m ���c b� t�n phong ��ch d�ch c�t tr�i qua . ") 
end; 

function L50_get_no() 
end; 

function L50_prise() 
Talk(1,"","C�i n�y th�t l� d�ch c�t tr�i qua , th�t l� th�t t�t qu� ....") 
SetTask(7,60*256) 
DelItem(28) 
SetRank(6) 
-- script viet hoa By http://tranhba.com  AddMagic(271) 
-- script viet hoa By http://tranhba.com  AddMagic(11) 
-- script viet hoa By http://tranhba.com  AddMagic(19) 
add_sl(60) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
AddNote("T�m ���c d�ch c�t tr�i qua , ho�n th�nh nhi�m v� , th�ng c�p l�m ph�c ma Thi�n v��ng . ") 
Msg2Player("Ch�c m�ng ng��i th�ng c�p l�m ph�c ma Thi�n v��ng , h�c ���c long tr�o h� m�ng con r�a xanh bi�c h�p , s�/ch� h�c v� l��ng . ") 
end; 
