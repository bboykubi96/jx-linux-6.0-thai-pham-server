-- script viet hoa By http://tranhba.com description: ph¸i Nga Mi tin/th¬ t­¬ng tù hËu viÖn nãi ®Þch nh©n 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/6 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-12) 

function OnDeath() 
UTask_em = GetTask(1); 
	if (UTask_em == 50*256+60) and (HaveItem(23) == 1) and (random(0,99) < 30) then							-- script viet hoa By http://tranhba.com ¾È³ö´Èº£·½ÕÉµÄ¸ÅÂÊÊÇ30%
Msg2Player("§¸nh b¹i ph¶n t¨ng ®Çu môc , cøu tõ h¶i ph­¬ng tr­îng , ®em kim tuyÕn tó phËt kinh Kim C­¬ng cho h¾n . ") 
DelItem(23) 
		SetTask(1, 50*256+80)
AddNote("§¸nh b¹i ph¶n t¨ng ®Çu môc , cøu tõ h¶i ph­¬ng tr­îng , ®em kim tuyÕn tó phËt kinh Kim C­¬ng cho h¾n . ") 
end 
end; 
