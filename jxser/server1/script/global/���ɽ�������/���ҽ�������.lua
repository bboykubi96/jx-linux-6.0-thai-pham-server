-- script viet hoa By http://tranhba.com  Nga Mi ti�p d�n �� t� m� b�n Nga Mi c�m y ni 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-10-28) t� nh�n v�t ��i tho�i s�a ��i t�i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-05-25) th� d�ng/u�ng k� n�ng to�n khai s�a ��i �i�u d�ng b�n ngo�i v�n ki�n ph��ng th�c 
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
npc_name = "Nga Mi C�m Y Ni" 

Include("\\script\\global\\g7vn\\g7configall.lua")

function default_talk()

local nDate = tonumber(date("%Y%m%d%H%M"))
if nDate <= ThoiGianHetHanDiemTP then
	Say("��ng v�o l�c <color=yellow>"..ThoiGianOpenStr.."<color> m�i b�t ��u ch�nh th�c khai m� m�y ch�");
	return 1
end

player_Faction = GetFaction() 
Uworld1000 = nt_getTask(1000) 
if (( Uworld1000 == 240 ) or ( Uworld1000 == 250 )) and ( GetLastFactionNumber() == 4 ) then 
nt_setTask(1000,250) 
Talk(1,"Uworld1000_jiaoyuemei","Ng��i �� l� �� t� b�n m�n , kh�ng c�n �i , c� th� tr�c ti�p c�ng Long nhi g�p m�t n�i .") 
elseif (player_Faction == "emei") then 
Say("Ti�u s� mu�i , l�i xu�ng n�i t�i ch�i ? l�n n�y mu�n ta ��a ng��i tr� v� n�i sao ? ",4,"��ng v�y , l�i mu�n phi�n to�i t� t� /return_yes","B�n �� gi�i thi�u /map_help","K� n�ng n�i r� /skill_help","Kh�ng c�n , �a t� s� t� /no") 
-- script viet hoa By http://tranhba.com  Say("ng��ng ng�ng , b�i v� c� �t ng��i nhi�m v� tr�ng th�i b�t ch�nh x�c , ch�ng ta �ang l�n n�a v� m�n h� �� t� ti�n h�nh ki�m tra . ng��i mu�n ki�m tra nhi�m v� c�a ng��i tr�ng th�i sao ? n�u nh� ng��i cho r�ng ng��i ��ch tr�ng th�i l� ch�nh x�c c�ng kh�ng t�t ki�m tra . ",2,"Ki�m tra /em_check_yes","Kh�ng c�n /em_check_no") 
elseif (player_Faction == "cuiyan") then 
Talk(1,"","Qu� ph�i thi�n ch� V�n Nam , c�ng b�n ph�i ch�a t�ng lui t�i , kh�ng bi�t c� g� ch� gi�o ? ") 
elseif (player_Faction == "tangmen") then 
Talk(1,"","Ng��i l� th�c nam ng��i c�a ���ng m�n sao ? b�n m�n ch�nh l� danh m�n ch�nh ph�i , t� kh�ng c�ng b�ng m�n t� ��o ng��i lui t�i . ") 
elseif (player_Faction == "wudu") then 
Talk(1,"","V� l�m ��ch t� ma oai ��o , ng��i ng��i ph�i m� gi�t chi") 
elseif (player_Faction == "tianwang") then 
Talk(1,"","��t gi�p m�t tay ch� d��ng anh ch�nh l� m�t v� n� trung h�o ki�t , b�n ni x�a nay ng��ng m� , ��ng ti�c m�t m�c duy�n khan m�t m�t . ") 
elseif (player_Faction == "shaolin") then 
Talk(1,"","A di �� ph�t nguy�n lai l� ph�i Thi�u l�m ��ch s� huynh , kh�ng bi�t huy�n b�i v� ��i s� g�n ��y c� hay kh�ng khang ki�n ? ") 
elseif (player_Faction == "wudang") then 
Talk(1,"","V� ���ng hi�p ngh�a , t�n kh�p thi�n h� , qu� ph�i ��o m�t ch�n nh�n c�ng b�n ph�i ch��ng m�n giao t�nh kh�ng c�n , hai ch�ng ta ph�i nh�ng x�ng l� l� c�ng kh� ngay c� chi a") 
elseif (player_Faction == "kunlun") then 
Talk(1,"","T� ph�i c�ng qu� ph�i l�m v� lui t�i , kh�ng bi�t c� g� ch� gi�o ? ") 
elseif (player_Faction == "tianren") then 
Talk(1,"","Qu� gi�o m�t m�c c� t�m kh�ng th� d� ���c , theo ph� kim qu�c , ��i v�i ta ��i t�ng giang s�n m�u �� b�t ch�nh , ch�ng ta ch�nh ph�i v� l�m c�ng c�c ng��i th� kh�ng l��ng l�p") 
elseif (player_Faction == "gaibang") then 
Talk(1,"","��t gi�p nhi�u ng��i th� l�n , h�o kh� ng�t tr�i , b�n ph�i r�t nguy�n � k�t giao c�c ng��i nh�ng ng��i b�n n�y") 
elseif (nt_getTask(75) == 255) then -- script viet hoa By http://tranhba.com  h�c d� c�u quy�n ��ch , kh�ng cho ph�p n�a nh�p m�n ph�i 
Talk(1,"","Ng��i �� h�c ���c d� c�u quy�n ! kh�ng th� n�a nh�p m�n ph�i ! ") 
else -- script viet hoa By http://tranhba.com  ch� c�n kh�ng thu�c v� 10 c� m�n ph�i , kh�ng h� n�a ��n ��c ki�m tr�c � kh�ng c�a ph�i � 
UTask_em = nt_getTask(1) 
if ((UTask_em > 5*256) and (UTask_em < 10*256)) then -- script viet hoa By http://tranhba.com  nh�p m�n nhi�m v� trung 
Talk(1,"","Ng��i �� � Nga Mi s�n l� b�ng v�t s� t� ch� nh�n b�n ph�i ��ch nh�p m�n nhi�m v� , nh�ng l� ch�a ho�n th�nh , ng��i tr��c h�t th�ng qua tr� c�m s�ch ��ch kh�o nghi�m , sau �� s� x�ng chui ng�y s��n n�i l�y ���c b�ch ng�c nh� � . ") 
elseif (UTask_em >= 70*256) and (player_Faction ~= "emei") then -- script viet hoa By http://tranhba.com  �� xu�t s� 
Say("nguy�n lai l� s� t� , kh�ng bi�t g�n ��y kh�e kh�ng ? ",3,"B�n �� gi�i thi�u /map_help","K� n�ng n�i r� /skill_help","Kh�ng c�n , �a t� s� t� /no") 
else 
Talk(1,"select","Thi�n h� c� g�i s�ng ch� ��ch trong m�n ph�i , l�y b�n ph�i l� th� nh�t . b�n ph�i �� t� ��u v� c� g�i , kh�ng ch� c� v� c�ng cao c��ng , h�n n�a �a t�i �a ngh� , c�m k� th� h�a kh�ng ch� n�o kh�ng tinh . c� ng��i n�i giang h� l� nam nh�n th� gi�i , nh�ng l� b�n ph�i l�i c� th� c�ng Thi�u L�m V� ���ng ��nh l�p , v� v�y ng��i trong v� l�m kh�ng kh�i k�nh �� t� b�n m�n ba ph�n . ") 
end 
end 
end; 

function select() 
UTask_em = nt_getTask(1) 
UTask_cy = nt_getTask(6) 
if ((UTask_cy > 5*256) and (UTask_cy < 10*256)) then -- script viet hoa By http://tranhba.com  �� nh�n th�y kh�i nh�p m�n nhi�m v� 
Talk(1,"","V� mu�i mu�i n�y nguy�n lai l� mu�n v�o th�y kh�i c�a , ng��i c� ch� ri�ng , ta c�ng kh�ng ti�n mi�n c��ng . ") 
elseif (GetSeries() == 2) and (GetCamp() == 0) and (UTask_cy < 5*256) and (UTask_em < 5*256) then -- script viet hoa By http://tranhba.com  th�y h� kh�ng/ch�a v�o th�y kh�i Nga Mi 
if (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com  c�p b�c ��t t�i c�p m��i 
Say("Gia nh�p ch�ng ta ph�i Nga Mi , m�i ng��i ��u l� h�o t� mu�i , t��ng th�n t��ng �i , kh�p n�i l�y b�n ph�i �ch l�i l�m tr�ng , c�ng chung �em b�n ph�i ph�t d��ng quang ��i . ", 3,"Gia nh�p ph�i Nga Mi /go","Ta suy ngh� l�i m�t ch�t /no","Hi�u r� c�c c�a v� ngh� tinh hoa /Uworld1000_knowmagic") 
else 
Say("Ng��i c�n c� ch�a ��nh h�o , th��ng c�n m�t �o�n ng�y gi� ��ch ma luy�n , kh�ng mu�n thao chi qu� c�p . �i tr��c d� ngo�i luy�n m�t ch�t , ��n <color=Red> c�p m��i <color> t�i t�m ta n�a �i . ", 0) 
end 
end -- script viet hoa By http://tranhba.com  kh�ng ph�i l� th�y h� ��ch c�ng kh�ng n�i th�m n�a li�u . 
end; 

function go() 
Uworld1000 = nt_getTask(1000) 
if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then 
nt_setTask(1000,260) 
end 
SetRevPos(13,13) -- script viet hoa By http://tranhba.com  thi�t tr� s�ng l�i �i�m 
-- script viet hoa By http://tranhba.com  nt_setTask(1, 10*256) -- script viet hoa By http://tranhba.com  tr�c ti�p nh�p m�n 
SetFaction("emei") -- script viet hoa By http://tranhba.com  nh� ch�i gia nh�p ph�i Nga Mi 
SetCamp(1) 
SetCurCamp(1) 
-- script viet hoa By http://tranhba.com  SetRank(13) 
nt_setTask(137,61) 
SetLastFactionNumber(4) 
-- script viet hoa By http://tranhba.com  tr�c ti�p x� l� l�u tr�nh 
nt_setTask(1,10*256) 
SetRank(74) 
Msg2Player("Hoan ngh�nh ng��i gia nh�p ph�i Nga Mi , tr�c ti�p h�c ���c b�n m�n t�t c� k� n�ng . ") 
add_em(70) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
-- script viet hoa By http://tranhba.com  k�t th�c 
-- script viet hoa By http://tranhba.com  Msg2Player("Hoan ngh�nh ng��i gia nh�p ph�i Nga Mi , tr� th�nh Nga Mi �� t� , h�c ���c m�t l� bi�t thu , tuy�t bay xuy�n v�n ") 
-- script viet hoa By http://tranhba.com  AddNote("Gia nh�p ph�i Nga Mi , tr� th�nh Nga Mi �� t� ") 
Msg2Faction("emei",GetName().." k� t� h�m nay gia nh�p ph�i Nga Mi , b�i ki�n c�c v� s� t� , hy v�ng c�c v� quan t�m ch� gi�o !",GetName()) 
--NewWorld(13, 1898, 4978) -- script viet hoa By http://tranhba.com  �em nh� ch�i truy�n t�ng ��n m�n ph�i nh�p kh�u 

end; 

function return_yes() 
NewWorld(13, 1898, 4978) -- script viet hoa By http://tranhba.com  �em nh� ch�i truy�n t�ng ��n m�n ph�i nh�p kh�u 
end; 

function em_check_yes() 
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
Say("Ti�u s� mu�i , l�i xu�ng n�i t�i ch�i ? l�n n�y mu�n ta ��a ng��i tr� v� n�i sao ? ",2,"��ng v�y , l�i mu�n phi�n to�i t� t� /return_yes","Kh�ng c�n , �a t� s� t� /return_no") 
end 

function Uworld1000_jiaoyuemei() 
nt_setTask(1000,260) 
Msg2Player("Ph�i Nga Mi ti�p d�n �� t� n�i �� l� m�n ph�i �� t� , ng��i c� th� tr�c ti�p �i g�p Long nhi n�i chuy�n .") 
end 

function no() 
end; 
