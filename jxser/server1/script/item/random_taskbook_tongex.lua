
-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n online ng�u nhi�n nhi�m v� nhi�m v� quy�n tr�c x�c ph�t ch�n v�n - bang h�i l�nh b�i ��c bi�t b�n 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2005/09/01 PM 16:40 

-- script viet hoa By http://tranhba.com  ch� c� h�n v� n�ng hai ng��i 
-- script viet hoa By http://tranhba.com  b�n h� y�u nhau 
-- script viet hoa By http://tranhba.com  n�ng nh� 
-- script viet hoa By http://tranhba.com  tay c�a h�n vu�t ve � da c�a n�ng th��ng ��ch �n t�nh 
-- script viet hoa By http://tranhba.com  h�n h�n gi�ng nh� �i�u b�y � tr�n tr�i x�t qua 
-- script viet hoa By http://tranhba.com  h�n � th�n th� n�ng b�n trong b�o l� c�ng ph�ng t�ng 
-- script viet hoa By http://tranhba.com  h�n ng� th�i �i�m ��ch d�ng v� tr�n ��y thu�n ch�n 
-- script viet hoa By http://tranhba.com  n�ng nh� , s�ng s�m n�ng t�nh l�i ��ch m�t kh�c , h�n � b�n c�nh n�ng 
-- script viet hoa By http://tranhba.com  n�ng tr�n tr�n m�t , nh�n �nh r�ng ��ng xuy�n th�u qua r�m c�a s� t�ng �i�m t�ng �i�m chi�u v�o 
-- script viet hoa By http://tranhba.com  trong l�ng c�a n�ng b�i v� h�nh ph�c m� �au ��n 

-- script viet hoa By http://tranhba.com  ====================================================== 

-- script viet hoa By http://tranhba.com  nhi�m v� h� th�ng kho �ng h� 
IncludeLib("TASKSYS"); 

-- script viet hoa By http://tranhba.com  ��ng b�n h� th�ng �ng h� 
IncludeLib("PARTNER"); 

-- script viet hoa By http://tranhba.com  h�c v�o nhi�m v� h� th�ng ��u v�n ki�n , bao h�m ng�u nhi�n nhi�m v� 
Include("\\script\\task\\system\\task_main.lua");

strPublic = "<color=green> nhi�m v� l�nh b�i <color>#"; 

local TSK_UseCountPerDay = 2589; 

function main(nIndex) 
if 1==1 then
Msg2Player(" Ch�c N�ng t�m ��ng"); 
return 0
end
local partnerindex,partnerstate = PARTNER_GetCurPartner() -- script viet hoa By http://tranhba.com  ��t ���c cho g�i ra ��ng b�n ��ch index, ��ng b�n tr�ng th�i v� g�i ra ho�c v� kh�ng g�i ra 

local nTaskID = GetItemMagicLevel(nIndex, 1); 

local nNowTaskID = GetTask(ID_RANDOMTASK); -- script viet hoa By http://tranhba.com  l�y ���c tr��c m�t l�nh b�i nhi�m v� ID 

local nTaskState = 0; -- script viet hoa By http://tranhba.com  tr��c m�t l�nh b�i nhi�m v� tr�ng th�i 

if (GetProductRegion() == "cn") then 
-- script viet hoa By http://tranhba.com  ph�n �o�n c� hay kh�ng cho g�i ra ��ng b�n 
if partnerindex==0 or partnerstate==0 then 
Msg2Player(strPublic.."<color=yellow> ng��i kh�ng c� cho g�i ��ng b�n kh�ng c�ch n�o h�c l�y nhi�m v� l�nh b�i n�i dung b�n trong nga #<color>"); 
return 1; 
end; 
end; 

if nNowTaskID ~= 0 then 
nTaskState = GetTaskStatus(TaskName(GetTask(ID_RANDOMTASK))); 
end; 

local nUseState = GetTask(%TSK_UseCountPerDay) 
local nCurDate = tonumber(GetLocalDate("%y%m%d")) 
local nPerDayUseCount = 100 
if floor(nUseState / 256) ~= nCurDate then 

nUseState = nCurDate * 256 
SetTask(%TSK_UseCountPerDay, nUseState) 
end 

if mod(nUseState, 256) >= nPerDayUseCount then 

Talk(1, "", format("M�i ng�y m�i ng��i ch� c� th� s� d�ng n�n v�t ph�m %d l�n .", nPerDayUseCount)) 
return 1 

end 


if nTaskState>0 and nTaskState<3 then 
Say("<color=green> nhi�m v� l�nh b�i <color># ng�i tr��c m�t c� c�n ch�a ho�n th�nh ng�u nhi�n nhi�m v� , ng��i nh�t ��nh ph�i ti�p nh�n nhi�m v� m�i sao ? ", 
2, 
" ��ng v�y , ta mu�n bu�ng tha cho tr��c ��ch ng�u nhi�n nhi�m v� /#_confirmRandomBookTask("..nIndex..")", 
" kh�ng ���c , c�n l� v�n v�n �i /OnTaskWait"); 
return 1; 
else 

-- script viet hoa By http://tranhba.com  thanh kh�ng nhi�m v� quy�n tr�c b�n trong ghi l�i nhi�m v� , n�u kh�ng kh�ng th� d�ng nhi�m v� d�n k�nh b�t ��u 
SetTaskStatus(TaskName(nTaskID), 0); 
CloseTask(TaskName(nTaskID)); 

-- script viet hoa By http://tranhba.com  �em ��i nh�n ��ch nhi�m v� ch�a ��ng � t�m th�i thay ��i l��ng trung 
SetTask(ID_RANDOMTASK_WAIT, nTaskID); 

-- script viet hoa By http://tranhba.com  c�ng b��c nhi�m v� thay ��i l��ng 
SyncTaskValue(ID_RANDOMTASK_WAIT); 

-- script viet hoa By http://tranhba.com  t�n tr� v�t ph�m INDEX � nhi�m v� thay ��i l��ng trung 
SetTask(ID_RANDOMTASKTEMP, nIndex) 

ApplyTask( TaskName(nTaskID) ); 


		SetTask(%TSK_UseCountPerDay, nUseState + 1);

return 1; 
end; 

end; 


-- script viet hoa By http://tranhba.com  x�c nh�n ti�p nh�n quy�n tr�c nhi�m v� 
function _confirmRandomBookTask(nIndex) 

local nTaskID = GetItemMagicLevel(nIndex, 1); 

-- script viet hoa By http://tranhba.com  thanh kh�ng tr��c m�t �ang l�m quy�n tr�c nhi�m v� 
SetTaskStatus(TaskName(GetTask(ID_RANDOMTASK)), 0); 
CloseTask(TaskName(GetTask(ID_RANDOMTASK))); 

-- script viet hoa By http://tranhba.com  thanh kh�ng nhi�m v� quy�n tr�c b�n trong ghi l�i nhi�m v� , n�u kh�ng kh�ng th� d�ng nhi�m v� d�n k�nh b�t ��u 
SetTaskStatus(TaskName(nTaskID), 0); 
CloseTask(TaskName(nTaskID)); 

-- script viet hoa By http://tranhba.com  �em ��i nh�n ��ch nhi�m v� ch�a ��ng � t�m th�i thay ��i l��ng trung 
SetTask(ID_RANDOMTASK_WAIT, nTaskID); 

-- script viet hoa By http://tranhba.com  c�ng b��c nhi�m v� thay ��i l��ng 
SyncTaskValue(ID_RANDOMTASK_WAIT); 

-- script viet hoa By http://tranhba.com  t�n tr� v�t ph�m INDEX � nhi�m v� thay ��i l��ng trung 
SetTask(ID_RANDOMTASKTEMP, nIndex); 

ApplyTask( TaskName(nTaskID) ); 
	SetTask(%TSK_UseCountPerDay, GetTask(%TSK_UseCountPerDay) + 1);

return 

end;
