GLB_BATTLESTATE = 30 
function main() 
SetGlbValue(GLB_BATTLESTATE, 0) -- script viet hoa By http://tranhba.com  thiÕt trİ nªn toµn côc thay ®æi l­îng v× 1 , dÊu hiÖu tr­íc mÆt phôc vô khİ ®ang ®øng ë tèng kim chiÕn dŞch giai ®o¹n , lóc nµy t­¬ng d­¬ng hoÆc Chu tiªn trÊn ®İch xuÊt khÈu ®iÓm tù ®éng thiÕt ë tèng kim chiÕn dŞch ®İch ghi danh ®iÓm , nÕu kh«ng lµ thiÕt ë nguyªn tèng kim chiÕn tr­êng b¶n ®å 
idx = SubWorldID2Idx(44); 
if (idx == -1) then 
return 
end; 

SubWorld = idx; 
OpenMission(1); 

end;
