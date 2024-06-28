-- script viet hoa By http://tranhba.com  chiÕn ®Êu _ tuyÖt s¸t .lua # thÕ giíi nhiÖm vô # röa s¹ch oan khuÊt # 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2004-04-15) 

function OnDeath() 
Uworld51 = GetTask(51) 
if (Uworld51 == 60) then -- script viet hoa By http://tranhba.com  nhiÖm vô trung , lµ ®¸nh thø nhÊt tiÓu BOSS 
SetTask(51,61) 
Talk(1,"","QuyÕt chĞm huynh ®Ö ®em b¸o thï cho ng­¬i !") 
elseif (HaveItem(377) == 0) and ((Uworld51 == 62) or (Uworld51 == 70) or (Uworld51 == 80)) then -- script viet hoa By http://tranhba.com  nhiÖm vô trung , cã thÓ ph¶i bİ kİp 
Talk(1,"","§¸ng chÕt !") 
SetTask(51,70) 
AddEventItem(377) -- script viet hoa By http://tranhba.com  " §­êng m«n bİ kİp " 
Msg2Player("Ng­¬i giÕt chÕt kim quèc thİch kh¸ch , ph¸t hiÖn trªn ng­êi h¾n cã vèn §­êng m«n bİ tŞch ") 
end 
end 
