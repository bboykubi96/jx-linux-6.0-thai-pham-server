------------------------------------------Quess Nhi�m V� Ph�i-----------------------------------
function check_update()  
if (GetTask(137) >= 20 or GetTripMode() == 2) then 
return 0 
else 
SetTask(57,GetGameTime()) -- script viet hoa By http://tranhba.com  nh� k� n�ng ��i m�i sau l�n ��u ti�n th��ng tuy�n th�i gian , nh�t ��nh ph�i � tuy�n 72 gi� sau n�y m�i cho ph�p th��ng t�y t�y ��o 
rollback_prop() -- script viet hoa By http://tranhba.com  n�ng ��a ti�m n�ng �i�m #2004-07-13# 
skills_update() 
UpdateSkill() 
return 1 
end 
end 
------------------------------------------------------------------------------------------------------------------------------
function skills_update() 
SetTaskTemp(20,0) -- script viet hoa By http://tranhba.com  s� d�ng tr��c ph�c v� , b�o ��m kh�ng b� qu�y nhi�u 
SetTaskTemp(21,0) 
Player_Faction = check_faction() 
if (Player_Faction == 3) then -- script viet hoa By http://tranhba.com  Thi�n v��ng gi�p 
update_tw() 
elseif (Player_Faction == 7) then -- script viet hoa By http://tranhba.com  ph�i Thi�u l�m 
update_sl() 
elseif (Player_Faction == 2) then -- script viet hoa By http://tranhba.com  ���ng m�n 
update_tm() 
elseif (Player_Faction == 10) then -- script viet hoa By http://tranhba.com  n�m ��c 
update_wu() 
elseif (Player_Faction == 1) then -- script viet hoa By http://tranhba.com  Nga Mi 
update_em() 
elseif (Player_Faction == 6) then -- script viet hoa By http://tranhba.com  th�y kh�i 
update_cy() 
elseif (Player_Faction == 4) then -- script viet hoa By http://tranhba.com  ng�y nh�n 
update_tr() 
elseif (Player_Faction == 8) then -- script viet hoa By http://tranhba.com  C�i Bang 
update_gb() 
elseif (Player_Faction == 5) then -- script viet hoa By http://tranhba.com  V� ���ng 
update_wd() 
elseif (Player_Faction == 9) then -- script viet hoa By http://tranhba.com  C�n L�n 
update_kl() 
elseif (Player_Faction == 11) then -- script viet hoa By http://tranhba.com  C�n L�n 
update_hs() 
else -- script viet hoa By http://tranhba.com  b�ch t�n 
SetTask(137,20) 
return 1 
end 

Msg2Player("K� n�ng ��i m�i �� ho�n th�nh , xin ch� � l�n n�a v� c�c k� n�ng ph�n ph�i k� n�ng �i�m . ") 
xMagic = 0 
if HaveMagic(397) >= 0 then -- script viet hoa By http://tranhba.com  t�nh to�n m�a m�c s�ng l�i k� n�ng , kh�u tr� t��ng �ng �i�m ��m # mu�n ph�ng ng�a tr� v� -1# 
xMagic = HaveMagic(397) 
end 
 
MagicPoint_total = GetLevel() + GetByte(GetTask(86),2) + GetByte(GetTask(80),1) + GetTask(700) - GetMagicPoint() - xMagic - 1
Ttask21 = GetTaskTemp(21) 
	if (Ttask21 ~= MagicPoint_total + GetMagicPoint()) then
		WriteLog(date("%Hʱ%M��%S��").."�� �ʺš�"..GetAccount().."���Ľ�ɫ��"..GetName().."�����ܸ����쳣��¼���ȼ�"..GetLevel().."��ԭ�м��ܵ�"..Ttask21.."������Ϊ"..MagicPoint_total+GetMagicPoint().."�㣨���������"..GetByte(GetTask(86),2).."�㣬���߼�"..GetTask(80).."�㣩��")
end

AddMagicPoint(MagicPoint_total) 
SetTaskTemp(20,0) -- script viet hoa By http://tranhba.com  t�m �i�m ho�n th�nh , l�n n�a ph�c v� 
SetTaskTemp(21,0) 
end 

function check_faction() 
if (GetTask(7) >= 10*256) and (GetTask(7) ~= 75*256) then -- script viet hoa By http://tranhba.com  Thi�u L�m ho�c m�n ph�i n�y xu�t s� 
SetTask(137,7) 
SetLastFactionNumber(0) 
return 7 
elseif (GetTask(3) >= 10*256) and (GetTask(3) ~= 75*256) then -- script viet hoa By http://tranhba.com  Thi�n v��ng ho�c m�n ph�i n�y xu�t s� 
SetTask(137,3) 
SetLastFactionNumber(1) 
return 3 
elseif (GetTask(10) >= 10*256) and (GetTask(10) ~= 75*256) then -- script viet hoa By http://tranhba.com  n�m ��c ho�c m�n ph�i n�y xu�t s� 
SetTask(137,10) 
SetLastFactionNumber(3) 
return 10 
elseif (GetTask(2) >= 10*256) and (GetTask(2) ~= 75*256) then -- script viet hoa By http://tranhba.com  ���ng m�n ho�c m�n ph�i n�y xu�t s� 
SetTask(137,2) 
SetLastFactionNumber(2) 
return 2 
elseif (GetTask(6) >= 10*256) and (GetTask(6) ~= 75*256) then -- script viet hoa By http://tranhba.com  th�y kh�i ho�c m�n ph�i n�y xu�t s� 
SetTask(137,6) 
SetLastFactionNumber(5) 
return 6 
elseif (GetTask(1) >= 10*256) and (GetTask(1) ~= 75*256) then -- script viet hoa By http://tranhba.com  Nga Mi ho�c m�n ph�i n�y xu�t s� 
SetTask(137,1) 
SetLastFactionNumber(4) 
return 1 
elseif (GetTask(8) >= 10*256) and (GetTask(8) ~= 75*256) then -- script viet hoa By http://tranhba.com  C�i Bang ho�c m�n ph�i n�y xu�t s� 
SetTask(137,8) 
SetLastFactionNumber(6) 
return 8 
elseif (GetTask(4) >= 10*256) and (GetTask(4) ~= 75*256) then -- script viet hoa By http://tranhba.com  ng�y nh�n ho�c m�n ph�i n�y xu�t s� 
SetTask(137,4) 
SetLastFactionNumber(7) 
return 4 
elseif (GetTask(9) >= 10*256) and (GetTask(9) ~= 75*256) then -- script viet hoa By http://tranhba.com  C�n L�n ho�c m�n ph�i n�y xu�t s� 
SetTask(137,9) 
SetLastFactionNumber(9) 
return 9 
-----------------------Hoa Son
elseif (GetTask(11) >= 10*256) and (GetTask(9) ~= 75*256) then -- script viet hoa By http://tranhba.com  C�n L�n ho�c m�n ph�i n�y xu�t s� 
SetTask(137,11) 
SetLastFactionNumber(10) 
return 11 
----------------------------------
elseif (GetTask(5) >= 10*256) and (GetTask(5) ~= 75*256) then -- script viet hoa By http://tranhba.com  V� ���ng ho�c m�n ph�i n�y xu�t s� 
SetTask(137,5) 
SetLastFactionNumber(8) 
return 5 
else -- script viet hoa By http://tranhba.com  b�ch t�n ��ch , kh�ng c�n ��i m�i 
SetLastFactionNumber(-1) 
return 20 
end 
end; 

function add_misc(lvl) -- script viet hoa By http://tranhba.com  th�m c�ng c�ng k� n�ng # theo nh� hai v�o ch� v� tr�c c� th�m # 
if (GetBit(lvl,1) == 1) and (HaveMagic(210) == -1) then -- script viet hoa By http://tranhba.com  th� 1 ch� v� # khinh c�ng 
AddMagic(210,1) 
end 
if (GetBit(lvl,2) == 1) and (HaveMagic(400) == -1) then -- script viet hoa By http://tranhba.com  th� 2 ch� v� # c��p c�a ng��i gi�u gi�p ng��i ngh�o kh� 
AddMagic(400,1) 
end 
if (GetBit(lvl,3) == 1) and (HaveMagic(397) == -1) then -- script viet hoa By http://tranhba.com  th� 3 ch� v� # m�a m�c s�ng l�i 
AddMagic(397) 
end 
end 

function update_tw() -- script viet hoa By http://tranhba.com  tr��c c�n c� nhi�m v� c�p b�c th� ti�u # l�n n�a gia nh�p k� n�ng , sau �� b� tr� v� k� n�ng �i�m 
UTask = GetTask(3) 
if (GetTask(121) == 255) then -- script viet hoa By http://tranhba.com  h�c ���c 90 c�p k� n�ng 
the_lvl = 90 
-- script viet hoa By http://tranhba.com  Thi�n v��ng ��ch tr� v� s� k� n�ng c�n nhi�u h�n n�a l�m ph�n �o�n , b�i v� nguy�n 60 c�p k� n�ng b� ��i th�nh 50 c�p ### c� Kim chung tr�o # qua 60 c�p , h�n n�a �� xu�t s� # kh�ng ph�i l� x� s� # 
elseif (HaveMagic(42) >= 0) and (GetTask(3) >= 70*256) and (GetTask(3) ~= 75*256) and (GetLevel() >= 60) then -- script viet hoa By http://tranhba.com  c� tr�n ph�i tuy�t h�c k� n�ng 
the_lvl = 70 
elseif (UTask >= 60*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 50 c�p nhi�m v� 
the_lvl = 60 
elseif (UTask >= 50*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 40 c�p nhi�m v� 
the_lvl = 50 
elseif (UTask >= 40*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 30 c�p nhi�m v� 
the_lvl = 40 
elseif (UTask >= 30*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 20 c�p nhi�m v� 
the_lvl = 30 
elseif (UTask >= 20*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 10 c�p nhi�m v� 
the_lvl = 20 
elseif (UTask >= 10*256) then -- script viet hoa By http://tranhba.com  �� nh�p m�n 
the_lvl = 10 
end 
del_all_skill() 
add_tw(the_lvl) -- script viet hoa By http://tranhba.com  th�m ��p l�i h�c ���c k� n�ng 
SetTask(137,23) 
end 

function update_gb() -- script viet hoa By http://tranhba.com  tr��c c�n c� nhi�m v� c�p b�c th� ti�u # l�n n�a gia nh�p k� n�ng , sau �� b� tr� v� k� n�ng �i�m 
UTask = GetTask(8) 
if (GetTask(128) == 255) then -- script viet hoa By http://tranhba.com  h�c ���c 90 c�p k� n�ng 
the_lvl = 90 
-- script viet hoa By http://tranhba.com  C�i Bang ��ch tr� v� s� k� n�ng c�n nhi�u h�n n�a l�m ph�n �o�n , b�i v� nguy�n 60 c�p k� n�ng b� ��i th�nh 50 c�p ### c� Kh�ng long b�u h�i # qua 60 c�p , h�n n�a �� xu�t s� # kh�ng ph�i l� x� s� # 
elseif (HaveMagic(128) >= 0) and (GetTask(8) >= 70*256) and (GetTask(8) ~= 75*256) and (GetLevel() >= 60) then -- script viet hoa By http://tranhba.com  c� tr�n ph�i tuy�t h�c k� n�ng 
the_lvl = 70 
elseif (UTask >= 60*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 50 c�p nhi�m v� 
the_lvl = 60 
elseif (UTask >= 50*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 40 c�p nhi�m v� 
the_lvl = 50 
elseif (UTask >= 40*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 30 c�p nhi�m v� 
the_lvl = 40 
elseif (UTask >= 30*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 20 c�p nhi�m v� 
the_lvl = 30 
elseif (UTask >= 20*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 10 c�p nhi�m v� 
the_lvl = 20 
elseif (UTask >= 10*256) then -- script viet hoa By http://tranhba.com  �� nh�p m�n 
the_lvl = 10 
end 
del_all_skill() 
add_gb(the_lvl) -- script viet hoa By http://tranhba.com  th�m ��p l�i h�c ���c k� n�ng 
SetTask(137,28) 
end 

function update_wd() -- script viet hoa By http://tranhba.com  tr��c c�n c� nhi�m v� c�p b�c th� ti�u # l�n n�a gia nh�p k� n�ng , sau �� b� tr� v� k� n�ng �i�m 
UTask = GetTask(5) 
if (GetTask(129) == 255) then -- script viet hoa By http://tranhba.com  h�c ���c 90 c�p k� n�ng 
the_lvl = 90 
elseif (HaveMagic(166) >= 0) then -- script viet hoa By http://tranhba.com  c� tr�n ph�i tuy�t h�c k� n�ng 
the_lvl = 70 
elseif (UTask >= 60*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 50 c�p nhi�m v� 
the_lvl = 60 
elseif (UTask >= 50*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 40 c�p nhi�m v� 
the_lvl = 50 
elseif (UTask >= 40*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 30 c�p nhi�m v� 
the_lvl = 40 
elseif (UTask >= 30*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 20 c�p nhi�m v� 
the_lvl = 30 
elseif (UTask >= 20*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 10 c�p nhi�m v� 
the_lvl = 20 
elseif (UTask >= 10*256) then -- script viet hoa By http://tranhba.com  �� nh�p m�n 
the_lvl = 10 
end 
del_all_skill() 
add_wd(the_lvl) -- script viet hoa By http://tranhba.com  th�m ��p l�i h�c ���c k� n�ng 
SetTask(137,25) 
end 
----------------------update----------

function update_em() -- script viet hoa By http://tranhba.com  tr��c c�n c� nhi�m v� c�p b�c th� ti�u # l�n n�a gia nh�p k� n�ng , sau �� b� tr� v� k� n�ng �i�m 
UTask = GetTask(1) 
if (GetTask(125) == 255) then -- script viet hoa By http://tranhba.com  h�c ���c 90 c�p k� n�ng 
the_lvl = 90 
elseif (HaveMagic(252) >= 0) then -- script viet hoa By http://tranhba.com  c� tr�n ph�i tuy�t h�c k� n�ng 
the_lvl = 70 
elseif (UTask >= 60*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 50 c�p nhi�m v� 
the_lvl = 60 
elseif (UTask >= 50*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 40 c�p nhi�m v� 
the_lvl = 50 
elseif (UTask >= 40*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 30 c�p nhi�m v� 
the_lvl = 40 
elseif (UTask >= 30*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 20 c�p nhi�m v� 
the_lvl = 30 
elseif (UTask >= 20*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 10 c�p nhi�m v� 
the_lvl = 20 
elseif (UTask >= 10*256) then -- script viet hoa By http://tranhba.com  �� nh�p m�n 
the_lvl = 10 
end 
del_all_skill() 
add_em(the_lvl) -- script viet hoa By http://tranhba.com  th�m ��p l�i h�c ���c k� n�ng 
SetTask(137,21) 
end 

function update_sl() -- script viet hoa By http://tranhba.com  tr��c c�n c� nhi�m v� c�p b�c th� ti�u # l�n n�a gia nh�p k� n�ng , sau �� b� tr� v� k� n�ng �i�m 
UTask = GetTask(7) 
if (GetTask(122) == 255) then -- script viet hoa By http://tranhba.com  h�c ���c 90 c�p k� n�ng 
the_lvl = 90 
elseif (HaveMagic(21) >= 0) then -- script viet hoa By http://tranhba.com  c� tr�n ph�i tuy�t h�c k� n�ng 
the_lvl = 70 
elseif (UTask >= 60*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 50 c�p nhi�m v� 
the_lvl = 60 
elseif (UTask >= 50*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 40 c�p nhi�m v� 
the_lvl = 50 
elseif (UTask >= 40*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 30 c�p nhi�m v� 
the_lvl = 40 
elseif (UTask >= 30*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 20 c�p nhi�m v� 
the_lvl = 30 
elseif (UTask >= 20*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 10 c�p nhi�m v� 
the_lvl = 20 
elseif (UTask >= 10*256) then -- script viet hoa By http://tranhba.com  �� nh�p m�n 
the_lvl = 10 
end 
del_all_skill() 
add_sl(the_lvl) -- script viet hoa By http://tranhba.com  th�m ��p l�i h�c ���c k� n�ng 
SetTask(137,27) 
end 

function update_wu() -- script viet hoa By http://tranhba.com  tr��c c�n c� nhi�m v� c�p b�c th� ti�u # l�n n�a gia nh�p k� n�ng , sau �� b� tr� v� k� n�ng �i�m 
UTask = GetTask(10) 
if (GetTask(124) == 255) then -- script viet hoa By http://tranhba.com  h�c ���c 90 c�p k� n�ng 
the_lvl = 90 
elseif (HaveMagic(75) >= 0) then -- script viet hoa By http://tranhba.com  c� tr�n ph�i tuy�t h�c k� n�ng 
the_lvl = 70 
elseif (UTask >= 60*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 50 c�p nhi�m v� 
the_lvl = 60 
elseif (UTask >= 50*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 40 c�p nhi�m v� 
the_lvl = 50 
elseif (UTask >= 40*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 30 c�p nhi�m v� 
the_lvl = 40 
elseif (UTask >= 30*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 20 c�p nhi�m v� 
the_lvl = 30 
elseif (UTask >= 20*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 10 c�p nhi�m v� 
the_lvl = 20 
elseif (UTask >= 10*256) then -- script viet hoa By http://tranhba.com  �� nh�p m�n 
the_lvl = 10 
end 
del_all_skill() 
add_wu(the_lvl) -- script viet hoa By http://tranhba.com  th�m ��p l�i h�c ���c k� n�ng 
SetTask(137,30) 
end 

function update_cy() -- script viet hoa By http://tranhba.com  tr��c c�n c� nhi�m v� c�p b�c th� ti�u # l�n n�a gia nh�p k� n�ng , sau �� b� tr� v� k� n�ng �i�m 
UTask = GetTask(6) 
if (GetTask(126) == 255) then -- script viet hoa By http://tranhba.com  h�c ���c 90 c�p k� n�ng 
the_lvl = 90 
elseif (HaveMagic(111) >= 0) then -- script viet hoa By http://tranhba.com  c� tr�n ph�i tuy�t h�c k� n�ng 
the_lvl = 70 
elseif (UTask >= 60*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 50 c�p nhi�m v� 
the_lvl = 60 
elseif (UTask >= 50*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 40 c�p nhi�m v� 
the_lvl = 50 
elseif (UTask >= 40*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 30 c�p nhi�m v� 
the_lvl = 40 
elseif (UTask >= 30*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 20 c�p nhi�m v� 
the_lvl = 30 
elseif (UTask >= 20*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 10 c�p nhi�m v� 
the_lvl = 20 
elseif (UTask >= 10*256) then -- script viet hoa By http://tranhba.com  �� nh�p m�n 
the_lvl = 10 
end 
del_all_skill() 
add_cy(the_lvl) -- script viet hoa By http://tranhba.com  th�m ��p l�i h�c ���c k� n�ng 
SetTask(137,26) 
end 

function update_tm() -- script viet hoa By http://tranhba.com  tr��c c�n c� nhi�m v� c�p b�c th� ti�u # l�n n�a gia nh�p k� n�ng , sau �� b� tr� v� k� n�ng �i�m 
UTask = GetTask(2) 
if (GetTask(123) == 255) then -- script viet hoa By http://tranhba.com  h�c ���c 90 c�p k� n�ng 
the_lvl = 90 
elseif (HaveMagic(249) >= 0) then -- script viet hoa By http://tranhba.com  c� tr�n ph�i tuy�t h�c k� n�ng 
the_lvl = 70 
elseif (UTask >= 60*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 50 c�p nhi�m v� 
the_lvl = 60 
elseif (UTask >= 50*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 40 c�p nhi�m v� 
the_lvl = 50 
elseif (UTask >= 40*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 30 c�p nhi�m v� 
the_lvl = 40 
elseif (UTask >= 30*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 20 c�p nhi�m v� 
the_lvl = 30 
elseif (UTask >= 20*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 10 c�p nhi�m v� 
the_lvl = 20 
elseif (UTask >= 10*256) then -- script viet hoa By http://tranhba.com  �� nh�p m�n 
the_lvl = 10 
end 
del_all_skill() 
add_tm(the_lvl) -- script viet hoa By http://tranhba.com  th�m ��p l�i h�c ���c k� n�ng 
SetTask(137,22) 
end 

function update_tr() -- script viet hoa By http://tranhba.com  tr��c c�n c� nhi�m v� c�p b�c th� ti�u # l�n n�a gia nh�p k� n�ng , sau �� b� tr� v� k� n�ng �i�m 
UTask = GetTask(4) 
if (GetTask(127) == 255) then -- script viet hoa By http://tranhba.com  h�c ���c 90 c�p k� n�ng 
the_lvl = 90 
elseif (HaveMagic(150) >= 0) then -- script viet hoa By http://tranhba.com  c� tr�n ph�i tuy�t h�c k� n�ng 
the_lvl = 70 
elseif (UTask >= 60*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 50 c�p nhi�m v� 
the_lvl = 60 
elseif (UTask >= 50*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 40 c�p nhi�m v� 
the_lvl = 50 
elseif (UTask >= 40*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 30 c�p nhi�m v� 
the_lvl = 40 
elseif (UTask >= 30*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 20 c�p nhi�m v� 
the_lvl = 30 
elseif (UTask >= 20*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 10 c�p nhi�m v� 
the_lvl = 20 
elseif (UTask >= 10*256) then -- script viet hoa By http://tranhba.com  �� nh�p m�n 
the_lvl = 10 
end 
del_all_skill() 
add_tr(the_lvl) -- script viet hoa By http://tranhba.com  th�m ��p l�i h�c ���c k� n�ng 
SetTask(137,24) 
end 

function update_kl() -- script viet hoa By http://tranhba.com  c� k� n�ng m�i 
UTask = GetTask(9) 
if (GetTask(130) == 255) then -- script viet hoa By http://tranhba.com  h�c ���c 90 c�p k� n�ng 
the_lvl = 90 
elseif (HaveMagic(182) >= 0) then -- script viet hoa By http://tranhba.com  c� tr�n ph�i tuy�t h�c k� n�ng 
the_lvl = 70 
elseif (UTask >= 60*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 50 c�p nhi�m v� 
the_lvl = 60 
elseif (UTask >= 50*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 40 c�p nhi�m v� 
the_lvl = 50 
elseif (UTask >= 40*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 30 c�p nhi�m v� 
the_lvl = 40 
elseif (UTask >= 30*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 20 c�p nhi�m v� 
the_lvl = 30 
elseif (UTask >= 20*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 10 c�p nhi�m v� 
the_lvl = 20 
elseif (UTask >= 10*256) then -- script viet hoa By http://tranhba.com  �� nh�p m�n 
the_lvl = 10 
end 
del_all_skill() 
add_kl(the_lvl) -- script viet hoa By http://tranhba.com  th�m ��p l�i h�c ���c k� n�ng 
SetTask(137,29) 
end 

-----------------Update Hoa Son
function update_hs() -- script viet hoa By http://tranhba.com  tr��c c�n c� nhi�m v� c�p b�c th� ti�u # l�n n�a gia nh�p k� n�ng , sau �� b� tr� v� k� n�ng �i�m 
UTask = GetTask(11) 
if (GetTask(131) == 255) then -- script viet hoa By http://tranhba.com  h�c ���c 90 c�p k� n�ng 
the_lvl = 90 
elseif (HaveMagic(1384) >= 0) then --co chan phai tuyet ky vo cong
the_lvl = 70 
elseif (UTask >= 60*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 50 c�p nhi�m v� 
the_lvl = 60 
elseif (UTask >= 50*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 40 c�p nhi�m v� 
the_lvl = 50 
elseif (UTask >= 40*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 30 c�p nhi�m v� 
the_lvl = 40 
elseif (UTask >= 30*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 20 c�p nhi�m v� 
the_lvl = 30 
elseif (UTask >= 20*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 10 c�p nhi�m v� 
the_lvl = 20 
elseif (UTask >= 10*256) then -- script viet hoa By http://tranhba.com  �� nh�p m�n 
the_lvl = 10 
end 
del_all_skill() 
add_hs(the_lvl) -- script viet hoa By http://tranhba.com  th�m ��p l�i h�c ���c k� n�ng 
SetTask(137,33) 
end 

------------------------------------------------H�c Skill Phai Thien Vuong-----------------------------------------------------------------------------------------------

function add_tw(lvl) -- script viet hoa By http://tranhba.com  c�n c� nhi�m v� c�p b�c th�m t��ng �ng Thi�n v��ng k� n�ng 
if (lvl >= 10) then -- script viet hoa By http://tranhba.com  �� nh�p m�n # gia nh�p c�a k� n�ng # 
if (HaveMagic(34) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(34) -- script viet hoa By http://tranhba.com  s�m s�t ch�m [34] # nh�p m�n # 
end 
if (HaveMagic(30) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(30) -- script viet hoa By http://tranhba.com  tr� v� phong r�i nh�n [30]# nh�p m�n # 
end 
if (HaveMagic(29) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(29) -- script viet hoa By http://tranhba.com  ch�m long quy�t [29] # nh�p m�n # 
end 
end 
if (lvl >= 20) then -- script viet hoa By http://tranhba.com  10 c�p nhi�m v� # th�m 10 c�p k� n�ng # 
if (HaveMagic(26) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(26) -- script viet hoa By http://tranhba.com  Thi�n v��ng ch�y ph�p [26]#10 c�p # 
end 
if (HaveMagic(23) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(23) -- script viet hoa By http://tranhba.com  Thi�n v��ng th��ng ph�p [23]#10 c�p # 
end 
if (HaveMagic(24) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(24) -- script viet hoa By http://tranhba.com  Thi�n v��ng �ao ph�p [24]#10 c�p # 
end 
end 
if (lvl >= 30) then -- script viet hoa By http://tranhba.com  20 c�p nhi�m v� # th�m 20 c�p k� n�ng # 
if (HaveMagic(33) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(33) -- script viet hoa By http://tranhba.com  t�nh t�m quy�t [33] #20 c�p # 
end 
end 
if (lvl >= 40) then -- script viet hoa By http://tranhba.com  30 c�p nhi�m v� # th�m 30 c�p k� n�ng # 
if (HaveMagic(37) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(37) -- script viet hoa By http://tranhba.com  b�t phong ch�m [37]#30 c�p # 
end 
if (HaveMagic(35) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(35) -- script viet hoa By http://tranhba.com  d��ng quan ba �i�p [35]#30 c�p # 
end 
if (HaveMagic(31) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(31) -- script viet hoa By http://tranhba.com  ���c v�n quy�t [31]#30 c�p # 
end 
end 
if (lvl >= 50) then -- script viet hoa By http://tranhba.com  40 c�p nhi�m v� # th�m 40 c�p k� n�ng # 
if (HaveMagic(40) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(40) -- script viet hoa By http://tranhba.com  �o�n h�n ��m [40]#40 c�p # 
end 
end 
if (lvl >= 60) then -- script viet hoa By http://tranhba.com  50 c�p nhi�m v� # th�m 50 c�p k� n�ng # 
if (HaveMagic(42) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(42) -- script viet hoa By http://tranhba.com  Kim chung tr�o [42]#50 c�p # 
end 
end 
if (lvl >= 70) then -- script viet hoa By http://tranhba.com  tr� v� s� nhi�m v� # th�m tr�n ph�i tuy�t h�c # 
if (HaveMagic(32) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(32) -- script viet hoa By http://tranhba.com  kh�ng l�ng d� n�o ch�m [32] #60 c�p # 
end 
if (HaveMagic(36) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(36) -- script viet hoa By http://tranhba.com  Thi�n v��ng chi�n � [36]# tr�n ph�i # 
end 
if (HaveMagic(41) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(41) -- script viet hoa By http://tranhba.com  huy�t chi�n b�t ph��ng [41] #60 c�p # 
end 
if (HaveMagic(324) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(324) -- script viet hoa By http://tranhba.com  ng�i long quy�t [324]#60 c�p # 
end 
end 
if (lvl >= 90) then -- script viet hoa By http://tranhba.com  90 c�p nhi�m v� # th�m 90 c�p k� n�ng # 
if (HaveMagic(322) <= 0) then AddMagic(322,20) end -- script viet hoa By http://tranhba.com  x� tr�i ch�m [322]#90 c�p # 
if (HaveMagic(323) <= 0) then AddMagic(323,20) end -- script viet hoa By http://tranhba.com  �u�i tinh tr�c th�ng [323]#90 c�p # 
if (HaveMagic(325) <= 0) then AddMagic(325,20) end -- script viet hoa By http://tranhba.com  �u�i phong quy�t [325]#90 c�p # 
if (HaveMagic(708) <= 0) then AddMagic(708,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 120 k� n�ng 
if (HaveMagic(1058) <= 0) then AddMagic(1058,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 150 k� n�ng 
if (HaveMagic(1059) <= 0) then AddMagic(1059,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 150 k� n�ng 
if (HaveMagic(1060) <= 0) then AddMagic(1060,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 150 k� n�ng 
AddMagic(210,1)
end 
end 

----------------------------------------------------H�c Skill Phai Thieu Lam----------------------------------------------------------------------------------------------------

function add_sl(lvl) -- script viet hoa By http://tranhba.com  c�n c� nhi�m v� c�p b�c th�m t��ng �ng Thi�u L�m k� n�ng 
if (lvl >= 10) then -- script viet hoa By http://tranhba.com  �� nh�p m�n # gia nh�p c�a k� n�ng # 
if (HaveMagic(14) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(14) -- script viet hoa By http://tranhba.com  ���c long kh�ng m�a [14] 
end 
if (HaveMagic(10) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(10) -- script viet hoa By http://tranhba.com  kim c��ng ph�c ma [10]# nh�p m�n # 
end 
end 
if (lvl >= 20) then -- script viet hoa By http://tranhba.com  10 c�p nhi�m v� # th�m 10 c�p k� n�ng # 
if (HaveMagic(8) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(8) -- script viet hoa By http://tranhba.com  Thi�u L�m quy�n ph�p [8] 
end 
if (HaveMagic(4) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(4) -- script viet hoa By http://tranhba.com  Thi�u L�m c�n ph�p [4]#10 c�p 
end 
if (HaveMagic(6) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(6) -- script viet hoa By http://tranhba.com  Thi�u L�m �ao ph�p [6]#10 c�p # 
end 
end 
if (lvl >= 30) then -- script viet hoa By http://tranhba.com  20 c�p nhi�m v� # th�m 20 c�p k� n�ng # 
if (HaveMagic(15) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(15) -- script viet hoa By http://tranhba.com  b�t ��ng minh v��ng [15]#20 c�p # 
end 
end 
if (lvl >= 40) then -- script viet hoa By http://tranhba.com  30 c�p nhi�m v� # th�m 30 c�p k� n�ng # 
if (HaveMagic(16) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(16) -- script viet hoa By http://tranhba.com  La h�n tr�n [16]#30 c�p # 
end 
end 
if (lvl >= 50) then -- script viet hoa By http://tranhba.com  40 c�p nhi�m v� # th�m 40 c�p k� n�ng # 
if (HaveMagic(20) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(20) -- script viet hoa By http://tranhba.com  s� t� h�ng [20]#40 c�p # 
end 
end 
if (lvl >= 60) then -- script viet hoa By http://tranhba.com  50 c�p nhi�m v� # th�m 50 c�p k� n�ng # 
if (HaveMagic(271) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(271) -- script viet hoa By http://tranhba.com  long tr�o h� b�t [271] 
end 
if (HaveMagic(11) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(11) -- script viet hoa By http://tranhba.com  qu�t ngang l�c h�p [11]#50 c�p # 
end 
if (HaveMagic(19) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(19) -- script viet hoa By http://tranhba.com  ma ha v� l��ng [19]#50 c�p # 
end 
end 
if (lvl >= 70) then -- script viet hoa By http://tranhba.com  tr� v� s� nhi�m v� # th�m tr�n ph�i tuy�t h�c # 
if (HaveMagic(273) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(273) -- script viet hoa By http://tranhba.com  nh� t�i ng�n l� [273] 
end 
if (HaveMagic(21) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(21) -- script viet hoa By http://tranhba.com  D�ch c�n kinh [21]#60 c�p # 
end 
end 
if (lvl >= 90) then -- script viet hoa By http://tranhba.com  90 c�p nhi�m v� # th�m 90 c�p k� n�ng # 
if (HaveMagic(318) <= 0) then AddMagic(318,20) end -- script viet hoa By http://tranhba.com  ��t Ma �� giang [318] 
if (HaveMagic(319) <= 0) then AddMagic(319,20) end -- script viet hoa By http://tranhba.com  ho�nh t�o thi�n qu�n [319]#90 c�p # 
if (HaveMagic(321) <= 0) then AddMagic(321,20) end -- script viet hoa By http://tranhba.com  v� t��ng ch�m [321]#90 c�p # 
if (HaveMagic(709) <= 0) then AddMagic(709,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 120 k� n�ng 
if (HaveMagic(1055) <= 0) then AddMagic(1055,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 150 k� n�ng 
if (HaveMagic(1056) <= 0) then AddMagic(1056,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 150 k� n�ng 
if (HaveMagic(1057) <= 0) then AddMagic(1057,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 150 k� n�ng  
AddMagic(210,1)
end 
end 

---------------------------------------------------H�c Skill Phai Duong Mon--------------------------------------------------------------------------------

function add_tm(lvl) -- script viet hoa By http://tranhba.com  c�n c� nhi�m v� c�p b�c th�m t��ng �ng ���ng m�n k� n�ng 
if (lvl >= 10) then -- script viet hoa By http://tranhba.com  �� nh�p m�n # gia nh�p c�a k� n�ng # 
if (HaveMagic(45) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(45) -- script viet hoa By http://tranhba.com  ph�ch l�ch ��n [45 ]# nh�p m�n # 
end 
end 
if (lvl >= 20) then -- script viet hoa By http://tranhba.com  10 c�p nhi�m v� # th�m 10 c�p k� n�ng # 
if (HaveMagic(43) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(43) -- script viet hoa By http://tranhba.com  ���ng m�n �m kh� [43 ]#10 c�p # 
end 
if (HaveMagic(347) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(347) -- script viet hoa By http://tranhba.com  ��a di�m h�a [347]#10 c�p # 
end 
end 
if (lvl >= 30) then -- script viet hoa By http://tranhba.com  20 c�p nhi�m v� # th�m 20 c�p k� n�ng # 
if (HaveMagic(303) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(303) -- script viet hoa By http://tranhba.com  gai ��c c�t [303]#20 c�p # 
end 
end 
if (lvl >= 40) then -- script viet hoa By http://tranhba.com  30 c�p nhi�m v� # th�m 30 c�p k� n�ng # 
if (HaveMagic(50) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(50) -- script viet hoa By http://tranhba.com  �u�i t�m ti�n [50 ]#30 c�p # 
end 
if (HaveMagic(54) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(54) -- script viet hoa By http://tranhba.com  ��y tr�i hoa v� [54 ]#30 c�p # 
end 
if (HaveMagic(47) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(47) -- script viet hoa By http://tranhba.com  �o�t h�n phi�u [47 ]#30 c�p # 
end 
if (HaveMagic(343) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(343) -- script viet hoa By http://tranhba.com  xuy�n tim ��m [343]#30 c�p # 
end 
end 
if (lvl >= 50) then -- script viet hoa By http://tranhba.com  40 c�p nhi�m v� # th�m 40 c�p k� n�ng # 
if (HaveMagic(345) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(345) -- script viet hoa By http://tranhba.com  h�n b�ng ��m [345]#40 c�p # 
end 
end 
if (lvl >= 60) then -- script viet hoa By http://tranhba.com  50 c�p nhi�m v� # th�m 50 c�p k� n�ng # 
if (HaveMagic(349) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(349) -- script viet hoa By http://tranhba.com  s�t ��nh thu�t [349]#50 c�p # 
end 
end 
if (lvl >= 70) then -- script viet hoa By http://tranhba.com  tr� v� s� nhi�m v� # th�m tr�n ph�i tuy�t h�c # 
if (HaveMagic(249) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(249) -- script viet hoa By http://tranhba.com  Ti�u l� phi �ao [249]#60 c�p # 
end 
if (HaveMagic(48) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(48) -- script viet hoa By http://tranhba.com  l�ng d� [48 ]# tr�n ph�i # 
end 
if (HaveMagic(58) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(58) -- script viet hoa By http://tranhba.com  thi�n la ��a v�ng [58 ]#60 c�p # 
end 
if (HaveMagic(341) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(341) -- script viet hoa By http://tranhba.com  t�n hoa phi�u [341]#60 c�p # 
end 
end 
if (lvl >= 90) then -- script viet hoa By http://tranhba.com  90 c�p nhi�m v� # th�m 90 c�p k� n�ng # 
if (HaveMagic(339) <= 0) then AddMagic(339,20) end -- script viet hoa By http://tranhba.com  nhi�p h�n b�ng tr�ng [339]#90 c�p # 
if (HaveMagic(302) <= 0) then AddMagic(302,20) end -- script viet hoa By http://tranhba.com  m�a sa l� hoa [302]#90 c�p # 
if (HaveMagic(342) <= 0) then AddMagic(342,20) end -- script viet hoa By http://tranhba.com  c�u cung bay tinh [342]#90 c�p # 
if (HaveMagic(351) <= 0) then AddMagic(351) end -- script viet hoa By http://tranhba.com 90 nguy�n r�a ph� tr� k� n�ng 
if (HaveMagic(710) <= 0) then AddMagic(710,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 120 k� n�ng 
if (HaveMagic(1069) <= 0) then AddMagic(1069,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 150 k� n�ng 
if (HaveMagic(1070) <= 0) then AddMagic(1070,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 150 k� n�ng 
if (HaveMagic(1071) <= 0) then AddMagic(1071,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 150 k� n�ng 
if (HaveMagic(1110) <= 0) then AddMagic(1110) end -- script viet hoa By http://tranhba.com  m�n ph�i 150 k� n�ng
AddMagic(210,1) 
end 
end 

------------------------------------------------------H�c Skill Phai Ngu Doc---------------------------------------------------------------------------

function add_wu(lvl) -- script viet hoa By http://tranhba.com  c�n c� nhi�m v� c�p b�c th�m t��ng �ng n�m ��c k� n�ng 
if (lvl >= 10) then -- script viet hoa By http://tranhba.com  �� nh�p m�n # gia nh�p c�a k� n�ng # 
if (HaveMagic(63) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(63) -- script viet hoa By http://tranhba.com  ��c sa ch��ng [63]# nh�p m�n # 
end 
if (HaveMagic(65) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(65) -- script viet hoa By http://tranhba.com  huy�t �ao ��c gi�t [65]# nh�p m�n # 
end 
end 
if (lvl >= 20) then -- script viet hoa By http://tranhba.com  10 c�p nhi�m v� # th�m 10 c�p k� n�ng # 
if (HaveMagic(62) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(62) -- script viet hoa By http://tranhba.com  n�m ��c ch��ng ph�p [62]#10 c�p # 
end 
if (HaveMagic(60) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(60) -- script viet hoa By http://tranhba.com  n�m ��c �ao ph�p [60]#10 c�p # 
end 
if (HaveMagic(67) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(67) -- script viet hoa By http://tranhba.com  c�u thi�n cu�ng l�i [67]#10 c�p # 
end 
end 
if (lvl >= 30) then -- script viet hoa By http://tranhba.com  20 c�p nhi�m v� # th�m 20 c�p k� n�ng # 
if (HaveMagic(70) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(70) -- script viet hoa By http://tranhba.com  x�ch di�m th�c ng�y [70]#20 c�p # 
end 
if (HaveMagic(66) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(66) -- script viet hoa By http://tranhba.com  t�p kh� kh�n thu�c tr�i qua [66]#20 c�p # 
end 
end 
if (lvl >= 40) then -- script viet hoa By http://tranhba.com  30 c�p nhi�m v� # th�m 30 c�p k� n�ng # 
if (HaveMagic(68) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(68) -- script viet hoa By http://tranhba.com  u minh kh� l�u [68 ]#30 c�p # 
end 
if (HaveMagic(384) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(384) -- script viet hoa By http://tranhba.com  tr�m ��c xuy�n tim [384]#30 c�p # 
end 
if (HaveMagic(64) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(64) -- script viet hoa By http://tranhba.com  b�ng lam huy�n tinh [64 ]#30 c�p # 
end 
if (HaveMagic(69) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(69) -- script viet hoa By http://tranhba.com  v� h�nh c� [69]#30 c�p # 
end 
end 
if (lvl >= 50) then -- script viet hoa By http://tranhba.com  40 c�p nhi�m v� # th�m 40 c�p k� n�ng # 
if (HaveMagic(356) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(356) -- script viet hoa By http://tranhba.com  m�c qu�n �o ph� gi�p [356]#40 c�p # 
end 
if (HaveMagic(73) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(73) -- script viet hoa By http://tranhba.com  v�n c� th�c t�m [73 ]#40 c�p # 
end 
end 
if (lvl >= 60) then -- script viet hoa By http://tranhba.com  50 c�p nhi�m v� # th�m 50 c�p k� n�ng # 
if (HaveMagic(72) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(72) -- script viet hoa By http://tranhba.com  xuy�n tim gai ��c [72]#50 c�p # 
end 
end 
if (lvl >= 70) then -- script viet hoa By http://tranhba.com  tr� v� s� nhi�m v� # th�m tr�n ph�i tuy�t h�c # 
if (HaveMagic(71) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(71) -- script viet hoa By http://tranhba.com  thi�n c��ng ��a s�t tay [71 ]#60 c�p # 
end 
if (HaveMagic(75) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(75) -- script viet hoa By http://tranhba.com  n�m ��c k� tr�i qua [75]# tr�n ph�i # 
end 
if (HaveMagic(74) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(74) -- script viet hoa By http://tranhba.com  chu c�p thanh minh [74 ]#60 c�p # 
end 
end 
if (lvl >= 90) then -- script viet hoa By http://tranhba.com  90 c�p nhi�m v� # th�m 90 c�p k� n�ng # 
if (HaveMagic(353) <= 0) then AddMagic(353,20) end -- script viet hoa By http://tranhba.com  �m phong th�c c�t [353]#90 c�p # 
if (HaveMagic(355) <= 0) then AddMagic(355,20) end -- script viet hoa By http://tranhba.com  huy�n �m ch�m [355]#90 c�p #  
if (HaveMagic(390) <= 0) then AddMagic(390) end -- script viet hoa By http://tranhba.com 90 nguy�n r�a ph� tr� k� n�ng 
if (HaveMagic(711) <= 0) then AddMagic(711,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 120 k� n�ng 
if (HaveMagic(1066) <= 0) then AddMagic(1066,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 150 k� n�ng 
if (HaveMagic(1067) <= 0) then AddMagic(1067,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 150 k� n�ng 
AddMagic(210,1) 
end 
end 

----------------------------------------------H�c Skill Phai Nga My-----------------------------------------------------------------------------------

function add_em(lvl) -- script viet hoa By http://tranhba.com  c�n c� nhi�m v� c�p b�c th�m t��ng �ng Nga Mi k� n�ng 
if (lvl >= 10) then -- script viet hoa By http://tranhba.com  �� nh�p m�n # gia nh�p c�a k� n�ng # 
if (HaveMagic(85) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(85) -- script viet hoa By http://tranhba.com  m�t l� bi�t thu [85]# nh�p m�n # 
end 
if (HaveMagic(80) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(80) -- script viet hoa By http://tranhba.com  tuy�t bay xuy�n v�n [80]# nh�p m�n # 
end 
end 
if (lvl >= 20) then -- script viet hoa By http://tranhba.com  10 c�p nhi�m v� # th�m 10 c�p k� n�ng # 
if (HaveMagic(77) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(77) -- script viet hoa By http://tranhba.com  Nga Mi ki�m ph�p [77]#10 c�p # 
end 
if (HaveMagic(79) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(79) -- script viet hoa By http://tranhba.com  Nga Mi ch��ng ph�p [79]#10 c�p # 
end 
end 
if (lvl >= 30) then -- script viet hoa By http://tranhba.com  20 c�p nhi�m v� # th�m 20 c�p k� n�ng # 
if (HaveMagic(93) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(93) -- script viet hoa By http://tranhba.com  t� h�ng ph� �� [93]#20 c�p # 
end 
end 
if (lvl >= 40) then -- script viet hoa By http://tranhba.com  30 c�p nhi�m v� # th�m 30 c�p k� n�ng # 
if (HaveMagic(385) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(385) -- script viet hoa By http://tranhba.com  ��y c�a s� ng�m th�ng [385]#30 c�p # 
end 
if (HaveMagic(82) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(82) -- script viet hoa By http://tranhba.com  t� t��ng c�ng thu�c v� [82]#30 c�p # 
end 
if (HaveMagic(89) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(89) -- script viet hoa By http://tranhba.com  m�ng �i�p [89]#30 c�p # 
end 
end 
if (lvl >= 50) then -- script viet hoa By http://tranhba.com  40 c�p nhi�m v� # th�m 40 c�p k� n�ng # 
if (HaveMagic(86) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(86) -- script viet hoa By http://tranhba.com  n��c ch�y [86 ]#40 c�p # 
end 
end 
if (lvl >= 60) then -- script viet hoa By http://tranhba.com  50 c�p nhi�m v� # th�m 50 c�p k� n�ng # 
if (HaveMagic(92) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(92) -- script viet hoa By http://tranhba.com  ph�t t�m t� h�u [92]#50 c�p # 
end 
end 
if (lvl >= 70) then -- script viet hoa By http://tranhba.com  tr� v� s� nhi�m v� # th�m tr�n ph�i tuy�t h�c # 
if (HaveMagic(88) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(88) -- script viet hoa By http://tranhba.com  b�t di�t kh�ng d�t [88]#60 c�p # 
end 
if (HaveMagic(252) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(252) -- script viet hoa By http://tranhba.com  ph�t ph�p v� bi�n [252]# tr�n ph�i # 
end 
if (HaveMagic(91) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(91) -- script viet hoa By http://tranhba.com  ph�t quang chi�u kh�p [91]#60 c�p # 
end 
if (HaveMagic(282) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(282) -- script viet hoa By http://tranhba.com  thanh �m ph�m x��ng [282]#60 c�p # 
end 
end 
if (lvl >= 90) then -- script viet hoa By http://tranhba.com  90 c�p nhi�m v� # th�m 90 c�p k� n�ng # 
if (HaveMagic(328) <= 0) then AddMagic(328,20) end -- script viet hoa By http://tranhba.com  ba nga t� tuy�t [328]#90 c�p # 
if (HaveMagic(380) <= 0) then AddMagic(380,20) end -- script viet hoa By http://tranhba.com  phong s��ng b� �nh [380]#90 c�p # 
if (HaveMagic(332) <= 0) then AddMagic(332) end -- script viet hoa By http://tranhba.com 90 nguy�n r�a ph� tr� k� n�ng 
if (HaveMagic(712) <= 0) then AddMagic(712,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 120 k� n�ng 
if (HaveMagic(1061) <= 0) then AddMagic(1061,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 150 k� n�ng 
if (HaveMagic(1062) <= 0) then AddMagic(1062,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 150 k� n�ng 
if (HaveMagic(1114) <= 0) then AddMagic(1114,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 150 k� n�ng 
AddMagic(210,1)
end 
end

------------------------------------------------H�c Skill Phai Thuy Yen------------------------------------------------------------------------------------------

function add_cy(lvl) -- script viet hoa By http://tranhba.com  c�n c� nhi�m v� c�p b�c th�m t��ng �ng th�y kh�i k� n�ng 
if (lvl >= 10) then -- script viet hoa By http://tranhba.com  �� nh�p m�n # gia nh�p c�a k� n�ng # 
if (HaveMagic(99) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(99) -- script viet hoa By http://tranhba.com  phong hoa tuy�t nguy�t [99 ]# nh�p m�n # 
end 
if (HaveMagic(102) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(102) -- script viet hoa By http://tranhba.com  gi� cu�n t�n tuy�t [102]# nh�p m�n # 
end 
end 
if (lvl >= 20) then -- script viet hoa By http://tranhba.com  10 c�p nhi�m v� # th�m 10 c�p k� n�ng # 
if (HaveMagic(95) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(95) -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  th�y kh�i �ao ph�p [95 ]#10 c�p # 
end 
if (HaveMagic(97) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(97) -- script viet hoa By http://tranhba.com  th�y kh�i song �ao [97 ]#10 c�p # 
end 
end 
if (lvl >= 30) then -- script viet hoa By http://tranhba.com  20 c�p nhi�m v� # th�m 20 c�p k� n�ng # 
if (HaveMagic(269) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(269) -- script viet hoa By http://tranhba.com  b�ng t�m xinh ��p �nh [269]#20 c�p # 
end 
end 
if (lvl >= 40) then -- script viet hoa By http://tranhba.com  30 c�p nhi�m v� # th�m 30 c�p k� n�ng # 
if (HaveMagic(105) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(105) -- script viet hoa By http://tranhba.com  m�a ��nh l� hoa [105]#30 c�p # 
end 
if (HaveMagic(113) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(113) -- script viet hoa By http://tranhba.com  m�y tr�i t�n tuy�t [113]#30 c�p # 
end 
end 
if (lvl >= 50) then -- script viet hoa By http://tranhba.com  40 c�p nhi�m v� # th�m 40 c�p k� n�ng # 
if (HaveMagic(100) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(100) -- script viet hoa By http://tranhba.com  h� th� h�n b�ng [100]#30 c�p # 
end 
end 
if (lvl >= 60) then -- script viet hoa By http://tranhba.com  50 c�p nhi�m v� # th�m 50 c�p k� n�ng # 
if (HaveMagic(109) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(109) -- script viet hoa By http://tranhba.com  tuy�t �nh [109]#40 c�p # 
end 
end 
if (lvl >= 70) then -- script viet hoa By http://tranhba.com  tr� v� s� nhi�m v� # th�m tr�n ph�i tuy�t h�c # 
if (HaveMagic(108) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(108) -- script viet hoa By http://tranhba.com  m�c d� sao r�i [108]#60 c�p # 
end 
if (HaveMagic(114) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(114) -- script viet hoa By http://tranhba.com  b�ng c�t tuy�t t�m [114]# tr�n ph�i # 
end 
if (HaveMagic(111) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(111) -- script viet hoa By http://tranhba.com  b�ch s�ng bi�n d�ng sinh [111]#60 c�p # 
end 
end 
if (lvl >= 90) then -- script viet hoa By http://tranhba.com  90 c�p nhi�m v� # th�m 90 c�p k� n�ng # 
if (HaveMagic(336) <= 0) then AddMagic(336,20) end -- script viet hoa By http://tranhba.com  b�ng tung v� �nh [336]#90 c�p # 
if (HaveMagic(337) <= 0) then AddMagic(337,20) end -- script viet hoa By http://tranhba.com  b�ng t�m ti�n t� [337]#90 c�p # 
if (HaveMagic(713) <= 0) then AddMagic(713,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 120 k� n�ng 
if (HaveMagic(1063) <= 0) then AddMagic(1063,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 150 k� n�ng 
if (HaveMagic(1065) <= 0) then AddMagic(1065,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 150 k� n�ng 
AddMagic(210,1)
end 
end 

-------------------------------------------------H�c Skill Phai Thien Nhan-----------------------------------------------------------------------------------

function add_tr(lvl) -- script viet hoa By http://tranhba.com  c�n c� nhi�m v� c�p b�c th�m t��ng �ng ng�y nh�n k� n�ng 
if (lvl >= 10) then -- script viet hoa By http://tranhba.com  �� nh�p m�n # gia nh�p c�a k� n�ng # 
if (HaveMagic(135) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(135) -- script viet hoa By http://tranhba.com  t�n d��ng nh� m�u [135]# nh�p m�n # 
end 
if (HaveMagic(145) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(145) -- script viet hoa By http://tranhba.com  ��n ch� l�a ch�y [145]# nh�p m�n # 
end 
end 
if (lvl >= 20) then -- script viet hoa By http://tranhba.com  10 c�p nhi�m v� # th�m 10 c�p k� n�ng # 
if (HaveMagic(132) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(132) -- script viet hoa By http://tranhba.com  ng�y nh�n m�u ph�p [132]#10 c�p # 
end 
if (HaveMagic(131) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(131) -- script viet hoa By http://tranhba.com  ng�y nh�n �ao ph�p [131]#10 c�p # 
end 
if (HaveMagic(136) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(136) -- script viet hoa By http://tranhba.com  l�a ��t li�n hoa [136]#10 c�p # 
end 
end 
if (lvl >= 30) then -- script viet hoa By http://tranhba.com  20 c�p nhi�m v� # th�m 20 c�p k� n�ng # 
if (HaveMagic(137) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(137) -- script viet hoa By http://tranhba.com  �o �nh bay h� [137]#20 c�p # 
end 
end 
if (lvl >= 40) then -- script viet hoa By http://tranhba.com  30 c�p nhi�m v� # th�m 30 c�p k� n�ng # 
if (HaveMagic(141) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(141) -- script viet hoa By http://tranhba.com  li�t h�a t�nh ng�y [141]#30 c�p # 
end 
if (HaveMagic(138) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(138) -- script viet hoa By http://tranhba.com  ��y s�n �i�n h�i [138]#30 c�p # 
end 
if (HaveMagic(140) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(140) -- script viet hoa By http://tranhba.com  bay h�ng v� t�ch [140]#30 c�p # 
end 
end 
if (lvl >= 50) then -- script viet hoa By http://tranhba.com  40 c�p nhi�m v� # th�m 40 c�p k� n�ng # 
if (HaveMagic(364) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(364) -- script viet hoa By http://tranhba.com  bi t� gi� m�t [364]#40 c�p # 
end 
end 
if (lvl >= 60) then -- script viet hoa By http://tranhba.com  50 c�p nhi�m v� # th�m 50 c�p k� n�ng # 
if (HaveMagic(143) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(143) -- script viet hoa By http://tranhba.com  l� ma �o�t h�n [143]#50 c�p # 
end 
end 
if (lvl >= 70) then -- script viet hoa By http://tranhba.com  tr� v� s� nhi�m v� # th�m tr�n ph�i tuy�t h�c # 
if (HaveMagic(142) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(142) -- script viet hoa By http://tranhba.com  th�u thi�n ho�n nh�t [142]#60 c�p # 
end 
if (HaveMagic(150) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(150) -- script viet hoa By http://tranhba.com  thi�n ma gi�i th� [150]# tr�n ph�i # 
end 
if (HaveMagic(148) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(148) -- script viet hoa By http://tranhba.com  ma di�m th�t s�t [148]#60 c�p # 
end 
end 
if (lvl >= 90) then -- script viet hoa By http://tranhba.com  90 c�p nhi�m v� # th�m 90 c�p k� n�ng # 
if (HaveMagic(361) <= 0) then AddMagic(361,20) end -- script viet hoa By http://tranhba.com  v�n long k�ch [361]#90 c�p # 
if (HaveMagic(362) <= 0) then AddMagic(362,20) end -- script viet hoa By http://tranhba.com  Thi�n Ngo�i L�u Tinh [362]#90 c�p # 
if (HaveMagic(391) <= 0) then AddMagic(391) end -- script viet hoa By http://tranhba.com 90 nguy�n r�a ph� tr� k� n�ng 
if (HaveMagic(715) <= 0) then AddMagic(715,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 120 k� n�ng 
if (HaveMagic(1075) <= 0) then AddMagic(1075,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 150 k� n�ng 
if (HaveMagic(1076) <= 0) then AddMagic(1076,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 150 k� n�ng 
AddMagic(210,1)
end 
end 

--------------------------------------------------H�c Skill Phai Cai Bang--------------------------------------------------------------------------------------

function add_gb(lvl) -- script viet hoa By http://tranhba.com  c�n c� nhi�m v� c�p b�c th�m t��ng �ng C�i Bang k� n�ng 
if (lvl >= 10) then -- script viet hoa By http://tranhba.com  �� nh�p m�n # gia nh�p c�a k� n�ng # 
if (HaveMagic(122) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(122) -- script viet hoa By http://tranhba.com  g�p ng��i ��a tay [122]# nh�p m�n # 
end 
if (HaveMagic(119) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(119) -- script viet hoa By http://tranhba.com  d�c theo c�a b�y b�t [119]# nh�p m�n # 
end 
end 
if (lvl >= 20) then -- script viet hoa By http://tranhba.com  10 c�p nhi�m v� # th�m 10 c�p k� n�ng # 
if (HaveMagic(116) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(116) -- script viet hoa By http://tranhba.com  C�i Bang ch��ng ph�p [116]#10 c�p # 
end 
if (HaveMagic(115) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(115) -- script viet hoa By http://tranhba.com  C�i Bang ca t�ng ph�p [115]#10 c�p # 
end 
end 
if (lvl >= 30) then -- script viet hoa By http://tranhba.com  20 c�p nhi�m v� # th�m 20 c�p k� n�ng # 
if (HaveMagic(129) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(129) -- script viet hoa By http://tranhba.com  h�a hi�m vi di [129]#20 c�p # 
end 
end 
if (lvl >= 40) then -- script viet hoa By http://tranhba.com  30 c�p nhi�m v� # th�m 30 c�p k� n�ng # 
if (HaveMagic(274) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(274) -- script viet hoa By http://tranhba.com  h�ng long ch��ng [274]#30 c�p # 
end 
if (HaveMagic(124) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(124) -- script viet hoa By http://tranhba.com  �� c�u tr�n [124]#30 c�p # 
end 
end 
if (lvl >= 50) then -- script viet hoa By http://tranhba.com  40 c�p nhi�m v� # th�m 40 c�p k� n�ng # 
if (HaveMagic(277) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(277) -- script viet hoa By http://tranhba.com  tr�t kh�ng l�u tay [277]#40 c�p # 
end 
end 
if (lvl >= 60) then -- script viet hoa By http://tranhba.com  50 c�p nhi�m v� # th�m 50 c�p k� n�ng # 
if (HaveMagic(128) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(128) -- script viet hoa By http://tranhba.com  Kh�ng long b�u h�i [128]#50 c�p # 
end 
if (HaveMagic(125) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(125) -- script viet hoa By http://tranhba.com  ca t�ng ��nh ch� d� [125]#50 c�p # 
end 
end 
if (lvl >= 70) then -- script viet hoa By http://tranhba.com  tr� v� s� nhi�m v� # th�m tr�n ph�i tuy�t h�c # 
if (HaveMagic(130) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(130) -- script viet hoa By http://tranhba.com  say �i�p cu�ng v� [130]# tr�n ph�i # 
end 
if (HaveMagic(360) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(360) -- script viet hoa By http://tranhba.com  ti�u dao c�ng [360]#60 c�p # 
end 
end 
if (lvl >= 90) then -- script viet hoa By http://tranhba.com  90 c�p nhi�m v� # th�m 90 c�p k� n�ng # 
if (HaveMagic(357) <= 0) then AddMagic(357,20) end -- script viet hoa By http://tranhba.com  phi long � tr�n tr�i [357]#90 c�p # 
if (HaveMagic(359) <= 0) then AddMagic(359,20) end -- script viet hoa By http://tranhba.com  thi�n h� v� ch� [359]#90 c�p # 
if (HaveMagic(714) <= 0) then AddMagic(714,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 120 k� n�ng 
if (HaveMagic(1073) <= 0) then AddMagic(1073,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 150 k� n�ng 
if (HaveMagic(1074) <= 0) then AddMagic(1074,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 150 k� n�ng  
AddMagic(210,1)
end 
end 

---------------------------------------------------H�c Skill Phai Vo Dang------------------------------------------------------------------------------------

function add_wd(lvl) -- script viet hoa By http://tranhba.com  c�n c� nhi�m v� c�p b�c th�m t��ng �ng V� ���ng k� n�ng 
if (lvl >= 10) then -- script viet hoa By http://tranhba.com  �� nh�p m�n # gia nh�p c�a k� n�ng # 
if (HaveMagic(153) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(153) -- script viet hoa By http://tranhba.com  gi�n l�i ch� [153]# nh�p m�n # 
end 
if (HaveMagic(155) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(155) -- script viet hoa By http://tranhba.com  bi�n c� tr�ng s�ng [155]# nh�p m�n # 
end 
end 
if (lvl >= 20) then -- script viet hoa By http://tranhba.com  10 c�p nhi�m v� # th�m 10 c�p k� n�ng # 
if (HaveMagic(152) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(152) -- script viet hoa By http://tranhba.com  V� ���ng quy�n ph�p [152]#10 c�p # 
end 
if (HaveMagic(151) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(151) -- script viet hoa By http://tranhba.com  V� ���ng ki�m ph�p [151]#10 c�p # 
end 
end 
if (lvl >= 30) then -- script viet hoa By http://tranhba.com  20 c�p nhi�m v� # th�m 20 c�p k� n�ng # 
if (HaveMagic(159) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(159) -- script viet hoa By http://tranhba.com  Th�t tinh tr�n [159]#30 c�p # 
end 
end 
if (lvl >= 40) then -- script viet hoa By http://tranhba.com  30 c�p nhi�m v� # th�m 30 c�p k� n�ng # 
if (HaveMagic(164) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(164) -- script viet hoa By http://tranhba.com  tr�c c�ng m� ph�c [164]#30 c�p # 
end 
if (HaveMagic(158) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(158) -- script viet hoa By http://tranhba.com  ki�m bay kinh thi�n [158]#30 c�p # 
end 
end 
if (lvl >= 50) then -- script viet hoa By http://tranhba.com  40 c�p nhi�m v� # th�m 40 c�p k� n�ng # 
if (HaveMagic(160) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(160) -- script viet hoa By http://tranhba.com  Th� V�n Tung [160]#40 c�p # 
end 
end 
if (lvl >= 60) then -- script viet hoa By http://tranhba.com  50 c�p nhi�m v� # th�m 50 c�p k� n�ng # 
if (HaveMagic(157) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(157) -- script viet hoa By http://tranhba.com  ng�i ng�m v� ng� [157]#50 c�p # 
end 
end 
if (lvl >= 70) then -- script viet hoa By http://tranhba.com  tr� v� s� nhi�m v� # th�m tr�n ph�i tuy�t h�c # 
if (HaveMagic(165) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(165) -- script viet hoa By http://tranhba.com  v� ng� kh�ng c� ki�m [165]#60 c�p # 
end 
if (HaveMagic(166) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(166) -- script viet hoa By http://tranhba.com  Th�i C�c th�n c�ng [166]# tr�n ph�i # 
end 
if (HaveMagic(267) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(267) -- script viet hoa By http://tranhba.com  ba ho�n b�/v� th�ng [267]#60 c�p # 
end 
end 
if (lvl >= 90) then -- script viet hoa By http://tranhba.com  90 c�p nhi�m v� # th�m 90 c�p k� n�ng # 
if (HaveMagic(365) <= 0) then AddMagic(365,20) end -- script viet hoa By http://tranhba.com  Thi�n ��a V� C�c [365]#90 c�p # 
if (HaveMagic(368) <= 0) then AddMagic(368,20) end -- script viet hoa By http://tranhba.com  ng��i ki�m h�p nh�t [368]#90 c�p # 
if (HaveMagic(716) <= 0) then AddMagic(716,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 120 k� n�ng 
if (HaveMagic(1078) <= 0) then AddMagic(1078,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 150 k� n�ng 
if (HaveMagic(1079) <= 0) then AddMagic(1079,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 150 k� n�ng  
AddMagic(210,1)
end 
end 

------------------------------------------------------H�c Skill Phai Con Lon-------------------------------------------------------------

function add_kl(lvl) -- script viet hoa By http://tranhba.com  c�n c� nhi�m v� c�p b�c th�m t��ng �ng C�n L�n k� n�ng 
if (lvl >= 10) then -- script viet hoa By http://tranhba.com  �� nh�p m�n # gia nh�p c�a k� n�ng # 
if (HaveMagic(169) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(169) -- script viet hoa By http://tranhba.com  h� phong ph�p [169]# nh�p m�n # 
end 
if (HaveMagic(179) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(179) -- script viet hoa By http://tranhba.com  cu�ng s�t ��nh ��a [179]# nh�p m�n # 
end 
end 
if (lvl >= 20) then -- script viet hoa By http://tranhba.com  10 c�p nhi�m v� # th�m 10 c�p k� n�ng # 
if (HaveMagic(167) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(167) -- script viet hoa By http://tranhba.com  C�n L�n �ao ph�p [167]#10 c�p # 
end 
if (HaveMagic(168) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(168) -- script viet hoa By http://tranhba.com  C�n L�n ki�m ph�p [168]#10 c�p # 
end 
if (HaveMagic(392) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(392) -- script viet hoa By http://tranhba.com  d�y d�a t� quy�t [392]#10 c�p # 
end 
if (HaveMagic(171) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(171) -- script viet hoa By http://tranhba.com  gi� m�t ph� [171]#10 c�p # 
end 
end 
if (lvl >= 30) then -- script viet hoa By http://tranhba.com  20 c�p nhi�m v� # th�m 20 c�p k� n�ng # 
if (HaveMagic(174) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(174) -- script viet hoa By http://tranhba.com  ky b�n ph� [174]#20 c�p # 
end 
end 
if (lvl >= 40) then -- script viet hoa By http://tranhba.com  30 c�p nhi�m v� # th�m 30 c�p k� n�ng # 
if (HaveMagic(178) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(178) -- script viet hoa By http://tranhba.com  m�t kh� ba thanh [178]#30 c�p # 
end 
if (HaveMagic(172) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(172) -- script viet hoa By http://tranhba.com  t�n l�i nguy�n r�a [172]#30 c�p # 
end 
if (HaveMagic(393) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(393) -- script viet hoa By http://tranhba.com  thi�u h�t ID#30 c�p # 
end 
if (HaveMagic(173) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(173) -- script viet hoa By http://tranhba.com  ng�y thanh ��a tr�c [173]#30 c�p # 
end 
end 
if (lvl >= 50) then -- script viet hoa By http://tranhba.com  40 c�p nhi�m v� # th�m 40 c�p k� n�ng # 
if (HaveMagic(175) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(175) -- script viet hoa By http://tranhba.com  l�n h�n ng�o tuy�t [175]#40 c�p # 
end 
if (HaveMagic(181) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(181) -- script viet hoa By http://tranhba.com  kh� t�m ph� [181]#40 c�p # 
end 
end 
if (lvl >= 60) then -- script viet hoa By http://tranhba.com  50 c�p nhi�m v� # th�m 50 c�p k� n�ng # 
if (HaveMagic(176) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(176) -- script viet hoa By http://tranhba.com  cu�ng phong ch�t �i�n [176]#50 c�p # 
end 
if (HaveMagic(90) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(90) -- script viet hoa By http://tranhba.com  m� tung �o �nh [90 ]#50 c�p # 
end 
end 
if (lvl >= 70) then -- script viet hoa By http://tranhba.com  tr� v� s� nhi�m v� # th�m tr�n ph�i tuy�t h�c # 
if (HaveMagic(275) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(275) -- script viet hoa By http://tranhba.com  s��ng ng�o C�n L�n [275]# tr�n ph�i # 
end 
if (HaveMagic(182) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(182) -- script viet hoa By http://tranhba.com  ng� l�i ch�nh ph�p [182]#60 c�p # 
end 
if (HaveMagic(630) == -1) then 
AddMagic(630); -- script viet hoa By http://tranhba.com  th� ba t�i li�u phi�n , gia t�ng C�n L�n k� n�ng m�i " huy�n thi�n v� c�c " 
end 
end 
if (lvl >= 90) then -- script viet hoa By http://tranhba.com  90 c�p nhi�m v� # th�m 90 c�p k� n�ng # 
if (HaveMagic(372) <= 0) then AddMagic(372,20) end -- script viet hoa By http://tranhba.com  ng�o tuy�t khi�u phong [372]#90 c�p # 
if (HaveMagic(375) <= 0) then AddMagic(375,20) end -- script viet hoa By http://tranhba.com  l�i ��ng c�u thi�n [375]#90 c�p #  
if (HaveMagic(394) <= 0) then AddMagic(394) end -- script viet hoa By http://tranhba.com 90 nguy�n r�a ph� tr� k� n�ng 
if (HaveMagic(717) <= 0) then AddMagic(717,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 120 k� n�ng 
if (HaveMagic(1080) <= 0) then AddMagic(1080,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 150 k� n�ng 
if (HaveMagic(1081) <= 0) then AddMagic(1081,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 150 k� n�ng 
AddMagic(210,1) 
end 
end 

---------------------------------------------H�c Skill Phai Hoa Son---------------------------------------------------------------------------

function add_hs(lvl) -- script viet hoa By http://tranhba.com  c�n c� nhi�m v� c�p b�c th�m t��ng �ng C�n L�n k� n�ng 
if (lvl >= 10) then -- script viet hoa By http://tranhba.com  �� nh�p m�n # gia nh�p c�a k� n�ng # 
if (HaveMagic(1347) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(1347) -- script viet hoa By http://tranhba.com  h� phong ph�p [169]# nh�p m�n # 
end 
if (HaveMagic(1372) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(1372) -- script viet hoa By http://tranhba.com  cu�ng s�t ��nh ��a [179]# nh�p m�n # 
end 
end 
if (lvl >= 20) then -- script viet hoa By http://tranhba.com  10 c�p nhi�m v� # th�m 10 c�p k� n�ng # 
if (HaveMagic(1349) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(1349) -- script viet hoa By http://tranhba.com  C�n L�n �ao ph�p [167]#10 c�p # 
end 
if (HaveMagic(1374) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(1374) -- script viet hoa By http://tranhba.com  C�n L�n ki�m ph�p [168]#10 c�p # 
end 
if (HaveMagic(1350) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(1350) -- script viet hoa By http://tranhba.com  d�y d�a t� quy�t [392]#10 c�p # 
end 
if (HaveMagic(1375) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(1375) -- script viet hoa By http://tranhba.com  gi� m�t ph� [171]#10 c�p # 
end 
end 
if (lvl >= 30) then -- script viet hoa By http://tranhba.com  20 c�p nhi�m v� # th�m 20 c�p k� n�ng # 
if (HaveMagic(1351) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(1351) -- script viet hoa By http://tranhba.com  ky b�n ph� [174]#20 c�p # 
end 
end 
if (lvl >= 40) then -- script viet hoa By http://tranhba.com  30 c�p nhi�m v� # th�m 30 c�p k� n�ng # 
if (HaveMagic(1376) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(1376) -- script viet hoa By http://tranhba.com  m�t kh� ba thanh [178]#30 c�p # 
end 
if (HaveMagic(1354) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(1354) -- script viet hoa By http://tranhba.com  t�n l�i nguy�n r�a [172]#30 c�p # 
end 
end 
if (lvl >= 50) then -- script viet hoa By http://tranhba.com  40 c�p nhi�m v� # th�m 40 c�p k� n�ng # 
if (HaveMagic(1355) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(1355) -- script viet hoa By http://tranhba.com  l�n h�n ng�o tuy�t [175]#40 c�p # 
end 
if (HaveMagic(1379) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(1379) -- script viet hoa By http://tranhba.com  kh� t�m ph� [181]#40 c�p # 
end 
end 
if (lvl >= 60) then -- script viet hoa By http://tranhba.com  50 c�p nhi�m v� # th�m 50 c�p k� n�ng # 
if (HaveMagic(1358) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(1358) -- script viet hoa By http://tranhba.com  cu�ng phong ch�t �i�n [176]#50 c�p # 
end 
end 
if (lvl >= 70) then -- script viet hoa By http://tranhba.com  tr� v� s� nhi�m v� # th�m tr�n ph�i tuy�t h�c # 
if (HaveMagic(1360) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(1360) -- script viet hoa By http://tranhba.com  s��ng ng�o C�n L�n [275]# tr�n ph�i # 
AddMagic(1378)
end 
if (HaveMagic(1380) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(1380) -- script viet hoa By http://tranhba.com  ng� l�i ch�nh ph�p [182]#60 c�p # 
end 
end 
if (lvl >= 90) then -- script viet hoa By http://tranhba.com  90 c�p nhi�m v� # th�m 90 c�p k� n�ng # 
if (HaveMagic(1364) <= 0) then AddMagic(1364,20) end -- script viet hoa By http://tranhba.com  �o�t M�nh Li�n Ho�n Tam Li�n K�ch 
if (HaveMagic(1382) <= 0) then AddMagic(1382,20) end -- script viet hoa By http://tranhba.com  Ph�ch Th�ch Ph� Ng�c
if (HaveMagic(1365) <= 0) then AddMagic(1365,20) end -- script viet hoa By http://tranhba.com T� H� Ki�m Kh� K� N�ng 120 
if (HaveMagic(1369) <= 0) then AddMagic(1369,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 150 k� n�ng ��c C� 9 Ki�m
if (HaveMagic(1384) <= 0) then AddMagic(1384,20) end -- script viet hoa By http://tranhba.com  m�n ph�i 150 k� n�ng Th�n Quang To�n Nhi�u
if (HaveMagic(1501) <= 0) then AddMagic(1501,1) end -- script viet hoa By http://tranhba.com  m�n ph�i 150 k� n�ng Lang Ba Vi Bo
AddMagic(210,1)
end 
end 

----------------------------------------------------Xoa Skill---------------------------------------------------------------------------------------

function del_all_skill()
i = HaveMagic(210) -- script viet hoa By http://tranhba.com  khinh c�ng kh�c thao t�c 
j = HaveMagic(400) -- script viet hoa By http://tranhba.com  � c��p c�a ng��i gi�u gi�p ng��i ngh�o kh� � kh�c thao t�c 
n = RollbackSkill() -- script viet hoa By http://tranhba.com  thanh tr� k� n�ng c�ng tr� v� t�t c� k� n�ng �i�m # bao g�m khinh c�ng ch� ��c th� k� n�ng # 
x = 0 
	if (i ~= -1) then x = x + i end
	if (j ~= -1) then x = x + j end
	SetTaskTemp(21,n + GetMagicPoint() - x)
 
if (i ~= -1) then AddMagic(210,i) end -- script viet hoa By http://tranhba.com  n�u nh� h�c qua khinh c�ng l� th�m tr� v� nguy�n c� c�p b�c 
if (j ~= -1) then AddMagic(400,j) end -- script viet hoa By http://tranhba.com  n�u nh� h�c qua � c��p c�a ng��i gi�u gi�p ng��i ngh�o kh� � gi�ng nhau x� l� 

 
DelMagic(29) -- Thi�n v��ng 
DelMagic(23) 
DelMagic(24) 
DelMagic(26) 
DelMagic(30) 
DelMagic(31) 
DelMagic(32) 
DelMagic(33) 
DelMagic(34) 
DelMagic(35) 
DelMagic(36) 
DelMagic(37) 
DelMagic(38) 
DelMagic(40) 
DelMagic(41) 
DelMagic(42) 
DelMagic(324) 
DelMagic(322)
DelMagic(323)
DelMagic(325)
DelMagic(708)
DelMagic(1058)
DelMagic(1059)
DelMagic(1060)
-----skill 180----------------------------------
						DelMagic(1220)
						DelMagic(1221)
						DelMagic(1222)
						DelMagic(1223)
						DelMagic(1224)
						DelMagic(1225)
						DelMagic(1226)
						DelMagic(1227)
						DelMagic(1228)
						DelMagic(1229)
						DelMagic(1370)
			---------------skill 180----------------------
DelMagic(10) -- Thi�u L�m 
DelMagic(3) 
DelMagic(4) 
DelMagic(5) 
DelMagic(6) 
DelMagic(7) 
DelMagic(8) 
DelMagic(9) 
DelMagic(12) 
DelMagic(14) 
DelMagic(13) 
DelMagic(15) 
DelMagic(271) 
DelMagic(16) 
DelMagic(18) 
DelMagic(20) 
DelMagic(11) 
DelMagic(19) 
DelMagic(21) 
DelMagic(273) 
DelMagic(318) 
DelMagic(319) 
DelMagic(321)
DelMagic(709)
DelMagic(1055)
DelMagic(1056)
DelMagic(1057)
------------------------------------------------------------
DelMagic(45) --  ���ng m�n 
DelMagic(43) 
DelMagic(347) 
DelMagic(303) 
DelMagic(44) 
DelMagic(47) 
DelMagic(48) 
DelMagic(50) 
DelMagic(51) 
DelMagic(54) 
DelMagic(343) 
DelMagic(345) 
DelMagic(349) 
DelMagic(55) 
DelMagic(57) 
DelMagic(58) 
DelMagic(249) 
DelMagic(253) 
DelMagic(341) 
DelMagic(339) 
DelMagic(302) 
DelMagic(342)
DelMagic(710)
DelMagic(1069)
DelMagic(1070)
DelMagic(1071)
DelMagic(1110)
if (HaveMagic(351) ~= -1) then 
SetTaskTemp(20,351) 
DelMagic(351) 
end 
-----------------------------------------------------------------------
DelMagic(63) -- Ngu ��c 
DelMagic(60) 
DelMagic(61) 
DelMagic(62) 
DelMagic(64) 
DelMagic(65) 
DelMagic(66) 
DelMagic(67) 
DelMagic(68) 
DelMagic(384) 
DelMagic(69) 
DelMagic(356) 
DelMagic(70) 
DelMagic(72) 
DelMagic(73) 
DelMagic(74) 
DelMagic(76) 
DelMagic(71) 
DelMagic(75) 
DelMagic(353) 
DelMagic(355)
DelMagic(711)
DelMagic(1066)
DelMagic(1067)
if (HaveMagic(390) ~= -1) then 
SetTaskTemp(20,390) 
DelMagic(390) 
end 
---------------------------------------------------------------
DelMagic(80) --Nga Mi 
DelMagic(101) 
DelMagic(77) 
DelMagic(79) 
DelMagic(385) 
DelMagic(81) 
DelMagic(82) 
DelMagic(83) 
DelMagic(84) 
DelMagic(85) 
DelMagic(86) 
DelMagic(87) 
DelMagic(88) 
DelMagic(89) 
DelMagic(91) 
DelMagic(93) 
DelMagic(252) 
DelMagic(92) 
DelMagic(282) 
DelMagic(328) 
DelMagic(380)
DelMagic(332)
DelMagic(712)
DelMagic(1061)
DelMagic(1062)
DelMagic(1114)
if (HaveMagic(332) ~= -1) then 
SetTaskTemp(20,332) 
DelMagic(332) 
end 
-------------------------------------------------------------
DelMagic(99) --th�y kh�i 
DelMagic(95) 
DelMagic(96) 
DelMagic(97) 
DelMagic(100) 
DelMagic(102) 
DelMagic(103) 
DelMagic(269) 
DelMagic(105) 
DelMagic(109) 
DelMagic(270) 
DelMagic(108) 
DelMagic(113) 
DelMagic(111) 
DelMagic(114) 
DelMagic(336) 
DelMagic(337)
DelMagic(713)
DelMagic(1063)
DelMagic(1065)
-----------------------------------------------
DelMagic(117) --C�i Bang 
DelMagic(115) 
DelMagic(116) 
DelMagic(118) 
DelMagic(119) 
DelMagic(120) 
DelMagic(121) 
DelMagic(122) 
DelMagic(123) 
DelMagic(124) 
DelMagic(126) 
DelMagic(127) 
DelMagic(277) 
DelMagic(274) 
DelMagic(125) 
DelMagic(129) 
DelMagic(130) 
DelMagic(128) 
DelMagic(360) 
DelMagic(357) 
DelMagic(359)
DelMagic(714)
DelMagic(1073)
DelMagic(1074)
---------------------------------------------------
DelMagic(135) --Thien nh�n 
DelMagic(131) 
DelMagic(132) 
DelMagic(134) 
DelMagic(136) 
DelMagic(137) 
DelMagic(138) 
DelMagic(139) 
DelMagic(140) 
DelMagic(364) 
DelMagic(141) 
DelMagic(142) 
DelMagic(143) 
DelMagic(145) 
DelMagic(146) 
DelMagic(147) 
DelMagic(148) 
DelMagic(149) 
DelMagic(150) 
DelMagic(254) 
DelMagic(361) 
DelMagic(362)
DelMagic(715)
DelMagic(1075)
DelMagic(1076)
if (HaveMagic(391) ~= -1) then 
SetTaskTemp(20,391) 
DelMagic(391) 
end 
-------------------------------------------------
DelMagic(153) --V� ���ng 
DelMagic(151) 
DelMagic(152) 
DelMagic(155) 
DelMagic(156) 
DelMagic(157) 
DelMagic(158) 
DelMagic(159) 
DelMagic(160) 
DelMagic(161) 
DelMagic(162) 
DelMagic(164) 
DelMagic(165) 
DelMagic(166) 
DelMagic(267) 
DelMagic(365) 
DelMagic(368)
DelMagic(716)
DelMagic(1078)
DelMagic(1079)
-------------------------------------------------------
DelMagic(169) --C�n L�n 
DelMagic(167) 
DelMagic(168) 
DelMagic(630) 
DelMagic(393)
DelMagic(392)
DelMagic(171) 
DelMagic(174) 
DelMagic(175) 
DelMagic(178) 
DelMagic(179)  
DelMagic(173) 
DelMagic(90) 
DelMagic(181) 
DelMagic(182) 
DelMagic(172) 
DelMagic(176)  
DelMagic(275) 
DelMagic(372) 
DelMagic(375)
DelMagic(717)
DelMagic(1080)
DelMagic(1081)
if (HaveMagic(394) ~= -1) then 
SetTaskTemp(20,394) 
DelMagic(394) 
end 
--------------------------Hoa Son----------
DelMagic(1347) --Hoa Son
DelMagic(1372) 
DelMagic(1349) 
DelMagic(1374) 
DelMagic(1350) 
DelMagic(1375) 
DelMagic(1351) 
DelMagic(1376) 
DelMagic(1354) 
DelMagic(1378) 
DelMagic(1355) 
DelMagic(1379) 
DelMagic(1358) 
DelMagic(1360) 
DelMagic(1380) 
DelMagic(1364)
DelMagic(1382)
DelMagic(1365) 
DelMagic(1370) 
DelMagic(1368) 
DelMagic(1369)
DelMagic(1501)
DelMagic(1384)
DelMagic(1378)
if (HaveMagic(1384) ~= -1) then
SetTaskTemp(31,1384) 
DelMagic(1384) 
end 
end 
-------------------------------------------------------------------------------------------
function rollback_prop()
	local base_str = {35,20,25,30,20}			
	local base_dex = {25,35,25,20,15}
	local base_vit = {25,20,25,30,25}
	local base_eng = {15,25,25,20,40}
	local player_series = GetSeries() + 1

	local Utask88 = GetTask(88)
	AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88, 1))			
	AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88, 2))
	AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88, 3))
	AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88, 4))
	rollback_Skill()
end
--------------------------------------------------------------------------------------
function rollback_Skill()
	local i = HaveMagic(210)		
	local j = HaveMagic(400)		
	local h = HaveMagic(732)		
	local k = HaveMagic(733)		
	local n = RollbackSkill()		
	local x = 0
	if (i ~= -1) then i = 1; x = x + i end		
	if (j ~= -1) then x = x + j end
	if (h ~= -1) then x = x + h end
	if (k ~= -1) then x = x + k end
	local rollback_point = n - x			
	if (rollback_point + GetMagicPoint() < 0) then		
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	if (i ~= -1) then AddMagic(210, i) end			
	if (j ~= -1) then AddMagic(400, j) end			
	if (h ~= -1) then AddMagic(732, h) end
	if (k ~= -1) then AddMagic(733, k) end
end
