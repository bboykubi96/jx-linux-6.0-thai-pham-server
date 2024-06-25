-- script viet hoa By http://tranhba.com  §¹i Lı # ng­êi ®i ®­êng # xe l·o th¸i 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-09-16) 
Include("\\script\\event\\funv_jieri\\200803\\shenmixianhua.lua")-- script viet hoa By http://tranhba.com 08¸¾Å®½Ú»î¶¯£¬08.4.1ºó¿ÉÉ¾³ı
function main() 
local ndate = tonumber(GetLocalDate("%y%m%d%H")) 
if ndate >= 8030800 and ndate <= 8033124 then 
funv_jieri_shenmi:xianhua() -- script viet hoa By http://tranhba.com -08 phô n÷ tiÕt ho¹t ®éng , 08.4.1 sau nh­ng thñ tiªu 
else 
Talk(1,"","Ta n¨m nay ®· 80 tuæi , ¸nh m¾t hoa , lç tai bèi , hµm r¨ng còng r¬i xuèng xong råi , ¨n uèng kh«ng dÔ dµng .") 
end 
end; 
