-- script viet hoa By http://tranhba.com  s� d�ng b�ch c�u ho�n ch�n v�n 
-- script viet hoa By http://tranhba.com 2004.11.24 
Include("\\script\\global\\baijuwanhead.lua")

function main(itemindex) 
SetTaskTemp(AEXP_TEMPOFFLINETASKID, itemindex) 
str= 
{ "<#> m�t vi�n b�ch c�u ho�n , s� d�ng sau nh�ng ��t ���c <color=red>1 gi� <color> ��ch c�ch tuy�n b�y qu�n th�i gian . ", 
"<#> s� d�ng b�ch c�u ho�n /confirmlevel", 
"<#> ta suy ngh� m�t ch�t n�a /cancel", 
"<#> tu�n tra ta c�n th�a l�i c�ch tuy�n b�y qu�n th�i gian /get_left_time", 
"<#> li�n quan t�i c�ch tuy�n b�y qu�n c�n k� gi�i thi�u /help" 
}; 
Say(str[1], 4,str[2],str[3],str[4],str[5]); 
return 1 
end 

-- script viet hoa By http://tranhba.com  ph�n �o�n c�p b�c l�n n�a x�c nh�n 
function confirmlevel() 
str= 
{ "<#> b�i v� ng��i ��ch c�p b�c th�p h�n <color=red>50 c�p <color> , cho n�n c�ch tuy�n b�y qu�n tr�ng th�i b�n trong , ng��i c� th� ti�n h�nh b�y s�p giao d�ch , h�n n�a ��t ���c ph�c duy�n , nh�ng s� kh�ng ��t ���c <color=red> kinh nghi�m tr� gi� <color> . ng��i nh�t ��nh ph�i s� d�ng b�ch c�u ho�n sao ? ", 
"<#> x�c ��nh /use", 
"<#> ta suy ngh� m�t ch�t n�a /cancel", 
"<#> b�i v� ng��i kh�ng ph�i l� sung tr� gi� d�ng h� , cho n�n kh�ng th� s� d�ng c�ch tuy�n b�y qu�n ch�c n�ng . m�i/xin ng��i sung tr� gi� sau s� d�ng n�a n�n v�t ph�m . " 
}; 

-- script viet hoa By http://tranhba.com  sung t�p d�ng h� m�i c� th� s� d�ng b�ch c�u ho�n 
if (IsCharged()~=1) then 
Talk(1, "", str[4]); 
return 
end 

nLevel = GetLevel(); 
if (nLevel < AEXP_NEEDLEVEL) then 
Say(str[1], 2,str[2],str[3]); 
else 
use(); 
end 
end 

-- script viet hoa By http://tranhba.com  l�a ch�n s� d�ng b�ch c�u ho�n 
function use() 
sparetime = GetTask(AEXP_SMALL_TIME_TASKID); 
if (sparetime == nil) then 
sparetime = 0; 
end 

-- script viet hoa By http://tranhba.com showtime = floor(sparetime /(FRAME2TIME * 60)); -- script viet hoa By http://tranhba.com  cho d�ng h� �� k� bi�u hi�n ��n ph�t 
	if ((sparetime + AEXP_SMALLCHANGE) > AEXP_MAXTIME) then
local hours, minutes = getFrame2MinAndSec(sparetime); 
Say("Ng��i tr��c m�t ��ch c�ch tuy�n kinh nghi�m b�y qu�n c�n th�a l�i th�i gian l� <color=red>"..hours.."<color> gi� <color=red>"..minutes.."<color> ph�t , m� ng��i c�ch tuy�n kinh nghi�m b�y qu�n th�i gian m�t m�i k� kh�ng th� v��t qua <color=red>10000 gi� <color> , m�i/xin ng��i qu� m�t �o�n th�i gian s� d�ng n�a b�ch c�u ho�n . ", 0); 
else 
itemindex = GetTaskTemp(AEXP_TEMPOFFLINETASKID); 
if (IsMyItem(itemindex) ~= 1) then 
return 
end 

smallgeneraltype,smalldetailtype,smallpartype = GetItemProp(itemindex); 
if ( smallgeneraltype ~= AEXP_SMALL_NGENTYPE 
or smalldetailtype ~= AEXP_SMALL_DETAILTYPE 
or smallpartype ~= AEXP_SMALL_PARTYPE) then 
return 
end 

nresult = RemoveItemByIndex(itemindex); 

if (nresult > 0) then 
			ntotaltime=sparetime + AEXP_SMALLCHANGE;
SetTask(AEXP_SMALL_TIME_TASKID, ntotaltime); 
local hours, minutes = getFrame2MinAndSec(ntotaltime); 
Say("S� d�ng th�nh c�ng , ng��i tr��c m�t ��ch c�ch tuy�n b�y qu�n c�n th�a l�i th�i gian l� <color=red>"..hours.."<color> gi� <color=red>"..minutes.."<color> ph�t ",0); 
writeUseBaiJulog("offlineitem_small", hours, minutes); 
else 
Say("Kh�ng c� b�ch c�u ho�n c� th� s� d�ng ", 0); 
end 
end 
end 

-- script viet hoa By http://tranhba.com  l�a ch�n suy ngh� m�t ch�t n�a 
function cancel() 
return 0 
end
