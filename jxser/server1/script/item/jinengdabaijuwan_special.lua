-- script viet hoa By http://tranhba.com  s� d�ng k� n�ng r� r�ng c�u ho�n ch�n v�n 
-- script viet hoa By http://tranhba.com 2004.11.24 
Include("\\script\\global\\baijuwanhead.lua")

function main(itemindex) 
SetTaskTemp(AEXP_TEMPOFFLINETASKID, itemindex) 
str= 
{ "<#>1 vi�n ��c bi�t k� n�ng r� r�ng c�u ho�n , s� d�ng sau �em ��t ���c <color=red>8 gi� <color> �y th�c . l� m�t lo�i k� n�ng b�ch c�u ho�n ��ch g�p hai hi�u qu� .", 
"<#> s� d�ng ��c bi�t k� n�ng b�ch c�u ho�n /use", 
"<#> �� cho ta mu�n mu�n !/cancel", 
"<#> xem m�t ch�t ta c�n th�a l�i treo ky th�i gian /get_left_time", 
"<#> l�a ch�n c�ch tuy�n treo ky k� n�ng /#selectofflineskill('cancel')", 
"<#> gi�i thi�u treo ky ngo�n ph�p ��ch chi ti�t /help" 
}; 
Say(str[1], 4,str[2],str[3],str[4],str[5]); 
return 1 
end 

-- script viet hoa By http://tranhba.com  l�a ch�n s� d�ng k� n�ng r� r�ng c�u ho�n 
function use() 
local sparetime = GetTask(AEXP_SPECIAL_SKILL_TASKID); 
if (sparetime == nil) then 
sparetime = 0; 
end 

	if ((sparetime + AEXP_SPECIALSKILLCHANGE) > AEXP_MAXTIME) then
local hours, minutes = getFrame2MinAndSec(sparetime); 
Say("Ng�i ��ch c�ch tuy�n treo ky c�n th�a l�i th�i gian l� <color=red>"..hours.."<color>gi?color=red>"..minutes.."<color> ph�t . k� n�ng �y th�c m�t m�i t�nh gi� �ang l�c kh�ng th� v��t qua <color=red>10000 gi� color>.", 0); 
else 
itemindex = GetTaskTemp(AEXP_TEMPOFFLINETASKID); 
if (IsMyItem(itemindex) ~= 1) then 
return 
end 

nresult = RemoveItemByIndex(itemindex); 

if (nresult == 1) then 
			ntotaltime = sparetime + AEXP_SPECIALSKILLCHANGE;
SetTask(AEXP_SPECIAL_SKILL_TASKID, ntotaltime); 
local hours, minutes = getFrame2MinAndSec(ntotaltime); 
Say("S� d�ng th�nh c�ng , ng�i ��ch c�ch tuy�n treo ky th�i gian l� <color=red>"..hours.."<color> gi� <color=red>"..minutes.."<color> ph�t ",0); 
writeUseBaiJulog("skillofflineitem_special", hours, minutes); 
else 
Say("Kh�ng c� ��c bi�t k� n�ng b�ch c�u ho�n , c� th� s� d�ng ", 0); 
end 
end 
end 

-- script viet hoa By http://tranhba.com  l�a ch�n suy ngh� m�t ch�t n�a 
function cancel() 
return 0 
end
