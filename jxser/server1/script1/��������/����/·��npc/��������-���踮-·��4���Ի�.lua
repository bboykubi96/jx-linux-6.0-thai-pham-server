-- script viet hoa By http://tranhba.com  t�y b�c nam khu ph��ng t��ng ph� ng��i �i ���ng 4 th�y th�y ��i tho�i 
Include("\\script\\event\\funv_jieri\\200803\\shenmixianhua.lua")-- script viet hoa By http://tranhba.com 08��Ů�ڻ��08.4.1���ɾ��
function main(sel) 
local ndate = tonumber(GetLocalDate("%y%m%d%H")) 
if ndate >= 8030800 and ndate <= 8033124 then 
funv_jieri_shenmi:xianhua() -- script viet hoa By http://tranhba.com -08 ph� n� ti�t ho�t ��ng , 08.4.1 sau nh�ng th� ti�u 
else 
Say("Th�y th�y # t� ��ng d�p t� t� tay c�a nh�ng ��ng d�p n�a/r�i , s� k�o nhi�u nh� v�y xinh ��p gi�y hoa , ta ��y sau khi l�n l�n c�ng mu�n b�t ch��c c�t gi�y . ", 0) 
end 
end;
