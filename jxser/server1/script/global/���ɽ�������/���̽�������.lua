-- script viet hoa By http://tranhba.com  c�c m�n ph�i ti�p d�n �� t� ch�n v�n # th�y kh�i c�a 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-10-27) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-05-25) th� d�ng/u�ng k� n�ng to�n khai s�a ��i �i�u d�ng b�n ngo�i v�n ki�n ph��ng th�c 
Include("\\script\\task\\newtask\\newtask_head.lua") 
Include("\\script\\task\\newtask\\education\\knowmagic.lua") 
Include("\\script\\global\\skills_table.lua") 
Include("\\script\\global\\map_helper.lua") 
Include( "\\script\\missions\\freshman_match\\head.lua" ) 
npc_name = "Th�y Y�n Hoa S�" 

Include("\\script\\global\\g7vn\\g7configall.lua")

function default_talk()

local nDate = tonumber(date("%Y%m%d%H%M"))
if nDate <= ThoiGianHetHanDiemTP then
	Say("��ng v�o l�c <color=yellow>"..ThoiGianOpenStr.."<color> m�i b�t ��u ch�nh th�c khai m� m�y ch�");
	return 1
end

player_Faction = GetFaction() 
Uworld1000 = nt_getTask(1000) 
if (( Uworld1000 == 240 ) or ( Uworld1000 == 250 )) and ( GetLastFactionNumber() == 5 ) then 
nt_setTask(1000,250) 
Talk(1,"Uworld1000_jiaoyucuiyan","Ng��i �� l� �� t� b�n m�n , kh�ng c�n �i , c� th� tr�c ti�p c�ng Long nhi g�p m�t n�i .") 
elseif (player_Faction == "cuiyan") then -- script viet hoa By http://tranhba.com  b�n m�n 
Say("Mu�i mu�i l�i len l�n ch�y ra ngo�i ch�i ? ",4," � d� , phi�n to�i t� t� ��a ta tr� v� /return_yes","B�n �� gi�i thi�u /map_help","K� n�ng n�i r� /skill_help","T� t� l�m b� nh� kh�ng th�y ta l� ���c n�a/r�i /no") 
elseif (player_Faction == "emei") then 
Talk(1,"","Nh� hoa b�n ��ch c� g�i , c�ng mu�n m�i ng�y ��i m�t thanh ��n c� ph�t . ta kh�ng th�ch nh�t c�c ng��i ch�nh l� �i�m n�y . ") 
elseif (player_Faction == "tangmen") then 
Talk(1,"","��t hai ta ph�i ��m h�i s�p t�i , kh�ng c�n n�a ph�n v�i nhau , qu� th�t thi�n ��i chuy�n vui . ") 
elseif (player_Faction == "wudu") then 
Talk(1,"","Ta gh�t nh�t len l�n h� ��c h�i ng��i ��ch h� ba l�m a , xin l�i , ta kh�ng ph�i n�i ng��i a . ") 
elseif (player_Faction == "tianwang") then 
Talk(1,"","C�c ng��i trong bang d��ng h� c� b� cha ch�u nh� ta H� t� t� , h� , thi�n h� nam nh�n qu� nhi�n kh�ng c� m�t th� t�t") 
elseif (player_Faction == "shaolin") then 
Talk(1,"","Ta ph�i kh�ng mu�n l�m tr� h�a th��ng m�ng con l�a ng�c n�a/r�i , b�t qu� ��i h�a th��ng ng��i kh�ng c� sao t�m ta ��n g�n l�m g� ? ") 
elseif (player_Faction == "wudang") then 
Talk(1,"","Qu� ph�i l�y hi�p ngh�a t� c� , c�ng kh�ng bi�t �an t� nam lu�n l� gi�ng l�i b� ch� m�t lo�i k� c�n ch�ng ta y�n s� t� l� kia c�a t� hi�p ngh�a ? ") 
elseif (player_Faction == "kunlun") then 
Talk(1,"","Ng��ng m� �� l�u C�n L�n ph�i nhanh ch�ng qu�t kh�i danh ti�ng m�nh m� , th� ra l� qu� ph�i ��ng m�n luy�n c�ng l� th�t �ao s�ng th�t t�nh m�ng t��ng b�c , th�t ��ng l� ��ng qu� , ti�u n� t� t� than th� ph�t nh� nha") 
elseif (player_Faction == "tianren") then 
Talk(1,"","Ng��i n�o l�m ho�ng �� ph�i kh�ng quan chuy�n c�a ta , nh�ng c�c ng��i t�n s�t v� t�i �� ��c sinh linh b�n c� n��ng ch�nh l� nh�n kh�ng v�a m�t") 
elseif (player_Faction == "gaibang") then 
Talk(2,"","��i hi�p kh�ng n�n t�i ","A!!! con r�p...") 
elseif (nt_getTask(75) == 255) then -- script viet hoa By http://tranhba.com  h�c d� c�u quy�n ��ch , kh�ng cho ph�p n�a nh�p m�n ph�i 
Talk(1,"","Ng��i �� h�c ���c d� c�u quy�n ! kh�ng th� n�a nh�p m�n ph�i ! ") 
else -- script viet hoa By http://tranhba.com  ch� c�n kh�ng thu�c v� 10 c� m�n ph�i , kh�ng h� n�a ��n ��c ki�m tr�c � kh�ng c�a ph�i � 
UTask_cy = nt_getTask(6) 
-- script viet hoa By http://tranhba.com  if (GetSeries() == 2) and (GetCamp() == 4) and (GetLevel() >= 50) and (UTask_cy < 5*256) and (nt_getTask(1) == 70*256) then -- script viet hoa By http://tranhba.com  chuy�n m�n ph�i nhi�m v� kh�i ��ng 
-- script viet hoa By http://tranhba.com  Say("Nh� hoa b�n ��ch c� g�i , c�ng mu�n m�i ng�y ��i m�t thanh ��n c� ph�t , c�n g� ch� . kia gi�ng ch�ng ta th�y kh�i m�n h� , ng�y ng�y hoan thanh ti�u ng� , �� m�i l� ch�ng ta ch�n ch�nh h�n c� ng�y nha . ",2,"C� ��o l� , nh� v�y ta mu�n ��i ��u th�y kh�i n�n l�m c�i g� b�y gi� ? /defection_get","Thanh ��n c� ph�t v�n ta mong mu�n , t� t� kh�ng c�n nhi�u l�i /no") 
if ((UTask_cy > 5*256) and (UTask_cy < 10*256)) then -- script viet hoa By http://tranhba.com  nh�p m�n nhi�m v� trung 
Talk(1,"","Ng��i �� � s� mu�i n�i �� nh�n nh�p m�n nhi�m v� , nh�ng l� ch�a ho�n th�nh , ng��i th�ng qua hoa kh�i tr�n ��ch kh�o nghi�m sau ch�nh l� ��ng m�n t� mu�i li�u . ") 
elseif (UTask_cy >= 70*256) and (player_Faction ~= "cuiyan") then -- script viet hoa By http://tranhba.com  �� xu�t s� 
Say("T� t� t�i sao mu�n xu�t s� sao , � ng�m th�y ng�ng kh�i c��i m�u ��n � kh�ng ph�i l� h�n ti�u dao t� t�i sao ? ",3,"B�n �� gi�i thi�u /map_help","K� n�ng n�i r� /skill_help","T� t� l�m b� nh� kh�ng th�y ta l� ���c n�a/r�i /no") 
else 
Talk(1,"enroll_select","Th�y y�n m�n ch�ng ta tuy l� n�, nh�ng v� ngh� l�y 'Khinh, Kho�i, K�, M�' m� n�i ti�ng giang h�. T� mu�i t� t�m! Trong giang h� kh�ng ai d�m coi khinh") 
end 
end 
end; 

function defection_get() 
Talk(1,"","R�t ��n gi�n , ng��i ch� c�n �i v� ph�a qu� ph�i thanh hi�u s� th�i th�nh c�u chuy�n t�i th�y kh�i c�a , sau �� s� h��ng b�n m�n du�n ng�m kh�i ch��ng m�n b�m b�o l� ���c r�i . y�n t�m , thanh hi�u s� th�i th�ng t�nh ��t l� , s� kh�ng l�m kh� ng��i . ") 
	nt_setTask(6,5*256+10)
Msg2Player("Mu�n chuy�n ��u th�y kh�i c�a , ch� c�n h��ng Nga Mi thanh hi�u s� th�i th�nh c�u , sau �� �i v� ph�a th�y kh�i du�n ng�m kh�i ch��ng m�n b�m b�o l� ���c . ") 
AddNote("Mu�n chuy�n ��u th�y kh�i c�a , ch� c�n h��ng Nga Mi thanh hi�u s� th�i th�nh c�u , sau �� �i v� ph�a th�y kh�i du�n ng�m kh�i ch��ng m�n b�m b�o l� ���c . ") 
end 

function enroll_select() 
UTask_em = nt_getTask(1) 
UTask_cy = nt_getTask(6) 
if ((UTask_em > 5*256) and (UTask_em < 10*256)) then -- script viet hoa By http://tranhba.com  �� nh�n th�y kh�i nh�p m�n nhi�m v� 
Talk(1,"","L�i m�t v� h�o t� mu�i mu�n �i tr��ng b�n c� g� thanh ��n , th�t l� ��ng ti�c ��ng ti�c") 
elseif (GetSeries() == 2) and (GetCamp() == 0) and (UTask_em < 5*256) and (UTask_cy < 5*256) then -- script viet hoa By http://tranhba.com  th�y h� kh�ng/ch�a v�o Nga Mi th�y kh�i 
if (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com  c�p b�c ��t t�i c�p m��i 
Say("Mu�i mu�i c� mu�n hay kh�ng gia nh�p ch�ng ta th�y kh�i c�a ? ", 3,"Gia nh�p th�y kh�i c�a /go","Ta suy ngh� l�i m�t ch�t /no","Hi�u r� c�c c�a v� ngh� tinh hoa /Uworld1000_knowmagic") 
else 
Talk(1,"","Ng��i tr��c �em c�n c� ��nh m�t tr�n , ��n <color=Red> c�p m��i <color> ch�ng ta c�ng nhau l�m xong t� mu�i �i . ") 
end 
end -- script viet hoa By http://tranhba.com  kh�ng ph�i l� th�y h� ��ch c�ng kh�ng n�i th�m n�a li�u . 
end; 

function go() 
Uworld1000 = nt_getTask(1000) 
if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then 
nt_setTask(1000,260) 
end 
SetRevPos(154,61) -- script viet hoa By http://tranhba.com  s�ng l�i �i�m 
-- script viet hoa By http://tranhba.com  nt_setTask(6,10*256) -- script viet hoa By http://tranhba.com  tr�c ti�p nh�p m�n 
SetFaction("cuiyan") -- script viet hoa By http://tranhba.com  nh� ch�i gia nh�p ph�i Nga Mi 
SetCamp(3) 
SetCurCamp(3) 
-- script viet hoa By http://tranhba.com  SetRank(31) 
nt_setTask(137,66) 
SetLastFactionNumber(5) 
-- script viet hoa By http://tranhba.com  tr�c ti�p x� l� l�u tr�nh 
nt_setTask(6,10*256) 
SetRank(77) 
Msg2Player("Hoan ngh�nh ng��i gia nh�p th�y kh�i c�a , tr�c ti�p h�c ���c b�n m�n t�t c� k� n�ng . ") 
add_cy(70) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
-- script viet hoa By http://tranhba.com  k�t th�c 
-- script viet hoa By http://tranhba.com  Msg2Player("Hoan ngh�nh ng�i gia nh�p th�y kh�i m�n ph�i bi�n th�nh hoa t� , h�c ���c phong hoa tuy�t nguy�t , gi� cu�n tr�ng t�n / cu�i k� / cu�i th�ng ") 
-- script viet hoa By http://tranhba.com  AddNote("Gia nh�p th�y kh�i m�n ph�i , tr� th�nh hoa t� ") 
Msg2Faction("cuiyan",GetName().." t� h�m nay gia nh�p th�y kh�i m�n ph�i , b�i ki�n c�c v� s� t� , hy v�ng c�c v� quan t�m ch� gi�o !",GetName()) 
--NewWorld(154, 403, 1361) -- script viet hoa By http://tranhba.com  truy�n t�i trong m�n ph�i 

end; 

function return_yes() 
NewWorld(154, 403, 1361) -- script viet hoa By http://tranhba.com  truy�n t�i trong m�n ph�i 
end; 

function cy_check_yes() -- script viet hoa By http://tranhba.com  t� Nga Mi ��i t�i . . . ch�a t��ng �ng ��i m�i 
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

function cy_check_no() 
Say("Mu�i mu�i l�i len l�n ch�y ra ngo�i ch�i ? ",2," � d� , phi�n to�i t� t� ��a ta tr� v� /return_yes","T� t� l�m b� nh� kh�ng th�y ta l� ���c n�a/r�i /no") 
end 

function Uworld1000_jiaoyucuiyan() 
nt_setTask(1000,260) 
Msg2Player("Th�y kh�i c�a ti�p d�n �� t� n�i ng��i c� th� tr�c ti�p �i g�p Long nhi n�i chuy�n .") 
end 

function no() 
end; 
