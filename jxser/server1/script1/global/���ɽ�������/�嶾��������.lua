-- script viet hoa By http://tranhba.com  c�c m�n ph�i ti�p d�n �� t� ch�n v�n n�m ��c 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-10-27) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-05-25) th� d�ng/u�ng k� n�ng to�n khai s�a ��i �i�u d�ng b�n ngo�i v�n ki�n ph��ng th�c 
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
npc_name = "Ng� ��c T�n Nh�n" 

Include("\\script\\global\\g7vn\\g7configall.lua")

function default_talk()

local nDate = tonumber(date("%Y%m%d%H%M"))
if nDate <= ThoiGianHetHanDiemTP then
	Say("��ng v�o l�c <color=yellow>"..ThoiGianOpenStr.."<color> m�i b�t ��u ch�nh th�c khai m� m�y ch�");
	return 1
end

player_Faction = GetFaction() 
Uworld1000 = nt_getTask(1000) 
if (( Uworld1000 == 240 ) or ( Uworld1000 == 250 )) and ( GetLastFactionNumber() == 3 ) then 
nt_setTask(1000,250) 
Talk(1,"Uworld1000_jiaoyuwudu","Ng��i �� l� �� t� b�n m�n , kh�ng c�n �i , c� th� tr�c ti�p c�ng Long nhi g�p m�t n�i .") 
elseif (player_Faction == "cuiyan") then 
Talk(1,"","Ti�u m� nh�n , t�i th�m ng��i ca ca ta sao ? t�i t�i h��ng m�t . ") 
elseif (player_Faction == "emei") then 
Talk(1,"","X� ni c� ? th�t l� xui x�o , phi phi phi , ��i c�t ��i l�i ��i c�t ��i l�i . ") 
elseif (player_Faction == "tangmen") then 
Talk(1,"","��ng t��ng r�ng c�c ng��i phi �ao c� g� ��c bi�t h�n ng��i , ch�ng ta chung ��c thu�t m�i th�t s� l� v� �nh v� h�nh , kh� l�ng ph�ng b�") 
elseif (player_Faction == "wudu") then 
Say("Nghe n�i tr�n n�i l�i t�i m�t nh�m tu�n nam m� n� , c� ph�i hay kh�ng v�i v� tr� v� xem m�t ch�t a ? h�c h�c h�c",4,"Ha ha , phi�n to�i ��a ta �o�n ���ng /return_yes","B�n �� gi�i thi�u /map_help","K� n�ng n�i r� /skill_help","Kh�ng c�n , c�ng kh�ng c�p � nh�t th�i /no") 
elseif (player_Faction == "tianwang") then 
Talk(1,"","C�ng ��i kim qu�c ��i ngh�ch l� kh�ng c� g� hay ch� ��ch , c� � h��ng m�t ng�y ��i kim qu�c b�nh ��nh Trung Nguy�n c�c ng��i n�n sau khi bi�t h�i li�u . ") 
elseif (player_Faction == "shaolin") then 
Talk(1,"","Thi�u L�m ��ch t�c ng�c c�a , ��ng t��ng r�ng c�c ng��i gi� b� l� ra ��ng ho�ng d�ng ch�ng ta s� tin th� ng��i , ng��i n�o kh�ng bi�t c�c ng��i th�n � ��i kim l�ng mang nam tri�u . ch� c�n �� cho ch�ng ta b�t ���c c�c ng��i �em chu�i li�u , h� h� h�") 
elseif (player_Faction == "wudang") then 
Talk(1,"","Th� n�o , V� ���ng ��ch c�c ��i hi�p l�i mu�n ch� gi�o t�i h� ? l�n n�y ch� s� s� kh�ng �� cho c�c ng��i nh� � li�u") 
elseif (player_Faction == "kunlun") then 
Talk(1,"","T��c nh�n ��u mu�n �i ch�nh ph�i c�ng ��ch h�p � ph�n t� , tr�n to c�c ng��i �nh m�t nh�n m�t ch�t r� r�ng , ��i kim qu�c c�ng ch�ng ta m�i l� thi�n h� ��i th� s� xu , kh�ng mu�n l�m") 
elseif (player_Faction == "tianren") then 
Talk(1,"","Ta ng��i hai gi�o li�n minh , �ang th�nh nam b�c gi�p c�ng , trong �ng ngo�i h�p chi th� , hoa n�y hoa giang s�n c�n kh�ng th�a tay c� th� ph�i ? c�p c�p c�p c�p") 
elseif (player_Faction == "gaibang") then 
Talk(1,"","X� khi�u h�a t� , c�t ngay , ��ng ��ng d� b�n ��i gia qu�n �o c�a ta") 
elseif (nt_getTask(75) == 255) then -- script viet hoa By http://tranhba.com  h�c d� c�u quy�n ��ch , kh�ng cho ph�p n�a nh�p m�n ph�i 
Talk(1,"","Ng��i �� h�c ���c d� c�u quy�n ! kh�ng th� n�a nh�p m�n ph�i !") 
else -- script viet hoa By http://tranhba.com  ch� c�n kh�ng thu�c v� 10 c� m�n ph�i , kh�ng h� n�a ��n ��c ki�m tr�c � kh�ng c�a ph�i � 
UTask_wu = nt_getTask(10) 
-- script viet hoa By http://tranhba.com  if (GetSeries() == 1) and (GetCamp() == 4) and (GetLevel() >= 50) and (UTask_wu < 5*256) and (nt_getTask(2) == 70*256) then -- script viet hoa By http://tranhba.com  chuy�n m�n ph�i nhi�m v� kh�i ��ng 
-- script viet hoa By http://tranhba.com  Say("Ng��i ���ng m�n �m kh� sao c�ng ta ��c d��c chung thu�t chi s�o , hu�ng chi ���ng th� ng�o m�n kh�ng b�y , v� l� khi kh�ng c�u ch�p , t��ng lai ��nh s� b� ��i kim thi�t k� d�y d� . ng��i kh�ng b�ng th�a d�p s�m ��i ��u ta d�y , t��ng lai ��i kim b�nh ��nh Trung Nguy�n l�c c�n c� th� chia m�t ch�n s�p . ",2,"T�n nh�n n�i nh� v�y �� � t�i , ta mu�n ��i ��u Ng� ��c gi�o /defection_get"," l��i l� ng��i /no") 
if ((UTask_wu > 5*256) and (UTask_wu < 10*256)) then -- script viet hoa By http://tranhba.com  nh�p m�n nhi�m v� trung 
Talk(1,"","Ch� c�n th�ng qua b�n ph�i ��ch nh�p m�n kh�o nghi�m , ng��i li�n c� th� vinh quang ��a tr� th�nh ch�ng ta m�t th�nh vi�n n�a/r�i . ha ha") 
elseif (UTask_wu >= 70*256) and (player_Faction ~= "wudu") then -- script viet hoa By http://tranhba.com  �� xu�t s� 
Talk(1,"","�� l�u kh�ng g�p , tho�t nh�n ng��i g�n nh�t l�n v�o ph�i kh�ng t� l�m . ") 
else 
Talk(1,"enroll_select","Ng� ��c gi�o g�n ��y m�i � trong v� l�m cao h�ng , t� ch�c nghi�m m�t . b�n gi�o �� c�ng kim qu�c n��c d�y ng�y nh�n d�y k�t th�nh li�n minh , t��ng lai kim qu�c th�ng nh�t Trung Nguy�n l� ���c c�ng h��ng qu� b�u li�u . c�p c�p c�p c�p") 
end 
end 
end; 

function defection_get() 
Talk(1,"","C�p c�p c�p c�p , qu� nhi�n l� th�c th�i v� ng��i ng��i ch� c�n �i v� ph�a ���ng th� l�o nhi n�i tho�t kh�i ���ng m�n , sau �� s� h��ng b�n gi�o gi�o ch� h�c m�t lang qu�n b�m b�o , li�n c� th� gia nh�p Ng� ��c gi�o li�u . ") 
	nt_setTask(10,5*256+10)
Msg2Player("Mu�n chuy�n ��u Ng� ��c gi�o , ch� c�n h��ng ���ng th� th�nh c�u , l�i �i h��ng Ng� ��c gi�o ch� h�c m�t lang qu�n b�m b�o l� ���c . ") 
AddNote("Mu�n chuy�n ��u Ng� ��c gi�o , ch� c�n h��ng ���ng th� th�nh c�u , l�i �i h��ng Ng� ��c gi�o ch� h�c m�t lang qu�n b�m b�o l� ���c . ") 
end 

function enroll_select() 
UTask_wu = nt_getTask(10) 
UTask_tm = nt_getTask(2) 
if ((UTask_tm > 5*256) and (UTask_tm < 10*256)) then -- script viet hoa By http://tranhba.com  �� nh�n ���ng m�n nh�p m�n nhi�m v� 
Talk(1,"","���ng m�n c�i lo�i �� b�t nh�p l�u ��ch m�n ph�i c�ng c� ng��i mu�n v�o . ai , l�ng ph� n�a ng�y n��c mi�ng . ") 
elseif (GetSeries() == 1) and (GetCamp() == 0) and (UTask_tm < 5*256) and (UTask_wu < 5*256) then -- script viet hoa By http://tranhba.com  m�c h� kh�ng/ch�a v�o ���ng m�n n�m ��c 
if (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com  c�p b�c ��t t�i c�p m��i 
Say("Nh� th� n�o , c� mu�n hay kh�ng gia nh�p b�n gi�o ? ", 3,"Gia nh�p Ng� ��c gi�o /go","Ta suy ngh� l�i m�t ch�t /no","Hi�u r� c�c c�a v� ngh� tinh hoa /Uworld1000_knowmagic") 
else 
Talk(1,"","Ng��i b�y gi� c�n m�t ch�t tr� c�t ��u kh�ng c� , m�u t�y ti�n v�o d�y ng�y ng�y c�ng chung ��c l�m b�n �� kh�ng ph�i l� mu�n ch�t sao . ng��i �i tr��c luy�n ��n c�p m��i r�i h�y n�i . ") 
end 
end -- script viet hoa By http://tranhba.com  kh�ng ph�i l� m�c h� ��ch c�ng kh�ng n�i th�m n�a li�u . 
end; 

function go() 
Uworld1000 = nt_getTask(1000) 
if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then 
nt_setTask(1000,260) 
end 
SetRevPos(183,70) -- script viet hoa By http://tranhba.com  thi�t tr� s�ng l�i �i�m 
-- script viet hoa By http://tranhba.com  nt_setTask(10,10*256) -- script viet hoa By http://tranhba.com  tr�c ti�p nh�p m�n 
SetFaction("wudu") -- script viet hoa By http://tranhba.com  nh� ch�i gia nh�p ph�i Nga Mi 
SetCamp(2) 
SetCurCamp(2) 
-- script viet hoa By http://tranhba.com  SetRank(49) 
nt_setTask(137,70) 
SetLastFactionNumber(3) 
-- script viet hoa By http://tranhba.com  tr�c ti�p x� l� l�u tr�nh 
nt_setTask(10,10*256) 
SetRank(80) 
Msg2Player("Hoan ngh�nh ng��i gia nh�p Ng� ��c gi�o , tr�c ti�p h�c ���c b�n m�n t�t c� k� n�ng . ") 
add_wu(70) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
-- script viet hoa By http://tranhba.com  k�t th�c 
-- script viet hoa By http://tranhba.com  Msg2Player("Hoan ngh�nh gia nh�p Ng� ��c gi�o , tr� th�nh n�m ��c ��ng t� , h�c ���c ��c sa ch��ng , huy�t �ao ��c gi�t .") 
-- script viet hoa By http://tranhba.com  AddNote("Gia nh�p Ng� ��c gi�o , tr� th�nh n�m ��c ��ng t� .") 
Msg2Faction("wudu",GetName().." h�m nay gia nh�p Ng� ��c gi�o , b�i ki�n c�c v� huynh tr��ng , hy v�ng c�c v� ch� gi�o nhi�u h�n !",GetName()) 
--NewWorld(183, 1746, 2673) -- script viet hoa By http://tranhba.com  �em nh� ch�i truy�n t�ng ��n m�n ph�i nh�p kh�u 

end; 

function return_yes() 
NewWorld(183, 1746, 2673) -- script viet hoa By http://tranhba.com  �em nh� ch�i truy�n t�ng ��n m�n ph�i nh�p kh�u 
end; 

function wu_check_yes() -- script viet hoa By http://tranhba.com  theo nh� k� n�ng x�c ��nh nhi�m v� thay ��i l��ng ��ch ki�m tra . . . ch�a t��ng �ng ��i m�i 
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

function em_check_no() 
Say("Nghe n�i tr�n n�i l�i t�i m�t nh�m tu�n nam m� n� , c� ph�i hay kh�ng v�i v� tr� v� xem m�t ch�t a ? h�c h�c h�c",2,"Ha ha , phi�n to�i ��a ta �o�n ���ng /return_yes","Kh�ng c�n , c�ng kh�ng c�p � nh�t th�i /no") 
end 

function Uworld1000_jiaoyuwudu() 
nt_setTask(1000,260) 
Msg2Player("N�m ��c ti�p d�n �� t� n�i �� l� m�n ph�i �� t� , ng��i c� th� tr�c ti�p �i g�p Long nhi n�i chuy�n .") 
end 

function no() 
end; 
