-- script viet hoa By http://tranhba.com description: Thiªn v­¬ng gióp Thiªn hé ph¸p ®­êng v©n xa Thiªn v­¬ng gióp 40 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/26 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nhËp m«n ph¸i nhiÖm vô cÊp bËc yªu cÇu 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-25), gia nhËp trë l¹i m«n ph¸i nhiÖm vô 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-21) lÇn n÷a thiÕt kÕ trë l¹i m«n ph¸i cïng trÊn ph¸i tuyÖt häc t­¬ng quan # hñy bá cïng nµy ch©n h×nh d¹ng cò quan bé phËn # 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_tw = GetTask(3) 
if (GetSeries() == 0) and (GetFaction() == "tianwang") then 
if (UTask_tw == 40*256) and (GetLevel() >= 40) then 
Talk(2, "L40_get", " Lé l·o hé ph¸p , nh×n l·o nh©n gia ngµi buån buån bùc kh«ng triÓn , cã c¸i g× khæ së chuyÖn sao ?","Ta thuéc h¹ ®Ö tö ng« míi võa thİch tµi ë bªn hå kh«ng cÈn thËn bŞ mét lo¹i kŞch ®éc v« cïng xİch liªn r¾n c¾n th­¬ng , sinh m¹ng nguy ë ®¸n tŞch , ta ®· dïng néi lùc cho h¾n trõ ®éc , nh­ng lµ ®éc khİ c«ng t©m , kh«ng thÓ tÉn trõ , nghe nãi chØ cã <color=Red> ba l¨ng huyÒn <color> ®İch <color=Red> Ng« thÇn y <color> cã thÓ ch÷a trŞ ....") 
		elseif (UTask_tw == 40*256+50) and (HaveItem(93) == 1) and (HaveItem(94) == 1) then
L40_prise() 
		elseif (UTask_tw > 40*256+20) and (UTask_tw < 50*256) then					-- script viet hoa By http://tranhba.com ÒÑ¾­½Óµ½40¼¶ÈÎÎñ£¬ÉĞÎ´Íê³É
Talk(1,"","CÇu xin ®Õn gi¶i d­îc sao ?") 
elseif (UTask_tw >= 50*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 40 cÊp nhiÖm vô , ch­a xuÊt s­ 
Talk(1,"","Ng­¬i ®øa nhá nµy kh«ng chØ cã vâ c«ng kh«ng tÖ , t©m ®Şa còng rÊt tèt , l·o ®Çu tö ta rÊt thİch !") 
else -- script viet hoa By http://tranhba.com  ch­a nhËn 40 cÊp nhiÖm vô 
Talk(1,"","HiÖn giê lµ Tr­êng giang sãng sau ®Ì sãng tr­íc , chóng ta nh÷ng thø nµy l·o ®Çu tö ®Òu kh«ng ®İnh dïng la !") 
end 
elseif (UTask_tw >= 70*256) then -- script viet hoa By http://tranhba.com  ®· xuÊt s­ 
Talk(1,""," lóc ®êi t¹o anh hïng , h«m nay thiªn h¹ quÇn hïng còng khëi , nh©n tµi tÓ tÓ , ng¾m ng­¬i m¹nh kháe tù trë nªn , t­¬ng lai thµnh tùu mét phen kinh thiªn ®éng ®Şa ®İch lµm ") 
else 
Talk(1,"","Bæn bang nam kh¸ng Tèng triÒu , b¾c kh¸ng qu©n Kim . bang chñ mét n÷ nh©n dÉn chóng ta ph¸t triÓn tèt nh­ vËy thËt sù lµ kh«ng dÔ dµng !") 
end 
end; 

function L40_get() 
Say("Ng­¬i cã thÓ ®Õn ba l¨ng huyÒn t×m <color=Red> Ng« thÇn y <color> cÇu xin gi¶i d­îc sao ?", 2,"Thuéc h¹ nguyÖn ı /L40_get_yes","Thuéc h¹ cã chuyÖn kh¸c /L40_get_no") 
end; 

function L40_get_yes() 
Talk(1,"","H¶o , ng­¬i nhanh ®i mau trë l¹i ") 
	SetTask(3, 40*256+20)
SetTask(14,0) 
AddNote(" ë trªn trêi v­¬ng ®¹i ®iÖn thÊy ®­êng v©n xa tiÕp nhËn <color=red> t×m thuèc gi¶i nhiÖm vô <color>, ®Õn ba l¨ng huyÒn t×m Ng« thÇn y xin thuèc . ") 
Msg2Player(" ë trªn trêi v­¬ng ®¹i ®iÖn thÊy ®­êng v©n xa tiÕp nhËn t×m thuèc gi¶i nhiÖm vô , ®Õn ba l¨ng huyÒn t×m Ng« thÇn y xin thuèc . ") 
end; 

function L40_get_no() 
end; 

function L40_prise() 
Talk(1,"","ThËt tèt qu¸ , cã nh÷ng thø nµy muèn ng« míi võa th× cã cøu . còng kh«ng biÕt ph¶i lµm sao c¶m t¹ ngµi !") 
DelItem(93) 
DelItem(94) 
SetRank(47) 
SetTask(3, 50*256) 
-- script viet hoa By http://tranhba.com  AddMagic(40) 
add_tw(50) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
Msg2Player("§em hai vŞ thuèc giao cho ®­êng v©n xa , hoµn thµnh nhiÖm vô , bŞ ®ãng cöa lµ thñy ®¹o thèng dÉn , häc ®­îc lo¹n ®¸nh tr¶ ") 
AddNote("§em hai vŞ thuèc giao cho ®­êng v©n xa , hoµn thµnh nhiÖm vô , bŞ ®ãng cöa lµ thñy ®¹o thèng dÉn ") 
end; 
