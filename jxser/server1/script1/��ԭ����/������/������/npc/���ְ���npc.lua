-- script viet hoa By http://tranhba.com  ph�i Thi�u l�m tr� gi�p NPC 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-12-01) 

function main(sel) 
UTask_sl = GetTask(7) 
player_faction = GetFaction() 
if (player_faction == "shaolin") then -- script viet hoa By http://tranhba.com  �� t� b�n m�n 
RestoreLife() -- script viet hoa By http://tranhba.com  b�n m�n mi�n ph� tr� li�u 
RestoreMana() 
RestoreStamina() 
Say("V�n t� c� ng�n n�m l�ch s� , li�n quan t�i v� ngh� ph��ng di�n chuy�n , c� th� �i t�m ph��ng tr��ng ho�c l� c�c v� th� t�a h�i m�t ch�t , nh�ng v�n �� kh�c c� th� h�i ta .",4,"Hi�u r� b�n m�n �i�n c� /faction","Hi�u r� c�c v� t�n tr��ng /member","Hi�u r� nhi�m v� /task_get","Kh�ng h�i !/nothing") 
elseif (UTask_sl >= 70*256) then -- script viet hoa By http://tranhba.com  b�n m�n xu�t s� 
Say("��u ti�n ng��i t� m�c nh�n h�ng ��n La h�n tr�n , mau �i xem m�t ch�t c�c v� s� �� �i .",4,"Nh� l�i b�n m�n chuy�n tr��c kia /faction","Nh� l�i tr��c kia ��o h�u /member","Ta c�n c� th� gi�p g�p c�i g� sao ? /task_get","Kh�ng h�i !/nothing") 
elseif (player_faction ~= "") then -- script viet hoa By http://tranhba.com  kh�ng ph�i l� b�n m�n xu�t s� # k� tha m�n ph�i # m�n ph�i kh�ng v� v� �ch t�c ch� kh�ng ph�i l� tay m�i # 
Say("Hoan ngh�nh t�i Thi�u L�m ! c�c v� c� th� m�nh du ngo�n , c� c�i g� v�n �� li�n h�i l�o n�p .",3,"Hi�u r� qu� ph�i /faction","Hi�u r� c�c v� ��o tr��ng /member","Kh�ng h�i !/nothing") 
else -- script viet hoa By http://tranhba.com  tay m�i 
Say("Hoan ngh�nh t�i Thi�u L�m , kh�ng hi�u l� t�i b�i s� c�n l� b�i ph�t ��y ?",4,"Hi�u r� qu� ph�i /faction","Hi�u r� c�c v� ��o tr��ng /member","Hi�u r� nh�p m�n �i�u ki�n /task_get","Kh�ng h�i !/nothing") 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - m�n ph�i gi�i thi�u b� ph�n -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function faction() 
Say("Ng��i ngh� bi�t Thi�u L�m ph��ng di�n n�o ?",5,"M�n ph�i kh�i nguy�n /F1","V� tr� ��a l� /F2","Giang h� ��a v� /F3","M�n ph�i ��c s�c /F4","Kh�ng h�i !/nothing") 
end 

function F1() 
Say("Thi�u l�m t� khai s�ng v�i b�c ng�y hi�u v�n �� qu� c�ng m��i ch�n n�m # c�ng nguy�n b�n n�m ch�n m��i l�m # . l�c �y , Thi�n tr�c t�ng ng��i b�t �� t� T�y V�c �i t�i Trung Nguy�n , l�y ���c ki�n tin ph�t h�c hi�u v�n �� ��ch l� k�nh . b�t �� th�y tung s�n r�t gi�ng m�t ��a hoa sen , li�n c� � � # hoa # trung l�p t� , hi�u v�n �� to�i � thi�u th�t s�n ki�n t�o Thi�u l�m t� cung d��ng b�t �� . sau �� l�i qu� h�n ba m��i n�m , nam thi�n tr�c t�ng nh�n b� �� ��t Ma �i t�i Thi�u l�m t� , nghi�m La �� t� , truy�n th� thi�n t�ng , tr� th�nh Trung qu�c Ph�t gi�o thi�n t�ng khai s�n t� s� ",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function F2() 
Say("V�n t� t�a l�c t�i H� Nam tung s�n , tung S�n ��ng b�n l� qu� k� s�n , ph�a t�y l� thi�u k� s�n , m�i b�n c� 16 ��nh '.",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function F3() 
Say("B�n ph�i t� x�a ���c g�i l� v� l�m m�n ph�i th� nh�t , l� trong ch�n v� l�m nguy�n ��ch th�i s�n b�c ��u . Thi�u l�m t� to�i d�ng v� n�i ti�ng h�u th� . sau �� h�n l�y � Thi�u L�m b�y m��i hai tuy�t k� � danh vang r�n thi�n h� ",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function F4() 
Say("Ph�i Thi�u l�m c� t�ng kinh b�i ph�t c�ng luy�n v� c�ng n�ng ��ch truy�n th�ng , �� t� trong m�n v� c�ng cao c��ng , gi�u c� ch�nh ngh�a c�m . .",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - th�nh vi�n gi�i thi�u b� ph�n -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function member() 
Say("Ng�i mu�n bi�t v�n t� v�n �� g� ? ",9,"Ph��ng tr��ng huy�n b�i v� ��i s� /M01","��t ma vi�n th� t�a huy�n bi /M02","B�n nh��c ���ng th� t�a huy�n gi�c /M03","T�ng kinh c�c th� t�a huy�n t� /M04"," La H�n ���ng th� t�a huy�n kh� kh�n /M05","R�ng m�c /M101","R�ng ti�t /M102","R�ng vi /M103","Kh�ng h�i !/nothing") 
end 

function M01() 
Say("Ph��ng tr��ng huy�n b�i v� ��i s� v� tr� # ph��ng tr��ng thi�n ph�ng t�a �� : 230,184<enter> ��ng s�t thu ch�t n�o , v� c�ng tr� kh�n , nh�ng l�m ng��i th�m t�ng b�t l� , cao th�m kh� l��ng ",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function M02() 
Say("��t Ma ���ng th� t�a huy�n bi v� tr� # ��t Ma ���ng t�a �� : 210,188<enter> l�m ng��i thi�t di�n v� t� , ch�p ph�p nghi�m minh , nh�ng c� l�c d�y con c��ng h�a , kh�ng bi�t bi�n th�ng ",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function M03() 
Say("B�n nh��c ���ng th� t�a huy�n gi�c v� tr� # ph�ng sanh h� t�a �� : 220,193<enter> gh�t �c nh� th� , t�nh n�ng nh� l�a , kh�ng kh�i h�o ph�ng , c� hi�p kh�ch kh� ",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function M04() 
Say("T�ng kinh c�c th� t�a huy�n t� v� tr� # t�ng kinh c�c t�a �� : 218,190<enter> b�o h�c kinh th� , g�p chuy�n li�n d�n tr�i qua theo �i�n , s�ch ng�c t� m�t , l�m ng��i t�nh t�nh theo c�ng , kh�ng th�ch c�ng ng��i tranh ��u , m�i vi�c l�y nh�n nh�n l�m ��u , c� l�c l� ra v� c�ng vu h� ",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function M05() 
Say(" La H�n ���ng th� t�a huy�n kh� kh�n v� tr� # La H�n ���ng t�a �� : 201,192<enter> m�n h� quan ni�m n�ng , l�m ng��i t�m cao kh� ng�o , l�ng h�o th�ng m�nh , c�ng ��t ma vi�n b�t h�a , lu�n mu�n m�t tranh cao th�p . ",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function M101() 
Say("R�ng m�c v� tr� # qu�ng tr��ng t�a �� : 211,196 ph� tr�ch # giao d�ch binh kh� ",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function M102() 
Say("R�ng ti�t v� tr� # qu�ng tr��ng t�a �� : 209,194 ph� tr�ch # giao d�ch trang b� ",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function M103() 
Say("R�ng vi v� tr� # qu�ng tr��ng t�a �� : 208,195 ph� tr�ch # giao d�ch thu�c men ",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - nhi�m v� gi�i thi�u b� ph�n -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function task_get() 
UTask_sl = GetTask(7) 
if (UTask_sl < 10*256) then -- script viet hoa By http://tranhba.com  kh�ng/ch�a v�o c�a 
Say("Ng��i c�n ch�a nh�p m�n , mu�n nh�p m�n , �i tay m�i th�n th�y ti�p d�n �� t� ",4,"Ti�p t�c m� tr��c m�t nhi�m v� /T_enroll","Hi�u r� nh�ng nhi�m v� kh�c /T_all","Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
elseif (UTask_sl >= 10*256) and (UTask_sl < 20*256) then 
Say("Ng��i tr��c m�t ti�n h�nh ��ch nhi�m v� v� m�c nh�n h�ng ",4,"Ti�p t�c m� tr��c m�t nhi�m v� /T_L10","Hi�u r� nh�ng nhi�m v� kh�c /T_all","Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
elseif (UTask_sl >= 20*256) and (UTask_sl < 30*256) then 
Say("Ng��i tr��c m�t ti�n h�nh ��ch nhi�m v� v� r�t ng��i ",4,"Ti�p t�c m� tr��c m�t nhi�m v� /T_L20","Hi�u r� nh�ng nhi�m v� kh�c /T_all","Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
elseif (UTask_sl >= 30*256) and (UTask_sl < 40*256) then 
Say("Ng��i tr��c m�t ti�n h�nh ��ch nhi�m v� v� th�p l�m bu�ng l�ng ",4,"Ti�p t�c m� tr��c m�t nhi�m v� /T_L30","Hi�u r� nh�ng nhi�m v� kh�c /T_all","Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
elseif (UTask_sl >= 40*256) and (UTask_sl < 50*256) then 
Say("Ng��i tr��c m�t ti�n h�nh ��ch nhi�m v� v� t�ch di�t hai t�ng ",4,"Ti�p t�c m� tr��c m�t nhi�m v� /T_L40","Hi�u r� nh�ng nhi�m v� kh�c /T_all","Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
elseif (UTask_sl >= 50*256) and (UTask_sl < 60*256) then 
Say("Ng��i tr��c m�t ti�n h�nh ��ch nhi�m v� v� d�ch c�t tr�i qua ",4,"Ti�p t�c m� tr��c m�t nhi�m v� /T_L50","Hi�u r� nh�ng nhi�m v� kh�c /T_all","Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
elseif (UTask_sl >= 60*256) and (UTask_sl < 70*256) then 
Say("Ng��i tr��c m�t ti�n h�nh ��ch nhi�m v� v� La h�n tr�n ,",4,"Ti�p t�c m� tr��c m�t nhi�m v� /T_L60","Hi�u r� nh�ng nhi�m v� kh�c /T_all","Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
elseif (UTask_sl >= 70*256) and (UTask_sl < 80*256) then 
Say("Ng��i tr��c m�t ti�n h�nh ��ch nhi�m v� l�m tr�ng ph�n s� m�n ",4,"Ti�p t�c m� tr��c m�t nhi�m v� /T_return","Hi�u r� nh�ng nhi�m v� kh�c /T_all","Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
else 
Say("Ng��i c� th� t� do xu�t nh�p m�n ph�i , t�m th�i kh�ng c� t�m nhi�m v� ",3,"Hi�u r� nh�ng nhi�m v� kh�c /T_all","Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 
end 

function T_all() 
Say("Mu�n bi�t nhi�m v� g?",10,"Nh�p m�n nhi�m v� /T_enroll","Nhi�m v� m�c nh�n h�ng /T_L10","Nhi�m v� r�t ng��i /T_L20","Nhi�m v� th�p l�m bu�ng l�ng /T_L30","Nhi�m v� t�ch di�t hai t�ng /T_L40","Nhi�m v� d�ch c�t tr�i qua /T_L50","Nhi�m v� La h�n tr�n /T_L60","Nhi�m v� tr� l�i s� m�n /T_return","Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function T_enroll() 
Talk(1,"t_all","Mu�n nh�p m�n h�c ngh� , ch� c�n ch�c kim h� , ��t t�i 10 c�p . �i c�ng ti�p d�n �� t� ��i tho�i l� ���c . sau khi nh�p m�n , theo th� t� ho�n th�nh m�n ph�i nhi�m v� , �em h�c ���c v� c�ng , b� ��ng c�a danh hi�u . ho�n th�nh xu�t s� nhi�m v� sau , l� c� th� xu�t s� . ") 
end 

function T_L10() 
Talk(4,"t_all","Nh�p m�n c�ng ��t t�i 10 c�p sau , c� th� ti�p nh�n v� m�c nh�n h�ng . ho�n th�nh n�y nhi�m v� , ng��i �em th�ng l�m h� vi�n v� t�ng , h�c ���c v� c�ng Thi�u L�m quy�n ph�p , Thi�u L�m c�n ph�p , Thi�u L�m �ao ph�p .","Th� 1 b��c : ��n thi�n ph�ng vu�ng tr��ng , ti�p nh�n v� m�c nh�n h�ng , �i l�y kim li�n hoa .","Th� 2 b��c : # ti�n v�o m�c nh�n h�ng , ��nh b�i m�c nh�n , �em c� 30% c� h�i b�t ���c kim li�n hoa .","Th� 3 b��c : tr� v� thi�n ph�ng ��ng kim li�n hoa cho huy�n b�i v� ph��ng tr��ng , ho�n th�nh nhi�m v� ") 
end 

function T_L20() 
Talk(4,"t_all","Ho�n th�nh nhi�m v� m�c nh�n h�ng c�ng ��t t�i c�p b�c 20, ng��i c� th� ti�p nh�n v� r�t ng��i . ho�n th�nh n�y nhi�m v� , ng��i �em th�ng l�m h� c�m kim c��ng , h�c ���c v� c�ng b�t ��ng minh v��ng ","Th� 1 b��c : t�i ma ���ng th�y huy�n bi , ti�p nh�n v� , �i ph�c b� t�y s�n d�y d� 5 c� r�t ng��i .","Th� 2 b��c : ��n ph�c b� t�y s�n , theo th� t� ��nh b�i 5 c� r�t ng��i .","Th� 3 b��c : tr� v� ��t Ma ���ng , th�y huy�n bi ph�c m�nh , ho�n th�nh nhi�m v� ") 
end 

function T_L30() 
Talk(5,"t_all","Ho�n th�nh nhi�m v� r�t ng��i c�ng ��t t�i c�p b�c 30, ng��i c� th� ti�p nh�n v� th�p l�m bu�ng l�ng . ho�n th�nh n�y nhi�m v� , ng��i �em th�ng l�m h� ph�p La H�n , h�c ���c v� c�ng La h�n tr�n ","Th� 1 b��c : ��n ph�ng sanh h� th�y huy�n gi�c , ti�p nh�n v� , ��n th�p l�m ��nh b�i h�nh tung qu� b� ng��i c�a .","Th� 2 b��c : ��n th�p l�m , ��nh b�i b�n h� , ph�t hi�n b�n h� l� kim qu�c gi�n �i�p , b�n h� ��ng ��ng ��nh c�p B�n nh��c ba la m�t nghi ng� tr�i qua , ch�y v�o Kim quang ��ng .","Th� 3 b��c : ��n Kim quang ��ng , ��nh b�i kim qu�c gi�n �i�p , �o�t l�i B�n nh��c ba la m�t nghi ng� tr�i qua h'.","Th� 4 b��c : tr� v� ph�ng sanh h� , ��ng B�n nh��c ba la m�t nghi ng� tr�i qua cho huy�n gi�c , ho�n th�nh nhi�m v� ") 
end 

function T_L40() 
Talk(6,"t_all","Ho�n th�nh nhi�m v� th�p l�m bu�ng l�ng c�ng ��t t�i c�p b�c 40, ng��i c� th� ti�p nh�n v� t�ch di�t hai t�ng . ho�n th�nh n�y nhi�m v� , ng��i �em th�ng l�m truy�n tr�i qua La H�n , h�c ���c v� c�ng s� t� h�ng ","Th� 1 b��c : ��n ph��ng tr��ng thi�n ph�ng th�y huy�n b�i v� ph��ng tr��ng , ti�p nh�n v� , t�m t�ch di�t hai t�ng th�nh gi�o chuy�n thi�n h� ","Th� 2 b��c : ��n ph�a sau n�i m�t th�t tr� l�i ch�nh x�c v�n �� ti�n v�o m�t th�t .","Th� 3 b��c : ��nh b�i trong m�t th�t ��ch ��ng nh�n , c� th� m� c�a , bi�t kh�u quy�t c�ng hai t�ng n�i chuy�n .","Th� 4 b��c : ��n m�t th�t cu�i c�ng tr��c c�a , ch�nh x�c h�c kh�u quy�t , th�nh gi�o chuy�n thi�n h� .","Th� 5 b��c : tr� v� ph��ng tr��ng thi�n ph�ng , nh�n nh� hai t�ng n�i cho ph��ng tr��ng nghe , ho�n th�nh nhi�m v� . n�u nh� qu�n , c� th� t�i th�nh gi�o ta .") 
end 

function T_L50() 
Talk(6,"t_all","Ho�n th�nh nhi�m v� t�ch di�t hai t�ng c�ng ��t t�i c�p b�c 50, ng��i c� th� ti�p nh�n v� d�ch c�t tr�i qua . ho�n th�nh n�y nhi�m v� , ng��i �em th�ng l�m ph�c ma Thi�n v��ng , h�c ���c v� c�ng s�/ch� h�c v� l��ng , long tr�o h� m�ng ","Th� 1 b��c : ��n t�ng kinh c�c th�y huy�n t� ti�p nh�n v� , t�m r�ng xa li�u m�ng b�t ���c ' d�ch c�t tr�i qua ' � t�ng kinh c�c .","Th� 2 b��c : ��n ��n luy�n c�ng khu c�ng ti�u h�a th��ng r�ng t�m ��i tho�i , bi�t c� th� d�ng m�t con g� n��ng �� cho r�ng l�ng n�i ra r�ng xa ��ch b� m�t .","Th� 3 b��c : ��n bi�n kinh t�u l�u mua g� n��ng , sau �� tr� v� t�m r�ng trong l�ng bi�t ��o b� m�t .","Th� 4 b��c : c�n c� r�ng t�m theo nh� l�i , �i t�m trong r�ng c�y t�ng �� l�n ��u ph�a d��i , b�t ���c ' d�ch c�t tr�i qua '.","Th� 5 b��c : tr� v� t�ng kinh c�c , ��ng ' d�ch c�t tr�i qua ' cho huy�n t� ho�n th�nh nhi�m v� ") 
end 

function T_L60() 
Talk(4,"t_all","Ho�n th�nh nhi�m v� d�ch c�t tr�i qua c�ng ��t t�i c�p b�c 50, ng��i c� th� ti�p nh�n v� La h�n tr�n . ho�n th�nh n�y nhi�m v� , ng��i �em th�ng l�m v� l��ng ��i t�n , thu�n l�i xu�t s� ","Th� 1 b��c : ��n La H�n ���ng th�y huy�n kh� kh�n , ti�p nh�n v� , ti�n v�o La h�n tr�n c�m 4 m�n t�n v�t : ��c ch�u # thi�n tr��ng # c� g� # b�t vu ","Th� 2 b��c : ti�n v�o La h�n tr�n , ��nh b�i qu�i v�t , b�t ���c b�n m�n t�n v�t .","Th� 3 b��c : tr� v� La H�n ���ng , ��ng t�n v�t cho huy�n kh� kh�n , ho�n th�nh nhi�m v� ") 
end 

function T_return() 
Talk(3,"t_all","Ho�n th�nh nhi�m v� tr� l�i s� m�n , ng��i �em th�ng l�m h� ph�p tr��ng l�o , h�c ���c v� c�ng D�ch c�n kinh , nh� ng�y qua/n�a nghi�p ","Th� 1 b��c : ��t t�i 60 c�p sau , �i ph��ng tr��ng thi�n ph�ng th�y huy�n b�i v� ph��ng tr��ng , th�n th�nh tr� l�i Thi�u L�m .","Th� 2 b��c : ��ng 50000 hai , tr� l�i Thi�u L�m .") 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - k�t th�c -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function nothing() 
end 
