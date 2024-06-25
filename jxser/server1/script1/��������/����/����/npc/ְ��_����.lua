-- script viet hoa By http://tranhba.com  t©y nam nam khu §¹i Lý phñ Tr­êng giang bÕn tµu thuyÒn phu ®èi tho¹i 
-- script viet hoa By http://tranhba.com suyu 
-- script viet hoa By http://tranhba.com 20031029 

CurWharf = 9; 
Include("\\script\\global\\station.lua")
Include("\\script\\missions\\autohang\\function.lua")
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function main(sel) 
if (GetLevel() >= 50) then 
Say("Hoµng Hµ cöu khóc loan , ng­¬i ë ®©y s«ng ®Ých bªn nµy , ta ë s¬n ®Ých bªn kia , c¸ch nhau Th­¬ng S¬n nhÞ h¶i , muèn gÆp còng khã kh¨n .", 3,"Ngåi thuyÒn /WharfFun","Kh«ng ngåi /OnCancel", "# ®i hoa ®µo ®¶o (5) /go_thd") 
else 
Say("Hoµng Hµ cöu khóc loan , ng­¬i ë ®©y s«ng ®Ých bªn nµy , ta ë s¬n ®Ých bªn kia , c¸ch nhau Th­¬ng S¬n nhÞ h¶i , muèn gÆp còng khã kh¨n .", 2,"Ngåi thuyÒn /WharfFun","Kh«ng ngåi /OnCancel") 
end 
end; 

function OnCancel() 
Talk(1,"","Kh«ng cã tiÒn kh«ng thÓ ngåi thuyÒn ! ") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function go_thd() 
nRet = aexp_gotothd(239); 
-- script viet hoa By http://tranhba.com  if (nRet == 1) then 
-- script viet hoa By http://tranhba.com  Msg2Player("ThuyÒn phu # gÇn nhÊt ®i hoa ®µo ®¶o ng­êi cña còng thËt nhiÒu . ®­îc råi , ng­¬i ngåi xong l©u #") 
if (nRet == -1) then 
Talk(1,"","§Õn hoa ®µo ®¶o phÝ dông "..AEXP_TICKET.." hai , ng­¬i ®ñ ch­a ? ") 
end 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
