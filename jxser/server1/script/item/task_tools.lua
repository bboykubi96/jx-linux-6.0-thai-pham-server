
-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n online nhi�m v� h� th�ng c�ng c� ch�n v�n 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2005/07/29 PM 12:30 

-- script viet hoa By http://tranhba.com  ph�o b�ng . ��m h�m �� ��ch ph�o b�ng . 
-- script viet hoa By http://tranhba.com  n�ng nh� h�n � m�a to ng��i c�a b�y trung , ��ng � sau l�ng c�a n�ng �m � n�ng . 
-- script viet hoa By http://tranhba.com  h�n �m �p ��ch da , h�n m�i v� ��o quen thu�c . ph�o b�ng chi�u s�ng �nh m�t c�a n�ng . 
-- script viet hoa By http://tranhba.com  h�t th�y kh�ng th� v�n h�i �� 

-- script viet hoa By http://tranhba.com  ====================================================== 

-- script viet hoa By http://tranhba.com  ��ng b�n h� th�ng �ng h� 
IncludeLib("PARTNER"); 

-- script viet hoa By http://tranhba.com  nhi�m v� h� th�ng kho �ng h� 
IncludeLib("TASKSYS"); 

-- script viet hoa By http://tranhba.com  h�c v�o nhi�m v� h� th�ng ��u v�n ki�n , bao h�m ng�u nhi�n nhi�m v� 
Include("\\script\\task\\system\\task_main.lua");

strTitle = "<color=green> nhi�m v� c�m nang <color>#"; 
strTitle_Normal = strTitle.." ng�i mu�n tra x�t c�i n�o s� ki�n ��y ? <enter>" 
strTitle_None = strTitle.." ng�i tr��c m�t kh�ng c� b�t c� chuy�n g� m�n �ang ti�n h�nh . "; 
strPublic = "<color=green> nhi�m v� c�m nang <color>#" 

-- script viet hoa By http://tranhba.com  �em main() ��i th�nh main_back l� ���c �em to�n b� c�ng c� c�m d�ng 
function main_back() 

Say(strTitle.." ng�i mu�n d�ng v� ��i ��ch b�i l�i t� s� sinh th�nh nhi�m v� c�m nang l�m c�i g� ��y ? ",7, 
" tra x�t tr��c m�t ta �ang ti�n h�nh chuy�n c�a m�n /ShowEventMain", 
" th� ��ng b�t ��u m�t �� t�n t�i nhi�m v� /MenuStartTask", 
" ng�u nhi�n l�y ���c m�t ��ng b�n ng�u nhi�n nhi�m v� /MenuGetRandomTask", 
" l�y ���c m�t c�i nhi�m v� c�n thi�t ��ch t�t c� v�t ph�m /MenuGetTaskItem", 
" �em m�t c�i nhi�m v� bi�n th�nh c�n ch�a b�t ��u /MenuSetTaskClearn", 
" �em m�t chuy�n m�n t�t c� nhi�m v� thanh kh�ng /MenuSetEventClearn", 
" t�t /Task_Exit"); 

return 1; 

end; 

-- script viet hoa By http://tranhba.com  nh� ch�i l�a ch�n tra x�t s� ki�n , t�i h� m�t nh�m xu�t x� c� �ang ti�n h�nh chuy�n c�a m�n cung nh� ch�i l�a ch�n 
function ShowEventMain() 

local i=0; 
local aryEvent = EnumEventList(); 
local aryTalkText = {strTitle_Normal}; 

if aryEvent==nil then 
Say(strTitle_None, 0); 
return 
end; 

for i,j in aryEvent do 
rawset(aryTalkText, 
				getn(aryTalkText)+1,
TaskEvent(i, 1, 1).."/#ShowEventDetail("..i..")"); 
end; 

	rawset(aryTalkText, getn(aryTalkText)+1, "�ر�/OnTaskExit");

SelectSay(aryTalkText); 

return 1; 


end; 


function ShowEventDetail(nEventID) 

local aryTask = EnumEventTask(nEventID); 
local strMain = {strTitle.." tr� xu�ng l� ng�i � <color=yellow>"..TaskEvent(nEventID, 1, 1).."<color> ��ch t�nh hu�ng c�n k� #<enter><enter>"} -- script viet hoa By http://tranhba.com  nhi�m v� li�t bi�u t� ph� chu�i 

local i=0; 


for i=1, getn(aryTask) do 
strMain[1] = strMain[1]..GetTaskText(TaskName(aryTask[i]), 1, 3)..GetTaskStatusText(aryTask[i]).."<enter>"; 
end; 

	rawset(strMain, getn(strMain)+1, "��մ�����/#_ClearnTaskState("..nEventID..")");
	rawset(strMain, getn(strMain)+1, "������Ŀ¼/main");
	rawset(strMain, getn(strMain)+1, "�ر�/OnTaskExit");

SelectDescribe(strMain); 

end; 


-- script viet hoa By http://tranhba.com  mai gi� ra tr��c m�t �ang ti�n h�nh chuy�n c�a m�n 
function EnumEventList() 

local aryTask = EnumTaskList(); -- script viet hoa By http://tranhba.com  l�y ���c tr��c m�t �ang ti�n tri�n nhi�m v� 
local aryEvent = {} 
local i=0; 

if aryTask==nil then return nil; end; 

for i=1, getn(aryTask) do 
rawset(aryEvent, 
GetTaskEventID(aryTask[i]), 
1); 
end; 

return aryEvent; 

end; 


-- script viet hoa By http://tranhba.com  mai gi� ra m�t chuy�n m�n s� bao h�m ��ch nhi�m v� , tr� v� m�t v�i t� 
function EnumEventTask(nEventID) 

local aryTask = {}; 

local nEvent = GetEventTaskCount(nEventID); 

CDebug:MessageOut(" l�y ���c s� ki�n #"..nEventID.." ��ch nhi�m v� c� ��m v� #"..nEvent); 

local i=0; 

if nEvent==0 then return nil; end; 

for i=1, nEvent do 
CDebug:MessageOut("�ang gia nh�p nhi�m v� ��m t� #"..TaskNo(GetEventTask(nEventID, i))); 
rawset(aryTask, 
				getn(aryTask)+1,
TaskNo(GetEventTask(nEventID, i)) 
); 
end; 

return aryTask; 

end; 


-- script viet hoa By http://tranhba.com  l�a ch�n th� ��ng b�t ��u m�t c�i nhi�m v� 
function MenuStartTask() 
AskClientForString("_StartTask", "", 1, 20,"��a v�o nhi�m v� bi�n s� ho�c t�n #"); 
end; 


-- script viet hoa By http://tranhba.com  tr� v� �i�u h�m s� , th� ��ng b�t ��u m�t nhi�m v� m�i 
function _StartTask(taskName) 

-- script viet hoa By http://tranhba.com  n�u nh� l� con s� l� �em n� bi�n th�nh nhi�m v� t�n 
if tonumber(taskName)~=nil then 
taskName = TaskName(taskName); 
end; 

SetTaskStatus(taskName, 0); 
CloseTask(taskName); 
ApplyTask(taskName); 

end; 


-- script viet hoa By http://tranhba.com  ng�u nhi�n l�a ch�n m�t ��ng b�n ng�u nhi�n nhi�m v� 
function MenuGetRandomTask() 

local partnerindex,partnerstate = PARTNER_GetCurPartner() -- script viet hoa By http://tranhba.com  ��t ���c cho g�i ra ��ng b�n ��ch index, ��ng b�n tr�ng th�i v� g�i ra ho�c v� kh�ng g�i ra 
local nResult = 0; 

if partnerindex==0 or partnerstate==0 then 
Msg2Player(strPublic.."<color=yellow> kh�ng c� cho g�i ��ng b�n kh�ng th� l�y ���c ng�u nhi�n nhi�m v� #<color>"); 
return 
end; 

nResult = initRandomTask(); 

if nResult==0 then 
CDebug:MessageOut("Ng�u nhi�n nhi�m v� ch�n v�o tay li�u c�ng th��ng m�t c�i nhi�m v� gi�ng nhau ID#"); 
end; 

end; 


-- script viet hoa By http://tranhba.com  tr� v� �i�u h�m s� , thanh kh�ng m�t chuy�n m�n t�t c� nhi�m v� tr�ng th�i , bao g�m t�m th�i thay ��i l��ng 
function _ClearnTaskState(nEventID) 

local aryTask = EnumEventTask(nEventID); 

if aryTask==nil then return end; 

for i=1, getn(aryTask) do 
CDebug:MessageOut("�ang thanh kh�ng "..TaskName(aryTask[i]).." nhi�m v� tr�ng th�i "); 
SetTaskStatus(TaskName(aryTask[i]), 0); 
CloseTask(TaskName(aryTask[i])); 
end; 

Say(strTitle.." ng�i �� thanh kh�ng li�u <color=yellow>"..TaskEvent(nEventID, 1, 1).."<color> h� ��ch t�t c� ph�n chi nhi�m v� ", 0); 

end; 



-- script viet hoa By http://tranhba.com  l�y ���c m�t c�i nhi�m v� c�n thi�t ��ch t�t c� v�t ph�m 
function MenuGetTaskItem() 
AskClientForString("_GetTaskItem", "", 1, 20,"Xin/m�i ��a v�o nhi�m v� con s� bi�n s� #"); 
end; 


-- script viet hoa By http://tranhba.com  tr� v� �i�u h�m s� # l�y ���c m�t c�i nhi�m v� c�n thi�t ��ch t�t c� v�t ph�m 
function _GetTaskItem(taskID, nIndex) 

local taskName = TaskName(taskID); 

-- script viet hoa By http://tranhba.com  n�u nh� truy�n v�o ch�nh l� ��c th� t� ph� 9999 l�i c�a l� tr�c ti�p l�y ng�u nhi�n nhi�m v� tr��c m�t ��ch 
if tonumber(taskID)==9999 then taskName=TaskName(GetTask(1301)); end; 

-- script viet hoa By http://tranhba.com  ki�m tra n�y nhi�m v� l� t�m ho�ng kim trang b� h�y t�m v�t ph�m b�nh th��ng 
local checkType = GetTaskCollectType(taskName); 

-- script viet hoa By http://tranhba.com  nhi�m v� c�n t�m ki�m v�t ph�m li�t bi�u 
local aryOrgCollect = {}; 

-- script viet hoa By http://tranhba.com  nhi�m v� mu�n ��ch v�t ph�m bi�n s� 
local w_Genre, w_Detail, w_Particular, w_Level, w_GoodsFive, w_GoodsNum, w_DelGoods, w_Quality = 0,0,0,0,0,0,0,0; 

local i,j,k=0,0,0; 

-- script viet hoa By http://tranhba.com  l�y ���c c�n t�m ki�m v�t ph�m li�t bi�u 
if checkType>=1 then 
aryOrgCollect = GetTaskCollectRow(taskName); 
else 
Say("N�n nhi�m v� kh�ng c� thu t�p v�t ph�m ��ch n�i dung #", 0); 
return 
end; 

-- script viet hoa By http://tranhba.com  n�u nh� b�t ���c l� b�nh th��ng trang b� 
if checkType==1 then 

-- script viet hoa By http://tranhba.com  l�y ���c truy�n v�o t�i v�t ph�m li�t bi�u 
for j, k in aryOrgCollect do 

-- script viet hoa By http://tranhba.com  d�ng t� ��nh ngh�a ��ch chuy�n ��i con s� h�m s� t�i chuy�n ��i bi�u c�ch d�m con s� ti�u ch� 
w_Genre = TranItemNumber(TaskEntity(taskName, j, Entity.Goods_Genre_Row)); 
w_Detail = TranItemNumber(TaskEntity(taskName, j, Entity.Goods_Detail_Row)); 
w_Particular = TranItemNumber(TaskEntity(taskName, j, Entity.Goods_Particular_Row)); 
w_Level = TranItemNumber(TaskEntity(taskName, j, Entity.Goods_Level_Row)); 
w_GoodsFive = TranItemNumber(TaskEntity(taskName, j, Entity.Goods_GoodsFive_Row)); 
w_GoodsNum = TranItemNumber(TaskEntity(taskName, j, Entity.Goods_GoodsNum_Row)); 
w_DelGoods = TranItemNumber(TaskEntity(taskName, j, Entity.Goods_DelGoods_Row)); 

if w_Level==-1 then w_Level=1; end; 
if w_GoodsFive==-1 then w_GoodsFive=0 end; 

for i=1, w_GoodsNum do 
AddItem(w_Genre, w_Detail, w_Particular, w_Level, w_GoodsFive, 0, 0); 
end; 

end; 

else 

-- script viet hoa By http://tranhba.com  l�y ���c truy�n v�o t�i v�t ph�m li�t bi�u 
for j, k in aryOrgCollect do 

w_Quality = TranItemNumber(TaskEntity(taskName, j, Entity.Goods_Quality_Row)); 
w_GoodsNum = TranItemNumber(TaskEntity(taskName, j, Entity.Goods_GoodsNum_Row)); 

for i=1, w_GoodsNum do 
AddGoldItem(0, w_Quality); 
end; 

end; 

end; 

end; 



-- script viet hoa By http://tranhba.com  �em m�t c�i nhi�m v� thi�t tr� th�nh c�n ch�a b�t ��u ��ch tr�ng th�i 
function MenuSetTaskClearn() 
AskClientForString("_SetTaskClearn", "", 1, 20,"Xin/m�i ��a v�o nhi�m v� con s� bi�n s� #"); 
end; 


function _SetTaskClearn(taskID, nIndex) 

if TaskName(taskID)==0 or TaskName(taskID)==nil then 
Say(strTitle.." ng��i c� ph�i hay kh�ng h� �� ? nhi�m v� n�y s� c�ng kh�ng t�n t�i nga #", 0); 
return 
end; 

SetTaskStatus(TaskName(taskID), 0); 
CloseTask(TaskName(taskID)); 

Say(strTitle.." ng�i �� �em <color=yellow>"..TaskName(taskID).."<color> bi�n th�nh c�n ch�a b�t ��u ��ch tr�ng th�i . ", 0); 

end; 


-- script viet hoa By http://tranhba.com  �em m�t chuy�n m�n trong t�t c� nhi�m v� c�ng thanh kh�ng 
function MenuSetEventClearn() 
AskClientForString("_SetEventClearn", "", 1, 20,"Xin/m�i ��a v�o s� ki�n con s� bi�n s� #"); 
end; 


function _SetEventClearn(eventID, nIndex) 

local nEvent = GetEventTaskCount(eventID); 

if nEvent==0 then 
Say(strTitle.." ng��i c� ph�i hay kh�ng h� �� ? chuy�n n�y m�n bi�n s� c�ng kh�ng t�n t�i nga #", 0); 
return 
end; 

_ClearnTaskState(eventID); 
end; 


-- script viet hoa By http://tranhba.com  d�ng t� ph� chu�i b�y t� m�t c�i nhi�m v� ��ch tr�ng th�i 
function GetTaskStatusText(nTaskID) 

local aryText = { 
[0]=" - <color=red> kh�ng b�t ��u <color>", 
[1]=" - <color=green> �ang ti�n h�nh <color>", 
[2]=" - <color=yellow> �� ho�n th�nh <color>", 
[3]=" - <color=yellow> �� d�n t��ng <color>", 
} 

return aryText[GetTaskStatus(TaskName(nTaskID))]; 

end;
