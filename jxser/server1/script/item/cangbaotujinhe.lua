-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn # cangbaotujinhe.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng # tö kh«ng ph¶i lµ ng­ 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian # 2008-01-17 
-- script viet hoa By http://tranhba.com  chøc n¨ng miªu t¶ # bªn ph¶i kiÖn ®iÓm kÝch sö dông sau nh­ng ®¹t ®­îc 12 phiÕn tµng b¶o ®å m¶nh vôn 
-- script viet hoa By http://tranhba.com  vËt phÈm biªn sè # 6,1,1651,1,0,0 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function main() 

if (CalcFreeItemCellCount() < 12) then -- script viet hoa By http://tranhba.com  tói ®eo l­ng kh«ng gian ph¸n ®o¸n , nhÊt ®Þnh ph¶i dù l­u 12 c¸ch 
Say("Xin/mêi tr­íc n÷a an bµi mét c¸i trang bÞ !"); 
return 1; 
end; 

for i = 490, 501 do -- script viet hoa By http://tranhba.com  tµng b¶o ®å m¶nh vôn biªn sè 
AddEventItem(i); 
end; 

Msg2Player("§¹t ®­îc 12 khèi tµng b¶o ®å #."); 

WriteLog(format("%s\t%s\tName:%s\tAccount:%s\t", 
" hép gÊm ", 
GetLocalDate("%Y-%m-%d %X"), 
GetName(), 
GetAccount(), 
" ®¹t ®­îc 12 khèi tµng b¶o ®å #.")); 
end;
