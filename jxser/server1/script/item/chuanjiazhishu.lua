-- script viet hoa By http://tranhba.com  truy�n nh� chi s�ch 
Include("\\script\\event\\teacher_day_200711\\head.lua");

-- script viet hoa By http://tranhba.com  m�i vai tr� ch� c� th� th�ng qua gia truy�n chi s�ch ��o c� ��t ���c 5 �c kinh nghi�m ��ng gi� th��ng h�n . 
-- script viet hoa By http://tranhba.com  

function main() 
local nDate = tonumber(GetLocalDate("%y%m%d%H")); 
local nExpLimit = GetTask(TSK_TeacherDay200711_UseExpLimit); 
if ( nExpLimit >= TeacherDay200711_UseExpLimit) then 
Say("S� d�ng gia truy�n b� t�ch �� ��t kinh nghi�m tr� gi� th��ng h�n , kh�ng th� s� d�ng n�a li�u .",0) 
return 1; 
end 
if (GetLevel() < 50) then 
Say("Th�t l� ti�c nu�i , ch� c� nh� ch�i <color=yellow>50 c�p tr� l�n <color> m�i c� th� s� d�ng n�n b� t�ch .",0) 
return 1; 
end 
if (nDate < TeacherDay200711_START_TIME or nDate > TeacherDay200711_UseLimitTime) then 
Say("Ho�t ��ng �� k�t th�c , kh�ng th� s� d�ng !",0); 
return 0; 
end 
-- script viet hoa By http://tranhba.com 2.000.000 kinh nghi�m tr� gi� 
-- script viet hoa By http://tranhba.com 1,5% x�c su�t ��t ���c 1 vi�n �� th�m b�o th�ch 
AddOwnExp(2000000); 
	SetTask(TSK_TeacherDay200711_UseExpLimit,nExpLimit+2000000);
if (random(1,10000) <= 150) then 
AddItem(4,353,1,1,0,0) 
Msg2Player(format("��t ���c %d %s",1,"Tinh h�ng b�o th�ch ")) 
WriteLog(format("[%s]\t%s\tName:%s\tAccount:%s\tGetItem %d %s2007 n�m Vi�t Nam gi�o s� ti�t ho�t ��ng ",GetLocalDate("%Y-%m-%d %H:%M"),GetName(), GetAccount(),1,"Tinh h�ng b�o th�ch ")); 
end 
return 0; 
end
