-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n in t� n�t b�n Vi�t Nam b�n - b�n m�i c� 
-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##xinban_gu.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ## t� kh�ng ph�i l� ng� 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2009-05-21 15:19:32 

-- script viet hoa By http://tranhba.com  ====================================================== 

Include("\\script\\event\\birthday_jieri\\200905\\class.lua");
Include("\\script\\lib\\awardtemplet.lua")

function main(nItemIdx) 
local n_item_date = tonumber(FormatTime2String("%Y%m%d%H%M",ITEM_GetExpiredTime(nItemIdx))); 
local n_cur_date = tonumber(GetLocalDate("%Y%m%d%H%M")); 
if n_cur_date > n_item_date then 
Msg2Player("V�t ph�m s� d�ng qu� h�n , t� ��ng bi�n m�t .") 
return 0; 
end 

local bRet, szFailMsg = tbBirthday0905:IsPlayerEligible(); 

if bRet ~= 1 then 
Talk(2, "", szFailMsg,"Ng�i v� �� �i�u ki�n nh�n l�y n�n v�t ph�m "); 
return 1; 
end 

if CalcFreeItemCellCount() < 10 then 
Talk(1,"", format("Trang b� ch� tr�ng ch�a �� %d ch� tr�ng , xin/m�i n�a an b�i m�t c�i .", 10)); 
return 1; 
end 

if tbBirthday0905.tbTask:get_task(tbBirthday0905.tbTask.tsk_zhuhe_maxexp) == 0 or tbBirthday0905.tbTask:get_task(tbBirthday0905.tbTask.tsk_zhuhe_maxexp) == nil then 
tbBirthday0905.tbTask:add_zhuhe_maxexp(); 
end 

if (tbBirthday0905.tbTask:get_task(tbBirthday0905.tbTask.tsk_zhuhe_curexp) >= tbBirthday0905.tbTask:get_task(tbBirthday0905.tbTask.tsk_zhuhe_maxexp)) then 
Msg2Player("�� nh�n l�y cao nh�t kinh nghi�m th��ng h�n ."); 
return 1; 
end 

local n_exp = tbBirthday0905.nxinbangu_addexp 
AddOwnExp(n_exp); 
tbBirthday0905.tbTask:add_task(tbBirthday0905.tbTask.tsk_zhuhe_curexp, floor(n_exp / tbBirthday0905.expbase)); 
Msg2Player(format("��t ���c kh�ng n�ng �i�p kinh nghi�m %d.", n_exp )); 

end 
