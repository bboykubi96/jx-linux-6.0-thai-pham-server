-- script viet hoa By http://tranhba.com description: ���ng m�n ���ng b�t nhi�m 30 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/11 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nh�p m�n ph�i nhi�m v� c�p b�c y�u c�u 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 
Include("\\script\\task\\150skilltask\\g_task.lua")
Include("\\script\\dailogsys\\g_dialog.lua")


function main() 
local nNpcIndex = GetLastDiagNpc() 
local szNpcName = GetNpcName(nNpcIndex) 
if NpcName2Replace then 
szNpcName = NpcName2Replace(szNpcName) 
end 
local tbDailog = DailogClass:new(szNpcName) 
tbDailog.szTitleMsg = "<npc> gi� t� th�nh l� t� t� b�n ph�i li�t t� li�t t�ng ��ch , th��ng nh�n kh�ng ���c �i v�o !" 
G_TASK:OnMessage("���ng m�n ", tbDailog, "DialogWithNpc") 
tbDailog:AddOptEntry("Ta t�i c� nh�ng chuy�n kh�c ", main2) 
tbDailog:Show() 
end 

function main2() 
UTask_tm = GetTask(2) 
Uworld123 = GetTask(123) 
if (GetFaction() == "tangmen") and (GetSeries() == 1) then -- script viet hoa By http://tranhba.com  ���ng m�n m�n ph�i nhi�m v� 
if (UTask_tm == 30*256) and (GetLevel() >= 30) then -- script viet hoa By http://tranhba.com 30 c�p nhi�m v� kh�i ��ng 
Talk(3, "L30_get", "<color=Red> h�a kh� ph�ng <color> ��ch <color=Red> ���ng v�n <color> s� th�c th�t ��ng th��ng , hai n�m tr��c , m�t nh�m kh�ng r� lai l�ch ng��i c�a b�t c�c h�n con ��c nh�t ti�u xuy�n , uy hi�p h�n giao ra b�n m�n b� k�p <color=Red> # h�a kh� ph� # <color> . ","���ng v�n s� th�c kh�ng d�m vi ph�m m�n quy , k�t qu� ng�y th� hai nh�m ng��i kia s� ��a t�i ti�u xuy�n c�nh tay c�a , s� th�c ch� c� nh� v�y m�t ��a con trai , can ��m c�u li�t d��i b�t ��c d� giao ra # h�a kh� ph� # . nh�ng l� kh�ng ngh� t�i ��i l�y c�ng l� ti�u xuy�n ��ch thi th� , s� th�c �au ��n mu�n ch�t , th� nh�t ��nh ph�i ch�nh tay ��m c�u ��ch . ","Nh�ng l� b�i v� ���ng v�n s� th�c ti�t l� li�u ���ng m�n b� k�p , nh�t ��nh ph�i ti�p nh�n m�n quy x� ph�t , cho n�n h�n c� ��i kh�ng th� s� r�i �i ���ng m�n n�a b��c , th� n�y h�n n�y s� r�ng ki�p n�y c�ng b�o kh�ng ���c #!") 
		elseif (UTask_tm == 30*256+50) then
Talk(2, "","Ta �� t�m ���c b�t c�c ���ng v�n s� th�c con trai ��ch ph� �� , �o�t l�i li�u <color=Red># h�a kh� ph� #<color>.","Th�t t�t qu� , <color=Red> ���ng v�n <color> s� th�c nh�t ��nh s� c�m th�y vui m�ng , ng��i nhanh �i �em <color=Red># h�a kh� ph� #<color> giao cho h�n , h�n �ang � <color=Red> h�a kh� ph�ng <color> trong .") 
Msg2Player("Tr� v� gi� t� th�nh t�m ���ng b�t nhi�m , bi�t ���ng v�n s� th�c �ang h�a kh� ph�ng ") 
			SetTask(2,30*256+60)
		elseif (UTask_tm == 30*256+60) then
Talk(1, "","S� th�c nh�t ��nh s� c�m th�y vui m�ng , ng��i nhanh �i <color=Red> h�a kh� ph�ng <color> n�i cho h�n bi�t c�i tin t�c t�t n�y !") 
elseif (UTask_tm > 30*256) and (UTask_tm < 40*256) then -- script viet hoa By http://tranhba.com  �� nh�n ���c 30 c�p nhi�m v� , ch�a ho�n th�nh 
Talk(1,"","Ta �� t�i trung t�m ki�m qu� , ��m kia tr�i ph� gi�ng nh� th��ng ra kh�ng c� � <color=Red> n�i Thanh Th�nh ph�a ��ng m�y tr�ng ��ng <color> m�t d�y .") 
elseif (UTask_tm >= 40*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 30 c�p nhi�m v� , �� t� b�n m�n 
Skill150Dialog("Ng��i c� th� gi�p ���ng v�n s� th�c t�m c�i oan khu�t , xem ra ta s� ��i ng��i qu�t m�c nh�n nhau li�u !") 
else 
Skill150Dialog("C�i n�y gi� t� th�nh l� b�n m�n l�y t� li�t t� li�t t�ng ��ch ��a ph��ng , ng��i b�nh th��ng ch� kh�ng ph�i thi�n v�o !") 
end 
elseif (Uworld123 == 10) then -- script viet hoa By http://tranhba.com  ���ng m�n 90 c�p k� n�ng nhi�m v� 
Say("C� th� gi�p ta mang m�t phong th� sao ?",2,"Tu�n l�nh !/Uworld123_get","Th�t l� ng��ng ng�ng , ch��ng m�n m�i v�a g�i ta qu� kh� h�n n�i �� . /L30_get_no") 
elseif (Uworld123 == 20) and (HaveItem(379) == 0) then -- script viet hoa By http://tranhba.com  ���ng b�t nhi�m nhi�m v� , ��o c� m�t 
Talk(1,"","Ng��i th�t l� .., tin/th� c�n ch�a c�m li�n ch�y !") 
AddEventItem(379) 
Msg2Player("Nh�n ���ng b�t nhi�m ��ch tin/th� ") 
elseif (Uworld123 == 30) and (HaveItem(380) == 1) then -- script viet hoa By http://tranhba.com  ���ng b�t nhi�m nhi�m v� , ��nh 
Talk(3,"Uworld123_step2","Ha ha ha , qu� nhi�n di�u k� , �� cho ���ng m�t tr�n ch�t kh�ng c� ch� ch�n !","Ng��i l� ai ? th� n�o kh�ng ph�i l� a m�i ?","Ng��i nghe ���c b� m�t , mu�n s�ng c�ng kh�ng ���c li�u , xem chi�u !") 
elseif (Uworld123 == 40) then -- script viet hoa By http://tranhba.com  kh�ng c� ��nh xong , ti�p t�c ��nh 
Talk(1,"Uworld123_step2","��ng ch�y , xem chi�u !") 
elseif (Uworld123 == 50) then 
if (GetSex() == 0) then 
sexstr = " ��i hi�p " 
else 
sexstr = " n� hi�p " 
end 
Talk(8,"Uworld123_step3","C�ng t� c�n g� ph�i r�u r� , m�c d� ta c�ng c�ng t� kh�ng h�n , nh�ng l� , c�ng s� kh�ng h� c�ng t� chuy�n c�a ","Ng��i , ng��i . ","C�ng t� th�n l� ���ng gia b�o Thi�u ch� , ta tuy b�t t�i , nh�ng l� , kh�ng gi�p c�ng t� , ch�ng l� �i gi�p ng��i kh�c sao ? ","Kh�ng t� , ��ng nh� anh h�ng theo nh� l�i , xin h�i t�n t�nh ��i danh ? ","T�i h� "..GetName().." a ","Th� ra l� nh� v�y "..GetName()..sexstr.." nghe ��i danh �� l�u , kh�ng ngh� t�i h�m nay � n�i n�y g�p nhau . ","��i hi�p nh� th� �ng h� ta , kh�ng bi�t c� th� hay kh�ng �em s�ch n�y mang cho �oan m�c th�y ? s�ch n�y ��i v�i ta m� n�i , c�c k� tr�ng y�u . chuy�n tr�ng ��i , kh�ng th� d�a v�o ng��i kh�c li�u . ","Chuy�n nh� m�t thung , giao cho ta l� ���c . ") 
elseif (Uworld123 == 60) and (HaveItem(377) == 0) then -- script viet hoa By http://tranhba.com  b� k�p m�t 
if (GetSex() == 0) then 
Talk(1,"","��i hi�p qu�n mang b� k�p li�u !") 
else 
Talk(1,"","Thi�u hi�p qu�n mang b� k�p li�u !") 
end 
AddEventItem(377) 
Msg2Player("B�t ���c ���ng m�n b� k�p ") 
elseif (Uworld123 == 70) or (Uworld123 == 75) then -- script viet hoa By http://tranhba.com  nhi�m v� ho�n th�nh 
Talk(1,"Uworld123_prise","Ha ha ha , ta ch� ng��i ��ch tin t�c t�t , th�t l� c�m t� ng��i !") 
elseif (Uworld123 >= 10) and (Uworld123 < 80) then -- script viet hoa By http://tranhba.com  ���ng b�t nhi�m nhi�m v� ti�n h�nh trung 
Talk(1,"","Ta n�i , ng��i v�i v�ng �i l�m , kh�ng mu�n l�ng ph� th�i gian !") 
elseif (GetTask(51) >= 90) then -- script viet hoa By http://tranhba.com  m�t tr�n � r�a s�ch oan khu�t � nhi�m v� sau , ��i tho�i s�a ��i 
Talk(1,"","T�i sao h�n l�y ���c s�ng �i , m� ta l�i kh�ng th� ? th�t l� b�t c�ng !") 
elseif (Uworld123 >= 80) then -- script viet hoa By http://tranhba.com  ���ng b�t nhi�m nhi�m v� �� ho�n th�nh 
Talk(1,""," l�n n�y l�m phi�n ng��i , ta tr� th�nh ch��ng m�n sau , nh�t ��nh s� kh�ng qu�n ng��i !") 
elseif (UTask_tm >= 70*256) then -- script viet hoa By http://tranhba.com  �� xu�t s� 
Skill150Dialog("Ta mu�n �i ra ngo�i , nh�ng l� , ph� th�n kh�ng ��ng � ?") 
else 
Skill150Dialog("C�i n�y gi� t� th�nh l� b�n m�n l�y t� li�t t� li�t t�ng ��ch ��a ph��ng , ng��i b�nh th��ng ch� kh�ng ph�i thi�n v�o !") 
end 
end; 

function Skill150Dialog(szTitle) 
local nNpcIndex = GetLastDiagNpc() 
local szNpcName = GetNpcName(nNpcIndex) 
if NpcName2Replace then 
szNpcName = NpcName2Replace(szNpcName) 
end 
local tbDailog = DailogClass:new(szNpcName) 
tbDailog.szTitleMsg = format("<npc>%s", szTitle) 
G_TASK:OnMessage("���ng m�n ", tbDailog, "DialogWithNpc") 
tbDailog:Show() 
end 

function L30_get() 
-- script viet hoa By http://tranhba.com  DelItem(42) -- script viet hoa By http://tranhba.com  ph�ng ng�a n�ng ti�p nh�n v� sau , nh� ch�i nh�t l�n nhi�m v� ��o c� 
Say("���ng v�n s� th�c �� t�ng n�i , b�t k� l� ai , ch� c�n c� th� gi�p h�n b�o m�i th� gi�t con , �o�t l�i <color=Red># h�a kh� ph� #<color> , h�n s� d�c h�t t�t c� b�o ��p ng��i n�y !", 2,"T�m ki�m tr�i ph� /L30_get_yes","Kh�ng li�n quan chuy�n ta !/L30_get_no") 
end; 

function L30_get_yes() 
Talk(1,"","Ta �� t�i trung t�m ki�m qu� , ��m kia tr�i ph� gi�ng nh� th��ng ra kh�ng c� � <color=Red> n�i Thanh Th�nh ph�a ��ng m�y tr�ng ��ng <color> m�t d�y .") 
	SetTask(2, 30*256+20)
AddNote("Th�y ���ng b�t nhi�m � ( 514, 318) , nh�n <color=Red> h�a kh� ph� nhi�m v� <color>, gi�p ���ng v�n s� th�c �o�t l�i h�a kh� ph� ") 
Msg2Player("Nh�n h�a kh� ph� nhi�m v� , gi�p ���ng v�n s� th�c �o�t l�i h�a kh� ph� ") 
end; 

function Uworld123_get() 
Talk(1,"","H�o , mau thay ta mang phong th� n�y ��n bi�n kinh cho B�ch c�ng t� , nhanh �i mau tr� l�i !") 
SetTask(123,20) 
Msg2Player("Ti�p nh�n v� # thay ���ng b�t nhi�m mang tin/th� cho B�ch c�ng t� ") 
AddEventItem(379) 
Msg2Player("Nh�n ���c ���ng b�t nhi�m ��ch tin/th� ") 
end 

function Uworld123_step2() 
DelItem(380) 
SetTask(123,40) 
SetFightState(1) 
NewWorld(229,1616,3195) 
end 

function Uworld123_step3() 
AddEventItem(377) 
SetTask(123,60) 
Msg2Player("B�t ���c ���ng m�n b� k�p . ") 
end 

function Uworld123_prise() 
AddRepute(10) 
Earn(20000) 
if (GetTask(123) == 70) then -- script viet hoa By http://tranhba.com  kh�ng ph�i l� b�n m�n 
SetTask(123,245) 
else 
SetTask(123,255) 
end 
Msg2Player("Nhi�m v� ho�n th�nh , t��ng th��ng 2 v�n l��ng , uy t�n gia t�ng 10 �i�m . ") 
AddNote("Nhi�m v� ho�n th�nh , t��ng th��ng 2 v�n l��ng , uy t�n gia t�ng 10 �i�m . ") 
end 

function L30_get_no() 
end; 
