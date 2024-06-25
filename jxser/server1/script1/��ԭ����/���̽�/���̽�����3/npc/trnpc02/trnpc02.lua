-- script viet hoa By http://tranhba.com description: ngµy nhÉn d¹y löa ®­êng ®­êng chñ 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/18 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nhËp m«n ph¸i nhiÖm vô cÊp bËc yªu cÇu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_tr = GetTask(4); 
if (GetSeries() == 3) and (GetFaction() == "tianren") then 
if (UTask_tr == 10*256) and (GetLevel() >= 10) then 
Say("Bæn gi¸o tÇng thø hai ®İch <color=Red> thÊt s¸t ®éng <color> trong nhèt <color=Red> b¶y tö tï <color> , bän hä ®Òu lµ bæn gi¸o ®İch ph¶n ®å , nÕu nh­ ng­¬i cã thÓ ®¸nh b¹i c¸i nµy b¶y ng­êi , lÊy ®­îc <color=Red> b¶y khèi thÊt s¸t lÖnh bµi ®İch m¶nh vôn <color> , liÒn cã thÓ lªn cÊp lµm bæn gi¸o ®İch v« ¶nh s¸t thñ , ng­¬i cã hay kh«ng can ®¶m ®i x«ng thÊt s¸t ®éng a ? ", 2,"X«ng thÊt s¸t ®éng /L10_get_yes","T¹m thêi kh«ng x«ng /L10_get_no") 
-- script viet hoa By http://tranhba.com 		elseif (UTask_tr == 10*256+50) and (HaveItem(51) == 1) and  HaveItem(52) == 1 and HaveItem(53) == 1 and HaveItem(54) == 1 and HaveItem(55) == 1 and HaveItem(56) == 1 and (HaveItem(57) == 1) then
		elseif (UTask_tr == 10*256+50) then		-- script viet hoa By http://tranhba.com  ĞŞ¸ÄÈÎÎñÍê³ÉÌõ¼ş£¨2003-09-27£©
i = check_token() 
if (i >= 3) then 
Talk(1,"L10_prise","RÊt tèt , vµo thÊt s¸t ®éng h¹ ®ñ nh©n sè míi cã thÓ ®i ra ngoµi , ng­îc l¹i , ng­¬i cã chuyÖn g× liÒn tù m×nh xö lı ") 
else 
Talk(1,"","Nh­ thÕ nµo , mét nho nhá kh¶o nghiÖm còng lµm kh«ng tèt sao ?") 
end 
elseif (UTask_tr < 20*256) then -- script viet hoa By http://tranhba.com  ch­a nhËn 10 cÊp nhiÖm vô 
Talk(1,"","§õng t­ëng r»ng gia nhËp bæn gi¸o liÒn an æn , bæn gi¸o kh«ng thu giµu cã ng­êi cña !") 
else 
Talk(1,"","Ng­¬i míi võa gia nhËp ®Ö tö , m¹nh trung tù cã m¹nh trung tay , ng­¬i ph¶i cÈn thËn !") 
end 
else 
Talk(1,"","ChØ cã c­êng gi¶ míi cã thÓ cßn sèng , c­êng gi¶ th¾ng ng­êi yÕu , kh«ng luyÖn ng­êi tèt ®em bŞ ng­êi kh¸c tiªu diÖt , ®Òu lµ lùa chän cña m×nh , kh«ng nªn tr¸ch ng­êi kh¸c .") 
end 
end; 

function L10_get_yes() 
Talk(1,"","<color=Red> thÊt s¸t lÖnh bµi <color> cïng nhau cã b¶y khèi , ph©n ë <color=Red>7 tªn tö tï trªn ng­êi color>, ng­¬i chØ dïng b¾t ®­îc 3 khèi lµ ®­îc .") 
	SetTask(4, 10*256+50)
AddNote("NhËn thÊt s¸t ®éng nhiÖm vô # tiÕn vµo thÊt s¸t ®éng b¾t ®­îc 3 khèi thÊt s¸t lÖnh bµi thÊt s¸t lÖnh bµi . ") 
Msg2Player("NhËn thÊt s¸t ®éng nhiÖm vô # tiÕn vµo thÊt s¸t ®éng b¾t ®­îc 3 khèi thÊt s¸t lÖnh bµi thÊt s¸t lÖnh bµi . ") 
end; 

function L10_get_no() 
Talk(1,""," lµm xong tíi gÆp ta !") 
end; 

function L10_prise() 
SetTask(4, 20*256) 
SetRank(56) 
-- script viet hoa By http://tranhba.com  AddMagic(132) 
-- script viet hoa By http://tranhba.com  AddMagic(131) 
-- script viet hoa By http://tranhba.com  AddMagic(136) 
add_tr(20) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
Msg2Player("Ng­¬i bŞ ®ãng cöa v× v« ¶nh s¸t thñ , häc ®­îc ngµy nhÉn m©u ph¸p , ngµy nhÉn ®ao ph¸p , löa phßng hoa sen . ") 
AddNote("§em thÊt s¸t lÖnh bµi mang cho §­êng chñ , hoµn thµnh thÊt s¸t ®éng nhiÖm vô , th¨ng cÊp lµm v« ¶nh s¸t thñ ") 
end; 

function check_token() 
i = 0 
if (HaveItem(51) == 1) then 
		i = i + 1
DelItem(51) 
end 
if (HaveItem(52) == 1) then 
		i = i + 1
DelItem(52) 
end 
if (HaveItem(53) == 1) then 
		i = i + 1
DelItem(53) 
end 
if (HaveItem(54) == 1) then 
		i = i + 1
DelItem(54) 
end 
if (HaveItem(55) == 1) then 
		i = i + 1
DelItem(55) 
end 
if (HaveItem(56) == 1) then 
		i = i + 1
DelItem(56) 
end 
if (HaveItem(57) == 1) then 
		i = i + 1
DelItem(57) 
end 
return i 
end; 
