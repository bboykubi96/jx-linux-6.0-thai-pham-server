-- script viet hoa By http://tranhba.com  c�c m�n ph�i ti�p d�n �� t� ch�n v�n Thi�u L�m 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-10-27) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-05-25) th� d�ng/u�ng k� n�ng to�n khai s�a ��i �i�u d�ng b�n ngo�i v�n ki�n ph��ng th�c 
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
npc_name = "Thi�u L�m La H�n " 

Include("\\script\\global\\g7vn\\g7configall.lua")

function default_talk()

local nDate = tonumber(date("%Y%m%d%H%M"))
if nDate <= ThoiGianHetHanDiemTP then
	Say("��ng v�o l�c <color=yellow>"..ThoiGianOpenStr.."<color> m�i b�t ��u ch�nh th�c khai m� m�y ch�");
	return 1
end

player_Faction = GetFaction() 
Uworld1000 = nt_getTask(1000) 
if (( Uworld1000 == 240 ) or ( Uworld1000 == 250 )) and ( GetLastFactionNumber() == 0 ) then 
nt_setTask(1000,250) 
Talk(1,"Uworld1000_jiaoyushaolin","Ng��i �� l� �� t� b�n m�n , kh�ng c�n �i , c� th� tr�c ti�p c�ng Long nhi g�p m�t n�i .") 
elseif (player_Faction == "cuiyan") then 
Talk(1,"","Qu� m�n l�y v� v�o v� , � v� h�c chi ��o th��ng kh�c khai h� k�nh , ch�n th�n h� k� k� c�ng . ti�u t�ng n�y s��ng l� �� li�u . ") 
elseif (player_Faction == "emei") then 
Talk(1,"","Qu� ph�i thanh hi�u s� th�i ph�t h�c tinh th�m , v� ngh� cao minh , ti�u t�ng t�n nghe th�y �� l�u . ") 
elseif (player_Faction == "tangmen") then 
Talk(1,"","Nghe ti�ng �� l�u th�c trung ���ng m�n h�a �m kh� v� minh kh� , �em �m kh� th��ng ��ch c�ng phu luy�n ���c xu�t th�n nh�p h�a , v�n tr��ng ��i s� nh�c t�i l�c c�ng ��u b�i ph�c ���c ngay . ") 
elseif (player_Faction == "wudu") then 
Talk(1,"","Qu� ph�i c�ng phu v� c�ng �m ��c t�n nh�n , c� vi thi�n h�a , b�n t�ng c� gan khuy�n ng��i c�a nhi�u h�n tu t�p kinh ph�t thi�n l� , kh�n k� t� �i t��ng h�a , h�a gi�i l� kh� m�i l� . ") 
elseif (player_Faction == "tianwang") then 
Talk(1,"","��t gi�p kh�p n�i c�ng qu�n Kim ch�m phong t��ng ��i , nghe n�i kim qu�c �ang �i�u binh khi�n t��ng ��i ph� ��t gi�p , xin/m�i c�c v� c�n th�n nhi�u h�n . ") 
elseif (player_Faction == "shaolin") then 
Say("S� �� , s� ph� l�i khi�n/sai ng��i xu�ng n�i l�m vi�c ? ",4," l� , xin m�i s� huynh ��a ta tr� v� n�i /return_yes","B�n �� gi�i thi�u /map_help","K� n�ng n�i r� /skill_help","��ng v�y , thay ta h��ng s� ph� v�n an /no") 
elseif (player_Faction == "wudang") then 
Talk(1,"","Xin/m�i chuy�n c�o qu� ph�i ��o m�t ch�n nh�n ch� ng�i , t� ph�i ph��ng tr��ng tr� xu�ng , c�c v� th� t�a c�ng mong ��i c�ng qu� ph�i c�c v� t�i t� , c�ng t� v� h�c ch�n �� . ") 
elseif (player_Faction == "kunlun") then 
Talk(1,"","Qu� ph�i v� h�c v� c�ng c�u th�nh , phong mang qu� m�c t�t chi�u t�t h�n . h�nh t�u giang h� , ��y ch�nh l� ��i k� a . A di �� ph�t") 
elseif (player_Faction == "tianren") then 
Talk(1,"","Qu� gi�o tuy b� kim qu�c che ch� , nh�ng giang h� t� c� giang h� quy t�c , c�ng kh�ng ph�i l� tr� th�nh kim qu�c n��c d�y li�n c� th� kh�ng ch� n�o ki�ng k� li�u . ") 
elseif (player_Faction == "gaibang") then 
Talk(1,"","��t gi�p � H� bang ch� d��i s� h��ng d�n c�a ch�ng ch�ng m�t tr�i l�n cao , tr� th�nh Trung Nguy�n trong ch�n v� l�m kh�ng kim ��ch ch� l�c trung th�nh , kh�ng h� ta b�i giai m� . ") 
elseif (nt_getTask(75) == 255) then -- script viet hoa By http://tranhba.com  h�c d� c�u quy�n ��ch , kh�ng cho ph�p n�a nh�p m�n ph�i 
Talk(1,"","Ng��i �� h�c ���c d� c�u quy�n ! kh�ng th� n�a nh�p m�n ph�i ! ") 
else -- script viet hoa By http://tranhba.com  ch� c�n kh�ng thu�c v� 10 c� m�n ph�i , kh�ng h� n�a ��n ��c ki�m tr�c � kh�ng c�a ph�i � 
UTask_sl = nt_getTask(7) 
-- script viet hoa By http://tranhba.com  if (GetSeries() == 0) and (GetCamp() == 4) and (GetLevel() >= 50) and (UTask_sl < 5*256) and (nt_getTask(3) == 70*256) then -- script viet hoa By http://tranhba.com  chuy�n m�n ph�i nhi�m v� kh�i ��ng 
-- script viet hoa By http://tranhba.com  Say("Thi�n h� v� c�ng ra Thi�u L�m , b�n ph�i v� c�ng danh m�n ch�nh t�ng , v�n t� b�y ng�n �� t� t�t c� d�n cho l� ng�o . ",2,"Ta mu�n ��i ��u qu� ph�i h�c ngh� /defection_get","Kh�ng c� h�ng th� /defection_no") 
if ((UTask_sl > 5*256) and (UTask_sl < 10*256)) then -- script viet hoa By http://tranhba.com  nh�p m�n nhi�m v� trung 
Talk(1,"","S� huynh ��a cho ng��i nh�p m�n nhi�m v� l� kh�o nghi�m r�n luy�n l�ng c�a ng��i ch� ngh� l�c , ch� c�n �em chi ho�n th�nh li�n c� th� ti�n v�o v�n t� li�u . ") 
elseif (UTask_sl >= 70*256) and (player_Faction ~= "shaolin") then -- script viet hoa By http://tranhba.com  �� xu�t s� 
Say("Nguy�n lai l� xu�t s� s� huynh , kh�ng bi�t g�n ��y kh�e kh�ng ? ",3,"B�n �� gi�i thi�u /map_help","K� n�ng n�i r� /skill_help","��ng v�y , thay ta h��ng s� ph� v�n an /no") 
else 
Talk(1,"enroll_select","Ph�i Thi�u l�m x�a nay ���c g�i l� v� l�m m�n ph�i th� nh�t , ���c x�ng Trung Nguy�n v� l�m ��ch th�i s�n b�c ��u . Thi�u l�m t� t�ng ch�ng t�p v� nguy�n vi�n l�u tr��ng , l�y � Thi�u L�m b�y m��i hai tuy�t k� � danh vang r�n thi�n h� . ") 
end 
end 
end; 

function defection_get() 
Talk(1,"","A di �� ph�t , ng��i ch� c�n �i v� ph�a ��t gi�p D��ng bang ch� th�nh c�u tho�t kh�i Thi�n v��ng gi�p , n�a h��ng t� t� huy�n b�i v� ph��ng tr��ng b�m b�o , li�n c� th� gia nh�p t� t� li�u . ") 
	nt_setTask(7,5*256+10)
Msg2Player("Mu�n chuy�n ��u ph�i Thi�u l�m , ch� c�n h��ng thi�n v��ng gi�p D��ng bang ch� th�nh c�u , l�i �i h��ng ph�i Thi�u l�m huy�n b�i v� ph��ng tr��ng b�m b�o l� ���c . ") 
AddNote("Mu�n chuy�n ��u ph�i Thi�u l�m , ch� c�n h��ng thi�n v��ng gi�p D��ng bang ch� th�nh c�u , l�i �i h��ng ph�i Thi�u l�m huy�n b�i v� ph��ng tr��ng b�m b�o l� ���c . ") 
end 

function defection_no() 
Talk(1,"","Nh� ch�i b�n bang v� c�ng t� th�nh m�t c�ch , c�ng ch�a ch�c li�n thua v�i Thi�u L�m . ta c�n l� t�nh nguy�n trung th�nh v�i D��ng bang ch� . ") 
end 

function enroll_select() 
UTask_sl = nt_getTask(7) 
UTask_tw = nt_getTask(3) 
if ((UTask_tw > 5*256) and (UTask_tw < 10*256)) then -- script viet hoa By http://tranhba.com  �� nh�n nh�p m�n nhi�m v� 
Talk(1,"","Thi�n v��ng gi�p �ang h�ng h�ng h�a h�a , l�i kh�ng gi�ng v�n t� �ang ��ng � kim qu�c l�nh ��a nguy hi�m c�nh , ng��i l�m n�y l�a ch�n c�ng kh�ng th��ng kh�ng t�t . ") 
elseif (GetSeries() == 0) and (GetCamp() == 0) and (UTask_tw < 5*256) and (UTask_sl < 5*256) then -- script viet hoa By http://tranhba.com  kim h� kh�ng/ch�a v�o Thi�n v��ng Thi�u L�m 
if ((GetLevel() >= 10) and (HaveMagic(29) == -1)) then -- script viet hoa By http://tranhba.com  c�p b�c ��t t�i c�p m��i h�n n�a kh�ng c� h�c qua � ch�m long quy�t �# 
Say("V�n t� v� Trung Nguy�n c�c ��i danh c�a ch�nh ph�i ��ng ��u , ng��i c� hay kh�ng c�ng mu�n gia nh�p v�n t� ? ", 3,"Gia nh�p ph�i Thi�u l�m /go","Ta suy ngh� l�i m�t ch�t /no","Hi�u r� c�c c�a v� ngh� tinh hoa /Uworld1000_knowmagic") 
else 
Talk(1,"","Ng��i c�n c� ch�a ��nh h�o , kh�ng th�ch h�p qu� s�m tu luy�n b�n ph�i tuy�t h�c , kh�ng b�ng ng��i �i tr��c ��nh h�o tr� c�t , ��n c�p m��i tr� l�i t�m ti�u t�ng . ") 
end 
end -- script viet hoa By http://tranhba.com  kh�ng ph�i l� kim h� ��ch c�ng kh�ng n�i th�m n�a li�u . 
end; 

function go() 
Uworld1000 = nt_getTask(1000) 
if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then 
nt_setTask(1000,260) 
end 
SetRevPos(103,51) -- script viet hoa By http://tranhba.com  thi�t tr� s�ng l�i �i�m 
-- script viet hoa By http://tranhba.com  nt_setTask(7,10*256) -- script viet hoa By http://tranhba.com  tr�c ti�p nh�p m�n 
SetFaction("shaolin") -- script viet hoa By http://tranhba.com  nh� ch�i gia nh�p m�n ph�i 
SetCamp(1) 
SetCurCamp(1) 
-- script viet hoa By http://tranhba.com  SetRank(1) 
nt_setTask(137,67) 
SetLastFactionNumber(0) 
-- script viet hoa By http://tranhba.com  tr�c ti�p x� l� l�u tr�nh 
nt_setTask(7,10*256) 
SetRank(72) 
Msg2Player("Hoan ngh�nh ng��i gia nh�p ph�i Thi�u l�m , tr�c ti�p h�c ���c b�n m�n t�t c� k� n�ng . ") 
add_sl(70) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
-- script viet hoa By http://tranhba.com  k�t th�c 
-- script viet hoa By http://tranhba.com  Msg2Player("Hoan ngh�nh ng��i gia nh�p ph�i Thi�u l�m , tr� th�nh qu�t s�n t�ng , h�c ���c h�ng long v� c�ng , kim c��ng ph�c ma ") 
-- script viet hoa By http://tranhba.com  AddNote("Gia nh�p ph�i Thi�u l�m , tr� th�nh qu�t s�n t�ng .") 
Msg2Faction("shaolin",GetName().." t� h�m nay �i gia nh�p Thi�u L�m , b�i ki�n c�c v� s� t� , hy v�ng c�c v� quan t�m ch� gi�o !",GetName()) 
--NewWorld(103, 1845, 2983) -- script viet hoa By http://tranhba.com  �em nh� ch�i truy�n t�ng ��n m�n ph�i nh�p kh�u 

end; 

function return_yes() 
NewWorld(103, 1845, 2983) -- script viet hoa By http://tranhba.com  �em nh� ch�i truy�n t�ng ��n m�n ph�i nh�p kh�u 
end; 

function sl_check_yes() -- script viet hoa By http://tranhba.com  theo nh� k� n�ng x�c ��nh nhi�m v� thay ��i l��ng ��ch ki�m tra . . . ch�a t��ng �ng ��i m�i 
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
Say("S� �� , s� ph� l�i khi�n sai ng��i xu�ng n�i l�m vi�c ? ",2,"Xin m�i s� huynh ��a ta tr� v� n�i /return_yes","��ng v�y , thay ta h��ng s� ph� v�n an /no") 
end 

function Uworld1000_jiaoyushaolin() 
nt_setTask(1000,260) 
Msg2Player("Ph�i Thi�u l�m ti�p d�n �� t� n�i �� l� m�n ph�i �� t� , ng��i c� th� tr�c ti�p �i g�p Long nhi n�i chuy�n .") 
end 

function no() 
end; 
