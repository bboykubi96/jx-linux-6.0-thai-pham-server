-- script viet hoa By http://tranhba.com  t©y b¾c nam khu ph­îng t­êng phñ ng­êi ®i ®­êng 4 thóy thóy ®èi tho¹i 
Include("\\script\\event\\funv_jieri\\200803\\shenmixianhua.lua")-- script viet hoa By http://tranhba.com 08¸¾Å®½Ú»î¶¯£¬08.4.1ºó¿ÉÉ¾³ı
function main(sel) 
local ndate = tonumber(GetLocalDate("%y%m%d%H")) 
if ndate >= 8030800 and ndate <= 8033124 then 
funv_jieri_shenmi:xianhua() -- script viet hoa By http://tranhba.com -08 phô n÷ tiÕt ho¹t ®éng , 08.4.1 sau nh­ng thñ tiªu 
else 
Say("Thóy thóy # tó ®óng dŞp tû tû tay cña nh­ng ®óng dŞp n÷a/råi , sÏ kĞo nhiÒu nh­ vËy xinh ®Ñp giÊy hoa , ta ®©y sau khi lín lªn còng muèn b¾t ch­íc c¾t giÊy . ", 0) 
end 
end;
