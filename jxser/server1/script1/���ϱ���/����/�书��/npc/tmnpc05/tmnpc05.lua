-- script viet hoa By http://tranhba.com description: ���ng m�n ���ng h�c 10 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/10 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nh�p m�n ph�i nhi�m v� c�p b�c y�u c�u 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-24), gia nh�p tr� l�i m�n ph�i nhi�m v� 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-21) l�n n�a thi�t k� tr� l�i m�n ph�i c�ng tr�n ph�i tuy�t h�c t��ng quan # h�y b� c�ng n�y ch�n h�nh d�ng c� quan b� ph�n # 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_tm = GetTask(2); 
Uworld51 = GetTask(51) 
if (Uworld51 == 40) then -- script viet hoa By http://tranhba.com  r�a s�ch oan khu�t nhi�m v� ti�n h�nh trung 
Talk(6,"Uworld51_50","Ng��i ngh� gi�p m�t tr�n , ta �� bi�t .","T�i sao ���ng th� ch��ng m�n ��i v�i m�t tr�n c�ng t� c� th�nh ki�n ? th�t l� x�u ��u l� m�nh ru�t th�t x��ng th�t ","M�t tr�n nhi�u l�n mu�n thay ��i gia quy , �� cho ch��ng m�n kh�ng vui , l�i t�ng th�m b�t nhi�m mu�n tranh quy�n , th�ch � ch��ng m�n tr��c m�t n�i m�t tr�n ��ch n�i x�u ","Th� ra l� Thi�u L�m cao t�ng g�p n�n c�ng kim qu�c c� li�n quan , kim qu�c lu�n l� �em Thi�u L�m coi l� c�i �inh trong m�t . m�y ng�y tr��c , ta nh�n ���c th�ng b�o , n�i ng�y nh�n d�y b� m�t thu t�p Trung Nguy�n ��ch tuy�t h�c b� k�p .","C� chuy�n n�y ? ng�y �� nh�n d�y l� b� ho�i nghi nhi�u nh�t ","��i v�i , ta mu�n l�u l�i , cho ng��i th�m th�nh tin t�c .") 
elseif (GetFaction() == "tangmen") and (GetSeries() == 1) then 
		if (UTask_tm == 10*256+80) and (HaveItem(36) == 1) then		-- script viet hoa By http://tranhba.com 10���������
L10_prise() 
elseif (UTask_tm == 10*256) and (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com 10 c�p nhi�m v� kh�i ��ng 
-- script viet hoa By http://tranhba.com  DelItem(36) -- script viet hoa By http://tranhba.com  ph�ng ng�a n�ng ti�p nh�n v� sau , nh� ch�i nh�t l�n nhi�m v� ��o c� 
Say("H�m qua b�n t�a �� t� � <color=Red> th�nh �� ph� <color> l�m vi�c ��ch th�i �i�m , kh�ng c�n th�n b� b�i tay tr�m �i b�n m�n ��ch ��c m�n �m kh� <color=Red> ma m�a ch�m <color>, chuy�n n�y �� cho ch��ng m�n ��i ph�t l�i ��nh , n�u ai c� th� gi�p b�n t�a t�m v� ma m�a ch�m , b�n t�a n�ng n� c� th��ng ! ", 2,"Tr� gi�p t�m ki�m /L10_get_yes","Kh�ng li�n quan chuy�n ta !/L10_get_no") 
elseif (UTask_tm > 10*256) and (UTask_tm < 20*256) then -- script viet hoa By http://tranhba.com  �� nh�n ���c 10 c�p nhi�m v� , ch�a ho�n th�nh 
Talk(1,"","<color=Red> ma m�a ch�m <color> l� � <color=Red> th�nh �� ph� <color> m�t ��ch , ng��i c� th� t�i tr��c trong th�nh �m th�m h�i th�m m�t phen . ��ng r�i , ng��i c�n kh�ng c� ra m�t <color=Red> ma m�a ch�m <color> �i ? n� l� m�t lo�i gi�ng v�n tu gi�ng nhau ch�m nh� , to�n th�n �en nh�nh .") 
elseif (UTask_tm >= 20*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 10 c�p nhi�m v� , ch�a xu�t s� 
Talk(1,"","Ng��i th�t l� c� b�n l�nh , c� th� gi�p b�n ���ng t�m v� ma m�a ch�m , ch� c�n ng��i m�nh kh�e t� tr� n�n , t��ng lai nh�t ��nh ti�n �� v� l��ng ") 
else 
Talk(1,"","Hai v� c�ng t� b�t h�a , m�c d� kh�ng n�i , nh�ng l� , chuy�n n�y kh�ng x� l� t�t , nh�t ��nh s� c� h�u ho�n , kh�ng bi�t ch��ng m�n l�m h� t�nh to�n ?") 
end 
else -- script viet hoa By http://tranhba.com  b�nh th��ng ��i tho�i 
Talk(1,"","B�n m�n m�c d� l�y �m kh� t�n nghe th�y giang h� , nh�ng l� b�n v� ��n v� c�ng , c�ng quy�t kh�ng s� t�n v�i k� tha m�n ph�i .") 
end 
end; 

function L10_get_yes() 
Talk(1,"","<color=Red> ma m�a ch�m <color> l� � <color=Red> th�nh �� ph� <color> m�t ��ch , ng��i c� th� t�i tr��c trong th�nh �m th�m h�i th�m m�t phen . ��ng r�i , ng��i c�n kh�ng c� ra m�t <color=Red> ma m�a ch�m <color> �i ? n� l� m�t lo�i gi�ng v�n tu gi�ng nhau ch�m nh� , to�n th�n �en nh�nh .") 
	SetTask(2, 10*256+20)
AddNote(" � v� c�ng ph�ng g�p ph�i ���ng h�c , ti�p nh�n v� <color=Red> �i th�nh �� t�m ma m�a ch�m .<color> ") 
Msg2Player("Nh�n ma m�a ch�m nhi�m v� , �i th�nh �� t�m ma m�a ch�m ") 
end; 

function refuse() 
Talk(1,"","B�n m�n �m kh� m�t , ng��i l�m sao c� th� n�i chuy�n kh�ng li�n quan ng��i ��y ?") 
end; 

function L10_prise() 
Talk(1,"","Ng��i qu� nhi�n c� ch�t b�n l�nh , c� th� gi�p b�n t�a t�m v� ma m�a ch�m , h�o , b�n t�a s� d�y ng��i m�y chi�u , nh�n k� ! ") 
DelItem(36) 
SetRank(26) 
SetTask(2, 20*256) 
-- script viet hoa By http://tranhba.com  AddMagic(43) 
-- script viet hoa By http://tranhba.com  AddMagic(347) 
add_tm(20) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
AddNote("Tr� v� v� c�ng ph�ng , ��ng ma m�a ch�m cho ���ng h�c , ho�n th�nh nhi�m v� , th�ng l�m tr�ng �inh . ") 
Msg2Player("��ng ma m�a ch�m , t�m ���c ���ng h�c , ho�n th�nh ma m�a ch�m nhi�m v� , th�ng l�m ���ng m�n tr�ng �inh , h�c ���c ���ng m�n �m kh� , ��a di�m h�a . ") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - th� gi�i nhi�m v� -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function Uworld51_50() 
SetTask(51,50) 
Msg2Player("���ng h�c suy �o�n , chuy�n n�y c�ng ng�y nh�n d�y c� li�n quan , cho ng��i �i d� x�t tin t�c . ") 
end 
