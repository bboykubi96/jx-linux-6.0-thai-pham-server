-- script viet hoa By http://tranhba.com  qu�c t�nh huy ch��ng 
-- script viet hoa By http://tranhba.com by ti�u l�ng nhi�u h�n 
-- script viet hoa By http://tranhba.com 2007-08-8 
TASK_EXP = 1832; -- script viet hoa By http://tranhba.com  kinh nghi�m thay ��i l��ng , nhi�u nh�t 4E, kh�ng �i�p gia 
TASK_TOP_EXP = 400000000; -- script viet hoa By http://tranhba.com  nhi�u nh�t c� th� ph�i kinh nghi�m 
TASK_GET_EXP = 2091945; -- script viet hoa By http://tranhba.com  m�t l�n ��t ���c kinh nghi�m 
TASK_LEVEL = 50 -- script viet hoa By http://tranhba.com  c�p b�c h�n ch� 
TASK_DATE_END = 07092324-- script viet hoa By http://tranhba.com  s� d�ng ch�n t�i th�i gian 
function main(sel) 
nDate = tonumber(GetLocalDate("%y%m%d%H")) 
if TASK_DATE_END < nDate then 
Talk(1,"","Th�t l� ti�c nu�i , n�n v�t ph�m �� qua s� d�ng k� .") 
return 0 
end 
if GetLevel() < TASK_LEVEL then 
Talk(1,"","Ch� c� 50 c�p tr� l�n nh� ch�i m�i c� th� s� d�ng qu�c kh�nh huy ch��ng .") 
return 1 
end 
local nexp = GetTask(TASK_EXP); 
local addexp = TASK_GET_EXP; 
if nexp >= TASK_TOP_EXP then 
Talk(1,"","Ch� c� th� nhi�u nh�t ��t ���c 4 �c kinh nghi�m tr� gi� !!!") 
return 1 
end 

	if nexp + addexp > TASK_TOP_EXP then
addexp = TASK_TOP_EXP - nexp ; 
SetTask(TASK_EXP,TASK_TOP_EXP); 
else 
		SetTask(TASK_EXP,tonumber(nexp+addexp));
end 

AddOwnExp(addexp); 
Msg2Player(format("Ng�i ��t ���c %d kinh nghi�m tr� gi� .",addexp)); 
WriteLog(format("[GuoQingHuiZhang]\t Date:%s\t Account:%s\t Name:%s\t Effect:GetExp %s",GetLocalDate("%y-%m-%d %H:%M:%S"),GetAccount(),GetName(),addexp)); 

end
