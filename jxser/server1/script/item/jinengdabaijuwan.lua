-- script viet hoa By http://tranhba.com  s� d�ng k� n�ng r� r�ng c�u ho�n ch�n v�n 
-- script viet hoa By http://tranhba.com 2004.11.24 
Include("\\script\\global\\baijuwanhead.lua")

function main(itemindex) 
SetTaskTemp(AEXP_TEMPOFFLINETASKID, itemindex) 
str= 
{ "<#> m�t vi�n k� n�ng r� r�ng c�u ho�n , s� d�ng sau nh�ng ��t ���c <color=red>8 gi� <color> ��ch c�ch tuy�n b�y qu�n th�i gian . ", 
"<#> s� d�ng k� n�ng r� r�ng c�u ho�n /use", 
"<#> ta suy ngh� m�t ch�t n�a /cancel", 
"<#> tu�n tra ta c�n th�a l�i c�ch tuy�n b�y qu�n th�i gian /get_left_time", 
"<#> l�a ch�n c�ch tuy�n b�y qu�n k� n�ng /#selectofflineskill('cancel')", 
"<#> li�n quan t�i c�ch tuy�n b�y qu�n c�n k� gi�i thi�u /help" 
}; 
Say(str[1], 4,str[2],str[3],str[4],str[5]); 
return 1 
end 

-- script viet hoa By http://tranhba.com  l�a ch�n s� d�ng k� n�ng r� r�ng c�u ho�n 
function use() 
local sparetime = GetTask(AEXP_SKILL_TIME_TASKID); 
if (sparetime == nil) then 
sparetime = 0; 
end 

	if ((sparetime + AEXP_SKILLCHANGE) > AEXP_MAXTIME) then
local hours, minutes = getFrame2MinAndSec(sparetime); 
Say("Ng��i tr��c m�t ��ch c�ch tuy�n k� n�ng b�y qu�n c�n th�a l�i th�i gian l� <color=red>"..hours.."<color> gi� <color=red>"..minutes.."<color> ph�t , m� ng��i c�ch tuy�n k� n�ng b�y qu�n th�i gian m�t m�i k� kh�ng th� v��t qua <color=red>10000 gi� <color> , m�i/xin ng��i qu� m�t �o�n th�i gian s� d�ng n�a k� n�ng r� r�ng c�u ho�n . ", 0); 
else 
itemindex = GetTaskTemp(AEXP_TEMPOFFLINETASKID); 
if (IsMyItem(itemindex) ~= 1) then 
return 
end 

nresult = RemoveItemByIndex(itemindex); 

if (nresult == 1) then 
			ntotaltime = sparetime + AEXP_SKILLCHANGE;
SetTask(AEXP_SKILL_TIME_TASKID, ntotaltime); 
local hours, minutes = getFrame2MinAndSec(ntotaltime); 
Say("S� d�ng th�nh c�ng , ng��i c�n th�a l�i c�ch tuy�n k� n�ng b�y qu�n th�i gian l� <color=red>"..hours.."<color> gi� <color=red>"..minutes.."<color> ph�t ",0); 
writeUseBaiJulog("skillofflineitem_normal", hours, minutes); 
else 
Say("Kh�ng c� k� n�ng r� r�ng c�u ho�n c� th� s� d�ng ", 0); 
end 
end 
end 

-- script viet hoa By http://tranhba.com  l�a ch�n suy ngh� m�t ch�t n�a 
function cancel() 
return 0 
end
