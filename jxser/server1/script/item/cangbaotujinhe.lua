-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  v�n ki�n t�n # cangbaotujinhe.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng # t� kh�ng ph�i l� ng� 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian # 2008-01-17 
-- script viet hoa By http://tranhba.com  ch�c n�ng mi�u t� # b�n ph�i ki�n �i�m k�ch s� d�ng sau nh�ng ��t ���c 12 phi�n t�ng b�o �� m�nh v�n 
-- script viet hoa By http://tranhba.com  v�t ph�m bi�n s� # 6,1,1651,1,0,0 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function main() 

if (CalcFreeItemCellCount() < 12) then -- script viet hoa By http://tranhba.com  t�i �eo l�ng kh�ng gian ph�n �o�n , nh�t ��nh ph�i d� l�u 12 c�ch 
Say("Xin/m�i tr��c n�a an b�i m�t c�i trang b� !"); 
return 1; 
end; 

for i = 490, 501 do -- script viet hoa By http://tranhba.com  t�ng b�o �� m�nh v�n bi�n s� 
AddEventItem(i); 
end; 

Msg2Player("��t ���c 12 kh�i t�ng b�o �� #."); 

WriteLog(format("%s\t%s\tName:%s\tAccount:%s\t", 
" h�p g�m ", 
GetLocalDate("%Y-%m-%d %X"), 
GetName(), 
GetAccount(), 
" ��t ���c 12 kh�i t�ng b�o �� #.")); 
end;
