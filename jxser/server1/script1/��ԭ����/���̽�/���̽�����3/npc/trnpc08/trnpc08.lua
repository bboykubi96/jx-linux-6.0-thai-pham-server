-- script viet hoa By http://tranhba.com description: ng�y nh�n d�y T� h� ph�p �oan m�c du� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/19 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nh�p m�n ph�i nhi�m v� c�p b�c y�u c�u 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

-- script viet hoa By http://tranhba.com  c�ng nhi�m v� m�i h� th�ng t��ng quan s�a ��i �i qua ��ch �oan m�c du� ch�n v�n 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2005/01/20 

Include("\\script\\task\\newtask\\newtask_head.lua");
Include("\\script\\task\\newtask\\lib_setmembertask.lua");
Include("\\script\\task\\newtask\\master\\xiepai\\maintask.lua");

Include("\\script\\task\\150skilltask\\g_task.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\item\\skillbook.lua")

Include("\\script\\global\\skills_table.lua")

function main() 

-- script viet hoa By http://tranhba.com  nhi�m v� m�i h� th�ng c�ng t� gi�o ch� tuy�n t��ng quan ch�n v�n -- script viet hoa By http://tranhba.com  

local myTaskValue = GetTask(1003) 
local myCamp = nt_getCamp() 

if (myTaskValue==360) then 
task_level60_01(); 
return 
end 


-- script viet hoa By http://tranhba.com  nhi�m v� m�i h� th�ng c�ng t� gi�o ch� tuy�n t��ng quan ch�n v�n -- script viet hoa By http://tranhba.com  

UTask_tr = GetTask(4) 
Uworld123 = GetTask(123) 
if (GetSeries() == 3) and (GetFaction() == "tianren") then 
if (UTask_tr == 50*256) and (GetLevel() >= 50) then 
Say("<color=Red> tinh v� ��n ch� ph��ng h�p nh� <color> b� t�ng binh b�t �i , nh�t � <color=Red> bi�n kinh <color> ��ch m�t t�a <color=Red> thi�t th�p <color> b�n trong , n�u nh� t�ng binh t� trong mi�ng h�n �p h�i ra b� m�t g� , �em ��i v�i b�n gi�o nghi�p l�n h�t s�c b�t l�i , v� v�y b�t lu�n s�ng ch�t , ng��i ��u ph�i �em ph��ng h�p nh� c�u ra . ", 2,"Thu�c h� tu�n l�nh /yes","Thu�c h� ch� kh�ng ch�u n�i n�y ��i ��m nhi�m /no") 
		elseif (UTask_tr == 50*256+50) then 
L50_prise() 
		elseif (UTask_tr > 50*256) and (UTask_tr < 50*256+50) then					-- script viet hoa By http://tranhba.com �Ѿ��ӵ�50��������δ���
Talk(1,"","<color=Red> bi�n kinh thi�t th�p <color> nh�t <color=Red> ph��ng h�p nh� <color> c� <color=Red> ba ��o c� quan <color>, m� ra to�n b� c� quan l� ���c c�u ra ph��ng h�p nh� , nh� , b�t lu�n s�ng ch�t , c�ng tuy�t kh�ng th� �� cho ph��ng h�p nh� r�i v�o ng��i T�ng trong tay !") 
else -- script viet hoa By http://tranhba.com  �� ho�n th�nh 50 c�p nhi�m v� , ch�a xu�t s� # thi�u t�nh ��i tho�i # 
Skill150Dialog("Ng��i m�i �ang d�y b�n trong th��ng c� , th�ng b�i ph�i kh�ng c� th� ���c ") 
end 
elseif (Uworld123 == 60) and (HaveItem(377) == 1) then -- script viet hoa By http://tranhba.com  ���ng b�t nhi�m � gi� h�a m�t tr�n � nhi�m v� 
if (GetTask(2) >= 70*256) and (GetTask(2) ~= 75*256) then -- script viet hoa By http://tranhba.com  ���ng m�n �� t� ho�c ���ng m�n xu�t s� ��ch m�i c� th� h�c ���c k� n�ng 
Talk(11,"Uworld123_step4a","Ch� l�u nh� v�y , ���ng m�n b� t�ch qu� nhi�n kh�ng c� ph� ta !","A , qu� nhi�n l� kh�ng kh� , ti�c nu�i l� thi�n h� kh�ng ai ngh� ��n .","�oan m�c ti�n sinh , ng��i xem c� th� hi�u ���ng m�n b� t�ch d�m v� c�ng sao ? ","B� t�ch vi�t qu� r� li�u , c� c�i g� kh�ng hi�u ?","Th�t l� kh�ng d�m gi�u gi�m , ta tr��c sau nh�n r�t �t s�ch , v� v�y kh�ng hi�u .","�� nh� v�y , c� c�i g� kh�ng hi�u li�n h�i ta .","............","...............?","............","...............?") 
else 
Talk(1,"Uworld123_step4b","Ch� l�u nh� v�y , ���ng m�n b� t�ch qu� nhi�n kh�ng c� ph� ta !") 
end 
elseif (UTask_tr >= 70*256) then -- script viet hoa By http://tranhba.com  �� xu�t s� 
Skill150Dialog("Th�nh t�u ��i s� ng��i , c�n kh�ng c�u n� ti�u ti�t , v� nh� l�m chuy�n g� c�ng tr�ng tr��c tr�ng sau # s� ��u s� �u�i , v�y th� c�i g� c�ng l�m kh�ng ���c !") 
else 
Skill150Dialog("V� c�ng v�n v� ch�nh t� , ch� c� m�nh y�u . giang h� chuy�n , c� th� ng��i tr� n�n , thi�n h� chi th� , c��ng gi� ch��ng chi .") 
end 
end; 

function Skill150Dialog(szTitle) 
local nNpcIndex = GetLastDiagNpc(); 
local nCurDate = tonumber(GetLocalDate("%Y%m%d%H%M")) 
local szNpcName = GetNpcName(nNpcIndex) 
if NpcName2Replace then 
szNpcName = NpcName2Replace(szNpcName) 
end 
local tbDailog = DailogClass:new(szNpcName) 
tbDailog.szTitleMsg = format("<npc>%s", szTitle) 
G_TASK:OnMessage("Ng�y nh�n ", tbDailog, "DialogWithNpc") 
tbDailog:Show() 
end 

function yes() 
Talk(1,"","<color=Red> bi�n kinh thi�t th�p <color> nh�t <color=Red> ph��ng h�p nh� <color> c� <color=Red> ba ��o c� quan <color>, m� ra to�n b� c� quan l� ���c c�u ra ph��ng h�p nh� , nh� , b�t lu�n s�ng ch�t , c�ng tuy�t kh�ng th� �� cho ph��ng h�p nh� r�i v�o ng��i T�ng trong tay !") 
	SetTask(4, 50*256+20)
Msg2Player("Th�y T� h� ph�p �oan m�c du� , nh�n c�u ng��i nhi�m v� , ��n bi�n kinh thi�t th�p c�u ph��ng h�p nh� ") 
AddNote("Th�y T� h� ph�p �oan m�c du� , nh�n c�u ng��i nhi�m v� , ��n bi�n kinh thi�t th�p c�u ph��ng h�p nh� ") 
end; 

function no() 
Talk(1,"","Ng��i th�n l� b�n gi�o ch��ng k� khi�n cho , ngay c� ch�t chuy�n nh� n�y c�ng l�m kh�ng ���c , nh� th� n�o ph�c ch�ng ?") 
end; 

function L50_prise() 
Talk(1,"","Ng��i m�c d� l� m�i �� t� , nh�ng l� c� th� ��m ���ng tr�ch nhi�m n�ng n� , b�n gi�o r�t c�n gi�ng nh� ng��i gi�ng nhau ng��i , ta s� c�ng gi�o ch� n�i , cho ng��i s�c phong .") 
SetRank(60) 
SetTask(4, 60*256) 
SetTask(21,0) -- script viet hoa By http://tranhba.com  sau khi d�ng xong li�n �em ph� tr� thay ��i l��ng thanh linh , li�n v�i sau n�y t�i di�n l�i d�ng 
-- script viet hoa By http://tranhba.com  AddMagic(143) 
add_tr(60) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
Msg2Player("Ch�c m�ng ng��i b� s�c phong l�m ng�y nh�n d�y h� gi�o khi�n cho .") 
AddNote("H�i thi�n nh�n d�y th�y T� h� ph�p �oan m�c du� ph�c m�nh , ho�n th�nh c�u ng��i nhi�m v� , th�ng l�m h� gi�o khi�n cho ") 
end; 

function Uworld123_step4a() 
DelItem(377) 
if (HaveMagic(339) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(339,1) 
end 
if (HaveMagic(302) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(302,1) 
end 
if (HaveMagic(342) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(342,1) 
end 
if (HaveMagic(351) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(351) 
end 
CheckIsCanGet150SkillTask() 
Msg2Player("Ng��i h�c ���c nhi�p h�n b�ng tr�ng , m�a sa l� hoa , c�u cung bay tinh !") 
Msg2Player("�oan m�c du� ti�p t�c m�i/xin ng��i �i cho ���ng b�t nhi�m b�o tin .") 
SetTask(123,75) 
Talk(2,""," l�m phi�n ng��i truy�n l�i cho b�t nhi�m c�ng t� , n�i �oan m�c du� s� kh�ng �� cho h�n th�t v�ng . ","H�o , t�i h� c�m �n ti�n b�i ch� gi�o . ") 
end 

function Uworld123_step4b() 
DelItem(377) 
SetTask(123,70) 
Talk(1,"","R�t t�t , l�m phi�n ng��i truy�n l�i cho b�t nhi�m c�ng t� , n�i �oan m�c du� s� kh�ng �� cho h�n th�t v�ng . ") 
Msg2Player("�oan m�c du� ti�p t�c m�i/xin ng��i �i cho ���ng b�t nhi�m b�o tin .") 
end 
