-- script viet hoa By http://tranhba.com  ��i L� # ng��i �i ���ng # xe l�o th�i 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-09-16) 
Include("\\script\\event\\funv_jieri\\200803\\shenmixianhua.lua")-- script viet hoa By http://tranhba.com 08��Ů�ڻ��08.4.1���ɾ��
function main() 
local ndate = tonumber(GetLocalDate("%y%m%d%H")) 
if ndate >= 8030800 and ndate <= 8033124 then 
funv_jieri_shenmi:xianhua() -- script viet hoa By http://tranhba.com -08 ph� n� ti�t ho�t ��ng , 08.4.1 sau nh�ng th� ti�u 
else 
Talk(1,"","Ta n�m nay �� 80 tu�i , �nh m�t hoa , l� tai b�i , h�m r�ng c�ng r�i xu�ng xong r�i , �n u�ng kh�ng d� d�ng .") 
end 
end; 
