--T�nh n�ng vi s�n ��o t�y s�n ti�u nh� edit by mcteam

Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\xishancun\\xishancun_head.lua")
Include("\\script\\task\\system\\task_string.lua"); 
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

Include("\\script\\global\\g7vn\\g7configall.lua")

function main() 

dofile("script/������/��ɽ��/npc/npc_xishanxiaoer.lua")
dofile("script/global/g7vn/g7configall.lua")

if divisondao == 0 then
	Say("Vi S�n ��o t�m th�i ch�a m�")
	return
end

-- script viet hoa By http://tranhba.com  Uworld1064 = nt_getTask(1064) 
-- script viet hoa By http://tranhba.com  local name = GetName() 
-- script viet hoa By http://tranhba.com  if ( Uworld1064 < 2) then -- script viet hoa By http://tranhba.com  ph�n �o�n ch�a ho�n th�nh t�y s�n t� nhi�m v� 
-- script viet hoa By http://tranhba.com  Talk(1,"","T�y s�n ti�u nh� # m�y ng�y nay kh� tr�i ph�n ph�c v� th��ng , ta c�ng kh�ng t�m t� ra bi�n ��nh c� li�u . ") 
-- script viet hoa By http://tranhba.com  elseif ( Uworld1064 == 2 ) then -- script viet hoa By http://tranhba.com  ph�n �o�n �� ho�n th�nh t�y s�n t� nhi�m v� , nh�ng ch�a �i t�y s�n t� , h�n n�a kh�ng c�ng t�y s�n ti�u nh� ��i tho�i qu� 
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com  Say("T�y s�n ti�u nh� # ng��i mu�n �i t�y s�n t� ? ��ng ti�c t�y s�n t� c�n ch�a m� �� , t�m th�i kh�ng th� qu� kh� . b�t qu� ng��i y�n t�m , ta �� nh� ng��i , qua m�y ng�y ng��i tr�c ti�p t�i t�m ta t�t l�m , ta d�n ng��i th��ng t�y s�n t� . ",0) 
-- script viet hoa By http://tranhba.com  Describe(DescLink_XiShanXiaoEr.."<#># v� kh�ch quan kia , t�m ta c� g� qu� ki�n ? c� ph�i hay kh�ng mu�n mua c� ��y ? <enter>" 
-- script viet hoa By http://tranhba.com  ..name.."<#># kh�ng ph�i v�y , ph�i kh�ng t�nh nh�n s� �� cho ta t�i t�m ng��i . <enter> t�y s�n ti�u nh� # l� h�n , ta bi�t . ng��i c�ng ph�i �i t�y s�n t� �i , �i th�i , ta ��y li�n d�n ng��i �i . b�t qu� t�y s�n t� c�i ch� n�y qua c�ng kh�ng ph�i l� nh� v�y ph��ng ti�n , h�n n�a hung hi�m d� th��ng , ng��i ph�i nhi�u th�m c�n th�n y�u . <enter>", 
-- script viet hoa By http://tranhba.com  2,"Ch�ng ta l�n ���ng �i /task007","Ta c�n l� sau �� l�i �i �i /task006") 
-- script viet hoa By http://tranhba.com  elseif ( Uworld1064 == 3) then -- script viet hoa By http://tranhba.com  ph�n �o�n �� ho�n th�nh t�y s�n t� nhi�m v� , th� c�ng t�y s�n ti�u nh� ��i tho�i qu� m�t l�n , nh�ng ch�a �i t�y s�n t� 
-- script viet hoa By http://tranhba.com  Say("T�y s�n ti�u nh� # ng��i b�y gi� �� chu�n b� xong �i t�y s�n t� li�u sao ? ",2,"Ch�ng ta l�n ���ng �i /task007","Ta c�n l� sau �� l�i �i �i /task006"); 
-- script viet hoa By http://tranhba.com  end; 

local nNpcIndex = GetLastDiagNpc(); 
local szNpcName = GetNpcName(nNpcIndex); 
if NpcName2Replace then szNpcName = NpcName2Replace(szNpcName) end 
local tbDailog = DailogClass:new(szNpcName); 
tbDailog.szTitleMsg = "T�y S�n ti�u nh� # ��i hi�p mu�n �i T�y S�n ��o ? mu�n ��ng 100 t� th�n b� m�t �� m�i c� th� �i ." 
--tbDailog:AddOptEntry("Ta c�n l� sau �� l�i �i �i  .", task006, {}); 
--tbDailog:AddOptEntry("��ng � # ta l�p t�c �i t�m .", task007, {}); 
tbDailog:AddOptEntry("T�m kh�ng �i .", no, {}); 

G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex); 

tbDailog:Show(); 

end; 
function task006() 
Uworld1064 = nt_getTask(1064) 
nt_setTask(1064,3) 
end; 

function task007() 
if (GetLevel() < 100) then 
Say("T�y s�n ti�u nh� #100 c�p tr� xu�ng kh�ng th� �i !",0); 
return 
end 

GiveItemUI("��ng m�t tra ph� .","�em m�t �� ��t � ph�a d��i ", "task008", "no") 

--Uworld1064 = nt_getTask(1064) 
--nt_setTask(1064,0) 
--SetFightState(1); 
--NewWorld(342,1177,2410); 
--DisabledUseTownP(1) -- script viet hoa By http://tranhba.com  h�n ch� k� � t�y s�n t� b�n trong s� d�ng tr� v� th�nh ph� 
--SetRevPos(175,1); -- script viet hoa By http://tranhba.com  thi�t tr� s�ng l�i �i�m 

end; 

function task008(ncount) 
local scrollarray = {} 
local scrollcount = 0 
local scrollidx = {} 
local y = 0 
for i=1, ncount do 
local nItemIdx = GetGiveItemUnit(i); 
itemgenre, detailtype, parttype = GetItemProp(nItemIdx) 
if (itemgenre == 6 and detailtype == 1 and parttype ==196) then 
			y = y + 1
scrollidx[y] = nItemIdx; 
scrollarray[i] = GetItemStackCount(nItemIdx) 
			scrollcount = scrollcount + scrollarray[i]
end 
end 
if (y ~= ncount) then 
Talk(1,"","Th�n b� m�t �� kh�ng �� , � ki�m tra xem m�t ch�t !") 
return 
end 
if (scrollcount > 100) then 
Talk(1,"","Ta ch� c�n 100 t� th�n b� m�t �� , kh�ng c�n cho ta mang ��n nhi�u nh� v�y ") 
return 
end 
if (scrollcount < 100) then 
Talk(1,"","Ng��i giao cho ta th�n b� m�t �� kh�ng �� , n�a ki�m tra xem m�t ch�t !") 
return 
end 
if (scrollcount == 100) then 
for i = 1, y do 
RemoveItemByIndex(scrollidx[i]) 
end 
end; 
-- script viet hoa By http://tranhba.com SetFightState(0); 
NewWorld(342,1178,2412) 
SetFightState(1); 
end 

function no() 
end 
