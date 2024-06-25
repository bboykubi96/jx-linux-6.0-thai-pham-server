-- script viet hoa By http://tranhba.com  nhiÖm vô vËt phÈm ®¹i m¹n ®µ la hoa thóy khãi 20 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-26) 

Include("\\Script\\Global\\TimerHead.lua")

function main() 
UTask_cy = GetTask(6) 
	if (GetSeries() == 2) and (GetFaction() == "cuiyan") and (UTask_cy >= 20*256+10) and (UTask_cy < 30*256) then		-- script viet hoa By http://tranhba.com ´äÑÌ20¼¶ÈÎÎñÖĞ²ÅÄÜ¼ñ´ËµÀ¾ß
i = GetTimerId() 
if (i ~= 0) and (i ~= 8) then -- script viet hoa By http://tranhba.com  kh¸c cã tİnh giê khİ ë vËn hµnh trung 
Talk(1,"","Ng­¬i nhiÖm vô khÈn cÊp , cßn ch¹y lo¹n a ?") 
return 
end 
SetPropState() 
AddEventItem(1) 
Msg2Player("H¸i mét ®ãa ®¹i m¹n ®µ la hoa . ") 
if (i == 0) then -- script viet hoa By http://tranhba.com  ch­a tróng ®éc lµ ®Ó cho h¾n tróng ®éc 
SetTimer(3 * CTime * FramePerSec, 8) -- script viet hoa By http://tranhba.com  tİnh giê khİ ®Şnh v× nöa giê #3 c¸ canh giê # 
			SetTask(6,20*256+20)				-- script viet hoa By http://tranhba.com  ±äÁ¿ÖÃÎªÖĞ¶¾µÚÒ»½×¶Î
-- script viet hoa By http://tranhba.com  PutMessage("Ng­¬i c¶m thÊy tay trung mét trËn tª d¹i t­êng , ®· tróng ®éc . ") 
Msg2Player("Ng­¬i c¶m thÊy tay trung mét trËn tª d¹i t­êng , ®· tróng ®éc . ") 
end 
else 
Msg2Player("Ng­¬i lÊy tay h¸i ®­îc mét ®ãa m¹n ®µ la hoa ") 
Msg2Player("Míi võa ch¹m tíi hoa , ng­¬i liÒn c¶m thÊy tay trung mét trËn tª d¹i nhét , gièng nh­ hoa cã ®éc , ng­¬i lËp tøc ®­a tay trë l¹i . ") 
end 
end; 
