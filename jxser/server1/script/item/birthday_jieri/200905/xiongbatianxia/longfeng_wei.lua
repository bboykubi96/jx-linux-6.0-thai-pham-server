-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n in t� n�t b�n Vi�t Nam b�n - long ph��ng �u�i 
-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##longfeng_wei.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ## t� kh�ng ph�i l� ng� 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2009-05-21 12:05:35 

-- script viet hoa By http://tranhba.com  ====================================================== 

Include("\\script\\event\\birthday_jieri\\200905\\class.lua");

function main() 
local nCurDate = tonumber(GetLocalDate("%Y%m%d")) 
if 20090619 > nCurDate or nCurDate > 20090727 then 
Talk(1, "","Ho�t ��ng �� k�t th�c ."); 
return 0; 
end 

if tbBirthday0905.tbTask:get_task(tbBirthday0905.tbTask.tsk_zhuhe_maxexp) == 0 or tbBirthday0905.tbTask:get_task(tbBirthday0905.tbTask.tsk_zhuhe_maxexp) == nil then 
tbBirthday0905.tbTask:add_zhuhe_maxexp(); 
end 

if (tbBirthday0905.tbTask:get_task(tbBirthday0905.tbTask.tsk_zhuhe_maxexp) == tbBirthday0905.tbTask.nmaxexpfromzhuhe) then 
tbBirthday0905.tbTask:add_zhuhe_maxexp(); 
Msg2Player("Th�ng c�p ��t ���c [ m�i B�n C� ] c�ng [ m�i m�m k� ] h�n ch� kinh nghi�m v� 3000000000 Exp") 
else 

Talk(1, "","Kh�ng th� s� d�ng n�n v�t ph�m ."); 
return 1; 

end 
end 
