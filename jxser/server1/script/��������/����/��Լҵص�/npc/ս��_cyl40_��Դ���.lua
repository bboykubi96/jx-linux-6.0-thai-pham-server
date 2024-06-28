-- script viet hoa By http://tranhba.com  thµnh §¹i Lı ¸c ph¸ch bİ ®¹o chiÕn ®Êu NPC ? ? ? # thóy khãi cöa 40 cÊp nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-26) 

function OnDeath() 
UTask_cy = GetTask(6) 
	if (UTask_cy == 40*256+10) and (random(0,100) < 40) then				-- script viet hoa By http://tranhba.com  40%µÄ»úÂÊ³É¹¦
		SetTask(6,40*256+20)
AddNote("Gi¶i cøu bŞ v©y ë trong mËt ®¹o ®İch thiÕu n÷ , biÕt ¸c ph¸ch ®· ®em nh÷ng kh¸c c« g¸i mang ®i Th­¬ng S¬n liÔu . ") 
Msg2Player("§¸nh b¹i ¸c ph¸ch ®İch trî thñ , gi¶i cøu bŞ v©y ë trong mËt ®¹o ®İch thiÕu n÷ , biÕt ¸c ph¸ch ®· ®em nh÷ng kh¸c c« g¸i mang ®i Th­¬ng S¬n liÔu . ") 
end 
end; 
