-- script viet hoa By http://tranhba.com  ThiÕu L©m ng­êi ®i ®­êng NPC §¹t ma viÖn huyÒn bi 20 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-01) 
-- script viet hoa By http://tranhba.com  update by: xiaoyang(2004\4\15) ph¸i ThiÕu l©m 90 cÊp nhiÖm vô 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_sl = GetTask(7) 
Uworld122 = GetTask(122) 
if(GetSeries() == 0) and (GetFaction() == "shaolin") then 
		if(UTask_sl == 20*256+128) then		-- script viet hoa By http://tranhba.com 20¼¶ÈÎÎñ½øÐÐÖÐ
L20_prise() 
elseif((UTask_sl == 20*256) and (GetLevel() >= 20)) then -- script viet hoa By http://tranhba.com 20 cÊp nhiÖm vô 
Talk(2,"L20_get","GÇn nhÊt tù trong tõ Phóc KiÕn phñ ®iÒn tíi n¨m trªn danh nghÜa ®Ö tö , lµ nam ThiÕu L©m ®Ých ph­¬ng tr­îng ®Ò cö tíi , bëi v× c¸i nµy n¨m rÊt ng­êi ®em toµn bé nam ThiÕu L©m huyªn n¸o gµ chã kh«ng yªn , ph­¬ng tr­îng kh«ng c¸ch nµo , chØ ®µnh ph¶i göi hy väng vµo vèn tù cã thÓ gi¸o hãa bän hä , nµo biÕt c¸i nµy n¨m nam rÊt c¨n b¶n kh«ng nghe gi¸o hãa , c¶ ngµy du thñ h¶o rçi r·nh , chäc lµ sanh phi , thËt lµ lµm cho ®Çu ng­êi ®au ","C¸i nµy n¨m rÊt ng­êi b©y giê ë n¬i nµo ?") 
else 
Talk(1,"","Ng­êi xuÊt gia chó träng minh t©m kÕt tÝnh !") 
end 
elseif(Uworld122 == 10) then 
Talk(5,"Uworld122_find","HuyÒn bi ®¹i s­ , ë trªn cao Hoa S¬n ®Ých trªn ®­êng cã rÊt nhiÒu ThiÕu L©m ®Ö tö ®¸nh nhau tíi chÕt , kh«ng hiÓu lµ bëi v× c¸i g× ?","ThiÕu L©m muèn ë trong hµng ®Ö tö lùa chän ng­êi thÝch hîp ë tµng kinh c¸c tíi tu luyÖn 72 tuyÖt chiªu . ng­êi cã n¨ng lùc ®Òu lµ ®Õn tõ §¹t ma viÖn cïng La H¸n ®­êng , La H¸n ®­êng ®Ö tö kh«ng gièng §¹t ma viÖn ®Ých ®Ö tö nh­ vËy lu«n lµ tranh quyÒn ®o¹t vÞ , chuyÖn ®¹i kh¸i chÝnh lµ nh­ vËy . ","§¹t Ma La H¸n ®Õn tõ ThiÕu L©m , t¹i sao muèn tranh ®o¹t , ng­êi nµo häc kh«ng tíi !","§Ö tö cña ta siªu phµm xuÊt chóng , chän ai b¶o ng­êi nµo ?","Ch¼ng lÏ La H¸n ®­êng còng thuéc vÒ ThiÕu L©m sao ?") 
elseif(Uworld122 >=20) and (Uworld122 < 30)then 
Talk(1,"","# ®i t×m huyÒn khã kh¨n ... ") 
elseif(Uworld122 == 30)then 
Talk(5,"Uworld122_alow","§¹i s­ , huyÒn khã kh¨n ®¹i s­ kh«ng nghe ta khuyªn mæ . ta ®i qua Hoa S¬n , thÊy rÊt nhiÒu kim quèc cao thñ mai phôc , sî r»ng l¹i c¸i g× ©m m­u .","Ng­¬i thËt thÊy ®­îc ?","TuyÖt ®èi bÊt lo¹n nãi ! ","# xin/mêi ®i cïng §¹t ma viÖn ®Ö tö nãi kh«ng muèn ®¸nh nhau , ®©y lµ ta ®Ých lÖnh bµi . nÕu qu¶ thËt lµ kim qu©n , hy väng cã thÓ gióp tiªu diÖt bän hä .","T¹i h¹ t«n mÖnh .") 
elseif (Uworld122 == 50) and (HaveItem(392) == 0) then 
Talk(1,"","ThÝ chñ ®em lÖnh bµi r¬i vµo ta l·o n¹p n¬i nµy , kh«ng cã nã sî r»ng ThiÕu L©m ®Ö tö kh«ng tin ") 
AddEventItem(392) 
Msg2Player("NhËn ThiÕu L©m t¨ng chóng lÖnh bµi ") 
elseif(Uworld122 >= 50) and (Uworld122 <= 60) then 
Talk(1,"","Cã lÏ chóng ta thËt sai lÇm råi ... ") 
elseif (Uworld122 == 65) and (HaveItem(392) == 1) then 
Talk(4,"U122_finish","Hoa S¬n ®Ých hoa hång nguy hiÓm còng hãa gi¶i , may nhê kh«ng cã ph¸t sinh th­¬ng vong .","BÇn t¨ng ®· nhËn ®­îc ®Ö tö ®Ých tin tøc , thËt lµ xÊu hæ ." ,"§¹i s­ kh«ng nªn nh­ vËy , trong lóc nguy hiÓm cã thÓ gi¶i quyÕt vÊn ®Ò , thËt lµ anh hïng bæn s¾c .","VÞ trÎ tuæi nµy kh«ng muèn trªu l·o n¹p liÔu , ng­¬i nhanh ®i t×m huyÒn khã kh¨n ®i , h¾n cã chuyÖn muèn ®èi víi ng­¬i nãi , ha ha .!") 
else -- script viet hoa By http://tranhba.com  th­êng quy ®èi tho¹i 
Talk(1,"","Ch­ëng m«n s­ huynh mÊy n¨m gÇn ®©y muèn kh¸ng kim ®Ých biÖn ph¸p , tãc b¹c .") 
end 
end; 

function L20_get() 
Say("Bän hä ®· ®i phôc ma t©y s¬n , mÊy ng­êi nµy cho lµ cã mÊy chiªu còng kh«ng ®em ng­êi Trung nguyªn ®Ó ë trong m¾t ?",2,"§Ó cho ta ®i d¹y dç bän hä . /L20_get_yes","ChØ sî ta kh«ng lµm ®­îc /L20_get_no") 
end; 

function L20_get_yes() 
Talk(1, "","Bän hä ®­êng xa tíi còng lµ kh¸ch , ng­¬i xuÊt thñ ph¶i cÈn thËn nga #.") 
	SetTask(7,20*256+64)
-- script viet hoa By http://tranhba.com  SetTaskTemp(42,0) -- script viet hoa By http://tranhba.com  khai s¸ng t¹m thêi thay ®æi l­îng #TaskTemp ®Ých ID sè v× 42## hñy bá t¹m thêi thay ®æi l­îng # 
AddNote("Thay §¹t ma viÖn thñ täa huyÒn bi ®¹i s­ d¹y dç n¨m rÊt ng­êi . ") 
Msg2Player("Thay §¹t ma viÖn thñ täa huyÒn bi ®¹i s­ d¹y dç n¨m rÊt ng­êi . ") 
end; 

function L20_get_no() 
end; 

function L20_prise() 
Talk(2,"","S­ thóc , ta ®· thu phôc kia n¨m rÊt ng­êi , bän hä tõ ®ã vÒ sau kh«ng d¸m n÷a chäc lµ sanh phi liÔu !","Ng· phËt tõ bi # thiÖn tai thiÖn tai !") 
SetTask(7,30*256) 
SetRank(3) 
-- script viet hoa By http://tranhba.com  AddMagic(15) 
add_sl(30) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®Ých hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
AddNote("Thu phôc n¨m rÊt ng­êi , th¨ng cÊp lµm hé tù kim c­¬ng . ") 
Msg2Player("Chóc mõng , ng­¬i ®· th¨ng cÊp lµm hé tù kim c­¬ng , häc ®­îc bÊt ®éng minh v­¬ng vâ c«ng . ") 
end; 

function Uworld122_find() 
Talk(1,"","HuyÒn bi :... ng­¬i ®i t×m huyÒn khã kh¨n ®i . ") 
SetTask(122,20) -- script viet hoa By http://tranhba.com  thiÕt trÝ nhiÖm vô thay ®æi l­îng 20 
Msg2Player("HuyÒn bi m« c¹nh hai còng kh«ng ®¸p , b¶o ng­¬i ®i huyÒn khã xö hái râ rµng ") 
AddNote("HuyÒn bi m« c¹nh hai còng kh«ng ®¸p , b¶o ng­¬i ®i huyÒn khã xö hái râ rµng ") 
end 

function Uworld122_alow() 
AddEventItem(392) 
Msg2Player("B¾t ®­îc ThiÕu L©m t¨ng chóng lµm . ") 
SetTask(122,50) -- script viet hoa By http://tranhba.com  thiÕt trÝ nhiÖm vô thay ®æi l­îng 50 
Msg2Player("§¸p øng huyÒn bi , ®Õn Hoa S¬n cøu ThiÕu L©m ®Ö tö , giÕt chÕt kim quèc t­íng l·nh . ") 
AddNote("§¸p øng huyÒn bi , ®Õn Hoa S¬n cøu ThiÕu L©m ®Ö tö , giÕt chÕt kim quèc t­íng l·nh . ") 
end 

function U122_finish() 
DelItem(392) 
Msg2Player("§ãng tíi ThiÕu L©m t¨ng chóng lµm . ") 
SetTask(122,70) 
Msg2Player("Cïng huyÒn bi gi¶i hßa , ®i t×m huyÒn khã kh¨n . ") 
AddNote("Cïng huyÒn bi gi¶i hßa , ®i t×m huyÒn khã kh¨n . ") 
end 
