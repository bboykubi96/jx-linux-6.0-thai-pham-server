-- script viet hoa By http://tranhba.com  Ng� ��c gi�o tr� gi�p NPC 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-12-06) 

function main(sel) 
UTask_wu = GetTask(10) 
player_faction = GetFaction() 
if (player_faction == "shaolin") then -- script viet hoa By http://tranhba.com  �� t� b�n m�n 
RestoreLife() -- script viet hoa By http://tranhba.com  b�n m�n mi�n ph� tr� li�u 
RestoreMana() 
RestoreStamina() 
Say(" � b�n gi�o n�u l� m�t ng�y kh�ng luy�n c�ng li�n s�ng kh�ng n�i . ng��i ��n c�i n�y t�m ta c� chuy�n g� ?",4,"Hi�u r� b�n gi�o s� v� /faction","Hi�u r� c�c v� huynh tr��ng /member","Hi�u r� nhi�m v� /task_get","Kh�ng h�i !/nothing") 
elseif (UTask_wu >= 70*256) then -- script viet hoa By http://tranhba.com  b�n m�n xu�t s� 
Say("T� b�n gi�o �i ra ngo�i ng��i c�a c� r�t �t tr� v� , ng��i l�n n�y tr� v� c� chuy�n g� ?",4,"Nh� l�i h� b�n m�n ��ch chuy�n c� /faction","Xem m�t ch�t tr��c kia ��o h�u /member","C� c�i g� ta c� th� tr� gi�p ��ch /task_get","Kh�ng h�i !/nothing") 
elseif (player_faction ~= "") then -- script viet hoa By http://tranhba.com  kh�ng ph�i l� b�n m�n xu�t s� # k� tha m�n ph�i # m�n ph�i kh�ng v� v� �ch t�c ch� kh�ng ph�i l� tay m�i # 
Say("Ng��i c� th� m�c qu� tr�ng tr�ng ��c v�t v�o xem t�i l� k� t�i . b�n gi�o t�n tr�ng anh t�i . hoan ngh�nh �i th�m !",3,"Hi�u r� qu� ph�i /faction","Hi�u r� c�c v� ��o tr��ng /member","Kh�ng h�i !/nothing") 
else -- script viet hoa By http://tranhba.com  tay m�i 
Say("Ng��i t�i b�i ph�ng c�n l� b�i s� ? n�u nh� tr��c m�t kh�ng c� l� v�t l�i c�a ta l� kh�ng c� h�ng th� ��ch . ",4,"Hi�u r� qu� ph�i /faction","Hi�u r� c�c v� ��o tr��ng g/member","Hi�u r� nh�p m�n �i�u ki�n /task_get","Kh�ng h�i !/nothing") 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - m�n ph�i gi�i thi�u b� ph�n -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function faction() 
Say("Nh� v�y ng��i ngh� ta gi�i thi�u m�n ph�i c�i g� ?",5,"M�n ph�i kh�i nguy�n /F1","V� tr� ��a l� /F2","Giang h� ��a v� /F3","M�n ph�i ��c s�c /F4","Kh�ng h�i !/nothing") 
end 

function F1() 
Say("B�n gi�o l� m�y n�m g�n ��y th�nh l�p ��ch nh�ng l� ph�t tri�n r�t nhanh . n�i b� t� ch�c nghi�m m�t . gi�o ch� h�c m�t lang qu�n ch�nh l� Ng� ��c gi�o ��ch ng��i s�ng l�p ",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function F2() 
Say("B�n gi�o chung quanh l� 5 ng�i linh ng�n n�i , mu�n �i v�o ph�i ���c qu� tr�ng tr�ng th� luy�n . ",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function F3() 
Say("B�n gi�o ��ch t�n ch� l� ' �ch l�i quy�t ��nh ��ch h�u ', c� l�i li�n l�m , b�t k� c�i g� l� kh�ng ph�i l� ch�nh t� . Ng� ��c gi�o c�n c� m�t con ch�nh l� ' ��c t�i Ng� ��c gi�o ng��i c�a s� ch�t v� to�n th�y '.",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function F4() 
Say("B�n gi�o h�nh tung b� �n , qua m�t t�ch . ven ���ng qu�n tr� l�o b�n c�ng c� th� c� th� l� n�m ��c ��ch m�n �� , nh�y m�t li�n �em ng��i gi�t , h� th� v� h�nh . th�m ch� ��i v�i ��ng m�n c�ng l� v� t�nh ��ch . gi�o �� gi�a c�ng c� th� c� th� s� l�n nhau h� ��c . ng��i tr�ng ��c s� b� xem th��ng ",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - th�nh vi�n gi�i thi�u b� ph�n -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function member() 
Say("Mu�n m� b�n gi�o ��ch ng��i n�o ?",10,"Gi�o ch� h�c m�t lang qu�n /M01","Kim x� H��ng ch� v�n kh�ng t� /M02","X�ch h�t H��ng ch� t�n s�t d� /M03","M�c chu H��ng ch� tang ch�u /M04","Ng�n thi�m H��ng ch� b�ch o�nh o�nh /M05","Thanh ng� H��ng ch� thang b�t /M06","��c nha /M101","Gai ��c /M102","��c t�m /M103","Kh�ng h�i !/nothing") 
end 

function M01() 
Say("Gi�o ch� h�c m�t lang qu�n v� tr� : t�ng doanh # t�a �� : 220/166<enter> l� m�t l�nh ��m ng��i v� t�nh , t�m ��a s�t �� , kh�ng ai xem qua h�n c��i . ch� quan t�m nghi�n c�u c�c lo�i ��c d��c , mu�n d�ng ��c th�ng tr� v� l�m .",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function M02() 
Say("Kim x� H��ng ch� v�n kh�ng t� v� tr� : kim x� tr�i v� tr� :156/170<enter> c� ch� n�i chuy�n t�a nh� n� nh�n , khi h�n �m tr�c tr�c c��i th�i �i�m , ch�nh l� h�n mu�n gi�t ng��i th�i �i�m . cho l� tr�n ��i n�y nh�t c� vui th� chuy�n c�a t�nh ch�nh l� nh�n th�y m�t ng��i b�i v� tr�ng ��c m� v� c�ng th�ng kh� ��ch d�ng v� .",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function M03() 
Say("X�ch h�t H��ng ch� t�n s�t d� v� tr� : x�ch h�t tr�i t�a �� : 169/184<enter> tham lam th�nh t�nh , C�n L�n ph�i tuy�n ki t� th�m h�i s� ph� h� ��c ch�nh l� d�ng ti�n t�i h�i l� h�n sau n�y l�y ���c ",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function M04() 
Say("M�c chu H��ng ch� tang ch�u ",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function M05() 
Say("Ng�n thi�m H��ng ch� b�ch o�nh o�nh v� tr� # ng�n thi�m tr�i t�a �� : 220/209<enter> m�t nh� hoa ��o , t�m t�a nh� x� h�t , tr�n m�t v�nh vi�n mang theo y�u m� ��ch n� c��i , nh�ng l� h� th� so v�i ai c�ng ngoan , c�ng C�n L�n ph�i chu thi�u t��ng c�u k�t , m� ho�c ph�i V� ���ng t� Trung Nguy�n .",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function M06() 
Say("Thanh ng� H��ng ch� thang b�t v� tr� # thanh ng� tr�i t�a �� : 200/201<enter> ��c �c v� s� , n�m �� h�i ch�t th�y kh�i c�a � th�y ti�n s� gi� � y�n hi�u xinh ��p ��ch m�u th�n .",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function M101() 
Say("��c nha v� tr� t�a �� : 182/194 ph� tr�ch : binh kh� giao d�ch ",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function M102() 
Say("Gai ��c v� tr� t�a �� : 184/193 ph� tr�ch : trang b� giao d�ch ",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function M103() 
Say("��c t�m v� tr� t�a �� : 187/191 ph� tr�ch : thu�c men giao d�ch ",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - nhi�m v� gi�i thi�u b� ph�n -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function task_get() 
UTask_wu = GetTask(10) 
if (UTask_wu < 10*256) then -- script viet hoa By http://tranhba.com  kh�ng/ch�a v�o c�a 
Say("Ng��i b�y gi� c�n ch�a nh�p m�n . mu�n nh�p m�n , c� th� �i �� t� b�n m�n ti�p d�n ��ch b�t k� m�t c�i n�o tay m�i th�n .",4,"Ti�p t�c m� b�y gi� nhi�m v� /T_enroll","Hi�u r� kh�c nhi�m v� /T_all","Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
elseif (UTask_wu >= 10*256) and (UTask_wu < 20*256) then 
Say("Ng��i b�y gi� nh�n ��ch nhi�m v� l� con nh�n c�ng t� s��ng ",4,"Ti�p t�c m� b�y gi� nhi�m v� /T_L10","Hi�u r� kh�c nhi�m v� /T_all","Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
elseif (UTask_wu >= 20*256) and (UTask_wu < 30*256) then 
Say("Ng��i b�y gi� nh�n ��ch nhi�m v� l� ng��i ��u tr�ng .",4,"Ti�p t�c m� b�y gi� nhi�m v� /T_L20","Hi�u r� kh�c nhi�m v� /T_all","Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
elseif (UTask_wu >= 30*256) and (UTask_wu < 40*256) then 
Say("Ng��i b�y gi� nh�n ��ch nhi�m v� l� m�c h��ng ��nh .",4,"Ti�p t�c m� b�y gi� nhi�m v� /T_L30","Hi�u r� kh�c nhi�m v� /T_all","Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
elseif (UTask_wu >= 40*256) and (UTask_wu < 50*256) then 
Say("Ng��i b�y gi� nh�n ��ch nhi�m v� l� m�t ki�ng v��ng m�ng x� ",4,"Ti�p t�c m� b�y gi� nhi�m v� /T_L40","Hi�u r� kh�c nhi�m v� /T_all","Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
elseif (UTask_wu >= 50*256) and (UTask_wu < 60*256) then 
Say("Ng��i b�y gi� nh�n ��ch nhi�m v� l� ng�c san h� ",4,"Ti�p t�c m� b�y gi� nhi�m v� /T_L50","Hi�u r� kh�c nhi�m v� /T_all","Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
elseif (UTask_wu >= 60*256) and (UTask_wu < 70*256) then 
Say("Ng��i b�y gi� nh�n ��ch nhi�m v� l� t� ��c ch�u .",4,"Ti�p t�c m� b�y gi� nhi�m v� /T_L60","Hi�u r� kh�c nhi�m v� /T_all","Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
elseif (UTask_wu >= 70*256) and (UTask_wu < 80*256) then 
Say("Ng��i b�y gi� nh�n ��ch nhi�m v� l� tr� l�i s� m�n .",4,"Ti�p t�c m� b�y gi� nhi�m v� /T_return","Hi�u r� kh�c nhi�m v� /T_all","Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
else 
Say("Ng��i c� th� t� do ra v�o m�n ph�i , t�m th�i kh�ng c� c�i m�i nhi�m v� .",3,"Hi�u r� kh�c nhi�m v� /T_all","Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 
end 

function T_all() 
Say("Mu�n bi�t nhi�m v� g� ",10,"Nh�p m�n nhi�m v� /T_enroll","Con nh�n c�ng t� s��ng nhi�m v� /T_L10","��u ng��i tr�ng nhi�m v� /T_L20","M�c h��ng ��nh nhi�m v� /T_L30","M�t ki�ng v��ng m�ng x� nhi�m v� /T_L40","Ng�c san h� nhi�m v� /T_L50","T� ��c ch�u nhi�m v� /T_L60","Tr� l�i s� m�n nhi�m v� /T_return","Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function T_enroll() 
Talk(1,"t_all","N�u nh� nh�p m�n h�c ngh� , ch� c�n thu�c v� m�c h� c�ng ��n 10 c�p . ��n b�t k� m�t c�i n�o tay m�i th�n th�y b�n m�n ti�p d�n �� t� li�n c� th� . sau theo th� t� ho�n th�nh m�n ph�i 5 c� nhi�m v� . �em h�c ���c v� c�ng l�y ���c danh hi�u . ho�n th�nh xu�t s� nhi�m v� sau �em th�nh nghi�p xu�t s� ") 
end 

function T_L10() 
Talk(5,"t_all","Nh�p m�n sau c�p b�c ��t t�i 10 c�p , ng��i c� th� nh�n con nh�n c�ng t� s��ng ��ch nhi�m v� . th�ng qua ho�n th�nh nhi�m v� n�y , ng��i c� th� l�y ���c �o�t h�n t�n nh�n ��ch danh hi�u , h�c ���c v� c�ng n�m ��c �ao ph�p , n�m ��c ch��ng ph�p ","1: ��n m�c chu tr�i g�p ph�i tang ch�u , b�t m��i con con nh�n , l�i �i mua 10 t�i t� s��ng cho n�ng luy�n c�ng ","2: ��n Nh�n ��ng s�n th��ng b�t m��i con con nh�n ","3# ��n long tuy�n th�n ��ch ti�m thu�c mua m��i t�i t� s��ng ","4# tr� l�i Ng� ��c gi�o m�c chu tr�i giao cho tang ch�u , nhi�m v� ho�n th�nh ") 
end 

function T_L20() 
Talk(4,"t_all","Ho�n th�nh con nh�n c�ng t� s��ng nhi�m v� h�n n�a ��t t�i 20 c�p li�n c� th� nh�n ��u ng��i tr�ng nhi�m v� . th�ng qua ho�n th�nh nhi�m v� n�y , c� th� ��t ���c ��i m�ng s� gi� ��ch danh hi�u , h�c ���c v� c�ng x�ch vi�m th�c ng�y , t�p kh� kh�n thu�c tr�i qua ","1: � ng�n thi�m tr�i g�p ph�i b�ch o�nh o�nh , ti�p nh�n v� , �i gi�t la ti�u b�y qu� , c�m tr� v� 7 ng��i ��u !","2: �i t�i la ti�u s�n , ��nh b�i la ti�u b�y qu� ","3: tr� l�i ng�n thi�m tr�i t�m ���c b�ch o�nh o�nh ph�c m�nh , ho�n th�nh nhi�m v� ") 
end 

function T_L30() 
Talk(6,"t_all","Ho�n th�nh ��u ng��i tr�ng nhi�m v� h�n n�a ��t t�i 30 c�p , c� th� nh�n m�c h��ng ��nh nhi�m v� . th�ng qua ho�n th�nh nhi�m v� n�y , c� th� l�y ���c b�ng t�i Di�m La ��ch danh hi�u , h�c ���c v� c�ng u minh kh� l�u , v� h�nh c� , tr�m ��c xuy�n tim , b�ng lam huy�n tinh ","1: � x�ch h�t tr�i th�y t�n s�t d� , ti�p nh�n v� , t�m ���c ph�n �� c�m tr� v� m�c h��ng ��nh .","2: ��n V� di s�n , ��nh b�i ph�n �� , c�m tr� v� m�c h��ng ��nh .","3: tr� v� x�ch huy�t tr�i , t�n s�t d� ph�t hi�n m�c h��ng ��nh l� gi� ��ch , mu�n �i c�m tr� v� th�t m�c h��ng ��nh ","4: tr� l�i V� di s�n , ��nh b�i ph�n �� ��u m�c , c�m tr� v� th�t m�c h��ng ��nh !","5: tr� l�i x�ch huy�t tr�i , �em th�t m�c h��ng ��nh giao cho t�n s�t d� , ho�n th�nh nhi�m v� . ") 
end 

function T_L40() 
Talk(5,"t_all","Ho�n th�nh m�c h��ng ��nh nhi�m v� h�n n�a c�p b�c ��t t�i 40 c�p , ng��i c� th� nh�n m�t ki�ng v��ng m�ng x� nhi�m v� , th�ng qua ho�n th�nh nhi�m v� n�y , ng��i l�y ���c phong h�o v� ��ng la s�t , h�c ���c v� c�ng v�n c� th�c t�m , m�c qu�n �o ph� gi�p ","1: � kim x� tr�i th�y v�n kh�ng t� , ti�p nh�n nhi�m v� , ��n kim m�u r�n ��m b�t m�t con m�t k�nh v��ng m�ng x� cho v�n kh�ng t� ","2: ��n kim m�u r�n ��m tr��c ph�i ti�m thu�c mua x� h��ng ","3: ti�n v�o kim m�u r�n ��m , ��nh b�i m�t ki�ng v��ng m�ng x� ","4: tr� v� kim x� tr�i , �em m�t ki�ng v��ng m�ng x� giao cho v�n kh�ng t� , ho�n th�nh nhi�m v� ") 
end 

function T_L50() 
Talk(6,"t_all","Ho�n th�nh m�t ki�ng v��ng m�ng x� nhi�m v� ��ng th�i ��t t�i 90 c�p , ng��i c� th� nh�n ng�c san h� nhi�m v� , th�ng qua ho�n th�nh nhi�m v� n�y , ng��i l�y ���c phong h�o c� ��c t�n gi� , h�c ���c v� c�ng xuy�n tim gai ��c ","1: � thanh ng� tr�i th�y thang b�t , ti�p nh�n nhi�m v� , �o�t l�i ng�c san h� ","2: ��n V� di s�n , ti�n v�o ng�c hoa ��ng , ��nh b�i l�u kh�u , bi�t ���c ng�c san h� �� b� mang t�i nghi�t long ��ng ","3: ti�p t�c h��ng nghi�t long ��ng , ��nh b�i c��ng ��o , b�t ���c ng�c san h� ","4: tr� l�i Ng� ��c gi�o thanh ng� tr�i , �em ng�c san h� giao cho thang b�t , nhi�m v� ho�n th�nh ") 
end 

function T_L60() 
Talk(5,"t_all","Ho�n th�nh ng�c san h� nhi�m v� ��ng th�i ��t t�i 50 c�p , ng��i c� th� nh�n t� ��c ch�u . th�ng qua ho�n th�nh nhi�m v� n�y , ng��i l�y ���c phong h�o u minh qu� khi�n cho , thu�n l�i xu�t s� ","1: �i t�ng tr�i t�m gi�o ch� h�c m�t lang qu�n , ti�p nh�n nhi�m v� t� nh�n ��ng ph�i trong tay �o�t l�i t� ��c ch�u ","2: ��n Nh�n ��ng s�n , ti�n v�o d� gi�c ��ng ��nh b�i v� s� nh�n ��ng ph�i �� t� , cu�i c�ng ch��ng m�n c�ng ng�i kh�ng y�n giao th� ","3: ��nh b�i nh�n ��ng ph�i ch��ng m�n , c�m tr�nh ��c ch�u .","4: tr� v� t�ng tr�i , ��ng t� ��c ch�u cho h�c m�t lang qu�n , ho�n th�nh nhi�m v� ") 
end 

function T_return() 
Talk(3,"t_all","Th�ng qua tr� l�i s� m�n , ng��i ��t ���c u minh qu� v��ng ��ch danh hi�u , h�c ���c n�m ��c k� tr�i qua , thi�n c��ng ��a s�t , cu�i c�ng thanh minh ","1: ��t t�i 60 c�p sau , ��n t�ng tr�i th�y h�c m�t lang qu�n gi�o ch� , xin/m�i tr� l�i Ng� ��c gi�o ","2: ��a cho m�n ph�i 50000 hai , tr� l�i Ng� ��c gi�o ") 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - k�t th�c -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function nothing() 
end 
