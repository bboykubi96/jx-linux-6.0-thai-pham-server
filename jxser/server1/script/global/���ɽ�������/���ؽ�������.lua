-- script viet hoa By http://tranhba.com  c�c m�n ph�i ti�p d�n �� t� ch�n v�n C�n L�n 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-10-27) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-05-25) th� d�ng/u�ng k� n�ng to�n khai s�a ��i �i�u d�ng b�n ngo�i v�n ki�n ph��ng th�c 
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
npc_name = "C�n L�n H� Ph�p" 

Include("\\script\\global\\g7vn\\g7configall.lua")

function default_talk()

local nDate = tonumber(date("%Y%m%d%H%M"))
if nDate <= ThoiGianHetHanDiemTP then
	Say("��ng v�o l�c <color=yellow>"..ThoiGianOpenStr.."<color> m�i b�t ��u ch�nh th�c khai m� m�y ch�");
	return 1
end

player_Faction = GetFaction() 
Uworld1000 = nt_getTask(1000) 
if (( Uworld1000 == 240 ) or ( Uworld1000 == 250 )) and ( GetLastFactionNumber() == 9 ) then 
nt_setTask(1000,250) 
Talk(1,"Uworld1000_jiaoyukunlun","Ng��i �� l� �� t� b�n m�n , kh�ng c�n �i , c� th� tr�c ti�p c�ng Long nhi g�p m�t n�i .") 
elseif (player_Faction == "cuiyan") then 
Talk(1,"","Th�t l� ��p ��ch c� n�ng qu� nhi�n kh�ng ph�i l� t�y b�c kh� h�n ��t c� th� so ngh� , ai") 
elseif (player_Faction == "emei") then 
Talk(1,"","N� l�u h�ng ng��i n�n � nh� gi�p ch�ng d�y con , �i ra v� �ao l�ng th��ng ��ch c�n th� th�ng g� . th�t l� th� phong nh�t h� a") 
elseif (player_Faction == "tangmen") then 
Talk(1,"","���ng m�n �m kh� , vi m�t chi k� , sao c�ng ch�ng ta ��o ph�p Thi�n t�n th�n truy�n ch� thu�t so s�nh") 
elseif (player_Faction == "wudu") then 
Talk(1,"","Th�i t� ma b�n ngo�i ��o c�ng d�m �i ra hi�n th� , nh�n ��o gia ta kh�ng �em c�c ng��i t�ng �� ch�n") 
elseif (player_Faction == "tianwang") then 
Talk(1,"","Thi�n v��ng gi�p m�c d� b�y gi� l� h�ng h�ng h�a h�a , nh�ng t� m�t n� l�u mang , m�t ng�y n�o �� s� �em ph�n c� nghi�p n�y cho h�y . ") 
elseif (player_Faction == "shaolin") then 
Talk(1,"","��u n�i Thi�u L�m v� h�c ch�nh t�ng , ��ng ti�c c�ng l� b�c t�i v�t , kh�ng gi�ng ta C�n L�n thi�n s� ��o thu�t , trung hoa ch�nh t�ng v� k� . ") 
elseif (player_Faction == "wudang") then 
Talk(1,"","��t hai ta ph�i ��ng ch�c ��o t�ng , c�ng ��u am hi�u ki�m ph�p , c�i g� ch�ng ta b� hoa b� hoa , ��ng h�ng c� cao th�p m�nh y�u �i ra . ") 
elseif (player_Faction == "kunlun") then 
Say("M�t ��ch hoa hoa th� gi�i qu� nhi�n so t�y b�c kh� h�n ��t t�t h�n nhi�u �i , c� mu�n hay kh�ng �i v� ? ",4,"Tr� v� , �a t� ��o huynh . /return_yes","B�n �� gi�i thi�u /map_help","K� n�ng n�i r� /skill_help","T�t nh� v�y ch�i ��a ph��ng , v�i v� tr� v� l�m g� ? /no") 
elseif (player_Faction == "tianren") then 
Talk(1,"","Di�t tuy�t kim ch� ch�nh l� ta b�i b�n ph�n , t�i t�i t�i �n ��o gia m�t ki�m") 
elseif (player_Faction == "gaibang") then 
Talk(1,"","M�t gi�p khi�u h�a t� , coi nh� thanh th� l�n h�n n�a c�ng ch� l� ��m ng��i � h�p , cu�i c�ng kh�ng th�nh ���c c�i g� kh� h�u . ") 
elseif (nt_getTask(75) == 255) then -- script viet hoa By http://tranhba.com  h�c d� c�u quy�n ��ch , kh�ng cho ph�p n�a nh�p m�n ph�i 
Talk(1,"","Ng��i �� h�c ���c d� c�u quy�n , kh�ng th� n�a nh�p m�n ph�i ! ") 
else -- script viet hoa By http://tranhba.com  ch� c�n kh�ng thu�c v� 10 c� m�n ph�i , kh�ng h� n�a ��n ��c ki�m tr�c � kh�ng c�a ph�i � 
UTask_kl = nt_getTask(9) 
-- script viet hoa By http://tranhba.com  if (GetSeries() == 4) and (GetCamp() == 4) and (GetLevel() >= 50) and (UTask_kl < 5*256) and (nt_getTask(5) == 70*256) then -- script viet hoa By http://tranhba.com  chuy�n m�n ph�i nhi�m v� kh�i ��ng 
-- script viet hoa By http://tranhba.com  Say("N�i theo m�t l�o nhi c� c�i g� t�t l�n v�o ��ch sao , ��o m�t l�o nh�n kia b�n tu�i m�i c� th� n�i chuy�n , b�y tu�i c�n t� ra qu�n , ng��i ngh� ng��i �i theo h�n c� c�i g� ti�n �� kh�ng b�ng t�i ch�ng ta C�n L�n ph�i t�nh / ch�n , gi�ng ca ca ta nh� v�y ti�n phong ��o c�t , ch�ng l� ng��i kh�ng h�m m� sao ? ",2," �/d� ... c� th� c�n nh�c /defection_get","T�o dao ph� b�ng , chi�u di�u ch�ng phi�n �� , ta phi/no") 
if ((UTask_kl > 5*256) and (UTask_kl < 10*256)) then -- script viet hoa By http://tranhba.com  nh�p m�n nhi�m v� trung 
Talk(1,"","B�n ph�i kh�ng ph�i l� b�nh th��ng c� th� v�o , ng��i tr��c th�t t�t �em nh�p m�n nhi�m v� ho�n th�nh r�i h�y n�i . ") 
elseif (UTask_kl >= 70*256) and (player_Faction ~= "kunlun") then -- script viet hoa By http://tranhba.com  �� xu�t s� 
Say("Nghe n�i ng��i sau khi xu�ng n�i r�t l� phong quang kho�i � a , c� hay kh�ng ngh� ��n ch�ng ta s� �� s� mu�i a ? ",3,"B�n �� gi�i thi�u /map_help","K� n�ng n�i r� /skill_help","T�t nh� v�y ch�i ��a ph��ng , v�i v� tr� v� l�m g� ? /no") 
else 
Talk(1,"enroll_select","C�n L�n ph�i n�i xa T�y V�c , r�t �t l� c�ng Trung Nguy�n . � m�y ��i ��c l�c ch��ng m�n ��ch kh�ng ng�ng c� g�ng h� , b�n ph�i kh�ng ng�ng l�n m�nh , d�n d�n tr� th�nh tr�n giang h� m�t ��i m�n ph�i , h�ng c� T�y V�c , c�ng Trung Nguy�n c�c ��i m�n ph�i ph�n ��nh kh�ng l� . ") 
end 
end 
end; 

function defection_get() 
Talk(1,"","Ch�nh l� a , xem ng��i th�t l� b�t m�t , v�i v�ng �i v� ph�a ��o m�t l�o nhi n�i ng��i kh�ng l�m , n�a h��ng ta ph�i tuy�n ki ch��ng m�n b�m b�o l� ���c r�i . ") 
	nt_setTask(9,5*256+10)
Msg2Player("Mu�n chuy�n ��u C�n L�n ph�i , ch� c�n h��ng ph�i V� ���ng ��o m�t ch�n nh�n th�nh c�u , l�i �i h��ng C�n L�n ph�i tuy�n ki t� b�m b�o . ") 
AddNote("Mu�n chuy�n ��u C�n L�n ph�i , ch� c�n h��ng ph�i V� ���ng ��o m�t ch�n nh�n th�nh c�u , l�i �i h��ng C�n L�n ph�i tuy�n ki t� b�m b�o . ") 
end 

function enroll_select() 
UTask_kl = nt_getTask(9) 
UTask_wd = nt_getTask(5) 
if ((UTask_wd > 5*256) and (UTask_wd < 10*256)) then -- script viet hoa By http://tranhba.com  �� nh�n V� ���ng nh�p m�n nhi�m v� 
Talk(1,"","Th� ra l� ng��i ngh� v�o V� ���ng , c�ng ���c c�ng ���c , ng��i Trung nguy�n s� ch�nh l� th�ch m� t�n danh m�n ��i ph�i . ") 
elseif (GetSeries() == 4) and (GetCamp() == 0) and (UTask_wd < 5*256) and (UTask_kl < 5*256) then -- script viet hoa By http://tranhba.com  th�y h� kh�ng/ch�a v�o V� ���ng C�n L�n 
if (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com  c�p b�c ��t t�i c�p m��i 
Say("B�n m�n am hi�u ti�n nguy�n r�a ��o thu�t , t� v� khi kh� c�ng ki�m ph�p th�ng ra kh�ng ch� m�t b�c . nh� th� n�o , mu�n gia nh�p b�n ph�i sao ? ", 3,"Gia nh�p C�n L�n ph�i /go","Ta suy ngh� l�i m�t ch�t /no","Hi�u r� c�c c�a v� ngh� tinh hoa /Uworld1000_knowmagic") 
else 
Talk(1,"","B�n ph�i kh�ng khai ng��i v� d�ng , ng��i c�n c� ch�a ��nh h�o , ch� ��n c�p m��i tr� l�i �i . ") 
end 
end -- script viet hoa By http://tranhba.com  kh�ng ph�i l� th� h� ��ch c�ng kh�ng n�i th�m n�a li�u . 
end; 

function go() 
Uworld1000 = nt_getTask(1000) 
if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then 
nt_setTask(1000,260) 
end 
SetRevPos(131,57) -- script viet hoa By http://tranhba.com  ch� ��i cung c�p s�ng l�i �i�m 
-- script viet hoa By http://tranhba.com  nt_setTask(9,10*256) -- script viet hoa By http://tranhba.com  tr�c ti�p nh�p m�n 
SetFaction("kunlun") -- script viet hoa By http://tranhba.com  nh� ch�i gia nh�p C�n L�n 
SetCamp(3) 
SetCurCamp(3) 
-- script viet hoa By http://tranhba.com  SetRank(19) 
nt_setTask(137,69) 
SetLastFactionNumber(9) 
-- script viet hoa By http://tranhba.com  tr�c ti�p x� l� l�u tr�nh 
nt_setTask(9,10*256) 
SetRank(75) 
Msg2Player("Hoan ngh�nh ng��i gia nh�p ph�i V� ���ng , tr�c ti�p h�c ���c b�n m�n t�t c� k� n�ng . ") 
add_kl(70) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
-- script viet hoa By http://tranhba.com  k�t th�c 
-- script viet hoa By http://tranhba.com  Msg2Player("Hoan ngh�nh gia nh�p C�n L�n ph�i , tr� th�nh ph�t tr�n �� t� , h�c ���c h� phong ph�p , cu�ng s�t ��nh ��a ") 
-- script viet hoa By http://tranhba.com  AddNote("Gia nh�p C�n L�n ph�i , tr� th�nh ph�t tr�n �� t� ?.") 
Msg2Faction("kunlun",GetName().." t� h�m nay �i gia nh�p C�n L�n ph�i , b�i ki�n c�c v� s� t� , hy v�ng c�c v� quan t�m ch� gi�o !",GetName()) 
--NewWorld(131, 1582, 3175) -- script viet hoa By http://tranhba.com  ch� ��i cung c�p t�a �� 

end; 

function return_yes() 
NewWorld(131, 1582, 3175) -- script viet hoa By http://tranhba.com  �em nh� ch�i truy�n t�ng ��n m�n ph�i nh�p kh�u 
end; 

function kl_check_yes() -- script viet hoa By http://tranhba.com  theo nh� k� n�ng x�c ��nh nhi�m v� thay ��i l��ng ��ch ki�m tra . . . ch�a t��ng �ng ��i m�i 
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
Say("Ph�a ngo�i hoa hoa th� gi�i qu� nhi�n so t�y b�c kh� h�n ��t t�t h�n nhi�u �i , c� mu�n hay kh�ng �i v� ? ",2,"Tr� v� , �a t� ��o huynh . /return_yes","T�t nh� v�y ch�i ��a ph��ng , v�i v� tr� v� l�m g� ? /no") 
end 

function Uworld1000_jiaoyukunlun() 
nt_setTask(1000,260) 
Msg2Player("C�n L�n ph�i ti�p d�n �� t� n�i kh�ng c�n �i , ng��i c� th� tr�c ti�p �i g�p Long nhi n�i chuy�n ") 
end 

function no() 
end; 
