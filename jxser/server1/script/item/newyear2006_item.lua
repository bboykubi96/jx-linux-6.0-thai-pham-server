
-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n online 2006 nguy�n ��n ho�t ��ng minh ch� v� l�m chi�u s�ch v�n ki�n 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2005/12/22 PM 15:12 

-- script viet hoa By http://tranhba.com  ph�o b�ng . ��m h�m �� ��ch ph�o b�ng . 
-- script viet hoa By http://tranhba.com  n�ng nh� h�n � m�a to ng��i c�a b�y trung , ��ng � sau l�ng c�a n�ng �m � n�ng . 
-- script viet hoa By http://tranhba.com  h�n �m �p ��ch da , h�n m�i v� ��o quen thu�c . ph�o b�ng chi�u s�ng �nh m�t c�a n�ng . 
-- script viet hoa By http://tranhba.com  h�t th�y kh�ng th� v�n h�i �� 

-- script viet hoa By http://tranhba.com  ====================================================== 

-- script viet hoa By http://tranhba.com  nhi�m v� h� th�ng kho �ng h� 
IncludeLib("TASKSYS"); 

-- script viet hoa By http://tranhba.com  h�c v�o 2006 nguy�n ��n ho�t ��ng ��u v�n ki�n 
Include("\\script\\event\\newyear_2006\\newyear_head.lua");

-- script viet hoa By http://tranhba.com  ng�u nhi�n nhi�m v� x� l� �ng h� 
Include("\\script\\task\\random\\task_head.lua");

function main() 

Say("Minh ch� v� l�m chi�u s�ch # trong l�c lo�n th� , c�c v� v�n v� ta v� l�m minh t�n t�m t�n l�c , ��c c� ki�m v� c�ng c�m k�ch . v�a g�p n�ng l�ch n�m m�i bu�ng xu�ng , nguy�n ��n giai ti�t , ��c �y ph�i m�n h� c�a ta truy�n nh�n v� c�c v� ��a l�n nguy�n ��n qu� t�ng , m�i ng��i c� th� � <color=yellow>12 th�ng 30 ng�y t�i 1 th�ng 1 ng�y <color> nh�n l�y , cu�i c�ng ch�c h�p nh� an khang , n�m m�i nh� � # �� ��c c� ki�m ", 
7, 
" nh�n l�y m�i ng�y ��ch t�m gi� g�p ��i kinh nghi�m /getDoubleExp", 
" nh�n l�y m�i ng�y ��ch kinh nghi�m t��ng th��ng /getMoreExp_Confirm", 
" nh�n l�y m�i ng�y ��ch nhi�m v� quy�n tr�c /getTaskBook", 
" li�n quan t�i ng�u nhi�n nhi�m v� x�c ph�t x�c su�t g�p b�i ��ch tin t�c /getRandomTaskInfo", 
" c� li�n quan b�ch c�u ho�n ��ch m�i tin t�c /getBaijuInfo", 
" c� th� d�ng ��ng ti�n mua m�i ��o c� /getCoppercashInfo", 
" ��c xong /OnExit"); 

return 1; 

end; 


function getDoubleExp() 

-- script viet hoa By http://tranhba.com  l�y ���c nh�t k� 
local nDate = tonumber(GetLocalDate("%y%m%d")); 

-- script viet hoa By http://tranhba.com  n�u nh� nh�t k� kh�ng ��ng , tr�c ti�p tr� v� 
if isNewYearTime()==0 then 
Say("B�y gi� �� kh�ng ph�i l� nguy�n ��n li�u nga #", 0); 
return 
end; 

-- script viet hoa By http://tranhba.com  n�u nh� c�p b�c kh�ng ��t t�i 80 c�p 
if GetLevel()<80 then 
Say("Ch� c� 80 c�p tr� l�n ng��i m�i c� th� nh�n l�y g�p ��i kinh nghi�m nga #", 0); 
return 
end; 

if nDate~= GetTask(ID_GETDOUBLEEXP_DATE) then 

SetTask(ID_GETDOUBLEEXP_DATE, nDate); 
SetTask(ID_GETDOUBLEEXP_NUM, 1); 

elseif GetTask(ID_GETDOUBLEEXP_NUM)>=1 then 

Say("Ng��i h�m nay �� nh�n l�y qua g�p ��i kinh nghi�m nga #", 0); 
return 

else 

SetTask(ID_GETDOUBLEEXP_DATE, nDate); 
SetTask(ID_GETDOUBLEEXP_NUM, 1); 

end; 

-- script viet hoa By http://tranhba.com  80 c�p tr� l�n ng��i m�i ng�y c� th� nh�n l�y m�t l�n 8 gi� kinh nghi�m g�p ��i 
if GetLevel()>=80 then 

AddSkillState(531,10,1,8*60*60*18); 
AddSkillState(461,1, 1,8*60*60*18); 

Msg2Player("Ng�i l�y ���c <color=green> 8 gi� ��ch g�p ��i kinh nghi�m #<color>"); 
WriteTaskLog(" l�y ���c 8 gi� ��ch g�p ��i kinh nghi�m #"); 

else 
Say("Ch� c� 80 c�p tr� l�n ng��i m�i c� th� nh�n l�y g�p ��i kinh nghi�m nga #", 0); 
end; 

end; 


function getTaskBook() 

local nRandomTaskID, nRandomItemIndex = 0, 0; 

-- script viet hoa By http://tranhba.com  l�y ���c nh�t k� 
local nDate = tonumber(GetLocalDate("%y%m%d")); 

-- script viet hoa By http://tranhba.com  n�u nh� nh�t k� kh�ng ��ng , tr�c ti�p tr� v� 
if isNewYearTime()==0 then 
Say("B�y gi� �� kh�ng ph�i l� nguy�n ��n li�u nga #", 0); 
return 
end; 

-- script viet hoa By http://tranhba.com  n�u nh� l� kh�ng ph�i l� h��ng t�p d�ng h� 
if IsCharged()==0 then 
Say(" l�n n�y nguy�n ��n ho�t ��ng ch� c� h��ng t�p d�ng h� m�i c� th� tham d� nga #", 0); 
return 
end; 

-- script viet hoa By http://tranhba.com  n�u nh� c�p b�c kh�ng ��t t�i 80 c�p 
if GetLevel()<80 then 
Say("Ch� c� 80 c�p tr� l�n ng��i m�i c� th� nh�n l�y nhi�m v� n�y quy�n tr�c nga #", 0); 
return 
end; 

if nDate~= GetTask(ID_GETTASKBOOK_DATE) then 

SetTask(ID_GETTASKBOOK_DATE, nDate); 
SetTask(ID_GETTASKBOOK_NUM, 1); 

elseif GetTask(ID_GETTASKBOOK_NUM)>=1 then 

Say("Ng��i h�m nay �� nh�n l�y qua m�t c�i nhi�m v� quy�n tr�c nga #", 0); 
return 

else 

SetTask(ID_GETTASKBOOK_DATE, nDate); 
SetTask(ID_GETTASKBOOK_NUM, 1); 

end; 

-- script viet hoa By http://tranhba.com  l�a ch�n m�t t�ng th� hai ��ch ng�u nhi�n nhi�m v� 
nRandomTaskID = TaskNo(selectNextTask()); 

-- script viet hoa By http://tranhba.com  sinh th�nh m�t c�i nhi�m v� quy�n tr�c 
nRandomItemIndex = AddItem(6, 2, 2, 0, 1, 0, 0); 
SetItemMagicLevel(nRandomItemIndex, 1, nRandomTaskID); 

-- script viet hoa By http://tranhba.com  c�ng b��c v�t ph�m ma ph�p thu�c t�nh 
SyncItem(nRandomItemIndex); 

Msg2Player("Ng�i l�y ���c <color=green> nhi�m v� quy�n tr�c m�t #<color>"); 

WriteTaskLog(" l�y ���c m�t c�i nhi�m v� quy�n tr�c , bi�n s� v� #"..nRandomTaskID); 

end; 


-- script viet hoa By http://tranhba.com  h�i th�m nh� ch�i c� hay kh�ng nh�n l�y kinh nghi�m 
function getMoreExp_Confirm() 
Say("Ng�i � <color=yellow>2005 n�m 12 th�ng 30 ng�y t�i 2006 n�m 1 th�ng 1 ng�y <color> trong l�c , m�i ng�y th��ng tuy�n c�ng s� ��t ���c ��c c� minh ch� t�ng ��ch nh�m l�n kinh nghi�m . <color=yellow> ba ng�y nay b�n trong m�i ng�y c� th� d�n m�t l�n <color> , nh�ng hai l�n nh�n l�y kinh nghi�m gi�a c�ch nhau c�n <color=yellow> � tuy�n v��t qua 1 gi� <color> . ng��i mu�n b�y gi� nh�n l�y sao ? ",2, 
" h�o a , ta m�u ch�t l�y /getMoreExpMain", 
" c�n l� ch� th�m ch�t n�a �i /OnExit"); 
return 
end; 


-- script viet hoa By http://tranhba.com  nh�n l�y m�i ng�y ��ch kinh nghi�m 
function getMoreExpMain() 

local nExp = countMoreExpNum(); 

-- script viet hoa By http://tranhba.com  l�y ���c nh�t k� 
local nDate = tonumber(GetLocalDate("%y%m%d")); 

-- script viet hoa By http://tranhba.com  n�u nh� nh�t k� kh�ng ��ng , tr�c ti�p tr� v� 
if isNewYearTime()==0 then 
Say("B�y gi� �� kh�ng ph�i l� nguy�n ��n li�u nga #", 0); 
return 
end; 

-- script viet hoa By http://tranhba.com  n�u nh� l� kh�ng ph�i l� h��ng t�p d�ng h� 
if IsCharged()==0 then 
Say(" l�n n�y nguy�n ��n ho�t ��ng ch� c� h��ng t�p d�ng h� m�i c� th� tham d� nga #", 0); 
return 
end; 

if canGetMoreExp()==1 then 
if GetLevel()<50 then 
addPlayerExpForLimit(nExp, 5); -- script viet hoa By http://tranhba.com  h�n ch� ch� c� th� th�ng 5 c�p 
else 
addPlayerExpForLimit(nExp, 0); -- script viet hoa By http://tranhba.com  kh�ng h�n ch� 
end; 

Msg2Player("Ng�i l�y ���c nguy�n ��n ho�t ��ng ��ch kinh nghi�m t��ng th��ng #<color=yellow>"..nExp.."<color> ch�t kinh nghi�m #"); 

writeMoreExpData(); -- script viet hoa By http://tranhba.com  ghi ch�p nh�n l�y kinh nghi�m t��ng quan s� li�u 

WriteTaskLog(" l�y ���c m�i ng�y ��ch t��ng th��ng kinh nghi�m #"..nExp); 

else 
Say("Ng��i b�y gi� ��ch �i�u ki�n kh�ng th� nh�n l�y m�i ng�y ��ch kinh nghi�m , � 12 th�ng 30 ng�y t�i 1 th�ng 1 nh�t k� �ang l�c , m�i ng�y th��ng tuy�n c�ng s� ��t ���c ��c c� minh ch� t�ng ��ch nh�m l�n kinh nghi�m . <color=yellow> ba ng�y nay b�n trong m�i ng�y c� th� d�n m�t l�n <color> , nh�ng hai l�n nh�n l�y kinh nghi�m gi�a c�ch nhau c�n <color=yellow> � tuy�n v��t qua 1 gi� <color> nga #", 0); 
return 
end; 


end; 


-- script viet hoa By http://tranhba.com  l�y ���c ��ng ti�n ��ch �� k� 
function getCoppercashInfo() 

Say("Ng�y g�n ��y tr��c khi an ��ch thu�t d�ch dung s� m�i khai ph� li�u gi�ng sinh tinh linh # n�m m�i hi�p kh�ch # n�m m�i hi�p n� # tu�n l�c ch� m�t nh�m m�t n� , ��ng th�i c�c n�i ��ch ���c ch�n th��ng nh�n ch� c�ng t�n ti�n li�u m�u xanh da tr�i y�u c� h�p qu� , ng�y l� l� hoa h�p qu� c�ng b�ng tuy�t h�p qu� , h�n n�a c�c n�i s� kh�ng phi�n ch� t�n ti�n li�u m�t lo�i c� th� m�nh bi�n t�p ch�c ph�c ng�n ng� ��ch nh� � t�p , hoan ngh�nh m�i ng��i �i tr��c ch�n mua . ", 0); 
return 

end; 


function getBaijuInfo() 

Say("Ng�i � <color=yellow>2005 n�m 12 th�ng 30 ng�y t�i 2006 n�m 1 th�ng 1 ng�y <color> m�i ng�y <color=red>0#00~18#00<color> , s� d�ng b�ch c�u ho�n treo ky ��t ���c ��ch kinh nghi�m �em g�p b�i # k� n�ng b�ch c�u ho�n treo ky ��t ���c �� thu�n th�c �em l�t 1.5 l�n . ", 0); 
return 

end; 


function getRandomTaskInfo() 

Say("Ng�i � <color=yellow>2005 n�m 12 th�ng 30 ng�y t�i 2006 n�m 1 th�ng 1 ng�y <color> thu ���c ng�u nhi�n nhi�m v� x�c ph�t x�c su�t g�p b�i ��ch qu� t�ng #", 0); 
return 

end; 



function OnExit() 

end;
