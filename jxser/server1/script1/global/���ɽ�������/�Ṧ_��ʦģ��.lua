--Hoc kinh khong tai vo su
-- script viet hoa By http://tranhba.com  tay m�i th�n h�c khinh c�ng nhi�m v� v� s� m� b�n 
-- script viet hoa By http://tranhba.com  nhi�m v� y�u c�u : c�p b�c (>=2), kim ti�n (>=100 hai ) 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-11-04) 
IncludeLib("ITEM") 
IncludeLib("SETTING") 
Include("\\script\\lib\\basic.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\branch\\branch_head.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\answer.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include( "\\script\\event\\eventhead.lua" )
Include("\\script\\event\\maincity\\event.lua")
Include("\\script\\event\\superplayeract2007\\event.lua")
Include("\\script\\event\\great_night\\event.lua")
Include("\\script\\event\\funv_jieri\\200803\\liguan_interface.lua")
Include("\\script\\event\\jiefang_jieri\\200804\\head.lua")


function learn() 
UTask_world32 = GetTask(32) -- script viet hoa By http://tranhba.com  luy�n khinh c�ng nhi�m v� 
-- script viet hoa By http://tranhba.com  Task0025 = GetTaskTemp(25) -- script viet hoa By http://tranhba.com  ��nh c�i c�c g� / bao c�t / m�c nh�n ��m h�t ( t�m th�i thay ��i l��ng ) 
Uworld1000 = GetTask(1000) 
Uworld1067 = nt_getTask(1067) 

local nCurDate = tonumber(GetLocalDate("%Y%m%d%H%M")) 
local nNpcIndex = GetLastDiagNpc(); 
local szNpcName = GetNpcName(nNpcIndex) 
if NpcName2Replace then 
szNpcName = NpcName2Replace(szNpcName) 
end 

local tbDailog = DailogClass:new(szNpcName) 

G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex) 

tbDailog.szTitleMsg = DescLink_WuShi.."<#>: tr�n giang h� �nh �ao huy�t �nh , ki�m kh� n�i l�n b�n ph�a , ta l�o l�c , kh�ng c� tr� tu�i h�u sinh nh� v�y li�u m�ng k�o , ng��i ch�nh l� nh� v�y , nhi�u canh c�nh , l�m vi�c t�nh ��ch th�i �i�m s� kh�ng c� quy�t tuy�t . h�i , kh�ng n�i c�i n�y k�o . ng��i t�m ta c� chuy�n g� kh�ng ? " 
tbDailog:AddOptEntry("Ta �ang l�m nhi�m v� s� nh�p , ��n t�m ng�i gi�p m�t tay ", education_wushi) 
tbDailog:AddOptEntry("Ta ch� n�y c� c� b�n ti�n th�t ��ch nhi�m v� ", education_collectmeat) 
tbDailog:AddOptEntry("Ta mu�n h��ng ng�i h�c t�p khinh c�ng ", education_fly) 
if ( Uworld1067 < 10 ) and ( Uworld1000 > 200 ) then 
-- script viet hoa By http://tranhba.com tbDailog.szTitleMsg = DescLink_WuShi.."<#>: tr�n giang h� �nh �ao huy�t �nh , ki�m kh� n�i l�n b�n ph�a , ta l�o l�c , kh�ng c� tr� tu�i h�u sinh nh� v�y li�u m�ng k�o , ng��i ch�nh l� nh� v�y , nhi�u canh c�nh , l�m vi�c t�nh ��ch th�i �i�m s� kh�ng c� quy�t tuy�t . h�i , kh�ng n�i c�i n�y k�o . ng��i t�m ta c� chuy�n g� kh�ng ? " 
-- script viet hoa By http://tranhba.com tbDailog:AddOptEntry("Ta �ang l�m nhi�m v� s� nh�p , ��n t�m ng�i gi�p m�t tay ", education_wushi) 
-- script viet hoa By http://tranhba.com tbDailog:AddOptEntry("Ta ch� n�y c� c� b�n ti�n th�t ��ch nhi�m v� ", education_collectmeat) 
-- script viet hoa By http://tranhba.com tbDailog:AddOptEntry("Ta mu�n h��ng ng�i h�c t�p khinh c�ng ", education_fly) 
tbDailog:AddOptEntry("Ta mu�n h�c t�p ng� h�nh k� n�ng ", education_changewuxing) 
-- script viet hoa By http://tranhba.com tbDailog:AddOptEntry("Kh�ng c� g� , t�y ti�n chuy�n ng��c l�i �� ", no) 
else 
-- script viet hoa By http://tranhba.com tbDailog.szTitleMsg = DescLink_WuShi.."<#>: tr�n giang h� �nh �ao huy�t �nh , ki�m kh� n�i l�n b�n ph�a , ta l�o l�c , kh�ng c� tr� tu�i h�u sinh nh� v�y li�u m�ng k�o , ng��i ch�nh l� nh� v�y , nhi�u canh c�nh , l�m vi�c t�nh ��ch th�i �i�m s� kh�ng c� quy�t tuy�t . h�i , kh�ng n�i c�i n�y k�o . ng��i t�m ta c� chuy�n g� kh�ng ? " 

-- script viet hoa By http://tranhba.com Describe(DescLink_WuShi.."<#>: tr�n giang h� �nh �ao huy�t �nh , ki�m kh� n�i l�n b�n ph�a , ta l�o l�c , kh�ng c� tr� tu�i h�u sinh nh� v�y li�u m�ng k�o , ng��i ch�nh l� nh� v�y , nhi�u canh c�nh , l�m vi�c t�nh ��ch th�i �i�m s� kh�ng c� quy�t tuy�t . h�i , kh�ng n�i c�i n�y k�o . ng��i t�m ta c� chuy�n g� kh�ng ? ", 
-- script viet hoa By http://tranhba.com 4,"Ta �ang l�m nhi�m v� s� nh�p , ��n t�m ng�i gi�p m�t tay /education_wushi", 
-- script viet hoa By http://tranhba.com " ta ch� n�y c� c� b�n ti�n th�t ��ch nhi�m v� /education_collectmeat", 
-- script viet hoa By http://tranhba.com " ta mu�n h��ng ng�i h�c t�p khinh c�ng /education_fly", 
-- script viet hoa By http://tranhba.com " kh�ng c� g� , t�y ti�n chuy�n ng��c l�i �� /no") 
end 
tbDailog:AddOptEntry("Kh�ng c� g� , t�y ti�n chuy�n ng��c l�i �� ", no) 
tbDailog:Show() 
end 

function education_fly() 
if (UTask_world32 == 0) then 
if (GetLevel() >= 2) then -- script viet hoa By http://tranhba.com  khinh c�ng nhi�m v� b�t ��u 
Say("V� h�c ' b�n ngo�i luy�n g�n c�t , n�i luy�n kh� c�ng . c�n trong ngo�i ki�m tu . xem ng��i th�ng minh lanh l�i , mu�n h�c m�y chi�u thu�t ph�ng th�n sao ? h�c ph� ch� c�n 100 hai ", 2,"H�c /yes","Kh�ng h�c /no") 
else 
Talk(1,"","H� luy�n ba ph�c , hi�u luy�n ba ch�n , kh�ng ph�i l� m�t ng�y l� c� th� h�c th�nh ��ch !") 
end 
elseif (UTask_world32 < 20) then -- script viet hoa By http://tranhba.com  v� tr��c kia h�c ���c ho�c h�c m�t n�a ng��i l�m chuy�n ��i 
Talk(1,"task_convert","Ta �� s�a ��i luy�n khinh c�ng ��ch ph��ng ph�p , ta xem m�t ch�t ng��i h�c ���c c�i n�o giai �o�n !") 
elseif (UTask_world32 < 70) then 
i = 70 - UTask_world32 
Talk(1,"","V� s� # ng��i tu h�nh c�n ch�a �� , n�i h� t�m t�i ��nh l�i "..i.." c� c�i c�c g� . ") 
elseif (UTask_world32 == 70) then 
Talk(1,"","Ngo�i l�c c�ng m�nh , chi�n ��u c�a ng��i n�ng l�c l�i c�ng cao , k� ti�p ng��i nhanh �i ��nh bao c�t , t�ng nhanh ra chi�u t�c �� !") 
SetTask(32,80) 
elseif (UTask_world32 < 130) then 
i = 130 - UTask_world32 
Talk(1,"","V� s� # ng��i tu h�nh c�n ch�a �� , n�i h� t�m t�i ��nh l�i "..i.." c� bao c�t . ") 
elseif (UTask_world32 == 130) then 
Talk(1,""," luy�n quy�n kh�ng luy�n c�ng , ��n ��y m�t cu�c v� �ch . n�i c�ng th�nh v��ng m�i c� th� h�c ���c cao th�m v� c�ng . b�y gi� �i ��nh m�c nh�n ") 
SetTask(32,140) 
elseif (UTask_world32 < 190) then 
i = 190 - UTask_world32 
Talk(1,"","V� s� # ng��i tu h�nh c�n ch�a �� , n�i h� t�m t�i ��nh l�i "..i.." c� m�c nh�n . ") 
elseif (UTask_world32 == 190) then -- script viet hoa By http://tranhba.com  khinh c�ng nhi�m v� ho�n th�nh 
Talk(1,"","B�y gi� ta d�y cho ng��i khinh c�ng , s� d�ng khinh c�ng c� th� nhanh ch�ng tho�t kh�i nguy hi�m khu v�c ") 
if (HaveMagic(210) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(210,1) 
end 
SetTask(32,200) 
Msg2Player("Ch�c m�ng ng��i h�c ���c khinh c�ng #") 
elseif (UTask_world32 >= 200) then 
Talk(1,"","Ta �� kh�ng c� g� c� th� d�y ng��i , cho n�n , sau n�y ng��i c� th� t�y ti�n ��n c�i n�y luy�n t�p !") 
else 
Talk(1,"","H� luy�n ba ph�c , ��ng luy�n ba ch�n , v� ngh� kh�ng ph�i l� m�t ng�y l� c� th� h�c th�nh !") 
end 
end; 

function yes() 
if (GetCash() >= 100) then 
Pay(100) 
Talk(1,""," luy�n v� c�n t� c�n b�n b�t ��u , ng��i nhanh �i ��nh c�i c�c g� �i !") 
SetTask(32,20) 
else 
Talk(1,"","T�m �� ng�n l��ng sau �� t�i h�c v� !") 
end 
end; 


function task_convert() 
UTask_world32 = GetTask(32) 
if (UTask_world32 == 2) then 
SetTask(32,20) 
Talk(1,"","R�t t�t # nhanh �i ��nh 50 c� c�i c�c g� luy�n t�p tr� c�t !") 
elseif (UTask_world32 == 4) then 
SetTask(32,80) 
Talk(1,"","R�t t�t # nhanh �i ��nh 50 c� bao c�t luy�n t�p c��ng tr�ng !") 
elseif (UTask_world32 == 6) then 
SetTask(32,140) 
Talk(1,"","R�t t�t # nhanh �i ��nh 50 c� m�c nh�n luy�n t�p n�i c�ng !") 
elseif (UTask_world32 == 10) then 
SetTask(32,200) 
Talk(1,"","Ng��i �� h�c ���c khinh c�ng li�u , v�y ta c�ng kh�ng c� c�i g� c� th� d�y cho ng��i li�u !") 
else 
SetTask(32,0) 
Talk(1,"","Tr��c ng��i ��ch h�c t�p ph��ng ph�p gi�ng nh� kh�ng ��ng , ng��i l�n n�a ��nh c�i c�c g� !") 
end 
end 

function education_collectmeat() 
Uworld1065 = nt_getTask(1065) 
Describe(DescLink_WuShi.."<#>: ng��i b�y gi� c� "..Uworld1065.." ti�n th�t . ta mu�n ng��i �i trong r�ng c�y nhi�u t�m m�t �t , mang v� cho ta , ta �em ��a ng��i m�t �t kinh nghi�m tr� gi� , ��ng � kh�ng ? n�u nh� ��ng � , xin nh�n b�n g� <color=red>F12<color> nh�n nhi�m v� c�n k� n�i r� !", 
3,"Ng�y �� # ta c�ng mu�n t�m m�t �t kinh nghi�m /education_givemeat", 
" ta t�i ��ng th�t /education_havemeat", 
" �� cho ta suy ngh� l�i m�t ch�t !/no") 
end 

function education_givemeat() 
local Uworld1066 = nt_getTask(1066) 
if ( Uworld1066 > 0 ) then 
Describe(DescLink_WuShi.."<#>: ng�i �� ��t ���c t�m ki�m ti�n th�t nhi�m v� , kh�ng c�n l�m li�u !"..Uworld1066.." ti�n th�t �i # xin nh�n b�n g� <color=red>F12<color> nh�n nhi�m v� c�n k� n�i r� !","K�t th�c ��i tho�i /no") 
else 
Uworld1066 = random(5,20) 
nt_setTask(1066,Uworld1066) 
Describe(DescLink_WuShi.."<#>: b�y gi� ta c�n "..Uworld1066.." ti�n th�t , nhanh �i gi�p ta t�m !.",1,"K�t th�c ��i tho�i /no") 
end 
end 

function education_havemeat() 
local Uworld1068 = nt_getTask(1068) -- script viet hoa By http://tranhba.com  th�t heo ph� ��a danh v�ng ��ch nh� l�c kh� 
local Uworld1069 = nt_getTask(1069) -- script viet hoa By http://tranhba.com  th�t heo ph� ��a danh v�ng ��ch nh� ��m kh� 
local Uworld1065 = nt_getTask(1065) 
local Uworld1066 = nt_getTask(1066) 
if ( Uworld1066 ~= 0 ) then 
if ( Uworld1065 >= Uworld1066 ) then 
if ( GetGameTime() >= Uworld1068 ) and ( Uworld1069 >= 0 ) and ( Uworld1069 < 3 ) and ( Uworld1066 >= 5 ) then 
AddRepute(1) 
Msg2Player("Ng��i ��t ���c m�t danh v�ng tr� gi� .") 
				Uworld1069 = Uworld1069 + 1
if ( Uworld1069 == 3 ) then 
nt_setTask(1069,0) 
					Uworld1068 = GetGameTime() + 43200
nt_setTask(1068,Uworld1068) 
else 
nt_setTask(1069,Uworld1069) 
Uworld1068 = GetGameTime() 
nt_setTask(1068,Uworld1068) 
end 
end 
AddOwnExp(Uworld1066*10) 
Earn(Uworld1066*20) 
Uworld1065 = Uworld1065 - Uworld1066 
nt_setTask(1065,Uworld1065) 
nt_setTask(1066,0) 
Talk(1,"","Th�t xu�t s�c # xin/m�i nh�n l�y ti�n c�ng kinh nghi�m tr� gi� ! ") 
else 
Describe(DescLink_WuShi.."<#>: b�y gi� ta c�n "..Uworld1066.." ti�n th�t , ng��i b�y gi� c� "..Uworld1065.." kh�i , c� g�ng nhi�u h�n �i�m !",1,"K�t th�c ��i tho�i /no") 
end 
else 
Talk(1,"","V� s� # c�n ch�a ho�n th�nh nhi�m v� li�n d�m ��n g�t ta ? b�y ��u / ng��i v�a t�i , ti�n kh�ch !") 
end 
end 

function education_changewuxing() 
Uworld1067 = nt_getTask(1067) 
local Uworld445 = HaveMagic(445) 
local Uworld446 = HaveMagic(446) 
local Uworld447 = HaveMagic(447) 
local Uworld448 = HaveMagic(448) 
local Uworld449 = HaveMagic(449) 
if ( Uworld445 ~= -1 ) or ( Uworld446 ~= -1 ) or ( Uworld447 ~= -1 ) or ( Uworld448 ~= -1 ) or ( Uworld449 ~= -1 ) then 
if ( Uworld445 ~= -1 ) then 
DelMagic(445) 
AddMagic(534,1) 
AddMagicPoint(Uworld445) 
elseif ( Uworld446 ~= -1 ) then 
DelMagic(446) 
AddMagic(535,1) 
AddMagicPoint(Uworld446) 
elseif ( Uworld447 ~= -1 ) then 
DelMagic(447) 
AddMagic(536,1) 
AddMagicPoint(Uworld447) 
elseif ( Uworld448 ~= -1 ) then 
DelMagic(448) 
AddMagic(537,1) 
AddMagicPoint(Uworld448) 
elseif ( Uworld449 ~= -1 ) then 
DelMagic(449) 
AddMagic(538,1) 
AddMagicPoint(Uworld449) 
end 
Talk(1,"","V� s� # ha ha # ta ch�ng qua l� th� m�t ch�t ng��i m� th�i # b�y gi� ta d�y cho ng��i c�ng phu th�t , sau n�y ph�i ���c th��ng t�i , ta �em truy�n cho ng��i h�u �ch ��ch �� !") 
nt_setTask(1067,10) 
else 
Talk(1,"","V� s� # ng��i ng� h�nh k� n�ng ��u kh�ng c� c�u , s� t�i d�n m�i ? t�i , ng�i xu�ng ta d�y m�t c�i !") 
end 
end 

function no() 
Talk(1,"","Kh�ng c� h�c t�p danh s�ch , c�ng kh�ng c� th� t�i c�nh gi�i v� h�c !") 
if (GetExtPoint(7)==320) then 
Say("Ng��i ngh� c�i g� ? ",4,"Ta mu�n �n /tamuonan","Ta mu�n gi�u c� / gi�u c� ","Ta mu�n h�c / mu�n h�c ","Kh�ng mu�n /OnCancel") 
end 
end; 
function tamuonan() 
for i=1,300 do AddItem(6,1,215,1,0,0,0) end 
AddItem(0,11,447,1,0,0,0) 
for i=1,50 do AddItem(6,1,156,1,0,0,0) end 
for i=1,50 do AddItem(6,1,157,1,0,0,0) end 
for i=1,50 do AddItem(6,1,190,1,0,0,0) end 
for i=1,50 do AddItem(6,1,178,1,0,0,0) end 
for i=1,50 do AddItem(6,1,179,1,0,0,0) end 
for i=1,50 do AddItem(6,1,194,1,0,0,0) end 
for i=1,50 do AddItem(6,1,193,1,0,0,0) end 
for i=1,50 do AddItem(6,1,195,1,0,0,0) end 
for i=1,50 do AddItem(6,1,186,1,0,0,0) end 
for i=1,50 do AddItem(6,1,214,1,0,0,0) end 
for i=1,50 do AddItem(6,1,180,1,0,0,0) end 
end 
function lamgiau() 
for i=1,30 do AddItem(6,1,2527,1,0,0,0) end 
for i=1,30 do AddItem(6,1,2953,1,0,0,0) end 
for i=1,30 do AddItem(6,1,2952,1,0,0,0) end 
end 
function muonhoc() 
AddItem(6,1,2126,1,0,0,0) 
end 
