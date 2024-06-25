-- script viet hoa By http://tranhba.com description: Thiªn v­¬ng gióp tiÒn ®iÖn v­¬ng t¸ # Thiªn v­¬ng 10 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/24 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nhËp m«n ph¸i nhiÖm vô cÊp bËc yªu cÇu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_tw = GetTask(3); 
if (GetSeries() == 0) and (GetFaction() == "tianwang") then 
if (UTask_tw == 10*256) and (GetLevel() >= 10) then 
Say("Ng­¬i lµ míi gia nhËp bæn bang ®İch huynh ®Ö ®i ? muèn th¨ng lµm bæn bang ®İch thŞ vÖ tr­êng , ph¶i ®i <color=Red> Thiªn v­¬ng ®¶o s¬n ®éng <color> b¾t ®­îc <color=Red> ba m¸u gµ th¹ch <color>. ng­¬i cã can ®¶m tiÕp nhËn c¸i nµy khiªu chiÕn sao ?", 2,"§­¬ng nhiªn lµ cã . /L10_get_yes","T¹i h¹ muèn nhiÒu h¬n n÷a ma luyÖn mét ®o¹n thêi gian /L10_get_no") 
		elseif (UTask_tw == 10*256+20) and (GetItemCount(91) >= 3 ) then				-- script viet hoa By http://tranhba.com ¼¦ÑªÊ¯ÊıÄ¿ÖÁÉÙÎª3
L10_prise() 
		elseif (UTask_tw > 10*256) and (UTask_tw < 10*256+50) then					-- script viet hoa By http://tranhba.com ÒÑ¾­½Óµ½10¼¶ÈÎÎñ£¬ÉĞÎ´Íê³É
Talk(1,"","§Õn <color=Red> Thiªn v­¬ng s¬n ®éng <color> b¾t ®­îc <color=Red> ba m¸u gµ th¹ch <color> sau tíi t×m ta n÷a !") 
else -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 10 cÊp nhiÖm vô , ch­a xuÊt s­ # thiÕu tØnh ®èi tho¹i # 
Talk(1,"","Bæn m«n huynh ®Ö còng cã ®¹i hoµi b·o ®İch , l·o phu hËn nhÊt chİnh lµ gµ g¸y chã ®¹o h¹ng ng­êi ") 
end 
elseif (UTask_tw >= 70*256) then -- script viet hoa By http://tranhba.com  ®· xuÊt s­ 
Talk(1,"","Nam tö h¸n ®¹i tr­îng phu hµnh tÈu giang hå muèn ®Ønh thiªn lËp ®Şa , ng­¬i nÕu lµ lµm c¸i g× vi ph¹m ®¹o nghÜa chuyÖn cña t×nh l·o phu nhÊt ®Şnh kh«ng bu«ng tha ng­¬i ") 
else 
Talk(1,""," l·o phu coi trî gióp v× m×nh ®İch n÷ nhi ruét thŞt , bÊt luËn cã chuyÖn g× l·o phu còng sÏ hÕt søc b¶o vÖ nµng ") 
end 
end; 

function L10_get_yes() 
Talk(1,"","RÊt tèt # ®©y míi lµ nam tö h¸n # ®Õn <color=Red> Thiªn v­¬ng ®¶o s¬n ®éng <color> b¾t ®­îc <color=Red>3 viªn m¸u gµ th¹ch <color> sau trë vÒ n÷a t×m ta !") 
	SetTask(3, 10*256+20)
AddNote(" ë trªn trêi v­¬ng gióp tiÒn ®iÖn (201, 198) t×m v­¬ng t¸ , tiÕp nhËn <color=red> m¸u gµ th¹ch nhiÖm vô <color>, ®Õn trªn ®¶o s¬n ®éng t×m 3 viªn m¸u gµ th¹ch ") 
Msg2Player(" ë trªn trêi v­¬ng gióp tiÒn ®iÖn t×m v­¬ng t¸ , tiÕp nhËn m¸u gµ th¹ch nhiÖm vô ®Õn trªn ®¶o s¬n ®éng t×m 3 viªn m¸u gµ th¹ch . ") 
end; 

function L10_get_no() 
end; 

function L10_prise() 
Talk(1,""," lµm tèt l¾m # l·o phu phong ng­¬i v× thŞ vÖ tr­êng # sau cßn cã rÊt nhiÒu kh¶o nghiÖm chê ng­¬i , ng­¬i muèn tiÕp tôc cè g¾ng ") 
for i = 1, (GetItemCount(91)) do DelItem(91) end 
SetTask(3, 20*256) 
SetRank(44) 
add_tw(20) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
-- script viet hoa By http://tranhba.com  AddMagic(26) 
-- script viet hoa By http://tranhba.com  AddMagic(23) 
-- script viet hoa By http://tranhba.com  AddMagic(24) 
Msg2Player("Chóc mõng ng­¬i bŞ ®ãng cöa v× thŞ vÖ tr­êng . häc ®­îc Thiªn v­¬ng chïy ph¸p , Thiªn v­¬ng th­¬ng ph¸p , Thiªn v­¬ng ®ao ph¸p . ") 
AddNote("Trë l¹i tiÒn ®iÖn , ®em 3 viªn m¸u gµ th¹ch giao cho v­¬ng t¸ , hoµn thµnh m¸u gµ th¹ch nhiÖm vô , bŞ ®ãng cöa v× thŞ vÖ tr­êng ") 
end; 
