-- script viet hoa By http://tranhba.com  n�m ��c ng��i �i ���ng NPC x�ch h�t tr�i ch� t�n s�t d� 30 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_wu = GetTask(10) 
if (GetSeries() == 1) and (GetFaction() == "wudu") then 
		if (UTask_wu == 30*256+10) then		-- script viet hoa By http://tranhba.com  ���������
if (HaveItem(87) == 1) then 
Talk(2,"L30_step1","Ngu ng�c # c�i n�y m�c h��ng ��nh l� gi� ��ch ","T�nh / ch�n , c�ng kh�ng tr�ch ng��i ���c , ng��i ch�a t�ng th�y qua m�c h��ng ��nh . th�t m�c h��ng ��nh ph�i l� t�n ra s�u k�n lam quang , m� c�i n�y c�ng l� ph�t ho�ng . ") 
else 
Talk(1,"","�� cho ta t� m�nh �i b�t t�n ph�n �� n�y . ta mu�n �em h�n b�t ���c n�m ��c ��ng �� cho ��c tr�ng c�n ch�t h�n ") 
end 
		elseif (UTask_wu == 30*256+20) then		-- script viet hoa By http://tranhba.com  �������
if (HaveItem(221) == 1) then 
DelItem(221) 
L30_prise() 
else 
Talk(1,"","Nh� # m�c h��ng ��nh ph�t ra ch�nh l� lam quang . ") 
end 
elseif ((UTask_wu == 30*256) and (GetLevel() >= 30)) then -- script viet hoa By http://tranhba.com 30 c�p nhi�m v� 
Talk(4,"L30_get","B�n gi�o gi�o quy , ph�n gi�o ng��i ch�t , nh�ng l� h�t l�n n�y t�i l�n kh�c c� ng��i gan l�n v�ng v� #","Ch�ng l� c� ng��i s� t� t�m ���ng ch�t sao ? ","H� , ta t�n nhi�m nh�t ��ch m�t th�n t�n , l�i tr�m ta luy�n ��c b�o kh� � m�c h��ng ��nh � , ch�y tr�n t�i V� di s�n l�n r�i , h� # h�n cho l� c� th� ch�y tho�t ���c b�n tay c�a ta t�m sao ? ","�� tr�i ch� t�nh to�n x� tr� nh� th� n�o h�n ?") 
else -- script viet hoa By http://tranhba.com  th��ng quy ��i tho�i 
Talk(1,"","Ta kh�ng ph�i l� kh�ng tin t��ng ng��i , ch�ng qua l� m�t m�c nh�n l�n ta c�i �� ng��i k� qu�i ch�nh l� �n tr�m . b�o b�i n�y ta l� d��ng n�o ch�t v�t m�i l�y ���c ?") 
end 
else 
Talk(1,"","Ta b�nh sanh h�n nh�t nh�ng th� kia b�i t�n ngh�a kh� ��ch ti�u nh�n ") 
end 
end; 

function L30_get() 
Say("Ta b�y gi� cho ng��i m�t c� h�i l�p c�ng , �i V� di s�n th��ng b�t ���c c�i n�y ph�n t�c , �o�t l�i m�c h��ng ��nh . ng��i c� nguy�n � hay kh�ng �i a ? ",2,"Nguy�n v� �� tr�i ch� hi�u m�nh /L30_get_yes","Thu�c h� c�ng l�c c�n ch�a �� �� , ch� lo l�ng kh�ng th� ho�n th�nh nhi�m v� . /L30_get_no") 
end; 

function L30_get_yes() 
Talk(1, "","N�u nh� ng��i c� th� �o�t l�i m�c h��ng ��nh , ta li�n th�ng ng��i v� b�ng t�i Di�m La ") 
	SetTask(10,30*256+10)
AddNote(" l�n n�a th��ng V� di s�n �o�t l�i m�c h��ng ��nh ") 
Msg2Player(" l�n n�a th��ng V� di s�n �o�t l�i m�c h��ng ��nh ") 
end; 

function L30_get_no() 
end; 

function L30_step1() 
Talk(1,""," l� , thu�c h� c�i n�y �i �o�t l�i th�t m�c h��ng ��nh t�i ") 
	SetTask(10,30*256+20)
DelItem(87) 
AddNote("Tr�/mang l�n V� di s�n �o�t l�i th�t m�c h��ng ��nh ") 
Msg2Player("Tr�/mang l�n V� di s�n �o�t l�i th�t m�c h��ng ��nh ") 
end; 

function L30_prise() 
Talk(2,"","M�c h��ng ��nh # h�o # h�o # ta lu�n lu�n th��ng ph�t ph�n minh , ng��i l�n n�y l�p c�ng l�n , t� h�m nay tr� �i , ta li�n th�ng ng��i l�m g�c d�y ��ch b�ng t�i Di�m La . ","�a t� �� tr�i ch� #") 
SetTask(10,40*256) 
SetRank(52) 
-- script viet hoa By http://tranhba.com  AddMagic(68) 
-- script viet hoa By http://tranhba.com  AddMagic(384) 
-- script viet hoa By http://tranhba.com  AddMagic(64) 
-- script viet hoa By http://tranhba.com  AddMagic(69) 
add_wu(40) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
Msg2Player("Ch�c m�ng ng��i th�ng l�m b�ng t�i Di�m La . h�c ���c v� c�ng # u minh kh� l�u # v� h�nh c� # x�ch vi�m th�c ng�y ") 
AddNote("�o�t ���c m�c h��ng ��nh mang v� cho t�n s�t d� , th�ng l�m b�ng t�i Di�m La ") 
end; 
