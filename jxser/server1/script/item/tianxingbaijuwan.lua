-- script viet hoa By http://tranhba.com  s� d�ng ��c hi�u r� r�ng c�u ho�n ch�n v�n 
-- script viet hoa By http://tranhba.com 2006.08.29 
-- script viet hoa By http://tranhba.com 80 gi� c�ch tuy�n b�y qu�n th�i gian 
-- script viet hoa By http://tranhba.com  kinh nghi�m v� nguy�n b�ch c�u ��ch 2 l�n 

Include("\\script\\global\\baijuwanhead.lua")

function main(itemindex) 
SetTaskTemp(AEXP_TEMPOFFLINETASKID, itemindex) 
str= 
{ "<#> thi�n tinh b�ch c�u ho�n , s� d�ng sau ��t ���c <color=red>8 gi� <color> �y th�c c�ch tuy�n . ��t ���c kinh nghi�m l� b�nh th��ng b�ch c�u ho�n ��ch 5 l�n ", 
"<#> s� d�ng thi�n tinh b�ch c�u ho�n /confirmlevel", 
"<#> �� cho ta suy ngh� l�i m�t ch�t !/cancel", 
"<#> tra x�t ta treo ky c�n th�a l�i th�i gian /get_left_time", 
"<#> k�t th�c treo ky ngo�n ph�p ��ch chi ti�t /help" 
}; 
Say(str[1], 4,str[2],str[3],str[4],str[5]); 
return 1 
end 

-- script viet hoa By http://tranhba.com  ph�n �o�n c�p b�c l�n n�a x�c nh�n 
function confirmlevel() 
str= 
{ "<#> c�p b�c c�a ng��i th�p h�n <color=red>50<color>. cho n�n , � � tuy�n �y th�c tr�ng th�i h� , ng��i c� th� ti�n h�nh mua b�n giao d�ch c�ng v�i nh�n l�y ph�c duy�n �i�m , nh�ng l� kh�ng th� ��t ���c <color=red> kinh nghi�m tr� gi� <color>. ng��i th�t mu�n s� d�ng ��c bi�t b�ch c�u ho�n sao ? #?", 
"<#> s� d�ng /use", 
"<#> �� cho ta mu�n mu�n !/cancel", 
"<#> b�i v� ng��i kh�ng ph�i l� sung tr� gi� kh�ch h�ng , cho n�n kh�ng th� s� d�ng c�ch tuy�n ch�c n�ng . xin/m�i sung tr� gi� sau s� d�ng n�n v�t ph�m !", 
"<#> nh� ch�i c�n 50 c�p tr� l�n c�ng v�i �� chuy�n sinh m�i c� th� s� d�ng n�n v�t ph�m ." 
}; 

-- script viet hoa By http://tranhba.com  sung t�p d�ng h� m�i c� th� s� d�ng r� r�ng c�u ho�n 
if (IsCharged()~=1) then 
Talk(1, "", str[4]); 
return 
end 

nLevel = GetLevel(); 

if (nLevel < AEXP_NEEDLEVEL or ST_IsTransLife() ~= 1) then 
Talk(1, "", str[5]); 
return 
end 
if (nLevel < AEXP_NEEDLEVEL) then 
Say(str[1], 2,str[2],str[3]); 
else 
use(); 
end 
end 

-- script viet hoa By http://tranhba.com  l�a ch�n s� d�ng thi�n tinh b�ch c�u ho�n 
function use() 
local sparetime = GetTask(AEXP_TIANXING_TIME_TASKID); 
if (sparetime == nil) then 
sparetime = 0; 
end 

-- script viet hoa By http://tranhba.com showtime = floor(sparetime / (FRAME2TIME * 60)); -- script viet hoa By http://tranhba.com  cho d�ng h� �� k� bi�u hi�n ��n ph�t 
	if ((sparetime + AEXP_BIGCHANGE) > AEXP_MAXTIME) then
local hours, minutes = getFrame2MinAndSec(sparetime); 
Say("Thi�n tinh b�ch c�u ho�n �y th�c c�n th�a l�i th�i gian l� <color=red>"..hours.."<color> gi� <color=red>"..minutes.."<color> ph�t . kinh nghi�m t�ch l�y ��ch �y th�c th�i gian kh�ng th� v��t qua <color=red>10000 gi� <color>.", 0); 
else 
itemindex = GetTaskTemp(AEXP_TEMPOFFLINETASKID); 
if (IsMyItem(itemindex) ~= 1) then 
return 
end 

local g, d, p = GetItemProp(itemindex); 

if ( g ~= 6 
or d ~= 1 
or p ~= 2183) then 
return -- script viet hoa By http://tranhba.com  kh�ng ph�i l� ��c hi�u r� r�ng c�u 
end 

nresult = RemoveItemByIndex(itemindex); 

if (nresult == 1) then 
			ntotaltime = sparetime + AEXP_BIGCHANGE;
SetTask(AEXP_TIANXING_TIME_TASKID, ntotaltime); 
local hours, minutes = getFrame2MinAndSec(ntotaltime); 
Say("Th�nh c�ng s� d�ng , thi�n tinh b�ch c�u ho�n ��ch �y th�c th�i gian l� <color=red>"..hours.."<color> gi� <color=red>"..minutes.."<color> ph�t ",0); 
writeUseBaiJulog("offlineitem_special", hours, minutes); 
else 
Say("Kh�ng c� tr�i tinh b�ch c�u ho�n c� th� s� d�ng ", 0); 
end 
end 
end 

-- script viet hoa By http://tranhba.com  l�a ch�n suy ngh� m�t ch�t n�a 
function cancel() 
return 0 
end
