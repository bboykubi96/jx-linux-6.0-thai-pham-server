-- script viet hoa By http://tranhba.com  ng�y nh�n ti�p d�n �� t� m� b�n ng�y nh�n t� s� 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-10-28) t� nh�n v�t ��i tho�i s�a ��i t�i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-05-25) th� d�ng/u�ng k� n�ng to�n khai s�a ��i �i�u d�ng b�n ngo�i v�n ki�n ph��ng th�c 
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
npc_name = "Thi�n Nh�n T� S�"

Include("\\script\\global\\g7vn\\g7configall.lua")

function default_talk()

local nDate = tonumber(date("%Y%m%d%H%M"))
if nDate <= ThoiGianHetHanDiemTP then
	Say("��ng v�o l�c <color=yellow>"..ThoiGianOpenStr.."<color> m�i b�t ��u ch�nh th�c khai m� m�y ch�");
	return 1
end

player_Faction = GetFaction() 
Uworld1000 = nt_getTask(1000) 
if (( Uworld1000 == 240 ) or ( Uworld1000 == 250 )) and ( GetLastFactionNumber() == 7 ) then 
nt_setTask(1000,250) 
Talk(1,"Uworld1000_jiaoyutianren","Ng��i �� l� �� t� b�n m�n , kh�ng c�n �i , c� th� tr�c ti�p c�ng Long nhi g�p m�t n�i .") 
elseif (player_Faction == "emei") then 
Talk(1,"","Ph�i Nga Mi n�u nh� c� th� gia nh�p b�n gi�o , c� ng�y h��ng v� ph�a nh�ng ng�y qua ti�n b�n ��ch m� nh�n , th�t l� ��ch mu�n nh�c ch�t") 
elseif (player_Faction == "cuiyan") then 
Talk(1,"","�� s�m nghe n�i nam qu�c c� g�i xinh ��p quy�n r� , h�m nay ch�nh m�t v�a th�y , qu� nhi�n so v�i ch�ng ta b�c n��c ��ch c� g�i m�m m�i . nh� v�y m�t ki�u t�ch t�ch ��ch m� nh�n , c�n g� ph�i v� �ao l�y ki�m ��y ? ") 
elseif (player_Faction == "tangmen") then 
Talk(1,"","B�n gi�o gi�o ch� m�t m�c hy v�ng qu� ph�i c� th� gia nh�p ch�ng ta b�n n�y , vinh hoa ph� qu� cao quan d�y l�c , h��ng d�ng v� t�n a") 
elseif (player_Faction == "wudu") then 
Talk(1,"","Ch�ng ta ng�y nh�n d�y c�ng Ng� ��c gi�o m�t b�c m�t nam , �� th�nh h�p vi chi th� , Trung Nguy�n c�n kh�ng s�m mu�n l� v�t trong t�i ? ") 
elseif (player_Faction == "tianwang") then 
Talk(1,"","B�t lu�n k� n�o c�ng ng�n c�n kh�ng ���c b�n gi�o nh�p ch� Trung Nguy�n ��ch ho�nh �� v� nghi�p") 
elseif (player_Faction == "shaolin") then 
Talk(1,"","C�c ng��i ph�i Thi�u l�m ��ch cao th� ��u �� r�i v�o l�o c�nh , tr� tu�i h�u b�i trung gi�ng nh� kh�ng c� nh�n t�i n�o , xem ra c�ng l� n�i danh d��i th�t ra th� kh� kh�n b�/cha/ch�u nha , c�p c�p c�p c�p") 
elseif (player_Faction == "wudang") then 
Talk(1,"","�� s�m nghe n�i ph�i V� ���ng n�i c�ng ki�m thu�t thi�n h� nh�t l�u , c� c� h�i nh�t ��nh ph�i th�nh gi�o th�nh gi�o") 
elseif (player_Faction == "kunlun") then 
Talk(1,"","C�c ng��i C�n L�n ph�i x�ng b� T�y V�c , m�t m�c th� c� tr�c l�c Trung Nguy�n ��ch d� t�m , lu�n c� m�t ng�y , b�n gi�o s� c�ng c�c ng��i � Trung Nguy�n nh�t quy�t th�ng b�i ��ch") 
elseif (player_Faction == "tianren") then 
Say("C� h�nh ��ng sao ? ",4,"H�nh ��ng �� ho�n th�nh , ��a ta tr� v� t�ng ��n /return_yes","B�n �� gi�i thi�u /map_help","K� n�ng n�i r� /skill_help","Kh�ng c� sao /no") 
-- script viet hoa By http://tranhba.com  Say("Ng��ng ng�ng , b�i v� c� �t ng��i nhi�m v� tr�ng th�i b�t ch�nh x�c , ch�ng ta �ang l�n n�a v� m�n h� �� t� ti�n h�nh ki�m tra . ng��i mu�n ki�m tra nhi�m v� c�a ng��i tr�ng th�i sao ? n�u nh� ng��i cho r�ng ng��i ��ch tr�ng th�i l� ch�nh x�c c�ng kh�ng t�t ki�m tra . ",2,"Ki�m tra /tr_check_yes","Kh�ng c�n /tr_check_no") 
elseif (player_Faction == "gaibang") then 
Talk(1,"","Ng��i c�i n�y khi�u h�a t� mu�n x�m nh�p v�o �� l�m gian t� sao ? ") 
elseif (nt_getTask(75) == 255) then -- script viet hoa By http://tranhba.com  h�c d� c�u quy�n ��ch , kh�ng cho ph�p n�a nh�p m�n ph�i 
Talk(1,"","Ng��i �� h�c ���c d� c�u quy�n ! kh�ng th� n�a nh�p m�n ph�i !") 
else 
UTask_tr = nt_getTask(4) 
if ((UTask_tr > 5*256) and (UTask_tr < 10*256)) then -- script viet hoa By http://tranhba.com  nh�p m�n nhi�m v� trung 
Talk(1,"","Ng��i �� � t�ng ��n nh�n b�n gi�o ��ch nh�p m�n nhi�m v� , nh�ng l� ch�a ho�n th�nh , ng��i nh�t ��nh ph�i th��ng Hoa S�n l�m g�c d�y �o�t ���c v� v��ng ki�m . ") 
elseif (UTask_tr >= 70*256) and (player_Faction ~= "tianren") then -- script viet hoa By http://tranhba.com  �� xu�t s� 
Say("Nghe n�i ng��i xu�t s� sau n�y , l�i l�n v�o x�y ra ch�t danh ���ng , th�t l� s� bi�t ba ng�y , khi qu�t m�c nh�n nhau a",3,"B�n �� gi�i thi�u /map_help","K� n�ng n�i r� /skill_help","Kh�ng c� sao /no") 
else 
Talk(1,"select","B�n gi�o tin ph�ng ��i kim qu�c ��ch n��c d�y t�t m�n d�y , gi�o ch� ch�nh l� qu�c s� ho�n nhan ho�nh li�t , h�n t�nh t�nh cu�ng ng�o , m�u tr� h�n ng��i , ngay c� ��i kim ho�ng �� ��i v�i h�n c�ng l� nh��ng ba ph�n . b�n gi�o v� s� cao th� , chi�u m� li�u nh�m l�n kim t�ng hai n��c ��ch cao th� , c� th� n�i ��m r�ng hang h� . ") 
end 
end 
end; 

function select() 
UTask_tr = nt_getTask(4) 
UTask_gb = nt_getTask(8) 
if ((UTask_gb > 5*256) and (UTask_gb < 10*256)) then -- script viet hoa By http://tranhba.com  �� nh�n C�i Bang nh�p m�n nhi�m v� 
Talk(1,"","Nam tri�u ngu ng�c , c�c ng��i nh�ng th� n�y t� cho l� hi�p ngh�a ��o v�n c�n mu�n v� kia Tri�u l�o nhi b�n m�ng , kh� nh� th� ch� . ") 
elseif (GetSeries() == 3) and (GetCamp() == 0) and (UTask_gb < 5*256) and (UTask_tr < 5*256) then -- script viet hoa By http://tranhba.com  h�a h� kh�ng/ch�a v�o C�i Bang ng�y nh�n 
if (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com  c�p b�c ��t t�i c�p m��i 
Say("Ng��i ngh� gia nh�p b�n gi�o sao ? ", 3,"Gia nh�p ng�y nh�n d�y /yes","Kh�ng gia nh�p /no","Hi�u r� c�c c�a v� ngh� tinh hoa /Uworld1000_knowmagic") 
else 
Talk(1,"","B�n gi�o �� t� ��u l� tinh anh h�ng ng��i , gi�ng nh� ng��i v�y kh�ng c� tr�i qua ma luy�n ��ch tay m�i , �� ngh� ng��i �i tr��c d� ngo�i luy�n m�t ch�t , <color=Red> c�p m��i <color> sau n�y t�i t�m ta n�a . ") 
end 
end 
end; 

function yes() 
Uworld1000 = nt_getTask(1000) 
if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then 
nt_setTask(1000,260) 
end 
Talk(1,"","V�a gia nh�p b�n gi�o , s� ph�i tu�n theo gi�o ch� hi�u l�nh . b�n gi�o gi�o quy s�m nghi�m , �u th�ng li�t th�i l� b�n gi�o ��ch ph�p t�c , ng��i s� d�ng th�c l�c c�a m�nh �� ch�ng minh gi� tr� c�a ng��i �i") 
SetRevPos(49,28) -- script viet hoa By http://tranhba.com  thi�t tr� s�ng l�i �i�m 
-- script viet hoa By http://tranhba.com  nt_setTask(4, 10*256) 
SetFaction("tianren") -- script viet hoa By http://tranhba.com  nh� ch�i gia nh�p ng�y nh�n d�y 
SetCamp(2) 
SetCurCamp(2) 
-- script viet hoa By http://tranhba.com  SetRank(55) -- script viet hoa By http://tranhba.com  thi�t tr� danh hi�u 
nt_setTask(137,64) 
SetLastFactionNumber(7) 
-- script viet hoa By http://tranhba.com  Msg2Player("Gia nh�p ng�y nh�n d�y , tr� th�nh m�t t�n s�t th� . ") 
-- script viet hoa By http://tranhba.com  AddNote("Gia nh�p ng�y nh�n d�y , tr� th�nh s�t th� , h�c ���c v� c�ng t�n d��ng nh� m�u . ") 
Msg2Faction("tianren",GetName().." t� h�m nay tr� �i gia nh�p ng�y nh�n d�y , b�i ki�n c�c v� s� huynh s� t�",GetName()) 
-- script viet hoa By http://tranhba.com  tr�c ti�p x� l� l�u tr�nh 
nt_setTask(4,10*256) 
SetRank(81) 
Msg2Player("Hoan ngh�nh ng��i gia nh�p ng�y nh�n d�y , tr�c ti�p h�c ���c b�n m�n t�t c� k� n�ng . ") 
add_tr(70) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
-- script viet hoa By http://tranhba.com  k�t th�c 
--NewWorld(49, 1644, 3215) -- script viet hoa By http://tranhba.com  �em nh� ch�i truy�n t�ng ��n m�n ph�i nh�p kh�u 

end; 

function return_yes() 
NewWorld(49, 1644, 3215) -- script viet hoa By http://tranhba.com  �em nh� ch�i truy�n t�ng ��n m�n ph�i nh�p kh�u 
end; 

function tr_check_yes() 
if (GetSeries() ~= 3) then 
Talk(1,"","Ng��i ng� h�nh thu�c t�nh kh�ng ph�i ch�ng ta h�a h� , l�m sao s� l�n v�o ��n b�n gi�o t�i ? �i tr��c h�i m�t ch�t tr� ch�i nh�n vi�n qu�n l� �i . ") 
elseif (HaveMagic(148) >= 0) then -- script viet hoa By http://tranhba.com  l�m xong 50 c�p nhi�m v� , th�t s�t th�n quy�n 
nt_setTask(4,60*256) 
Talk(1,"","Ta �� �em nhi�m v� c�a ng��i tr�ng th�i l�n n�a s�a sang l�i qua . ng��i b�y gi� c� th� �i nh�n xu�t s� nhi�m v� . ") 
elseif (HaveMagic(146) >= 0) then -- script viet hoa By http://tranhba.com  l�m xong 40 c�p nhi�m v� , Ng� hi�n ch�t 
nt_setTask(4,50*256) 
Talk(1,"","Ta �� �em nhi�m v� c�a ng��i tr�ng th�i l�n n�a s�a sang l�i qua . ng��i �� ho�n th�nh 40 c�p nhi�m v� . ") 
elseif (HaveMagic(141) >= 0) then -- script viet hoa By http://tranhba.com  l�m xong 30 c�p nhi�m v� , li�t h�a t�nh ng�y 
nt_setTask(4,40*256) 
Talk(1,"","Ta �� �em nhi�m v� c�a ng��i tr�ng th�i l�n n�a s�a sang l�i qua . ng��i �� ho�n th�nh 30 c�p nhi�m v� . ") 
elseif (HaveMagic(138) >= 0) then -- script viet hoa By http://tranhba.com  l�m xong 20 c�p nhi�m v� , ��y s�n �i�n h�i 
nt_setTask(4,30*256) 
Talk(1,"","Ta �� �em nhi�m v� c�a ng��i tr�ng th�i l�n n�a s�a sang l�i qua . ng��i �� ho�n th�nh 20 c�p nhi�m v� . ") 
elseif (HaveMagic(131) >= 0) then -- script viet hoa By http://tranhba.com  l�m xong 10 c�p nhi�m v� , ng�y nh�n m�u ph�p 
nt_setTask(4,20*256) 
Talk(1,"","Ta �� �em nhi�m v� c�a ng��i tr�ng th�i l�n n�a s�a sang l�i qua . ng��i �� ho�n th�nh 10 c�p nhi�m v� . ") 
else 
nt_setTask(4,10*256) 
Talk(1,"","Ta �� �em nhi�m v� c�a ng��i tr�ng th�i l�n n�a s�a sang l�i qua . ng��i b�y gi� c� th� �i nh�n 10 c�p nhi�m v� . ") 
end 
end 

function tr_check_no() 
Say("C� h�nh ��ng sao ? ",2,"H�nh ��ng �� ho�n th�nh , ��a ta tr� v� t�ng ��n /return_yes","Kh�ng c� sao /return_no") 
end 

function Uworld1000_jiaoyutianren() 
nt_setTask(1000,260) 
Msg2Player("Ng�y nh�n ph�i ti�p d�n �� t� n�i �� l� m�n ph�i �� t� , ng��i c� th� tr�c ti�p �i g�p Long nhi n�i chuy�n .") 
end 

function no() 
end; 
