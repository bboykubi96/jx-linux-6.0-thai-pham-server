-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com FileName: xunwu_hou.lua 
-- script viet hoa By http://tranhba.com Creater: firefox 
-- script viet hoa By http://tranhba.com Date: 2005-12-19 
-- script viet hoa By http://tranhba.com Comment: l� gi�ng sinh ho�t ��ng t��ng th��ng �� t�m v�t h�u 
-- script viet hoa By http://tranhba.com  ch�c n�ng # m�i ng�y c� th� s� d�ng 10 l�n , m�i m�t l�n s� d�ng li�n c� th� ng�u nhi�n ��t ���c m�t m�n trang b� 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
Uworld0001 = 2001 
MAX_USETIME = 10 
-- script viet hoa By http://tranhba.com  th� nh�t ch� ti�t l�m g�c ng�y s� d�ng s� l�n 
-- script viet hoa By http://tranhba.com  th� hai ch� ti�t v� cu�i c�ng s� d�ng nh�t k� 
function main() 
use_day = GetByte(GetTask(Uworld0001), 2) 

nDay = tonumber(date("%d")) 
if (use_day ~= nDay) then 
SetTask(Uworld0001, SetByte(GetTask(Uworld0001), 1, 0)) 
end 
use_time = GetByte(GetTask(Uworld0001), 1) 
if (use_time >= MAX_USETIME) then 
Talk(1, "","T�m v�t h�u m�t m�i ��ch ng� thi�p �i , xem ra n� kh�ng ng� b�o ch�c l� s� kh�ng t�nh . ") 
else 
-- script viet hoa By http://tranhba.com AddItem() 
		SetTask(Uworld0001, SetByte(GetTask(Uworld0001), 1, use_time + 1))
Msg2Player("Ng�i thu ���c m�t m�n ng�u nhi�n trang b� ") 
end 
return 1 
end
