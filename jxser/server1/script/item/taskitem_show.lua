
-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n online nhi�m v� h� th�ng nhi�m v� quy�n tr�c kh�ch h�ng b�ng ch�n v�n 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2005/07/04 PM 19:59 

-- script viet hoa By http://tranhba.com  ph�o b�ng . ��m h�m �� ��ch ph�o b�ng . 
-- script viet hoa By http://tranhba.com  n�ng nh� h�n � m�a to ng��i c�a b�y trung , ��ng � sau l�ng c�a n�ng �m � n�ng . 
-- script viet hoa By http://tranhba.com  h�n �m �p ��ch da , h�n m�i v� ��o quen thu�c . ph�o b�ng chi�u s�ng �nh m�t c�a n�ng . 
-- script viet hoa By http://tranhba.com  h�t th�y kh�ng th� v�n h�i �� 

-- script viet hoa By http://tranhba.com  ====================================================== 
-- script viet hoa By http://tranhba.com  nhi�m v� h� th�ng 
IncludeLib("TASKSYS"); 

-- script viet hoa By http://tranhba.com  h�c v�o s� li�u ��nh ngh�a ��u v�n ki�n 
Include("\\script\\task\\system\\task_head.lua");

function GetItemDescription(name, magiclevel1, magiclevel2, magiclevel3, magiclevel4, magiclevel5, magiclevel6) 

local strDesc = ""; 

strDesc = strDesc.."<enter> nhi�m v� mi�u t� #<color=yellow>"..TaskId(magiclevel1, 1, TaskID_Table.TaskText_Row).."<color><enter><enter>"; 

strDesc = strDesc..CreateAwardText(TaskName(magiclevel1)); 

strDesc = strDesc.."<enter><color=yellow> n�i r� # �an k�ch b�n ph�i ki�n l� ���c ��t ���c n�y nhi�m v� <color><enter>"; 

return strDesc; 

end; 


-- script viet hoa By http://tranhba.com  sinh th�nh t��ng th��ng ch� vi�t ch� �o�n 
function CreateAwardText(taskName) 

local nRow, nCol = TaskAwardMatrix(taskName); 

local i=0; 

local aryAward = {{}}; 

local strArray = ""; 
local strArrayRate = ""; 
local strText = ""; -- script viet hoa By http://tranhba.com  t��ng th��ng ��ch n�i r� 

local nIsArray = 0; -- script viet hoa By http://tranhba.com  ph�n �o�n c� hay kh�ng c� m�y t� 

local strAwardNormal = {} -- script viet hoa By http://tranhba.com  c� ��nh ph�t d� ��ch t��ng th��ng 
local strAward = " nhi�m v� sau khi ho�n th�nh �o�t ���c t��ng th��ng #<enter>"; -- script viet hoa By http://tranhba.com  cu�i c�ng tr� v� ��ch t��ng th��ng ch� �o�n 

local strType = ""; 

strType = TaskAward(taskName, 1, 1); 

-- script viet hoa By http://tranhba.com  ��i v�i nhi�m v� t��ng th��ng lo�i h�nh l� t��ng th��ng t�c d�n ��ch x� l� 
if strType==" t��ng th��ng t�c d�n " then 
-- script viet hoa By http://tranhba.com  tr�c ti�p t�c d�n t�i nhi�m v� t�n 
taskName = TaskAward(taskName, 1, Award.AlliedAward_Row); 
nRow, nCol = TaskAwardMatrix(taskName); 
end; 

for i=1, nRow do 

strArray = TaskAward(taskName, i, Award.ArrayID_Row); 
strArrayRate = TaskAward(taskName, i, Award.ArrayRate_Row); 
strText = TaskAward(taskName, i, Award.AwardText_Row); 

-- script viet hoa By http://tranhba.com  n�u nh� t��ng th��ng b� ��nh ngh�a li�u ��m t� 
if strArray~="" then 

-- script viet hoa By http://tranhba.com  n�u nh� ��m t� kh�ng t�n t�i l� m�i b�t ��u h�a ��m t� 
if aryAward[tonumber(strArray)]==nil then 
rawset(aryAward, tonumber(strArray), {}); 
end; 

rawset(aryAward[tonumber(strArray)], 
			 		getn(aryAward[tonumber(strArray)])+1,
"<color=green>"..strText.."<color> "..strArrayRate.."% ��ch x�c su�t " 
); 

nIsArray = 1; 

else 
rawset(strAwardNormal, 
					getn(strAwardNormal)+1,
strText); 
end; 

end; 

-- script viet hoa By http://tranhba.com  n�u nh� t��ng th��ng b� ��nh ngh�a li�u ��m t� , l� �i�u d�ng ��m t� ph�t t��ng h�m s� 
if nIsArray==1 then 
for i=1, getn(aryAward) do 
strAward = strAward.."<enter> th� "..i.." c� ng�u nhi�n t��ng th��ng t�i #<enter>"; 
strAward = strAward..CreateTextForArray(aryAward[i]); 
end; 
end; 

strAward = strAward.."<enter> c� ��nh t��ng th��ng #<enter>"; 

if getn(strAwardNormal)~=0 then 

for i=1, getn(strAwardNormal) do 
strAward = strAward.."<color=green>"..strAwardNormal[i].."<enter>"; 
end; 

else 
strAward = strAward.."<color=green> v� c� ��nh t��ng th��ng <color>"; 
end; 

return strAward; 

end; 



function CreateTextForArray(aryAward) 

local strAward = ""; 
local i=0; 


-- script viet hoa By http://tranhba.com  �em ��m t� l� m�t ��ch �� ph�t ra ngo�i 
for i=1, getn(aryAward) do 
strAward = strAward..aryAward[i].."<enter>"; 
end; 

return strAward; 

end;
