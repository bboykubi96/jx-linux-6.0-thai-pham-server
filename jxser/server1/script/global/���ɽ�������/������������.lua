-- script viet hoa By http://tranhba.com  Thi�n v��ng ti�p d�n �� t� m� b�n Thi�n v��ng t��ng l�nh 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-10-28) t� nh�n v�t ��i tho�i s�a ��i t�i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-05-25) th� d�ng/u�ng k� n�ng to�n khai s�a ��i �i�u d�ng b�n ngo�i v�n ki�n ph��ng th�c 
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )

npc_name = "Thi�n V��ng T��ng L�nh " 

Include("\\script\\global\\g7vn\\g7configall.lua")

function default_talk()

local nDate = tonumber(date("%Y%m%d%H%M"))
if nDate <= ThoiGianHetHanDiemTP then
	Say("��ng v�o l�c <color=yellow>"..ThoiGianOpenStr.."<color> m�i b�t ��u ch�nh th�c khai m� m�y ch�");
	return 1
end

player_Faction = GetFaction() 
Uworld1000 = nt_getTask(1000) 
if (( Uworld1000 == 240 ) or ( Uworld1000 == 250 )) and ( GetLastFactionNumber() == 1 ) then 
nt_setTask(1000,250) 
Talk(1,"Uworld1000_jiaoyutianwang","Ng��i �� l� �� t� b�n m�n , kh�ng c�n �i , c� th� tr�c ti�p c�ng Long nhi g�p m�t n�i .") 
elseif (player_Faction == "emei") then 
Talk(1,"","T� gi�p m�t tay ch� th��ng th��ng c�ng b�n thu�c h� nh�c t�i qu� ph�i , ��i v�i qu� ph�i ch��ng m�n thanh hi�u s� th�i v�n lu�n l� h�t s�c k�nh m� ��ch . ") 
elseif (player_Faction == "cuiyan") then 
Talk(1,"","N� nh�n phi�n to�i , n� nh�n xinh ��p h�n n�a phi�n to�i , bi�t v� c�ng n� nh�n xinh ��p c�ng l� phi�n to�i trung ��ch phi�n to�i , qu� ph�i ng��i c�a ta c�ng kh�ng d�m tr�u ch�c") 
elseif (player_Faction == "tangmen") then 
Talk(1,"","H�c v� ng��i h�n quang minh l�i l�c , ta gh�t nh�t nh�ng th� kia khi�n cho �m kh� h� ��c thu�c ��ch th�y kh�ng ph�i quang ��ch h�nh k�nh") 
elseif (player_Faction == "wudu") then 
Talk(1,"","B�n bang m�c d� kh�ng m� t�n b�t k� danh m�n ch�nh ph�i , nh�ng l� c�ng kh�ng ti�t c�ng nh�ng th� kia khi�n cho c� h� ��c �� v� ng�") 
elseif (player_Faction == "shaolin") then 
Talk(1,"","Thi�u L�m c�ng phu m�c d� ���c x�ng v� l�m ch�nh t�ng , nh�ng l� ta c�ng kh�ng l�m sao ph�c kh� , h�a th��ng th�t t�t ni�m kinh m�i l� ��ng ��n , h�c ng��i n�o ��nh nhau , b�y gi� c� vi thanh s�a chi ��o . ") 
elseif (player_Faction == "wudang") then 
Talk(1,"","Truy�n thuy�t qu� ph�i n�i m�t ch�n nh�n v� c�ng s�u kh�ng l��ng ���c , kh�ng bi�t l�c n�o c� c� h�i th�y . ") 
elseif (player_Faction == "kunlun") then 
Talk(1,"","Qu� ph�i n�m g�n ��y ph�t tri�n th�n t�c , n�i v�y c�ng kh�ng ph�i l�ng ph�i h� danh , ch�ng qua l� ch� �em Trung Nguy�n v� l�m c�ng coi th��ng") 
elseif (player_Faction == "tianren") then 
Talk(1,"","Ch�ng ta c�ng kh�ng c�ng ng��i Kim ��nh c�i g� giao ��o") 
elseif (player_Faction == "gaibang") then 
Talk(1,"","��t gi�p c�ng b�n bang ���c x�ng thi�n h� hai ��i bang , c� c� h�i ch�ng ta t�t h�n h�o th�n c�n m�t ch�t . ") 
elseif (player_Faction == "tianwang") then 
Say("Huynh �� , c� mu�n hay kh�ng ta ��a ng��i tr� v� ��o ? ",4,"H�o , �a t� huynh �� /return_yes","B�n �� gi�i thi�u /map_help","K� n�ng n�i r� /skill_help","Kh�ng c�n , �a t� /no") 
-- script viet hoa By http://tranhba.com  Say("Ng��ng ng�ng , b�i v� c� �t ng��i nhi�m v� tr�ng th�i b�t ch�nh x�c , ch�ng ta �ang l�n n�a v� m�n h� �� t� ti�n h�nh ki�m tra . ng��i mu�n ki�m tra nhi�m v� c�a ng��i tr�ng th�i sao ? n�u nh� ng��i cho r�ng ng��i ��ch tr�ng th�i l� ch�nh x�c c�ng kh�ng t�t ki�m tra . ",2,"Ki�m tra /tw_check_yes","Kh�ng c�n /tw_check_no") 
elseif (nt_getTask(75) == 255) then -- script viet hoa By http://tranhba.com  h�c d� c�u quy�n ��ch , kh�ng cho ph�p n�a nh�p m�n ph�i 
Talk(1,"","Ng��i �� h�c ���c d� c�u quy�n ! kh�ng th� n�a nh�p m�n ph�i !") 
else -- script viet hoa By http://tranhba.com  ch� c�n kh�ng thu�c v� 10 c� m�n ph�i , kh�ng h� n�a ��n ��c ki�m tr�c � kh�ng c�a ph�i � 
UTask_tw = nt_getTask(3) 
-- script viet hoa By http://tranhba.com  if ((UTask_tw > 5*256) and (UTask_tw < 10*256)) then -- script viet hoa By http://tranhba.com  nh�p m�n nhi�m v� trung 
-- script viet hoa By http://tranhba.com  Talk(1,"","Ng��i �� � tr�n tr�i v��ng ��o t�n ��o d�n ch� nh�n b�n bang ��ch nh�p m�n nhi�m v� , nh�ng l� ch�a ho�n th�nh , ng��i c�n �i ba l�ng huy�n t�u qu�n mua ���c r��u ngon � o�nh lai xu�n �") 
if (UTask_tw >= 70*256) then -- script viet hoa By http://tranhba.com  Thi�n v��ng gi�p xu�t s� 
Say("Ng��i �� � tr�n tr�i v��ng ��o t�n ��o d�n ch� nh�n b�n bang ��ch nh�p m�n nhi�m v� , nh�ng l� ch�a ho�n th�nh , ng��i c�n �i ba l�ng huy�n t�u qu�n mua ���c r��u ngon � o�nh lai xu�n �",3,"B�n �� gi�i thi�u /map_help","K� n�ng n�i r� /skill_help","Bi�t /no") 
		elseif (UTask_tw == 5*256+80) and (GetByte(nt_getTask(38),1) == 127) then		-- script viet hoa By http://tranhba.com  ����������ɣ�������BUG���˵��޲�
Talk(1,"","H�o huynh �� , ch�ng ta l�i g�p m�t , ch� t�i kh�e kh�ng ? c� c� h�i hai anh em ta u�ng n�a m�t ch�n") 
if (HaveMagic(29) >= 0) then -- script viet hoa By http://tranhba.com  h�c ���c ch�m long quy�t ��ch �� t� b�n m�n , thi�t tr� v� �� xu�t s� 
nt_setTask(3,70*256) 
else -- script viet hoa By http://tranhba.com  n�u kh�ng li�n thanh linh , bao g�m tr��c kia ph�n b�i ��n Thi�u L�m ��ch . 
nt_setTask(3,0) 
end 
else 
Talk(3, "select","B�n bang bang ch� d��ng anh � tr�n giang h� h�ch h�ch n�i danh , ��ng xem n�ng l� c� c� g�i , nh�ng l� v� ngh� cao c��ng , ��m th�c h�n ng��i , kh�ng �� cho b�c m�y r�u , c�c huynh �� trong bang c�ng d�ng/u�ng n�ng","B�n bang bang ch�ng tr�i r�ng hai h� , nhi�u ng��i th� l�n , thi�n h� kh�ng ng��i d�m khinh th��ng ch�ng ta","B�n bang v�a kh�ng qu�n Kim c�ng ph�n t�ng ��nh , c�c huynh �� ��u l� ngh�o kh� d�n ch�ng xu�t th�n , x�ng x�o giang h� c�ng ch� l� v� c� con ���ng s�ng . ho�ng �� n�o ng�i giang s�n , c�ng ch�ng ta c�ng kh�ng quan h� th� n�o") 
end 
end 
end; 

function select()
UTask_tw = nt_getTask(3) 
UTask_sl = nt_getTask(7) -- script viet hoa By http://tranhba.com  t�m th�i kh�ng cho ph�p tr� l�i Thi�u L�m n�ng h�n ph�n Thi�n v��ng . 
if ((UTask_sl > 5*256) and (UTask_sl < 10*256)) then -- script viet hoa By http://tranhba.com  �� nh�n Thi�u L�m nh�p m�n nhi�m v� 
Talk(1,"","huynh �� nguy�n lai l� mu�n v�o ph�i Thi�u l�m , ng�y sau c�ng hoan ngh�nh ng�y qua/n�a v��ng gi�p l�m kh�ch . ") 
elseif (GetCamp() == 0) and (GetSeries() == 0) and (UTask_sl < 5*256) and (UTask_tw < 5*256) then -- script viet hoa By http://tranhba.com  kim h� kh�ng/ch�a v�o Thi�u L�m Thi�n v��ng 
if (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com  c�p b�c ��t t�i c�p m��i 
Say("ng��i gia nh�p b�n bang , ch�ng ta ch�nh l� m�t gia huynh �� n�a/r�i , �o�n ng��i c� ph�c c�ng h��ng , c� n�n c�ng ch�u , oanh oanh li�t li�t ��a ��i l�m m�t cu�c", 3,"Gia nh�p Thi�n v��ng gi�p /go","Ta suy ngh� l�i m�t ch�t /no","Hi�u r� c�c c�a v� ngh� tinh hoa /Uworld1000_knowmagic") 
else 
Talk(1,"","h�c v� ng��i , ng��i n�o kh�ng c� ch�y qua m�u ch�y qua m� h�i ? s� kh� kh�ng th� ���c tr��c ra th�n luy�n th�t gi�i m�t luy�n , ��nh h�o c�n c� ��n <color=Red> c�p m��i <color> t�i t�m ta n�a . ") 
end 
end 
end; 

function go() 
Uworld1000 = nt_getTask(1000) 
if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then 
nt_setTask(1000,260) 
end 
SetRevPos(59,21) -- script viet hoa By http://tranhba.com  thi�t tr� s�ng l�i �i�m 
-- script viet hoa By http://tranhba.com  nt_setTask(3, 10*256) 
SetFaction("tianwang") -- script viet hoa By http://tranhba.com  nh� ch�i gia nh�p Thi�n v��ng gi�p 
SetCamp(3) 
SetCurCamp(3) 
-- script viet hoa By http://tranhba.com  SetRank(43) 
nt_setTask(137,63) 
SetLastFactionNumber(1) 
-- script viet hoa By http://tranhba.com  tr�c ti�p x� l� l�u tr�nh 
nt_setTask(3,10*256) 
SetRank(79) 
Msg2Player("Hoan ngh�nh ng��i gia nh�p Thi�n v��ng gi�p , tr�c ti�p h�c ���c b�n m�n t�t c� k� n�ng . ") 
add_tw(70) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
-- script viet hoa By http://tranhba.com  k�t th�c 
-- script viet hoa By http://tranhba.com  Msg2Player("Hoan ngh�nh gia nh�p Thi�n v��ng gi�p , bi�n th�nh Thi�n v��ng gi�p �� t� !") 
-- script viet hoa By http://tranhba.com  Msg2Player("H�c ���c s�m s�t ch�m , tr� v� phong r�i nh�n ") 
-- script viet hoa By http://tranhba.com  AddNote("Gia nh�p Thi�n v��ng gi�p , tr� th�nh b�n bang �� t� .") 
Msg2Faction("tianwang",GetName().." k� t� h�m nay gia nh�p Thi�n v��ng gi�p , b�i ki�n c�c v� , hy v�ng c�c v� ch� gi�o nhi�u h�n !",GetName()) 
---NewWorld(59,1552,3188) -- script viet hoa By http://tranhba.com  �em nh� ch�i truy�n t�ng ��n m�n ph�i nh�p kh�u 
end; 

function return_yes() 
NewWorld(59, 1425, 3472) -- script viet hoa By http://tranhba.com  �em nh� ch�i truy�n t�ng ��n m�n ph�i nh�p kh�u 
end; 

function tw_check_yes() 
if (GetSeries() ~= 0) then 
Talk(1,"","ng��i ng� h�nh thu�c t�nh kh�ng ph�i ch�ng ta kim h� , l�m sao s� l�n v�o ��n b�n bang t�i ? �i tr��c h�i m�t ch�t tr� ch�i nh�n vi�n qu�n l� �i . ") 
elseif (HaveMagic(41) >= 0) then -- script viet hoa By http://tranhba.com  l�m xong 50 c�p nhi�m v� , huy�t chi�n b�t ph��ng 
nt_setTask(3,60*256) 
Talk(1,"","ta �� �em nhi�m v� c�a ng��i tr�ng th�i l�n n�a s�a sang l�i qua . ng��i b�y gi� c� th� �i nh�n xu�t s� nhi�m v� . ") 
elseif (HaveMagic(37) >= 0) then -- script viet hoa By http://tranhba.com  l�m xong 40 c�p nhi�m v� , b�t phong ch�m 
nt_setTask(3,50*256) 
Talk(1,"","ta �� �em nhi�m v� c�a ng��i tr�ng th�i l�n n�a s�a sang l�i qua . ng��i �� ho�n th�nh 40 c�p nhi�m v� . ") 
elseif (HaveMagic(36) >= 0) then -- script viet hoa By http://tranhba.com  l�m xong 30 c�p nhi�m v� , Thi�n v��ng chi�n � 
nt_setTask(3,40*256) 
Talk(1,"","ta �� �em nhi�m v� c�a ng��i tr�ng th�i l�n n�a s�a sang l�i qua . ng��i �� ho�n th�nh 30 c�p nhi�m v� . ") 
elseif (HaveMagic(33) >= 0) then -- script viet hoa By http://tranhba.com  l�m xong 20 c�p nhi�m v� , t�nh t�m quy�t 
nt_setTask(3,30*256) 
Talk(1,"","ta �� �em nhi�m v� c�a ng��i tr�ng th�i l�n n�a s�a sang l�i qua . ng��i �� ho�n th�nh 20 c�p nhi�m v� . ") 
elseif (HaveMagic(23) >= 0) then -- script viet hoa By http://tranhba.com  l�m xong 10 c�p nhi�m v� , Thi�n v��ng th��ng ph�p 
nt_setTask(3,20*256) 
Talk(1,"","ta �� �em nhi�m v� c�a ng��i tr�ng th�i l�n n�a s�a sang l�i qua . ng��i �� ho�n th�nh 10 c�p nhi�m v� . ") 
else 
nt_setTask(3,10*256) 
Talk(1,"","ta �� �em nhi�m v� c�a ng��i tr�ng th�i l�n n�a s�a sang l�i qua . ng��i b�y gi� c� th� �i nh�n 10 c�p nhi�m v� . ") 
end 
end 

function tw_check_no() 
Say("huynh �� , c� mu�n hay kh�ng ta ��a ng��i tr� v� ��o ? ",2,"H�o , �a t� huynh �� /return_yes","Kh�ng c�n , �a t� /return_no") 
end 


function Uworld1000_jiaoyutianwang() 
nt_setTask(1000,260) 
Msg2Player("Thi�n v��ng gi�p ti�p d�n �� t� n�i �� l� m�n ph�i �� t� , ng��i c� th� tr�c ti�p �i g�p Long nhi n�i chuy�n .") 
end 


function no() 
end; 
