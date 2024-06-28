-- script viet hoa By http://tranhba.com  thµnh §¹i Lı # ng­êi ®i ®­êng # sïng th¸nh tù h­ viªn ph­¬ng tr­îng # thóy khãi cöa 50 cÊp nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-27) 

function main() 
UTask_cy = GetTask(6) 
	if (UTask_cy == 50*256+10) then		-- script viet hoa By http://tranhba.com 50¼¶ÈÎÎñ
		SetTask(6,50*256+32)
Talk(4,"","Ph­¬ng tr­îng ®¹i s­ , ta lµ thóy khãi ®Ö tö , ch­ëng m«n gäi ta tíi gióp quı tù t×m b¶o vËt .","A di ®µ phËt , phiÒn to¸i thİ chñ liÔu , ®¹o tÆc ®· trèn vµo thiªn tµm th¸p .","Th¸p nµy lµ §¹i Lı th¸nh ®Şa , cho nªn , v× phßng ngõa ng­êi kh¸c tiÕn vµo , ë trong th¸p cã rÊt nhiÒu ®ång nh©n . thİ chñ ®i vµo ph¶i cÈn thËn . !","§¹i s­ yªn t©m ! ") 
	elseif (UTask_cy == 50*256+32) and (HaveItem(5) == 1) then		-- script viet hoa By http://tranhba.com  Íê³É
		SetTask(6,50*256+50)
DelItem(5) 
Talk(3,"","Ph­¬ng tr­îng ®¹i s­ , c¸i nµy lµ quı tù mÊt ®İch ng« ®ång Quan ¢m , b©y giê cßn cho ®¹i s­ .","A di ®µ phËt , trÊn tù b¶o vËt t×m ®­îc , thËt lµ Bå T¸t phï hé , ®a t¹ thİ chñ . xin/mêi thay ta c¸m ¬n quı ph¸i ch­ëng m«n .","§¹i s­ kh«ng nªn kh¸ch khİ !") 
Msg2Player("§ãng ng« ®ång Quan ¢m cho ph­¬ng tr­îng h­ viªn ") 
AddNote("§ãng ng« ®ång Quan ¢m cho ph­¬ng tr­îng h­ viªn ") 
	elseif (UTask_cy >= 50*256+32) and (UTask_cy < 50*256+50) then		-- script viet hoa By http://tranhba.com  ÈÎÎñ¹ı³ÌÖĞ
Talk(1,"","HÕt th¶y liÒn phiÒn to¸i n÷ thİ chñ liÔu , ta ë chç nµy niÖm kinh cho thİ chñ cÇu nguyÖn ") 
	elseif (UTask_cy >= 50*256+50) then						-- script viet hoa By http://tranhba.com  ÈÎÎñÍê³ÉÒÔºó
Talk(1,"","§a t¹ thİ chñ , thİ chñ ®İch ©n ®øc kh«ng hiÓu thÕ nµo b¸o ®¸p .") 
else 
Talk(3,"","Ng« ®ång Quan ¢m lµ sïng th¸nh tù ®İch b¶o vËt , còng lµ sïng th¸nh tù ®İch kiªu ng¹o ","Ng­¬i xuÊt gia thÕ nµo cã h¶o th¾ng cao ng¹o trong lßng ®©y ? ","Thİ chñ ®İch d¹y dç , bÇn t¨ng sÏ suy nghÜ thËt kü , A di ®µ phËt , A di ®µ phËt , A di ®µ phËt . ") 
end 
end; 
