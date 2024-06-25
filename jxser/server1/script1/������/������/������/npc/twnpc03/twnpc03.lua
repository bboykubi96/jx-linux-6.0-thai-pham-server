-- script viet hoa By http://tranhba.com description: Thiªn v­¬ng gióp bªn ph¶i khiÕn cho d­¬ng hå # Thiªn v­¬ng 20 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/25 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nhËp m«n ph¸i nhiÖm vô cÊp bËc yªu cÇu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 
-- script viet hoa By http://tranhba.com  by xiaoyang (2004\4\20) 

Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\repute_head.lua")

function main() 
UTask_tw = GetTask(3) 
Uworld121 = GetTask(121) 
-- script viet hoa By http://tranhba.com  if (UTask_tw == 70*256) and (Uworld121 == 245) then -- script viet hoa By http://tranhba.com  b¹ch tªn lµm xong 90 cÊp nhiÖm vô sau l¹i vµo Thiªn v­¬ng ®İch , trùc tiÕp cho kü n¨ng 
-- script viet hoa By http://tranhba.com  Talk(1,"","D­¬ng hå # tiÓu huynh ®Ö qu¶ nhiªn anh hïng xuÊt chóng , n¬i nµy cã Thiªn v­¬ng bİ kİp mét bé , ë trong tay ng­¬i ®Şnh cã thÓ ph¸t d­¬ng quang ®¹i . ") 
-- script viet hoa By http://tranhba.com  AddMagic("XĞ trêi chĞm ") 
-- script viet hoa By http://tranhba.com  AddMagic("§uæi phong quyÕt ") 
-- script viet hoa By http://tranhba.com  AddMagic("§uæi tinh trôc th¸ng ") 
-- script viet hoa By http://tranhba.com  Msg2Player("§¹t ®­îc Thiªn v­¬ng kü n¨ng xĞ trêi chĞm # ®uæi phong quyÕt # ®uæi tinh trôc th¸ng ") 
-- script viet hoa By http://tranhba.com  SetTask(121,255) 
if (GetSeries() == 0) and (GetFaction() == "tianwang") then 
		if (UTask_tw == 20*256+50) and (HaveItem(92) == 1 ) then	-- script viet hoa By http://tranhba.com  Ö»¼ì²âµÀ¾ß£¬ÈôµÀ¾ß¶ªÊ§Ö»ÒªÖØ´ò×îºóÒ»¸öÍÁ·Ë¾Í¿ÉÖØĞÂ´ò³ö¡£
L20_prise() 
elseif (UTask_tw == 20*256) and (GetLevel() >= 20) then 
Say("Th¸m tö håi b¸o # h«m nay ë <color=Red> vò l¨ng s¬n <color> xuÊt hiÖn mét ®¸m <color=Red> thæ phØ <color>, gi¶ m¹o Thiªn v­¬ng gióp ®İch danh tiÕng ®¸nh nhµ c­íp bá , d©n chóng o¸n thanh t¸i ®¹o , ng­¬i nguyÖn ı ®i t×m tßi thæ phØ ®İch sµo huyÖt , còng tiªu diÖt bän hä sao ?", 2,"Thuéc h¹ sÏ hÕt søc /L20_get_yes","§Ö tö vâ c«ng thÊp kĞm , chØ khã kh¨n ®am nµy tr¸ch nhiÖm nÆng nÒ /L20_get_no") 
elseif (UTask_tw < 20*256) then -- script viet hoa By http://tranhba.com  ch­a nhËn 20 cÊp nhiÖm vô 
Talk(1,"","Chóng ta Thiªn v­¬ng gióp danh tiÕng vang xa , v× vËy th­êng cã mét İt tiÓu nh©n gi¶ m¹o bæn bang ®Ö tö lµm chuyÖn xÊu ") 
		elseif (UTask_tw > 20*256) and (UTask_tw < 20*256+80) then					-- script viet hoa By http://tranhba.com ÒÑ¾­½Óµ½20¼¶ÈÎÎñ£¬ÉĞÎ´Íê³É
Talk(1,"","§¸m kia thæ phØ th­êng ra b©y giê <color=Red> b¹ch n­íc ®éng <color> ë <color=Red> vò l¨ng S¬n §«ng bªn <color>.") 
else -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 20 cÊp nhiÖm vô , ch­a xuÊt s­ # thiÕu tØnh ®èi tho¹i # 
Talk(1,"","Chóng ta Thiªn v­¬ng gióp cïng d©n chóng r¨ng m«i t­¬ng y , ng­¬i ph¶i nhí kü tuyÖt ®èi kh«ng thÓ dïng vâ c«ng chÌn Ğp d©n chóng , nhí sao ?") 
end 
elseif (Uworld121 == 20) and (HaveItem(10) == 1) then 
Talk(7,"Uworld121_yanghu","D­¬ng bªn ph¶i khiÕn cho ","C¸c h¹ gièng nh­ cã c¸i g× khã nãi chi Èn , cã ph¶i hay kh«ng ®· x¶y ra chuyÖn g× ?","A ... n¬i nµy cã s¾c vi tiªn tö ®İch mét to¸t tãc !","A ? mé tuyÕt ? nµng thÕ nµo ? ","Yªn t©m # H¹ c« n­¬ng ch¼ng qua lµ cã chót tiÒu tôy !","BiÕt !","Tiªn tö muèn ta truyÒn lêi cho ng­¬i : nÕu nh­ 7 th¸ng tr­íc ng­¬i kh«ng tíi thóy khãi thÊy nµng , sau nµy hai ng­êi c¸c ng­¬i ®em sÏ kh«ng cßn ®­îc gÆp l¹i liÔu ") 
elseif(Uworld121 == 50 ) then 
Talk(8,"Uworld121_yanghu2","ThÕ nµo ? ","# . s¾c vi tiªn tö nhÊt ®Şnh sÏ kh«ng håi t©m chuyÓn ı ®İch ","D­¬ng hå ... ","Nµng nãi cho ta biÕt ®i t×m kh©u anh , h¾n ®· ®Ó cho t­êng tÉn nãi cho ta biÕt C«n L«n ph¸i ®İch kÕ ho¹ch ","Mé tuyÕt , nµng qu¶ nhiªn v× ta ®i cÇu xin kh©u anh c¸i nµy tiÓu nh©n , ta phôc h¾n . ","ThËt kh«ng cã c¸i g× cã thÓ ®iÒn bæ c¸i ®ã v« İch sao ","§õng b¶o lµ h«m nay ca h¸t vui vÎ , h«m nay ta uèng còng rÊt tËn høng , uèng ®­îc vi hu©n . thanh ti cïng tãc tr¾ng lµ 50 n¨m chuyÖn , chuyÖn dÔ nh­ trë bµn tay . ","Nhµ ch¬i :. ") 
else 
Talk(1,""," lßng ng­êi ë giang hå , chØ cã nghi ngê chİ lín , bÊt kÓ ë n¬i nµo còng muèn gi÷ v÷ng tù th©n gi÷a ban ngµy , nÕu nh­ trong lßng ng­¬i cßn muèn trø c¸i g× d¬ bÈn chuyÖn cña t×nh lêi cña bÊt kÓ tíi chç nµo còng sÏ bŞ ng­êi ph¶n béi !") 
end 
end; 

function L20_get_yes() 
Talk(1,"","§¸m kia thæ phØ th­êng ra b©y giê <color=Red> b¹ch n­íc ®éng <color> ë <color=Red>ph vò l¨ng S¬n §«ng bªn <color>.") 
	SetTask(3, 20*256+50)
AddNote("§Õn Thiªn v­¬ng gióp ®«ng ngµy ®iÖn nhËp khÈu (218, 198) , nhËn <color=red> b¹ch n­íc ®éng nhiÖm vô <color>, ®Õn vò l¨ng s¬n b¹ch n­íc ®éng tiªu diÖt thæ phØ ") 
Msg2Player(" ë trªn trêi v­¬ng gióp ®«ng ngµy ®iÖn ®İch lèi vµo thÊy d­¬ng hå tiÕp nhËn vô ®i vò l¨ng s¬n b¹ch n­íc ®éng tiªu diÖt thæ phØ ") 
end; 

function L20_get_no() 
end; 

function L20_prise() 
Talk(1,"","Ng­¬i mét ng­êi mét ngùa vät vµo thæ phØ ®İch sµo huyÖt v× d©n trõ h¹i , lµm thËt tèt # bæn täa xem ng­¬i t­ chÊt chØ cÇn luyÖn tËp mét trËn nhÊt ®Şnh sÏ trë thµnh næi tiÕng ng­êi trong thiªn h¹ vËt #") 
DelItem(92) 
SetRank(45) 
SetTask(3, 30*256) 
-- script viet hoa By http://tranhba.com  AddMagic(33) 
add_tw(30) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
Msg2Player("Chóc mõng ng­¬i # hoµn thµnh b¹ch n­íc ®éng nhiÖm vô bŞ ®ãng cöa v× thñ tr¹i h·n ®em , häc ®­îc vâ c«ng Thiªn v­¬ng gióp ®İch tÜnh t©m quyÕt ") 
AddNote("Trë l¹i Thiªn v­¬ng ®¶o mang theo cÈm kú giao cho d­¬ng hå hoµn thµnh b¹ch n­íc ®éng nhiÖm vô , bŞ ®ãng cöa v× thñ tr¹i h·n ®em ") 
end; 

function Uworld121_yanghu() 
Talk(6,"","Mé tuyÕt # ng­¬i cÇn g× nh­ vËy ®©y ? ","Hµ tiªn tö lµ ng­êi ®ang lóc khã t×m ®İch tiªn n÷ ! d­¬ng bªn ph¶i khiÕn cho # ng­¬i lµ tèt råi h¶o cÇm ®i , ®i qua lçi liÒn quªn ®i ","NÕu nh­ sanh ë th¸i b×nh thêi ®¹i , ta ph¶i c¸i nµy Thiªn v­¬ng bªn ph¶i khiÕn cho ®İch h­ danh lµm sao ®©y ? chØ cÇn cïng ng­¬i b×nh an ®Şa sèng ë §éng ®×nh hå . nh­ng lµ b©y giê thÕ ®¹o kh«ng yªn æn , ta thÕ nµo ®©y c¸ bÊt kÓ bang héi dÆm huynh ®Ö ®©y ? ","..... a ","Nghe nãi h«m nay C«n L«n ph¸i cè ı ®å tiÕn qu©n nam ph­¬ng . ë §éng ®×nh hå ph¸t hiÖn C«n L«n ph¸i ®Ö tö ®İch tung tİch , sî lµ tr­íc bän hä m­u ®å giÕt h¹i chóng ta Thiªn v­¬ng gióp , bæn bang ®İch ë nguy hiÓm tån vong chi tÕ , ta lµm sao cã thÓ trİ th©n sù ngo¹i , viÖc ®· ®Õn n­íc nµy ta nhÊt ®Şnh ph¶i nhÊt ngò nhÊt thËp cïng nµng nãi râ rµng ","Còng chØ cã c¸i ph­¬ng ph¸p nµy liÔu !") 
SetTask(121,30) -- script viet hoa By http://tranhba.com  thiÕt trİ nhiÖm vô thay ®æi l­îng 30 
DelItem(10) 
Msg2Player("C«n L«n ph¸i ı ®å tiÕn c«ng ta ngµy gióp , d­¬ng hå kh«ng thÓ rêi ®i ") 
AddNote("D­¬ng hå kh«ng cã mÆt thÊy hµ mé tuyÕt , ng­¬i ®i khuyªn nhñ nµng ®i ") 
end 

function Uworld121_yanghu2() 
if(GetTask(3) >= 70*256) and (GetTask(3) ~= 75*256) then -- script viet hoa By http://tranhba.com  lµ Thiªn v­¬ng ®Ö tö hoÆc xuÊt s­ ®Ö tö 
Talk(2,"","Khæ cùc ng­¬i , nãi cho t¹i h¹ biÕt C«n L«n ph¸i ®İch x©m l­îc kÕ ho¹ch # n¬i nµy cã Thiªn v­¬ng bİ tŞch # xin cÇm trø !","Ta nhÊt ®Şnh t¨ng c­êng liªn l¹c vâ nghÖ , cïng d­¬ng bªn ph¶i khiÕn cho cïng nhau b¶o vÖ Tèng triÒu giang s¬n ") 
if (HaveMagic(322) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(322,1) 
end 
if (HaveMagic(323) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(323,1) 
end 
if (HaveMagic(325) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(325,1) 
end 
Msg2Player("Häc ®­îc Thiªn v­¬ng gióp kü ph¸p xĞ trêi chĞm , ®uæi tinh trôc th¸ng , ®uæi phong quyÕt ") 
SetTask(121,255) 
else 
SetTask(121,245) 
end 
add_repute = ReturnRepute(30,95,4) -- script viet hoa By http://tranhba.com  danh väng t­ëng th­ëng # lín nhÊt 30 ®iÓm , tõ 100 cÊp khëi mçi cÊp ®Ö gi¶m 4% 
AddRepute(add_repute) 
Msg2Player("NhiÖm vô hoµn thµnh , ng­¬i danh väng ®iÓm gia t¨ng "..add_repute.." ®iÓm .") 
AddNote("Bi yªu mé tuyÕt nhiÖm vô # nãi cho d­¬ng hå C«n L«n x©m l­îc kÕ ho¹ch nh­ng lµ vÉn nh­ cò kh«ng cã c¸ch nµo ch÷a trŞ hµ mé tuyÕt cïng d­¬ng hå ®İch quan hÖ , nhiÖm vô hoµn thµnh . ") 
end 
