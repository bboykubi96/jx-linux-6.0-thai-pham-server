-- script viet hoa By http://tranhba.com  c�c m�n ph�i ti�p d�n �� t� ch�n v�n  C�i Bang 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-10-27) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-05-25) th� d�ng/u�ng k� n�ng to�n khai s�a ��i  �i�u d�ng b�n ngo�i v�n ki�n ph��ng th�c  
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
npc_name = "�� t� 3 t�i C�i Bang "

Include("\\script\\global\\g7vn\\g7configall.lua")

function default_talk()

local nDate = tonumber(date("%Y%m%d%H%M"))
if nDate <= ThoiGianHetHanDiemTP then
	Say("��ng v�o l�c <color=yellow>"..ThoiGianOpenStr.."<color> m�i b�t ��u ch�nh th�c khai m� m�y ch�");
	return 1
end

player_Faction = GetFaction() 
Uworld1000 = nt_getTask(1000) 
if (( Uworld1000 == 240 ) or ( Uworld1000 == 250 )) and ( GetLastFactionNumber() == 6 ) then 
nt_setTask(1000,250) 
Talk(1,"Uworld1000_jiaoyugaibang","Ng��i �� l� �� t� b�n m�n , kh�ng c�n �i , c� th� tr�c ti�p c�ng Long nhi g�p m�t n�i .") 
elseif (player_Faction == "cuiyan") then 
Talk(1,"","Nghe ti�ng �� l�u th�y kh�i m�n h� c� n��ng xinh ��p l�i hi�n l�nh , v� c� n��ng n�y l� t�i khen th��ng khi�u h�a t� m�y r��u ti�n sao ? ") 
elseif (player_Faction == "emei") then 
Talk(1,"","Khi�u h�a t� ��i v�i Nga Mi v� c�ng k� thu�t k�nh ng��ng �� l�u , h�m nay nh�n th�y , hi�p c�t nhu tr�ng , nh�n t�m nh�n thu�t qu� nhi�n danh b�t h� truy�n . ") 
elseif (player_Faction == "tangmen") then 
Talk(1,"","���ng m�n �m kh� m�c d� nghe th�y ng��i bi�n s�c , nh�ng cu�i c�ng l� kh�o l�o c�ng phu , th�t ra th� qu� m�n �ao ph�p kh�ng k�m , � �� ph�a tr�n h� c�ng phu c�ng ch�a ch�c t�n cho ng��i kh�c . ") 
elseif (player_Faction == "wudu") then 
Talk(1,"","T� x�a ch�nh t� b�t l��ng l�p , c� ��c thu�t c�ng d�m tr��ng cu�ng ") 
elseif (player_Faction == "tianwang") then 
Talk(1,"","B�n bang c�ng ��t gi�p h�p x�ng thi�n h� hai ng�y gi�p , ta ca m� hai c�ng n�n th�t t�t th�n c�n m�t ch�t . ha ha ") 
elseif (player_Faction == "shaolin") then 
Talk(1,"","Qu� ph�i v� trung hoa v� thu�t chi nguy�n , h�m nay � kim qu�c hung c�nh v�n ��ng v�ng v�ng kh�ng ng� , khi�u h�a t� th�t b�i ph�c ���c ngay . ") 
elseif (player_Faction == "wudang") then 
Talk(1,"","V� ���ng ch� hi�p danh kh�p thi�n h� , kh�ng h� ta b�i giai m� . xin/m�i thay m�t khi�u h�a t� h��ng ��o m�t ch�n nh�n c�ng c�c v� ��o tr��ng h��ng h�u . ") 
elseif (player_Faction == "kunlun") then 
Talk(1,"","Nguy�n lai l� m�i g�n qu�t kh�i ��ch C�n L�n ph�i cao �� , kh� tr�ch kh� th� nh� v�y l�ng nh�n . ") 
elseif (player_Faction == "tianren") then 
Talk(1,"","Tuy l� c�c v� k� ch� , nh�ng C�i Bang ng�y nh�n v�a v� t� ��ch , ch�ng ta c�ng kh�ng t�t nhi�u l�i , ng�y sau sa tr��ng g�p l�i sau �i . ") 
elseif (player_Faction == "gaibang") then -- script viet hoa By http://tranhba.com  b�n m�n 
Say("C� c�i g� mu�n ta chuy�n c�o bang ch� ��ch , hay l� mu�n ta ��a ng��i tr� v� t�ng �� ? ",4,"Phi�n to�i ��a ta tr� v� /return_yes","B�n �� gi�i thi�u /map_help","K� n�ng n�i r� /skill_help","Xin/m�i h��ng bang ch� th�m h�i , �� t� h�t th�y m�nh kh�e /no") 
elseif (nt_getTask(75) == 255) then -- script viet hoa By http://tranhba.com  h�c d� c�u quy�n ��ch , kh�ng cho ph�p n�a nh�p m�n ph�i 
Talk(1,"","Ng��i �� h�c ���c d� c�u quy�n ! kh�ng th� n�a nh�p m�n ph�i !") 
else -- script viet hoa By http://tranhba.com  ch� c�n kh�ng thu�c v� 10 c� m�n ph�i , kh�ng h� n�a ��n ��c ki�m tr�c � kh�ng c�a ph�i � 
UTask_gb = nt_getTask(8) 
-- script viet hoa By http://tranhba.com  if (GetSeries() == 3) and (GetCamp() == 4) and (GetLevel() >= 50) and (UTask_gb < 5*256) and (nt_getTask(4) == 70*256) then -- script viet hoa By http://tranhba.com  chuy�n m�n ph�i nhi�m v� kh�i ��ng 
-- script viet hoa By http://tranhba.com  Say("Th�n l� ��i T�ng nhi n� , l�i nh�n gi�c l�m cha l� tr�i nh�n hi�u l�c , ng��i th�n th�ng c�ng kh�ng th�n th�ng ? c�n kh�ng mau kh� �m ��u minh d�ng h�nh ��ng th�c t� �� ch�ng minh ng��i t�ng quy�n x�ch t� t�m ? ",2," l� , xin cho ta c� h�i gia nh�p C�i Bang v� ��i t�ng xu�t l�c /defection_get","Kh�ng c� h�ng th� /defection_no") 
if ((UTask_gb > 5*256) and (UTask_gb < 10*256)) then -- script viet hoa By http://tranhba.com  nh�p m�n nhi�m v� trung 
Talk(1,"","Ng��i �ang ti�n h�nh ��ch nh�p m�n nhi�m v� l� � D��ng Ch�u th�nh , k�o ph�i qu� l�u c�ng kh�ng qu� t�t . ") 
elseif (UTask_gb >= 70*256) and (player_Faction ~= "gaibang") then -- script viet hoa By http://tranhba.com  �� xu�t s� 
Say("Gi�p ba ��i �� t�  h�i l�u kh�ng th�y , m�i ng��i m� ��u do t��ng ni�m ��ch , kh�ng bi�t g�n ��y kh�e kh�ng ? ",3,"B�n �� gi�i thi�u /map_help","K� n�ng n�i r� /skill_help","Xin/m�i h��ng bang ch� th�m h�i , �� t� h�t th�y m�nh kh�e /no") 
else 
Talk(1,"enroll_select","B�n bang c� �� nh�t thi�n h� gi�p ��ch danh hi�u , n�i danh giang h� , tr�m n�m kh�ng suy , trong bang ��m r�ng hang h� , nh�n t�i b�i xu�t . ") 
end 
end 
end; 

function defection_get() 
Talk(1,"","N�u ng��i c� h�i c�i � , nh� v�y ch� c�n h��ng thi�n nh�n ho�n nhan h�ng li�t th�nh c�u c�ch d�y , sau �� s� t�i t�m ch�ng ta ng��i n�o ta bang ch� b�m r� l� ���c . ") 
	nt_setTask(8,5*256+10)
Msg2Player("Mu�n chuy�n ��u C�i Bang , ch� c�n h��ng thi�n nh�n d�y gi�o ch� th�nh c�u c�ch d�y , l�i �i h��ng C�i Bang ng��i n�o ta bang ch� b�m r� t�nh hu�ng l� ���c . ") 
AddNote("Mu�n chuy�n ��u C�i Bang , ch� c�n h��ng thi�n nh�n d�y gi�o ch� th�nh c�u c�ch d�y , l�i �i h��ng C�i Bang ng��i n�o ta bang ch� b�m r� t�nh hu�ng l� ���c . ") 
end 

function defection_no() 
Talk(1,"","Nh� ch�i  t� tr��c ��n gi� ���c l�m vua thua l�m gi�c , n�o c� nhi�u nh� v�y ph�n ��ng sai , hu�ng chi kia nh�m ch�n h�n di chi ph�ng c�ng l� r�i v�o h� th�a . C�i Bang ra h�t lo�i ng��i nh� ng��i t�i , xem ra kh�ng �i c�ng ���c . ") 
end 

function enroll_select() 
UTask_gb = nt_getTask(8) 
UTask_tr = nt_getTask(4) 
if ((UTask_tr > 5*256) and (UTask_tr < 10*256)) then -- script viet hoa By http://tranhba.com  �� nh�n ng�y nh�n nh�p m�n nhi�m v� 
Talk(1,"","B�n bang c�ng ng�y nh�n l� t� ��ch , n�u ng��i ngh� v�o ng�y nh�n , v�y ta c�ng kh�ng c� g� c� th� n�i ��ch li�u . ") 
elseif (GetSeries() == 3) and (GetCamp() == 0) and (UTask_tr < 5*256) and (UTask_gb < 5*256) then -- script viet hoa By http://tranhba.com  h�a h�  kh�ng/ch�a v�o ng�y nh�n C�i Bang 
if (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com  c�p b�c ��t t�i c�p m��i 
Say("C� h�ng th� hay kh�ng gia nh�p C�i Bang , m�i ng��i c� c�m c�ng nhau �n , c� r��u c�ng u�ng ", 3,"Gia nh�p C�i Bang /go","Ta suy ngh� l�i m�t ch�t /no","Hi�u r� c�c c�a v� ngh� tinh hoa /Uworld1000_knowmagic") 
else 
Talk(1,"","Ng��i c�n c� ch�a ��nh h�o , qu� s�m v�o gi�p ��i v�i ng��i c� h�i v� l�i , kh�ng b�ng �i tr��c �em c�n c� ��nh kh� m�t ch�t , ��n c�p m��i t�i t�m ta n�a �i . ") 
end 
end -- script viet hoa By http://tranhba.com  kh�ng ph�i l� h�a h� ��ch c�ng kh�ng n�i th�m n�a li�u . 
end; 

function go() 
Uworld1000 = nt_getTask(1000) 
if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then 
nt_setTask(1000,260) 
end 
SetRevPos(115,53) -- script viet hoa By http://tranhba.com  ch� ��i cung c�p s�ng l�i �i�m 
-- script viet hoa By http://tranhba.com  nt_setTask(8, 10*256) -- script viet hoa By http://tranhba.com  tr�c ti�p nh�p m�n 
SetFaction("gaibang") -- script viet hoa By http://tranhba.com  nh� ch�i gia nh�p m�n ph�i 
SetCamp(1) 
SetCurCamp(1) 
-- script viet hoa By http://tranhba.com  SetRank(37) 
nt_setTask(137,68) 
SetLastFactionNumber(6) 
-- script viet hoa By http://tranhba.com  tr�c ti�p x� l� l�u tr�nh 
nt_setTask(8,10*256) 
SetRank(70) 
Msg2Player("Hoan ngh�nh ng��i gia nh�p C�i Bang , tr�c ti�p h�c ���c b�n m�n t�t c� k� n�ng . ") 
add_gb(70) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
-- script viet hoa By http://tranhba.com  k�t th�c 
-- script viet hoa By http://tranhba.com  Msg2Player("Hoan ngh�nh gia nh�p C�i Bang , tr� th�nh v� ��i �� t� , h�c ���c b�n m�n k� n�ng ") 
-- script viet hoa By http://tranhba.com  AddNote("Gia nh�p C�i Bang , tr� th�nh v� ��i �� t� .") 
Msg2Faction("gaibang",GetName().." h�m nay gia nh�p C�i Bang , b�i ki�n c�c v� s� t� , hy v�ng c�c v� quan t�m ch� gi�o !",GetName()) 
--NewWorld(115, 1501, 3672) -- script viet hoa By http://tranhba.com  �em nh� ch�i truy�n t�ng ��n m�n ph�i nh�p kh�u 

end; 

function return_yes() 
NewWorld(115, 1501, 3672) -- script viet hoa By http://tranhba.com  �em nh� ch�i truy�n t�ng ��n m�n ph�i nh�p kh�u 
end; 

function gb_check_yes() -- script viet hoa By http://tranhba.com  theo nh� k� n�ng x�c ��nh nhi�m v� thay ��i l��ng ��ch ki�m tra . . . ch�a t��ng �ng ��i m�i 
if (GetSeries() ~= 2) then 
Talk(1,"","Ng��i ng� h�nh thu�c t�nh kh�ng ph�i ch�ng ta th�y h� , l�m sao s� l�n v�o ��n b�n m�n t�i ? �i tr��c h�i m�t ch�t tr� ch�i nh�n vi�n qu�n l� �i . ") 
elseif (HaveMagic(91) >= 0) then -- script viet hoa By http://tranhba.com  l�m xong 50 c�p nhi�m v� , ph�t quang chi�u kh�p 
nt_setTask(1,60*256) 
Talk(1,"","Ta �� �em nhi�m v� c�a ng��i tr�ng th�i l�n n�a s�a sang l�i qua . ng��i b�y gi� c� th� �i nh�n xu�t s� nhi�m v� . ") 
elseif (HaveMagic(88) >= 0) then -- script viet hoa By http://tranhba.com  l�m xong 40 c�p nhi�m v� , b�t di�t kh�ng d�t 
nt_setTask(1,50*256) 
Talk(1,"","Ta �� �em nhi�m v� c�a ng��i tr�ng th�i l�n n�a s�a sang l�i qua . ng��i �� ho�n th�nh 40 c�p nhi�m v� . ") 
elseif (HaveMagic(85) >= 0) then -- script viet hoa By http://tranhba.com  l�m xong 30 c�p nhi�m v� , m�t l� bi�t thu 
nt_setTask(1,40*256) 
Talk(1,"","Ta �� �em nhi�m v� c�a ng��i tr�ng th�i l�n n�a s�a sang l�i qua . ng��i �� ho�n th�nh 30 c�p nhi�m v� . ") 
elseif (HaveMagic(82) >= 0) then -- script viet hoa By http://tranhba.com  l�m xong 20 c�p nhi�m v� , t� t��ng c�ng thu�c v� 
nt_setTask(1,30*256) 
Talk(1,"","Ta �� �em nhi�m v� c�a ng��i tr�ng th�i l�n n�a s�a sang l�i qua . ng��i �� ho�n th�nh 20 c�p nhi�m v� . ") 
elseif (HaveMagic(77) >= 0) then -- script viet hoa By http://tranhba.com  l�m xong 10 c�p nhi�m v� , Nga Mi ki�m ph�p 
nt_setTask(1,20*256) 
Talk(1,"","Ta �� �em nhi�m v� c�a ng��i tr�ng th�i l�n n�a s�a sang l�i qua . ng��i �� ho�n th�nh 10 c�p nhi�m v� . ") 
else 
nt_setTask(1,10*256) 
Talk(1,"","Ta �� �em nhi�m v� c�a ng��i tr�ng th�i l�n n�a s�a sang l�i qua . ng��i b�y gi� c� th� �i nh�n 10 c�p nhi�m v� . ") 
end 
end; 

function gb_check_no() 
Say("C� c�i g� mu�n ta chuy�n c�o bang ch� ��ch , hay l� mu�n ta ��a ng��i tr� v� t�ng �� ? ",2,"Phi�n to�i ��a ta tr� v� /return_yes","Xin/m�i h��ng bang ch� th�m h�i , �� t� h�t th�y m�nh kh�e /no") 
end 

function Uworld1000_jiaoyugaibang() 
nt_setTask(1000,260) 
Msg2Player("Ng��i �� l� C�i Bang �� t� , kh�ng c�n �i , ng��i c� th� tr�c ti�p �i g�p Long nhi n�i chuy�n .") 
end 

function no() 
end; 
