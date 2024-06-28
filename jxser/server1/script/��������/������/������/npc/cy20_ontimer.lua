-- script viet hoa By http://tranhba.com  thóy khãi cöa 20 cÊp nhiÖm vô ®¹i m¹n ®µ la hoa tÝnh giê ch©n vèn 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-09) 
-- script viet hoa By http://tranhba.com  Timer: 8 

Include("\\Script\\Global\\TimerHead.lua")

function OnTimer() 
UTask_cy = GetTask(6) 
StopTimer() 
	if (UTask_cy == 20*256+20) then		-- script viet hoa By http://tranhba.com  ÖÐ¶¾µÚÒ»½×¶Îµ½Ê±
PutMessage("Ng­¬i c¶m thÊy cho¸ng v¸ng ®Çu hoa m¾t , tho¹t nh×n ®éc tÝnh ®· ph¸t t¸c #. ") 
Msg2Player("Ng­¬i c¶m thÊy cho¸ng v¸ng ®Çu hoa m¾t , tho¹t nh×n ®éc tÝnh ®· ph¸t t¸c #. ") 
		SetTask(6, 20*256+30)
SetTimer(3 * CTime * FramePerSec, 8) -- script viet hoa By http://tranhba.com  tÝnh giê khÝ ®Þnh v× nöa giê #3 c¸ canh giê # 
	elseif (UTask_cy == 20*256+30) then		-- script viet hoa By http://tranhba.com  ÖÐ¶¾µÚ¶þ½×¶Îµ½Ê±
PutMessage("Ng­¬i c¶m thÊy tø chi v« lùc , cã thÓ ®éc tÝnh ®· x©m nhËp trong c¬ thÓ rÊt s©u . ") 
Msg2Player("Ng­¬i c¶m thÊy tø chi v« lùc , cã thÓ ®éc tÝnh ®· x©m nhËp trong c¬ thÓ rÊt s©u . ") 
		SetTask(6, 20*256+40)
SetTimer(3 * CTime * FramePerSec, 8) -- script viet hoa By http://tranhba.com  tÝnh giê khÝ ®Þnh v× nöa giê #3 c¸ canh giê # 
	elseif (UTask_cy == 20*256+40) then		-- script viet hoa By http://tranhba.com  ÖÐ¶¾µÚÈý½×¶Îµ½Ê±
PutMessage("Toµn th©n b¾t ®Çu bÊt ®éng , tay ch©n kh«ng cã ph¶n øng . ") 
Msg2Player("Toµn th©n b¾t ®Çu bÊt ®éng , tay ch©n kh«ng cã ph¶n øng . ") 
		SetTask(6, 20*256+50)
SetTimer(3 * CTime * FramePerSec, 8) -- script viet hoa By http://tranhba.com  tÝnh giê khÝ ®Þnh v× nöa giê #3 c¸ canh giê # 
else -- script viet hoa By http://tranhba.com  tÇng thø t­ ®o¹n cùc kú lóc # ®éc ph¸t bá m×nh ## 
		SetTask(6, 20*256+10)
for i=1,GetItemCount(1) do DelItem(1) end 
PutMessage("§¹i m¹n ®µ la hoa ®éc tè ®· ph¸t t¸n , ng­¬i bëi v× ®éc ph¸t bá m×nh ") 
Msg2Player("§¹i m¹n ®µ la hoa ®éc tè ®· ph¸t t¸n , ng­¬i bëi v× ®éc ph¸t bá m×nh ") 
SetFightState(1) 
KillPlayer() 
end 
end; 
