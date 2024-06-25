-- script viet hoa By http://tranhba.com  thµnh §¹i Lı ng­êi ®i ®­êng NPC ®o¹n hoa n«ng # thóy khãi cöa 30 cÊp nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-26) 

function main() 
UTask_cy = GetTask(6) 
	if (UTask_cy == 30*256+10) then		-- script viet hoa By http://tranhba.com 30¼¶ÈÎÎñ½øĞĞÖĞ£¨¾ÈËïÅ®Æô¶¯£©
Talk(6,"",". §oµn ®¹i gia , nghe nãi ng­¬i lo¹i hoa rÊt lîi h¹i , ta tíi muèn lµm phiÒn ng­¬i truyÒn cho ta lo¹i vò y nghª th­êng ®İch bİ quyÕt ","¤ « ..... ta ®¸ng th­¬ng hµi giÊy .....","§¹i gia , ng­¬i hµi giÊy thÕ nµo ?","Nµng bŞ ®iÓm Th­¬ng S¬n ®İch thæ phØ cho b¾t ®i , b©y giê kh«ng hiÓu sinh tö nh­ thÕ nµo . .....","§oµn ®¹i gia , kh«ng cÇn lo l¾ng , ta sÏ gióp ng­¬i ®i cøu nµng .","N÷ hiÖp , ng­¬i thËt lµ mét ng­êi tèt , chØ cÇn ng­¬i ®· cøu ta ®İch hµi giÊy , chuyÖn g× ta còng ®¸p øng ng­¬i ! ") 
		SetTask(6,30*256+20)
AddNote("§Õn §iÓm th­¬ng s¬n , t×m thæ phØ gi¶i cøu trµ n«ng ®İch hµi giÊy ") 
Msg2Player("§Õn §iÓm th­¬ng s¬n , t×m thæ phØ gi¶i cøu trµ n«ng ®İch hµi giÊy ") 
	elseif (UTask_cy == 30*256+30) then		-- script viet hoa By http://tranhba.com 30¼¶ÈÎÎñ½øĞĞÖĞ£¨¾ÈËïÅ®Íê³É£©
Talk(5,"","C¶m t¹ ng­¬i ®· cøu ta ®İch hµi giÊy , c¸i nµy ®¹i ©n ®¹i ®øc ta sÏ kh«ng quªn .","§oµn ®¹i gia , ng­¬i biÕt lo¹i vò y nghª th­êng sao ?","TiÓu c« n­¬ng , coi nh­ ng­¬i hái ®óng ng­êi , lo¹i vò y nghª th­êng ®İch bİ mËt chØ cã ta biÕt , cho tíi b©y giê kh«ng cã truyÒn cho ngo¹i nh©n , nh­ng lµ , ng­¬i ®· cøu ta ®İch hµi giÊy , ta liÒn truyÒn cho ng­¬i ."," lo¹i vò y nghª th­êng cÇn ph¶i cã 3 lo¹i nguyªn liÖu # mét lo¹i lµ nhŞ h¶i ®İch ng©n tuyÕt c¸ , lo¹i thø hai lµ con b­ím tuyÒn bªn c¹nh bİch th­êng ph­îng ®iÖp , lo¹i thø ba lµ v©n n«ng ®×nh ®İch hång con giun .","§a t¹ ®¹i gia ! ") 
		SetTask(6,30*256+40)
AddNote(" lo¹i vò y nghª th­êng cÇn ph¶i cã 3 lo¹i nguyªn liÖu # nhŞ h¶i ®İch ng©n tuyÕt c¸ , con b­ím tuyÒn bªn c¹nh bİch th­êng ph­îng ®iÖp , v©n n«ng ®×nh ®İch hång con giun ") 
Msg2Player(" lo¹i vò y nghª th­êng cÇn ph¶i cã 3 lo¹i nguyªn liÖu # nhŞ h¶i ®İch ng©n tuyÕt c¸ , con b­ím tuyÒn bªn c¹nh bİch th­êng ph­îng ®iÖp , v©n n«ng ®×nh ®İch hång con giun ") 
	elseif (UTask_cy == 30*256+20) then
Talk(1,"","N÷ hiÖp , chØ cÇn ng­¬i ®· cøu ta ®İch hµi giÊy , chuyÖn g× ta còng ®¸p øng ng­¬i ! ") 
else 
Talk(1,""," lo¹i lo¹i nµy hoa , võa lµ khoa häc , l¹i lµ nghÖ thuËt .") 
end 
end 
