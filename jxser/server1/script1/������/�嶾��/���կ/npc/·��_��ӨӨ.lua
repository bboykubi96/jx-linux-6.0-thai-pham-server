-- script viet hoa By http://tranhba.com  n�m ��c ng��i �i ���ng NPC ��c ti�n t� b�ch o�nh o�nh 20 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 

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
tbDailog.szTitleMsg = "<npc> ngay c� c� m�t �t ngu xu�n kh�ng bi�t s�ng ch�t , ch�ng l� h��ng b�n ti�n t� c�n tr� nh� v�y ��p c�ng c� l�i sao ?" 
G_TASK:OnMessage("N�m ��c ", tbDailog, "DialogWithNpc") 
tbDailog:AddOptEntry("Ta t�i t�m ng��i kh�c bi�t chuy�n c�a t�nh ", main2) 
tbDailog:Show() 
end 

function main2() 
UTask_wu = GetTask(10) 
Uworld50 = GetTask(50) 
if (Uworld50 == 20) then -- script viet hoa By http://tranhba.com  ��nh th�c t� Trung Nguy�n nhi�m v� 
Talk(6,"Uworld50_20","B�ch c� n��ng ! t� x�a ch�nh t� b�t l��ng l�p , t� ��i nh�c hy v�ng c� n��ng c� th� r�i �i t� Trung Nguy�n ","R�i �i l�i c�a h�n ta s�ng c�n c� c�i g� � ngh�a ? v� c�ng h�n c� th� l�n l�n t� th� ta �� s�a l�i r�t nhi�u , t�i sao c�c ng��i c�ng kh�ng th�y ���c ��y ? ","Ng��i th�t mu�n c�i l�i l�nh t�n ��ch quy�t ��nh sao ?","Ta ch� mu�n s�m ng�y c�ng Trung Nguy�n ��i ca th�nh th�n , sau li�n th�i lui ra giang h� chuy�n t�m chi�u c� l�o c�ng h�i t� , kh�ng h� n�a h�i t�i lo�n th� chuy�n , nh� v�y c� t�i g� ��y ?","Th�t l� nh� v�y ph�i kh�ng ? ","�ng tr�i � tr�n cao , nh� ti�u n� c� n�a c�u h� n�i li�n b� thi�n l�i ��nh m� ch�t , ti�u n� kh�ng c� ch�t n�o c�u o�n h�n ") 
elseif (GetSeries() == 1) and (GetFaction() == "wudu") then 
		if (UTask_wu == 20*256+10) then
i = GetItemCount(85) -- script viet hoa By http://tranhba.com  ��u ng��i 
if (i >= 7) then 
Talk(1,"L20_prise","Ti�n t� , thu�c h� �� �em la ti�u b�y qu� ��ch ��u cho ng��i ��a t�i ") 
else 
Talk(1,"","Ng��i kh�ng ph�i �i la ti�u n�i th� n�o c�n c� m�t m�i � n�i n�y ?") 
end 
elseif ((UTask_wu == 20*256) and (GetLevel() >= 20)) then -- script viet hoa By http://tranhba.com 20 c�p nhi�m v� 
Talk(4,"L20_get","Uy , m�i t�i # c� hi�u quy c� hay kh�ng a . l�u nh� v�y , th� n�o c�n kh�ng c� n�p l�n � ��u ng��i tr�ng � t�i nha ","Ng��i n�o ��u tr�ng ? ","Ch�nh l� c�ng b�n gi�o l� ��ch ng��i c�a ��ch ��u ","Thu�c h� ngu ��n , k�nh xin ti�n t� nhi�u h�n ch� �i�m ") 
else -- script viet hoa By http://tranhba.com  th��ng quy ��i tho�i 
Skill150Dialog("Ngay c� c� m�t �t ngu xu�n kh�ng bi�t s�ng ch�t , ch�ng l� h��ng b�n ti�n t� c�n tr� nh� v�y ��p c�ng c� l�i sao ?") 
end 
else 
Skill150Dialog("Nh�ng nam nh�n kia kh�ng m�i m� t�i , ��i v�i b�n h� kh� m�t ch�t li�n m�t hai ��ch m�nh b�n m�ng cho ta .") 
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
G_TASK:OnMessage("B�ch o�nh o�nh ", tbDailog, "DialogWithNpc") 
tbDailog:Show() 
end 


function L20_get() 
Say(" la ti�u b�y qu� m�t m�c th�m thu�ng b�n ti�n t� ��ch s�c ��p , th�t l� con c�c gh� mu�n �n th�t thi�n nga # ng��i th��ng m�t chuy�n la ti�u s�n , �em b�n h� gi�t cho ta li�u ",2," l� # thu�c h� c�i n�y �i l�y b�n h� ��u ng��i . /L20_get_yes","Thu�c h� v� c�ng qu� k�m , s� r�ng . /L20_get_no") 
end; 

function L20_get_yes() 
Talk(1, "","V�y ta � n�i n�y m� ch� tin t�c t�t c�a ng��i la ") 
	SetTask(10,20*256+10)
AddNote("V� b�ch o�nh o�nh ��n la ti�u s�n gi�t la ti�u b�y qu� ") 
Msg2Player("V� b�ch o�nh o�nh ��n la ti�u s�n gi�t la ti�u b�y qu� ") 
end; 

function L20_get_no() 
Talk(1,"","Ta c�ng bi�t ng��i l� m�t qu� nh�t gan , th�t v� d�ng !") 
end; 

function L20_prise() 
Talk(1,""," l�c l�c l�c l�c , th�t t�t ch�i , ng��i r�t c� b�n l�nh sao , h�o , b�n ti�n t� ��ng ra b�o ��m , th�ng ng��i v� ��i m�ng s� gi� ") 
i = GetItemCount(85) -- script viet hoa By http://tranhba.com  ��u ng��i 
for j = 1,i do DelItem(85) end 
SetTask(10,30*256) 
SetRank(51) 
-- script viet hoa By http://tranhba.com  AddMagic(70) 
-- script viet hoa By http://tranhba.com  AddMagic(66) 
add_wu(30) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
Msg2Player("Ch�c m�ng ng��i ��t ���c ��i m�ng s� gi� ��ch danh hi�u , h�c v� c�ng x�ch vi�m th�c ng�y , t�p kh� kh�n thu�c tr�i qua ") 
AddNote("V� b�ch o�nh o�nh �i gi�t la ti�u b�y qu� , b� ��ng c�a v� # ��i m�ng s� gi� ") 
end; 

function Uworld50_20() 
SetTask(50,30) 
Msg2Player("Nghe b�ch o�nh o�nh l�i c�a ng��i r�t c�m ��ng c�ng th��ng t�m , nh�ng l� kh�ng bi�t l�m sao b�y gi� ") 
end 
