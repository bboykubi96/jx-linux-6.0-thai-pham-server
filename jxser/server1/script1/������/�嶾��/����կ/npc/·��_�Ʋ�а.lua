-- script viet hoa By http://tranhba.com  n�m ��c ng��i �i ���ng NPC kim x� tr�i ch� v�n kh�ng t� 40 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 
-- script viet hoa By http://tranhba.com  update by: xiaoyang(2004\4\13) gia nh�p 90 c�p m�n ph�i nhi�m v� 

Include("\\script\\task\\150skilltask\\g_task.lua")
Include("\\script\\dailogsys\\g_dialog.lua")


Include("\\script\\global\\skills_table.lua")

function main() 
local nNpcIndex = GetLastDiagNpc() 
local szNpcName = GetNpcName(nNpcIndex) 
if NpcName2Replace then 
szNpcName = NpcName2Replace(szNpcName) 
end 
local tbDailog = DailogClass:new(szNpcName) 
tbDailog.szTitleMsg = "<npc> ch�ng ta Ng� ��c gi�o c� v� s� lo�i ��c d��c , c� m�t �t ��c d��c l� d�ng m�y tr�m lo�i ��c v�t luy�n th�nh , lo�i n�y m�t luy�n ��ch ��c ch� c�n ��ng ph�i m�t ch�t x�u s� kh�ng l�t d�u v�t ch�t �i " 
G_TASK:OnMessage("N�m ��c ", tbDailog, "DialogWithNpc") 
tbDailog:AddOptEntry("Ta t�i t�m ng��i kh�c bi�t chuy�n c�a t�nh ", main2) 
tbDailog:Show() 
end 

function main2() 
UTask_wu = GetTask(10) 
Uworld124 = GetTask(124) 
if(GetSeries() == 1) and (GetFaction() == "wudu") then 
		if((UTask_wu == 40*256+10) and (HaveItem(143) == 1)) then		-- script viet hoa By http://tranhba.com  ���������
L40_prise() 
elseif((UTask_wu == 40*256) and (GetLevel() >= 40)) then -- script viet hoa By http://tranhba.com 40 c�p nhi�m v� 
Say("Ng��i ��n kim m�u r�n ��m �i cho ta b�t m�t c�i m�t ki�ng v��ng m�ng x� t�i , ta mu�n h�t m�u c�a n� t�i t�ng c��ng c�ng l�c ",2,"Tu# l#h!/L40_get_yes","Thu�c h� c�n c� m�t chuy�n . /L40_get_no") 
else -- script viet hoa By http://tranhba.com  th��ng quy ��i tho�i 
Skill150Dialog("��y l� m�t c��ng gi� sinh t�n ��ch th� gi�i , n�u mu�n ti�p t�c ho�t h�y mau luy�n c�ng �i !") 
end 
elseif (Uworld124 == 10) then 
Talk(9,"Uworld_envelop","V�n kh�ng t� ","Ng��i n�o ! th�t l� m�t ��p trai ! t�m ti�u v�n c� chuy�n g� kh�ng ?","Mau ��a �m d��ng c��i gi�i d��c l�y ra !","Nguy�n lai l� mu�n l�m anh h�ng ng��i a ! ���c r�i ! ch� c�n ng��i � ��y theo ta n�n c�i g� c�ng c� th� ","Phi # ng��i l� m�t �m hi�m ��c �c ng��i #, n�u l� kh�ng �em gi�i d��c l�y ra , kia ng��i kh�c ngay c� thi th� c�a ng��i c�ng kh�ng nh�n ra ���c !","H� # ng��i th�t l� kh�ng bi�t �i�u # t�t l�m , ta ��y c� m�t phong th� , ng��i gi�p ta mang t�i ���ng m�n giao cho tuy�t xu�n t�u ���ng d� , sau ng��i s� b� ��n ng��i mu�n ��ch . ","Ta d�a v�o c�i g� tin/th� ng��i ?"," l�o t� � tr�n giang h� c�ng l� c� x� danh ��ch . ng��i c� th� �i h�i m�t ch�t nh�n , ta c�n l� bi�t tin/th� ch� vi�t nh� th� n�o ��ch ","T�m th�i tin t��ng h�n ") 
elseif (Uworld124 == 20 ) and (HaveItem(385) == 0) then 
Talk(1,"","B�ng h�u ! ��ng n�ng v�i ! ta tin/th� c�n kh�ng c� mang , ng��i d�ng c�i g� �i g�p ���ng d� ") 
AddEventItem(385) 
Msg2Player("Nh�n l�y v�n kh�ng t� ��ch tin/th� ") 
elseif (Uworld124 == 30) and (HaveItem(386) == 1) then 
DelItem(386) 
SetTask(124,35) 
Talk(5,"Uworld124_jump","C�i g� ?","B� h�n ph�t hi�n trong �� c� ��c !","�i�u n�y sao c� th� # ta h� ��c h�t s�c c�n th�n , h�n l�m sao s� ph�t hi�n ��y !","A !... � n�i n�y phong th� th��ng c�n c� m�t lo�i kh�c k� ��c !","V�n kh�ng t� # h�i ng��i cu�i c�ng c� b� h�i l�c # ng��i s�ng kh�ng qu� h�m nay !") 
elseif (Uworld124 == 35) then 
Talk(1,"Uworld124_jump","T�i ��y ! t�i c�ng ti�u v�n c�ng nhau ch�i ��a !") 
elseif (Uworld124 == 40) and (HaveItem(387) == 0) then 
SetTask(124,35) 
Talk(2,"Uworld124_jump","V�n l�o t�c ! mau ��a m�t lo�i kh�c gi�i d��c l�y ra !","Phi # ta nh�t th�i s� s�t m�i trung li�u ng��i k� # kh�ng mu�n v�ng t��ng # nh�n c�i n�y ! ") 
elseif (Uworld124 >= 40) then -- script viet hoa By http://tranhba.com  nhi�m v� ho�n th�nh 
Talk(1,"","Ng��i th�t l� �c ��c ! ") 
else 
Skill150Dialog("Ch�ng ta Ng� ��c gi�o c� v� s� lo�i ��c d��c , c� m�t �t ��c d��c l� d�ng m�y tr�m lo�i ��c v�t luy�n th�nh , lo�i n�y m�t luy�n ��ch ��c ch� c�n ��ng ph�i m�t ch�t x�u s� kh�ng l�t d�u v�t ch�t �i ") 
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
G_TASK:OnMessage("V�n kh�ng t� ", tbDailog, "DialogWithNpc") 
tbDailog:Show() 
end 

function L40_get_yes() 
Talk(1,"","R�t t�t , nh� tr��c t�m m�t kh�i x� h��ng , n�u kh�ng ng��i ch� kh�ng ���c n� ") 
	SetTask(10,40*256+10)
AddNote("Ti�n v�o kim m�u r�n ��m cho v�n kh�ng t� b�t m�t ki�ng v��ng m�ng x� ") 
Msg2Player("Ti�n v�o kim m�u r�n ��m cho v�n kh�ng t� b�t m�t ki�ng v��ng m�ng x� ") 
end; 

function L40_get_no() 
end; 

function L40_prise() 
Talk(1,"","Ng��i nh�ng l� s� �t m�y ti�n v�o kim m�u r�n ��m sau c� th� c�n s�ng ra ngo�i ng��i , xem ra c�n c� ch�t b�n l�nh ") 
SetTask(10,50*256) 
DelItem(143) 
SetRank(53) 
-- script viet hoa By http://tranhba.com  AddMagic(356) 
-- script viet hoa By http://tranhba.com  AddMagic(73) 
add_wu(50) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
Msg2Player("Ch�c m�ng ng��i !: t�n th�ng l�m : v� ��ng la s�t ! h�c ���c v� c�ng # thi�n c��ng ��a s�t tay # xuy�n tim gai ��c # v�n c� th�c t�m ") 
AddNote("Ti�n v�o kim m�u r�n ��m b�t m�t ki�ng v��ng m�ng x� , c� th� t�n th�ng l�m v� ��ng la s�t ") 
end; 

function Uworld_envelop() 
AddEventItem(385) 
SetTask(124,20) 
Msg2Player("Ti�p nh�n v�n kh�ng t� ��ch th� ") 
AddNote("Ti�p nh�n v�n kh�ng t� ��ch th� , �i t�m ���ng d� ") 
end 

function Uworld124_jump() 
SetFightState(1) 
NewWorld(234,1616,3195) 
end 
