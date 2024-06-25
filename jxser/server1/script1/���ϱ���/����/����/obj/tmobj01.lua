-- script viet hoa By http://tranhba.com description: §­êng m«n 20 cÊp nhiÖm vô qu¸i th¹ch trËn nhµ ®¸ tr­íc cöa hßn ®¸ nhá bia 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/11 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function main() 
UTask_tm = GetTask(2); 
	if (UTask_tm == 20*256+20) then		-- script viet hoa By http://tranhba.com  20¼¶ÈÎÎñ£¬µÚÒ»²½£º´òËÄ¸ö×Ö
if (HaveItem(37) == 1) and (HaveItem(38) == 1) and (HaveItem(39) == 1) and (HaveItem(40) == 1) then 
Talk(9, "","Ng­¬i nÕu t×m ®­îc ' tù tiÖn x«ng vµo ng­êi chÕt ' bèn ch÷ , t¹i sao cßn d¸m dõng l¹i ? ch¼ng lÏ thiªn h¹ kh«ng cã sî chÕt ng­êi sao ?","Thiªn h¹ kh«ng cã kh«ng sî chÕt ng­êi , nh­ng lµ th©n nh©n sinh mµ kh«ng cã thÓ gÆp nhau , ch¼ng ph¶i lµ so chÕt cµng khã h¬n qu¸ ?","Ng­¬i rèt cuéc lµ ng­êi nµo " ,"V·n bèi lµ §­êng m«n ®Ö tö , ®Æc biÖt tíi xin/mêi s­ c« trë vÒ §­êng m«n , cïng ch­ëng m«n huynh muéi ®oµn tô ! ","Ta kh«ng cã g× huynh tr­ëng # th©n nh©n cña ta ®Òu chÕt s¹ch # n¨m ®ã ta bŞ ®uæi ra khái nhµ ®İch thêi ®iÓm , còng kh«ng cã mét huynh tr­ëng v× ta nãi qua h¶o tho¹i # khi ®ã ta liÒn thÒ , kiÕp nÇy tuyÖt kh«ng hÒ n÷a b­íc vµo §­êng m«n nöa b­íc ! ","NÕu nh­ s­ c« thËt ®èi víi §­êng m«n kh«ng cã nöa ®iÓm l­u luyÕn tho¹i , th× t¹i sao muèn ë n¬i nµy tróc h¶i phİa sau nói Èn c­ ®©y ?","§­êng u :.....","S­ c« , qua nhiÒu n¨m nh­ vËy , ch­ëng m«n mét mùc hÕt søc hèi tiÕc n¨m ®ã kh«ng cã ng¨n c¶n s­ tæ ®em ngµi ®uæi ra khái nhµ , ngµi t¹i sao kh«ng cho h¾n mét lÇn båi th­êng c¬ héi ®©y ? huèng chi huynh muéi chİnh lµ x­¬ng thŞt chİ th©n , cÇn g× bëi v× nhÊt thêi ı khİ , mµ lµm cho ©n hËn c¶ ®êi ®©y ?","Ng­¬i kh«ng cÇn n÷a dµi dßng # h¶o , ta liÒn cho h¾n mét lÇn c¬ héi , tr¸nh cho nãi ta l·nh khèc v« t×nh . n¨m ®ã ta rêi nhµ cöa lóc , trong c¬n tøc giËn s¾p xuÊt hiÖn sinh lóc cha ®­a cho ta ®İch kim h¹ng vßng nĞm vµo phØ thóy hå , ng­¬i nÕu nh­ cã thÓ cho ta t×m vÒ kim h¹ng vßng , ta liÒn cïng ng­¬i trë vÒ ") 
DelItem(37) 
DelItem(38) 
DelItem(39) 
DelItem(40) 
			SetTask(2, 20*256+40)
AddNote(" ë ®­êng u tr­íc phßng ®İch trªn tÊm bia ®¸ , tiÕp nhËn vô , ®i phØ thóy hå t×m kim h¹ng vßng ") 
else 
Talk(1,"","Ng­¬i kh«ng cã khÈu quyÕt , kh«ng thÓ th«ng qua bia ®¸ cïng ®­êng u nãi chuyÖn .") 
AddNote(" ë kh«ng lßng d¹ nµo cèc tr­íc tÊm bia ®¸ biÕt tr­íc ph¶i t×m trong cèc bia ®¸ khÈu quyÕt . ") 
end 
	elseif (UTask_tm == 20*256+40) then
if (HaveItem(41) == 1) then 
Talk(2, "","S­ c« , ®Ö tö ®· ë phØ thóy hå t×m ®­îc kim h¹ng vßng , s­ c« nguyÖn ı cïng ®Ö tö ®i vÒ sao ?","Ng­¬i ®em kim h¹ng vßng giao cho ta ®¹i ca , h¾n thÊy h¹ng vßng còng biÕt ta ®· tha thø h¾n .") 
	  		SetTask(2, 20*256+60)
Msg2Player("§­êng u ®Ó cho ng­¬i ®em kim h¹ng vßng giao cho ch­ëng m«n ®­êng thï . ") 
AddNote("§­êng u ®Ó cho ng­¬i ®em kim h¹ng vßng giao cho ch­ëng m«n ®­êng thï . ") 
else -- script viet hoa By http://tranhba.com  kh«ng cã ®­îc hoÆc lµ mÊt , kim h¹ng vßng cã thÓ ph¶n phôc ®¸nh 
Talk(1,"","NÕu nh­ ng­¬i cã thÓ ®i ®­îc phØ thóy hå thay ta t×m vÒ kim h¹ng vßng , ta liÒn tha thø ng­¬i ") 
end 
	elseif ((UTask_tm == 20*256+60) and (HaveItem(41) == 0)) then		-- script viet hoa By http://tranhba.com  µÀ¾ß¶ªÁË
AddEventItem(41) 
Talk(1,"","Ng­¬i thÕ nµo nhiÒu chuyÖn nh­ vËy , cßn ng­¬i n÷a , mau biÕn mÊt cho ta !") 
elseif (UTask_tm >= 30*256) then 
Say("Ta mét ng­êi thanh tÜnh qu¸n , kh«ng thİch bŞ ng­êi quÊy rÇy , chuyÖn cò ®· xong , nãi nhiÒu v« İch , ng­¬i trë vÒ ®i th«i !", 0) 
else 
Talk(1,"","Trªn tÊm bia ®¸ viÕt # thiÖn vµo ng­êi , giÕt kh«ng tha . giÕt ch÷ ®· mét lo¹i ®Æc biÖt huyÕt s¾c viÕt thµnh . ") 
end 
end; 
