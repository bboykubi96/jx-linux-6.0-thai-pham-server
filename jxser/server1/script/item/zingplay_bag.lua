-- script viet hoa By http://tranhba.com  ch�i ZingPlay ��t ���c ph�n th��ng 
-- script viet hoa By http://tranhba.com  ZingPlay bao ti�n l� x� 

-- script viet hoa By http://tranhba.com  COMMON th��ng l��ng -- script viet hoa By http://tranhba.com  
ZingPlay_Start_Date = 20081018; -- script viet hoa By http://tranhba.com  ho�t ��ng l�c ��u th�i gian 
ZingPlay_End_Date = 20081107; -- script viet hoa By http://tranhba.com  bao ti�n l� x� s� d�ng h�n k� 


-- script viet hoa By http://tranhba.com  TSK nhi�m v� thay ��i l��ng -- script viet hoa By http://tranhba.com  
TSK_ZINGPLAY_VERSION = 2563; -- script viet hoa By http://tranhba.com  ghi ch�p ho�t ��ng l�c ��u th�i gian 
TSK_ZINGPLAY_MAXEXP = 2564; -- script viet hoa By http://tranhba.com  ghi ch�p ��t ���c ��ch kinh nghi�m tr� gi� 

function main() 
local n_date = tonumber(GetLocalDate("%Y%m%d")); 


local n_cur_date = GetTask(TSK_ZINGPLAY_VERSION); 

if (n_cur_date ~= ZingPlay_Start_Date) then 
SetTask(TSK_ZINGPLAY_VERSION, ZingPlay_Start_Date); 
SetTask(TSK_ZINGPLAY_MAXEXP, 0); 
end 

local n_max_exp = 200000000; 
local n_one_exp = 20000000; 


if (n_date >= ZingPlay_Start_Date and n_date <= ZingPlay_End_Date) then 
local n_cur_exp = GetTask(TSK_ZINGPLAY_MAXEXP); 

if (n_cur_exp >= n_max_exp) then 
Say(format("��i hi�p t� zingplay ��t ���c trung �� ��t ���c %d kinh nghi�m , cho n�n , kh�ng th� ti�p t�c s� d�ng zingplay h�ng bao .", n_max_exp), 0); 
return 1; 
end 

		SetTask(TSK_ZINGPLAY_MAXEXP, n_cur_exp + n_one_exp);
AddOwnExp(n_one_exp); 

local sz_msg = format("S� d�ng zingplay bao ti�n l� x� ��t ���c %d kinh nghi�m ", n_one_exp); 

Msg2Player(sz_msg); 

WriteLog(format("%s\tName:%s\tAccount:%s\t%s", 
GetLocalDate("%Y-%m-%d_%X"), 
GetName(), 
GetAccount(), 
sz_msg )); 
else 

Say("Ho�t ��ng �� k�t th�c , kh�ng th� s� d�ng n�n v�t ph�m li�u ."); 
return 0; 
end 
end 
