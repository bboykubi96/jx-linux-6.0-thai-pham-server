-- script viet hoa By http://tranhba.com  V� ���ng ti�p d�n �� t� m� b�n V� ���ng ��o nh�n 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-10-28) t� nh�n v�t ��i tho�i s�a ��i t�i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-05-25) th� d�ng/u�ng k� n�ng to�n khai s�a ��i �i�u d�ng b�n ngo�i v�n ki�n ph��ng th�c 
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
npc_name = "V� ��ang ��o Nh�n " 

Include("\\script\\global\\g7vn\\g7configall.lua")

function default_talk()

local nDate = tonumber(date("%Y%m%d%H%M"))
if nDate <= ThoiGianHetHanDiemTP then
	Say("��ng v�o l�c <color=yellow>"..ThoiGianOpenStr.."<color> m�i b�t ��u ch�nh th�c khai m� m�y ch�");
	return 1
end

check_WDtask() 
player_Faction = GetFaction() 
Uworld1000 = nt_getTask(1000) 
if (( Uworld1000 == 240 ) or ( Uworld1000 == 250 )) and ( GetLastFactionNumber() == 8 ) then 
nt_setTask(1000,250) 
Talk(1,"Uworld1000_jiaoyuwudang","Ng��i �� l� �� t� b�n m�n , kh�ng c�n �i , c� th� tr�c ti�p c�ng Long nhi g�p m�t n�i .") 
elseif (player_Faction == "emei") then 
Talk(1,"","Nga Mi n� hi�p , ti�u ��o : ���ng nh� c�i n�y s��ng l� �� li�u . l�nh s� thanh hi�u s� th�i th�n th� kh�e kh�ng ? ") 
elseif (player_Faction == "cuiyan") then 
Talk(1,"","Th�y kh�i c�a ��ch c�ng phu ti�u ��o : ���ng nh� l� r�t b�i ph�c , kh�ng bi�t c� n��ng c� g� ch� gi�o ? ") 
elseif (player_Faction == "tangmen") then 
Talk(1,"","Qu� ph�i ch��ng m�n m�c d� t�nh t�nh thi�n k�ch l�m vi�c kh�ng theo l� th��ng , nh�ng l� l�m ng��i ngay th�ng th�n nhi�n , ng��c l�i c�ng kh�ng m�t l�m m�t c� ch�n qu�n t� . ") 
elseif (player_Faction == "wudu") then 
Talk(1,"","Khi�n cho c� h� ��c ��ch b�n l�nh cao h�n n�a c�c k� , c�ng cu�i c�ng l� m�t l�u chi k� , ��ng kh�ng ���c ��i nh� chi ���ng . ") 
elseif (player_Faction == "tianwang") then 
Talk(1,"","�� s�m nghe n�i Thi�n v��ng gi�p ��ch c�c huynh �� ng��i ng��i ��u l� h�o h�n , h�m nay v�a th�y , qu� nhi�n l� ��nh thi�n l�p ��a ��ch h�o nam nhi") 
elseif (player_Faction == "shaolin") then 
Talk(1,"","Nguy�n lai l� ph�i Thi�u l�m ��ch ti�u s� ph� , kh�ng bi�t c� g� ch� gi�o ? ") 
elseif (player_Faction == "wudang") then 
Say("��o nh�n ta h�t s�c nh� s� ph� , l�o nh�n gia �ng ta g�n ��y th�n th� kh�e kh�ng ? ",4,"Mu�n l�m phi�n s� huynh ��a ta tr� v� n�i /return_yes","B�n �� gi�i thi�u /map_help","K� n�ng n�i r� /skill_help","S� ph� h�t th�y ��u t�t /no") 
-- script viet hoa By http://tranhba.com  Say("Ng��ng ng�ng , b�i v� c� �t ng��i nhi�m v� tr�ng th�i b�t ch�nh x�c , ch�ng ta �ang l�n n�a v� m�n h� �� t� ti�n h�nh ki�m tra . ng��i mu�n ki�m tra nhi�m v� c�a ng��i tr�ng th�i sao ? n�u nh� ng��i cho r�ng ng��i ��ch tr�ng th�i l� ch�nh x�c c�ng kh�ng t�t ki�m tra . ",2,"Ki�m tra /wd_check_yes","Kh�ng c�n /wd_check_no") 
elseif (player_Faction == "kunlun") then 
Talk(1,"","Nguy�n lai l� C�n L�n ph�i ��ch b�ng h�u , kh�ng bi�t ���ng xa t�i , c� g� ch� gi�o ? ") 
elseif (player_Faction == "tianren") then 
Talk(1,"","M�c d� l� c�c v� k� ch� , nh�ng l� ng��i Kim l� ta n��c s�ng , l�n ta d�n ch�ng , th�n l� ��i t�ng con d�n , b�n ph�i tr�n d��i nh�t ��nh s� l�c kh�ng r�t cu�c") 
elseif (player_Faction == "gaibang") then 
Talk(1,"","��t gi�p ��ch H� bang ch� c�ng t� ph�i ch��ng m�n ch�nh l� anh em k�t ngh�a , ��t gi�p c� chuy�n g� , t� ph�i nh�t ��nh s� ��nh l�p t��ng tr� . ") 
elseif (nt_getTask(75) == 255) then -- script viet hoa By http://tranhba.com  h�c d� c�u quy�n ��ch , kh�ng cho ph�p n�a nh�p m�n ph�i 
Talk(1,"","T? ng��i �� h�c ���c d� c�u quy�n ! kh�ng th� n�a nh�p m�n ph�i !") 
else 
UTask_wd = nt_getTask(5) 
if ((UTask_wd > 5*256) and (UTask_wd < 10*256)) then -- script viet hoa By http://tranhba.com  nh�p m�n nhi�m v� trung 
Talk(1,"","Ng��i �� � V� ���ng s�n ti�u ��o ��ng gi� m�t ch� nh�n b�n ph�i ��ch nh�p m�n nhi�m v� , nh�ng l� ch�a ho�n th�nh , ng��i c�n cho h�n t�m v� r�i xu�ng � t�nh l� ��ch th�ng g� . ") 
elseif (UTask_wd >= 70) and (player_Faction ~= "wudang") then -- script viet hoa By http://tranhba.com  �� xu�t s� 
Say("M�c d� ng��i �� xu�t s� xu�ng n�i , nh�ng l� ch�ng ta th��ng th��ng �i�m ni�m t�nh ng��i , ng��i c�i n�y lu�n lu�n kh�e kh�ng ? ",3,"B�n �� gi�i thi�u /map_help","K� n�ng n�i r� /skill_help","S� ph� h�t th�y ��u t�t /no") 
else 
Talk(3, "select","Thi�n h� v� h�c , b�c t�ng Thi�u L�m , nam s�ng V� ���ng , ng��i ngh� t�t nghe n�i qua ch� ? ","b�n ph�i v� c�ng �� � l�y t�nh ch� ��ng , l�y nhu th�ng c��ng , l�y ng�n th�ng tr��ng , l�y ch�m k�ch mau l�y � v�n kh� , l�y kh� v�n th�n , h�u ph�t ch� nh�n . h��ng h� �i�m ��m , l�y v� vi th�ng c� ch�t , l�y v� h�nh th�ng h�u h�nh , m�i l� v� h�c cao nh�t c�nh gi�i . ","b�n ph�i v� c�ng c� � n�m b�t truy�n � , t�c nhu c�t ch�t th�y t�m hi�m h�o ��u cu�ng r��u nh� l� ng��i , b�t truy�n . ") 
end 
end 
end; 

function select() 
UTask_wd = nt_getTask(5) 
UTask_kl = nt_getTask(9) 
if ((UTask_kl > 5*256) and (UTask_kl < 10*256)) then -- script viet hoa By http://tranhba.com  �� nh�n C�n L�n nh�p m�n nhi�m v� 
Talk(1,"","Nga , th� ra l� ng��i ngh� �i C�n L�n h�c ph� ph�p ��o thu�t . ") 
elseif (GetSeries() == 4) and (GetCamp() == 0) and (UTask_kl < 5*256) and (UTask_wd < 5*256) then -- script viet hoa By http://tranhba.com  h�a h� kh�ng/ch�a v�o C�n L�n V� ���ng 
if (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com  c�p b�c ��t t�i c�p m��i 
Say("N�u gia nh�p b�n ph�i c�n thu li�m t�m t�nh , chuy�n t�m tu h�nh , ng�y sau s� c� r�t nhi�u c� h�i ch� ng��i , ng�m ng��i c� th� thi�n th�m ��i ��i . ", 3,"Gia nh�p ph�i V� ���ng /go","Ta suy ngh� l�i m�t ch�t /no","Hi�u r� c�c c�a v� ngh� tinh hoa /Uworld1000_knowmagic") 
else 
Say("H�c v� chi ��o , d�c t�c th� b�t ��t . ng��i m�i v�o giang h� , hay l� tr��c th�t t�t h�c h�i kinh nghi�m �i ��n <color=Red> c�p m��i <color> sau n�y t�i t�m ta n�a ", 0) 
end 
end 
end; 

function go() 
Uworld1000 = nt_getTask(1000) 
if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then 
nt_setTask(1000,260) 
end 
SetRevPos(81,40) -- script viet hoa By http://tranhba.com  thi�t tr� s�ng l�i �i�m 
-- script viet hoa By http://tranhba.com  nt_setTask(5, 10*256) 
SetFaction("wudang") -- script viet hoa By http://tranhba.com  nh� ch�i gia nh�p V� ���ng 
SetCamp(1) 
SetCurCamp(1) 
-- script viet hoa By http://tranhba.com  SetRank(7) 
nt_setTask(137,65) 
SetLastFactionNumber(8) 
-- script viet hoa By http://tranhba.com  tr�c ti�p x� l� l�u tr�nh 
nt_setTask(5,10*256) 
SetRank(73) 
Msg2Player("Hoan ngh�nh ng��i gia nh�p ph�i V� ���ng , tr�c ti�p h�c ���c b�n m�n t�t c� k� n�ng . ") 
add_wd(70) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
-- script viet hoa By http://tranhba.com  k�t th�c 
-- script viet hoa By http://tranhba.com  Msg2Player("Hoan ngh�nh gia nh�p ph�i V� ���ng , xin/m�i t� m�t ��o ��ng b�t ��u , h�c ���c bi�n c� tr�ng s�ng v� c�ng !") 
-- script viet hoa By http://tranhba.com  AddNote("Gia nh�p ph�i V� ���ng , tr� th�nh ��o ��ng !") 
Msg2Faction("wudang",GetName().." h�m nay gia nh�p ph�i V� ���ng , tr��c b�i ki�n c�c v� huynh tr��ng !",GetName()) 
--NewWorld(81, 1574, 3224) -- script viet hoa By http://tranhba.com  �em nh� ch�i truy�n t�ng ��n m�n ph�i nh�p kh�u 

end; 

function return_yes() 
NewWorld(81, 1574, 3224) -- script viet hoa By http://tranhba.com  �em nh� ch�i truy�n t�ng ��n m�n ph�i nh�p kh�u 
end; 

function wd_check_yes() 
if (GetSeries() ~= 4) then 
Talk(1,"","Ng��i ng� h�nh thu�c t�nh kh�ng ph�i ch�ng ta th� h� , l�m sao s� l�n v�o ��n b�n ph�i t�i ? �i tr��c h�i m�t ch�t tr� ch�i nh�n vi�n qu�n l� �i . ") 
elseif (HaveMagic(164) >= 0) then -- script viet hoa By http://tranhba.com  l�m xong 50 c�p nhi�m v� , tr�c c�ng m� ph�c 
nt_setTask(5,60*256) 
Talk(1,"","Ta �� �em nhi�m v� c�a ng��i tr�ng th�i l�n n�a s�a sang l�i qua . ng��i b�y gi� c� th� �i nh�n xu�t s� nhi�m v� . ") 
elseif (HaveMagic(161) >= 0) then -- script viet hoa By http://tranhba.com  l�m xong 40 c�p nhi�m v� , l��ng nghi t�m ph�p 
nt_setTask(5,50*256) 
Talk(1,"","Ta �� �em nhi�m v� c�a ng��i tr�ng th�i l�n n�a s�a sang l�i qua . ng��i �� ho�n th�nh 40 c�p nhi�m v� . ") 
elseif (HaveMagic(158) >= 0) then -- script viet hoa By http://tranhba.com  l�m xong 30 c�p nhi�m v� , ki�m bay kinh thi�n 
nt_setTask(5,40*256) 
Talk(1,"","Ta �� �em nhi�m v� c�a ng��i tr�ng th�i l�n n�a s�a sang l�i qua . ng��i �� ho�n th�nh 30 c�p nhi�m v� . ") 
elseif (HaveMagic(156) >= 0) then -- script viet hoa By http://tranhba.com  l�m xong 20 c�p nhi�m v� , thu�n d��ng t�m ph�p 
nt_setTask(5,30*256) 
Talk(1,"","Ta �� �em nhi�m v� c�a ng��i tr�ng th�i l�n n�a s�a sang l�i qua . ng��i �� ho�n th�nh 20 c�p nhi�m v� . ") 
elseif (HaveMagic(151) >= 0) then -- script viet hoa By http://tranhba.com  l�m xong 10 c�p nhi�m v� , V� ���ng ki�m ph�p 
nt_setTask(5,20*256) 
Talk(1,"","Ta �� �em nhi�m v� c�a ng��i tr�ng th�i l�n n�a s�a sang l�i qua . ng��i �� ho�n th�nh 10 c�p nhi�m v� . ") 
else 
nt_setTask(5,10*256) 
Talk(1,"","Ta �� �em nhi�m v� c�a ng��i tr�ng th�i l�n n�a s�a sang l�i qua . ng��i b�y gi� c� th� �i nh�n 10 c�p nhi�m v� . ") 
end 
end 

function wd_check_no() 
Say("Ta h�t s�c nh� s� ph� , l�o nh�n gia �ng ta g�n ��y th�n th� kh�e kh�ng ? ",2,"Mu�n l�m phi�n s� huynh ��a ta tr� v� n�i /return_yes","S� ph� h�t th�y ��u t�t /return_no") 
end 

function check_WDtask() 
	if (nt_getTask(5) == 30*256+50) then		-- script viet hoa By http://tranhba.com  �����������
if (GetFaction() == "wudang") then -- script viet hoa By http://tranhba.com  kh�ng xu�t s� l�m l�i t�t c� nhi�m v� 
nt_setTask(5,10*256) 
Say("Nhi�m v� c�a ng��i thay ��i l��ng c� sai l�m , v� c�ng xin l�i mu�n m�i/xin ng��i l�n n�a t� 10 c�p nhi�m v� b�t ��u l�m l�i m�t l�n nhi�m v� . ",1,"�a t� /no") 
elseif (HaveMagic(164) >= 0) then -- script viet hoa By http://tranhba.com  �� xu�t s� ( h�c ���c � tr�c c�ng m� ph�c � h�n n�a kh�ng c� � ��y trong m�n ph�i ) ��ch thi�t v� b�nh th��ng xu�t s� 
nt_setTask(5,70*256) 
Say("Nhi�m v� c�a ng��i thay ��i l��ng c� sai l�m , ta �� gi�p ng��i tu ch�nh v� �� xu�t s� tr�ng th�i . ",1,"�a t� /no") 
else -- script viet hoa By http://tranhba.com  k� tha thi�t v� kh�ng/ch�a v�o ph�i V� ���ng 
nt_setTask(5,0) 
Say("Nhi�m v� c�a ng��i thay ��i l��ng c� sai l�m , ta �� gi�p ng��i tu ch�nh v� ch�a nh�p m�n tr�ng th�i . ",1,"�a t� /no") 
end 
end 
end 

function Uworld1000_jiaoyuwudang() 
nt_setTask(1000,260) 
Msg2Player("Ph�i V� ���ng ti�p d�n �� t� n�i �� l� m�n ph�i �� t� , ng��i c� th� tr�c ti�p �i g�p Long nhi n�i chuy�n .") 
end 



function no() 
end; 
