--Tham cau nam nhac tran
--S?a ng?a BMW ? th?m c�u nam nh?c tr?n: edit by mcteam
-- script viet hoa By http://tranhba.com  ng��i �i ���ng _ tr�m c�u nam nh�c tr�n b�n ��c th� m� (80 c�p m� ) ��ch NPC ch�n v�n 
-- script viet hoa By http://tranhba.com  By Dan_Deng(2003-11-10) 

Include("\\script\\tong\\tong_header.lua");
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\answer.lua")
Include("\\script\\activitysys\\npcfunlib.lua")

function main() 

dofile("script/������/������/npc/·��_���.lua")

UWorld97 = GetTask(97) 
str, result = GetTong() 
-- script viet hoa By http://tranhba.com  if (UWorld97 >= 10) then -- script viet hoa By http://tranhba.com  �� mua qua 
-- script viet hoa By http://tranhba.com  Talk(1,"","Tr�m c�u # ng��i nh�t ��nh ph�i th�t t�t ��i ��i con ng�a , m�i ng�y c�p cho n� t�m , ��u b�nh b�n trong mu�n s�m th��ng tinh m�t ......") 
if (UWorld97 < 100) and (result == 1) and (GetTongFigure() == TONG_MASTER) then -- script viet hoa By http://tranhba.com  l� bang ch� , kh�ng c� h��ng th� qu� �u ��i mua m� 
SetTaskTemp(17,1000) 
else -- script viet hoa By http://tranhba.com  b�nh th��ng mua m� 
SetTaskTemp(17,1500) 
-- script viet hoa By http://tranhba.com  Talk(1,"","Tr�m c�u # thi�n l� m� th��ng c� , m� b� nh�c kh�ng th��ng c� . �� h� # kh�ng bi�t sao #") 
end 

local nNpcIndex = GetLastDiagNpc(); 
local szNpcName = GetNpcName(nNpcIndex); 
if NpcName2Replace then szNpcName = NpcName2Replace(szNpcName); end 
local tbDailog = DailogClass:new(szNpcName); 
tbDailog.szTitleMsg = "<#><npc> ��i hi�p ch�n ng�a r�t nhi�u n�m , ch� nh�n m�t c�i c�ng bi�t c� ���c hay kh�ng !" 

G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex); 
tbDailog:AddOptEntry("Khi �� l� ng��i k�u ta ?", horse_get); 

tbDailog:Show(); 
end 

function horse_get() 
Talk(4,"sele_color","Anh h�ng xin d�ng b��c . ","Huynh ��i , c� c�i g� mu�n ch� gi�o ��ch ","T�i h� l� Th�m C�u #, b�y gi� c� m�t th�t tu�n m�, c� th� bay �i ng�n d�m . v� n�y anh h�ng phong th�i b�t ph�m , nh�t ��nh l� cao th� . ��i hi�p ��ch tu�n m� ch�a t�ng b� th�t phu thu�n ph�c . ","�� cho ta th� nh�n tu�n m� m�t ch�t  ,,, ") 
end 

function sele_color() 
Say("Anh h�ng nh�n ! ",6,"��y kh�ng ph�i l� � V�n ��p Tuy�t sao !/buy_black","��y kh�ng ph�i l� ng�a X�ch Th� sao ! /buy_red","��y kh�ng ph�i l� Tuy�t �nh sao ! /buy_cyan","��y kh�ng ph�i l� ��ch L� sao ! /buy_yellow","��y kh�ng ph�i l� theo Chi�u D� Ng�c S� T� sao ! /buy_white","��y l� c�i g� m� ? ta h�c th�c c� h�n /buy_none") 
end 

function buy_black() 
the_buy(1) 
end 

function buy_red() 
the_buy(2) 
end 

function buy_cyan() 
the_buy(3) 
end 

function buy_yellow() 
the_buy(4) 
end 

function buy_white() 
--if GetCash() < 30000000 then
--Talk(1,"","c�n c� 3000 v�n m�i mua ���c chi�u d� !")
--return 
--end
--Pay(30000000)
--AddItem(0,10,5,5,0,0,0)
the_buy(5) 
end 

function buy_none() 
Talk(1,"","��ng ��u m�t bang , l� s� tr��ng c�p ng��i c�a v�t cu�i c�ng th� n�o c�ng kh�ng bi�t c�i n�y l� c�i g� m� ? th�t kh�ng c� � , xem ra ng��i xem sai l�m r�i !") 
end 

function the_buy(i) 
SetTaskTemp(49,i) 
x = GetTaskTemp(17) 
if (x == 3000) then 
Say("Kh�ng sai ! ng��i th�t l� anh h�ng . t�i h� v�n l� kh�ng mu�n b�n con ng�a n�y , nh�ng b�y gi� t�i l�c g�p r�t c�n 3000 v�n , nh�n anh h�ng c�ng th�t th�ch n� v� v�y kh�c ch� n�i t�m kh�ng th�i b�n cho anh h�ng , hy v�ng anh h�ng c� th� ��i x� t� t� n� . ",2,"Ta nh�t ��nh th�t t�t ��i v�i n� /buy_yes","Nh�t th�i �i ��u t�m nhi�u ti�n nh� v�y /buy_no") 
else 
Say("Kh�ng sai ! ng��i th�t l� anh h�ng . t�i h� v�n l� kh�ng mu�n b�n con ng�a n�y , nh�ng b�y gi� t�i l�c g�p r�t c�n 3000 v�n , nh�n anh h�ng c�ng th�t th�ch n� v� v�y kh�c ch� n�i t�m kh�ng th�i b�n cho anh h�ng , hy v�ng anh h�ng c� th� ��i x� t� t� n� ",2,"Ta nh�t ��nh th�t t�t ��i v�i n� /buy_yes","Nh�t th�i �i ��u t�m nhi�u ti�n nh� v�y /buy_no") 
end 
end 

function buy_yes() 
x = GetTaskTemp(17) 
if (GetCash() >= 3000 * 10000) then 
i = GetTaskTemp(49) 
if (x == 3000) then -- script viet hoa By http://tranhba.com  l� gi� �u ��i mua , v� thay ��i l��ng ph� tr� gi� , h�n n�a nh� mua l� c�i g� m�u s�c m� 
			SetTask(97,100+i)
end 
Pay(3000 * 10000) 
AddItem(0,10,5,i,0,0,0) 
Talk(1,"","Con ng�a a con ng�a ! t� nay v� sau ng��i li�n theo v� n�y anh h�ng , nh�t ��nh ph�i nghe l�i a !") 
else 
Talk(1,"","Ta tr�n ng��i b�y gi� ng�n l��ng kh�ng �� , ng��i c�m tr��c s� ti�n n�y !") 
end 
end 

function buy_no() 
Talk(1,"","Ch�ng l� l� s� ti�n n�y �� cho anh h�ng l�m kh� ") 
end 
