-- script viet hoa By http://tranhba.com  ���ng m�n ti�p d�n �� t� m� b�n ���ng m�n th� v� 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-10-28) t� nh�n v�t ��i tho�i s�a ��i t�i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-05-25) th� d�ng/u�ng k� n�ng to�n khai s�a ��i �i�u d�ng b�n ngo�i v�n ki�n ph��ng th�c 
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
npc_name = "���ng M�n Th� V�" 

Include("\\script\\global\\g7vn\\g7configall.lua")

function default_talk()

local nDate = tonumber(date("%Y%m%d%H%M"))
if nDate <= ThoiGianHetHanDiemTP then
	Say("��ng v�o l�c <color=yellow>"..ThoiGianOpenStr.."<color> m�i b�t ��u ch�nh th�c khai m� m�y ch�");
	return 1
end

player_Faction = GetFaction() 
Uworld1000 = nt_getTask(1000) 
if (( Uworld1000 == 240 ) or ( Uworld1000 == 250 )) and ( GetLastFactionNumber() == 2 ) then 
nt_setTask(1000,250) 
Talk(1,"Uworld1000_jiaoyutangmen","Ng��i �� l� �� t� b�n m�n , kh�ng c�n �i , c� th� tr�c ti�p c�ng Long nhi g�p m�t n�i .") 
elseif (player_Faction == "tangmen") then 
Say("M�n ch� ph�i ng��i t�i l� c� c�i g� ph�n ph� sao ? ",4,"Ta mu�n m�i xin ng��i ��a ta tr� v� /return_yes","B�n �� gi�i thi�u /map_help","K� n�ng n�i r� /skill_help","Kh�ng c� , ta �i ra l�m chuy�n kh�c /no") 
-- script viet hoa By http://tranhba.com  Say("Ng��ng ng�ng , b�i v� c� �t ng��i nhi�m v� tr�ng th�i b�t ch�nh x�c , ch�ng ta �ang l�n n�a v� m�n h� �� t� ti�n h�nh ki�m tra . ng��i mu�n ki�m tra nhi�m v� c�a ng��i tr�ng th�i sao ? n�u nh� ng��i cho r�ng ng��i ��ch tr�ng th�i l� ch�nh x�c c�ng kh�ng t�t ki�m tra . ",2,"Ki�m tra /tm_check_yes","Kh�ng c�n /tm_check_no") 
elseif (player_Faction == "emei") then 
Talk(1,"","Qu� ph�i ��i v�i b�n m�n m�t m�c r�t c� vi t� , hai ch�ng ta ph�i m�c d� c�ng t�n t�i th�c ��a , l�i cho t�i b�y gi� kh�ng c� lui t�i . ") 
elseif (player_Faction == "cuiyan") then 
Talk(1,"","B�n m�n l�m vi�c m�c d� kh�ng c�u th��ng quy , nh�ng l� c�ng s� kh�ng khi d� nh��c ch�t c� g�i . ") 
elseif (player_Faction == "wudu") then 
Talk(1,"","Ng��i l� Ng� ��c gi�o ng��i c�a sao ? b�n m�n c�ng qu� gi�o l�m v� lui t�i , kh�ng bi�t c� g� qu� ki�n ? m�c d� nghe n�i qu� gi�o khi�n cho ��c h� c� tay c�a �o�n thi�n h� nh�t l�u , nh�ng l� b�n m�n c�ng kh�ng s� , v� nh� qu� gi�o c� � �� g� , s� r�ng � b�n m�n ��ch �m kh� ph�a d��i c�ng chi�m kh�ng ���c xong �i") 
elseif (player_Faction == "tianwang") then 
Talk(1,"","��t gi�p xa � ��ng ��nh , c�ng b�n m�n gi�ng nh� kh�ng c� giao t�nh g� �i ? ") 
elseif (player_Faction == "shaolin") then 
Talk(1,"","B�n m�n t� kh�ng c�ng nh�ng th� kia n�u n�i danh m�n ch�nh ph�i lui t�i . ") 
elseif (player_Faction == "wudang") then 
Talk(1,"","B�n m�n t� kh�ng c�ng nh�ng th� kia n�u n�i danh m�n ch�nh ph�i lui t�i . ") 
elseif (player_Faction == "kunlun") then 
Talk(1,"","C� g� ch� gi�o ? ") 
elseif (player_Faction == "tianren") then 
Talk(1,"","Ta ng��i c�ng kh�ng l� b�ng h�u , c�ng kh�ng ph�i ��ch nh�n , kh�ng c�n b�/v� c�i g� g�n nh�") 
elseif (player_Faction == "gaibang") then 
Talk(1,"","Kh�ng ngh� t�i m�t ��m khi�u h�a t� c�ng c� th� x�ng ra m�t phen thi�n ��a , b�n m�n c�n l� r�t b�i ph�c ��ch . ") 
elseif (nt_getTask(75) == 255) then -- script viet hoa By http://tranhba.com  h�c d� c�u quy�n ��ch , kh�ng cho ph�p n�a nh�p m�n ph�i 
Talk(1,"","Ng��i �� h�c ���c d� c�u quy�n ! kh�ng th� n�a nh�p m�n ph�i !") 
else 
UTask_tm = nt_getTask(2) 
if ((UTask_tm > 5*256) and (UTask_tm < 10*256)) then -- script viet hoa By http://tranhba.com  nh�p m�n nhi�m v� trung 
Talk(1,"","Ng��i �� � tr�c h�i ba quan nh�n b�n m�n ��ch nh�p m�n nhi�m v� , nh�ng l� ch�a ho�n th�nh , ng��i nh�t ��nh ph�i b�t ���c thanh t� b�ch ba chu�i tr�c tr��ng , sau �� giao cho c�a ra ��ng m�n . ") 
elseif (UTask_tm >= 70) and (GetFaction() ~= "tangmen") then -- script viet hoa By http://tranhba.com  �� xu�t s� 
Say("C�a th� v� �� l�u kh�ng g�p , xu�t s� sau n�y c� g� k� ng� a , n�i nghe m�t ch�t ? ",3,"B�n �� gi�i thi�u /map_help","K� n�ng n�i r� /skill_help","Kh�ng c� , ta �i ra l�m chuy�n kh�c /no") 
else 
Talk(2, "select","B�n m�n h�ng c� Xuy�n Th�c , b�ng v�o �m kh� c�ng h�a kh� ��c b� v� l�m , u�ng d� giang h� ��t m�y tr�m n�m l�u . ng��i trong giang h� n�i b�n m�n m� bi�n s�c , c� th� th�y ���c b�n m�n ��ch l�i h�i","C�i g� v� l�m ch�nh ��o d�n t�c ��i ngh�a , t�t c� ��u l� ch� m� ch�ng ta ch� d�a theo b�i c�a m�nh l� ra b�i , c�ng kh�ng nguy�n c�ng nh�ng th� kia n�u n�i danh m�n ch�nh ph�i k�t giao , c�ng kh�ng ti�t c�ng t� ma oai ��o v� ng� . mu�n gia nh�p b�n m�n c�ng kh�ng ph�i l� m�t chuy�n d� d�ng chuy�n c�a , c� � b�t l��ng ng��i c�a ch�ng ta c�ng kh�ng n�n") 
end 
end 
end; 

function select() 
UTask_tm = nt_getTask(2) 
UTask_wu = nt_getTask(10) 
if ((UTask_wu > 5*256) and (UTask_wu < 10*256)) then -- script viet hoa By http://tranhba.com  �� nh�n n�m ��c nh�p m�n nhi�m v� 
Talk(1,"","Th�t t�t t�i hoa , l�i mu�n v�o Ng� ��c gi�o , th�t ��ng ti�c ��ng ti�c . ") 
elseif (GetSeries() == 1) and (GetCamp() == 0) and (UTask_wu < 5*256) and (UTask_tm < 5*256) then -- script viet hoa By http://tranhba.com  m�c h� kh�ng/ch�a v�o n�m ��c ���ng m�n 
if (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com  c�p b�c ��t t�i c�p m��i 
Say("B�n m�n c�ng phu �m kh� thi�n h� n�i ti�ng , ��i v�i c� quan b�y r�p c�ng tr�n ��y nghi�n c�u , ng��i kh�ng mu�n � n�i n�y ch�t ph��ng di�n th� m�t l�n th�n th� sao ? nh�ng l� ph�i nh� k� , ng�n v�n kh�ng th� ti�t l� b�n m�n b� k�", 3,"Gia nh�p ���ng m�n /go","Ta suy ngh� l�i m�t ch�t /no","Hi�u r� c�c c�a v� ngh� tinh hoa /Uworld1000_knowmagic") 
else 
Talk(1,"","Ng��i tr� c�t k�m nh� v�y , v�o b�n m�n c�ng kh� m� c� �i�u l�m , �i tr��c m�nh ma luy�n ma luy�n , ��n <color=Red> c�p m��i <color> sau n�y t�i t�m ta n�a �i") 
end 
end 
end; 

function go() 
Uworld1000 = nt_getTask(1000) 
if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then 
nt_setTask(1000,260) 
end 
SetRevPos(25,15) -- script viet hoa By http://tranhba.com  thi�t tr� s�ng l�i �i�m 
-- script viet hoa By http://tranhba.com  nt_setTask(2, 10*256) 
SetFaction("tangmen") -- script viet hoa By http://tranhba.com  nh� ch�i gia nh�p ���ng m�n 
SetCamp(3) 
SetCurCamp(3) 
-- script viet hoa By http://tranhba.com  SetRank(25) 
nt_setTask(137,62) 
SetLastFactionNumber(2) 
-- script viet hoa By http://tranhba.com  tr�c ti�p x� l� l�u tr�nh 
nt_setTask(2,10*256) 
SetRank(76) 
Msg2Player("Hoan ngh�nh ng��i gia nh�p ���ng m�n , tr�c ti�p h�c ���c b�n m�n t�t c� k� n�ng . ") 
add_tm(70) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
-- script viet hoa By http://tranhba.com  k�t th�c 
-- script viet hoa By http://tranhba.com  Msg2Player("Hoan ngh�nh gia nh�p ���ng m�n , tr� th�nh t�p d�ch , h�c ���c c�ng t�ch l�ch �an ") 
-- script viet hoa By http://tranhba.com  AddNote("Gia nh�p ���ng m�n , tr� th�nh t�p d�ch .") 
Msg2Faction("tangmen",GetName().." k� t� h�m nay gia nh�p ���ng m�n , b�i ki�n c�c v� s� t� , hy v�ng c�c v� quan t�m ch� gi�o !",GetName()) 
--NewWorld(25, 3982, 5235) -- script viet hoa By http://tranhba.com  �em nh� ch�i truy�n t�ng ��n m�n ph�i nh�p kh�u 

end; 

function return_yes() 
NewWorld(25, 3982, 5235) -- script viet hoa By http://tranhba.com  �em nh� ch�i truy�n t�ng ��n m�n ph�i nh�p kh�u 
end; 

function tm_check_yes() 
if (GetSeries() ~= 1) then 
Talk(1,"","Ng��i ng� h�nh thu�c t�nh kh�ng ph�i ch�ng ta m�c h� , l�m sao s� l�n v�o ��n b�n m�n t�i ? �i tr��c h�i m�t ch�t tr� ch�i nh�n vi�n qu�n l� �i . ") 
elseif (HaveMagic(58) >= 0) then -- script viet hoa By http://tranhba.com  l�m xong 50 c�p nhi�m v� , thi�n la ��a v�ng 
nt_setTask(2,60*256) 
Talk(1,"","Ta �� �em nhi�m v� c�a ng��i tr�ng th�i l�n n�a s�a sang l�i qua . ng��i b�y gi� c� th� �i nh�n xu�t s� nhi�m v� . ") 
elseif (HaveMagic(54) >= 0) then -- script viet hoa By http://tranhba.com  l�m xong 40 c�p nhi�m v� , ��y tr�i hoa v� 
nt_setTask(2,50*256) 
Talk(1,"","Ta �� �em nhi�m v� c�a ng��i tr�ng th�i l�n n�a s�a sang l�i qua . ng��i �� ho�n th�nh 40 c�p nhi�m v� . ") 
elseif (HaveMagic(50) >= 0) then -- script viet hoa By http://tranhba.com  l�m xong 30 c�p nhi�m v� , �u�i t�m ti�n 
nt_setTask(2,40*256) 
Talk(1,"","Ta �� �em nhi�m v� c�a ng��i tr�ng th�i l�n n�a s�a sang l�i qua . ng��i �� ho�n th�nh 30 c�p nhi�m v� . ") 
elseif (HaveMagic(47) >= 0) then -- script viet hoa By http://tranhba.com  l�m xong 20 c�p nhi�m v� , �o�t h�n phi�u 
nt_setTask(2,30*256) 
Talk(1,"","Ta �� �em nhi�m v� c�a ng��i tr�ng th�i l�n n�a s�a sang l�i qua . ng��i �� ho�n th�nh 20 c�p nhi�m v� . ") 
elseif (HaveMagic(43) >= 0) then -- script viet hoa By http://tranhba.com  l�m xong 10 c�p nhi�m v� , ���ng m�n �m kh� 
nt_setTask(2,20*256) 
Talk(1,"","Ta �� �em nhi�m v� c�a ng��i tr�ng th�i l�n n�a s�a sang l�i qua . ng��i �� ho�n th�nh 10 c�p nhi�m v� . ") 
else 
nt_setTask(2,10*256) 
Talk(1,"","Ta �� �em nhi�m v� c�a ng��i tr�ng th�i l�n n�a s�a sang l�i qua . ng��i b�y gi� c� th� �i nh�n 10 c�p nhi�m v� . ") 
end 
end; 

function tm_check_no() 
Say("M�n ch� ph�i ng��i t�i l� c� c�i g� ph�n ph� sao ? ",2,"Ta mu�n m�i xin ng��i ��a ta tr� v� /return_yes","Kh�ng c� , ta �i ra l�m chuy�n kh�c /return_no") 
end 

function Uworld1000_jiaoyutangmen() 
nt_setTask(1000,260) 
Msg2Player("���ng m�n ph�i ti�p d�n �� t� n�i �� l� m�n ph�i �� t� , ng��i c� th� tr�c ti�p �i g�p Long nhi n�i chuy�n .") 
end 

function no() 
end; 
