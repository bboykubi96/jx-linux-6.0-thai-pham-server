-- script viet hoa By http://tranhba.com  chi�n c�ng hoa 
-- script viet hoa By http://tranhba.com by ti�u l�ng nhi�u h�n 
-- script viet hoa By http://tranhba.com 2007-04-13 
ZHANGONGHUA_EXP = 2557; -- script viet hoa By http://tranhba.com  kinh nghi�m thay ��i l��ng , nhi�u nh�t 3E 
function main(sel) 
local nDate = tonumber(GetLocalDate("%y%m%d")); 
if (nDate > 070531) then 
return 0 
end; 
if (GetLevel() < 50) then 
Msg2Player("�� sung tr� gi� 50 c�p tr� l�n nh� ch�i m�i c� th� s� d�ng ."); 
return 1; 
end; 

local nexp = GetTask(ZHANGONGHUA_EXP); 
local addexp = 1500000; 
if nexp >= 300000000 then 
Talk(1,"","Ng�i ��t ���c ��ch kinh nghi�m �� qu� th��ng h�n , nhi�u nh�t ch� c� th� nh�n l�y 3 �c kinh nghi�m tr� gi� ."); 
return 1; 
end 

	if nexp + addexp > 300000000 then
addexp = 300000000 - nexp ; 
SetTask(ZHANGONGHUA_EXP,300000000); 
else 
		SetTask(ZHANGONGHUA_EXP,tonumber(nexp+addexp));
end 

AddOwnExp(addexp); 
Msg2Player("Ng�i gia t�ng "..addexp.." kinh nghi�m tr� gi� ."); 
WriteLog(format("[ZhanGongHua]\t Date:%s\t Account:%s\t Name:%s\t Effect:GetExp %s",GetLocalDate("%y-%m-%d %H:%M:%S"),GetAccount(),GetName(),addexp)); 

end
