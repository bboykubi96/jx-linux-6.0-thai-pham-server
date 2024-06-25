-- script viet hoa By http://tranhba.com description: §­êng m«n ®­êng h¹c 10 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/10 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nhËp m«n ph¸i nhiÖm vô cÊp bËc yªu cÇu 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-24), gia nhËp trë l¹i m«n ph¸i nhiÖm vô 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-21) lÇn n÷a thiÕt kÕ trë l¹i m«n ph¸i cïng trÊn ph¸i tuyÖt häc t­¬ng quan # hñy bá cïng nµy ch©n h×nh d¹ng cò quan bé phËn # 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_tm = GetTask(2); 
Uworld51 = GetTask(51) 
if (Uworld51 == 40) then -- script viet hoa By http://tranhba.com  röa s¹ch oan khuÊt nhiÖm vô tiÕn hµnh trung 
Talk(6,"Uworld51_50","Ng­¬i nghÜ gióp mét trÇn , ta ®· biÕt .","T¹i sao ®­êng thï ch­ëng m«n ®èi víi mét trÇn c«ng tö cã thµnh kiÕn ? thËt lµ xÊu ®Òu lµ m×nh ruét thŞt x­¬ng thŞt ","Mét trÇn nhiÒu lÇn muèn thay ®æi gia quy , ®Ó cho ch­ëng m«n kh«ng vui , l¹i t¨ng thªm bÊt nhiÔm muèn tranh quyÒn , thİch ë ch­ëng m«n tr­íc mÆt nãi mét trÇn ®İch nãi xÊu ","Th× ra lµ ThiÕu L©m cao t¨ng gÆp n¹n cïng kim quèc cã liªn quan , kim quèc lu«n lµ ®em ThiÕu L©m coi lµ c¸i ®inh trong m¾t . mÊy ngµy tr­íc , ta nhËn ®­îc th«ng b¸o , nãi ngµy nhÉn d¹y bİ mËt thu tËp Trung Nguyªn ®İch tuyÖt häc bİ kİp .","Cã chuyÖn nµy ? ngµy ®ã nhÉn d¹y lµ bŞ hoµi nghi nhiÒu nhÊt ","§èi víi , ta muèn l­u l¹i , cho ng­¬i th¸m thİnh tin tøc .") 
elseif (GetFaction() == "tangmen") and (GetSeries() == 1) then 
		if (UTask_tm == 10*256+80) and (HaveItem(36) == 1) then		-- script viet hoa By http://tranhba.com 10¼¶ÈÎÎñÍê³É
L10_prise() 
elseif (UTask_tm == 10*256) and (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com 10 cÊp nhiÖm vô khëi ®éng 
-- script viet hoa By http://tranhba.com  DelItem(36) -- script viet hoa By http://tranhba.com  phßng ngõa nÆng tiÕp nhËn vô sau , nhµ ch¬i nhÆt lªn nhiÖm vô ®¹o cô 
Say("H«m qua bæn täa ®Ö tö ë <color=Red> thµnh ®« phñ <color> lµm viÖc ®İch thêi ®iÓm , kh«ng cÈn thËn bŞ b¸i tay trém ®i bæn m«n ®İch ®éc m«n ¸m khİ <color=Red> ma m­a ch©m <color>, chuyÖn nµy ®Ó cho ch­ëng m«n ®¹i ph¸t l«i ®×nh , nÕu ai cã thÓ gióp bæn täa t×m vÒ ma m­a ch©m , bæn täa nÆng nÒ cã th­ëng ! ", 2,"Trî gióp t×m kiÕm /L10_get_yes","Kh«ng liªn quan chuyÖn ta !/L10_get_no") 
elseif (UTask_tm > 10*256) and (UTask_tm < 20*256) then -- script viet hoa By http://tranhba.com  ®· nhËn ®­îc 10 cÊp nhiÖm vô , ch­a hoµn thµnh 
Talk(1,"","<color=Red> ma m­a ch©m <color> lµ ë <color=Red> thµnh ®« phñ <color> mÊt ®İch , ng­¬i cã thÓ tíi tr­íc trong thµnh ©m thÇm hái th¨m mét phen . ®óng råi , ng­¬i cßn kh«ng cã ra m¾t <color=Red> ma m­a ch©m <color> ®i ? nã lµ mét lo¹i gièng v¨n tu gièng nhau ch©m nhá , toµn th©n ®en nh¸nh .") 
elseif (UTask_tm >= 20*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 10 cÊp nhiÖm vô , ch­a xuÊt s­ 
Talk(1,"","Ng­¬i thËt lµ cã b¶n lÜnh , cã thÓ gióp bæn ®­êng t×m vÒ ma m­a ch©m , chØ cÇn ng­¬i m¹nh kháe tù trë nªn , t­¬ng lai nhÊt ®Şnh tiÒn ®å v« l­îng ") 
else 
Talk(1,"","Hai vŞ c«ng tö bÊt hßa , mÆc dï kh«ng nãi , nh­ng lµ , chuyÖn nµy kh«ng xö lı tèt , nhÊt ®Şnh sÏ cã hËu ho¹n , kh«ng biÕt ch­ëng m«n lµm hµ tİnh to¸n ?") 
end 
else -- script viet hoa By http://tranhba.com  b×nh th­êng ®èi tho¹i 
Talk(1,"","Bæn m«n mÆc dï lÊy ¸m khİ tªn nghe thÊy giang hå , nh­ng lµ bµn vÒ ®Õn vâ c«ng , còng quyÕt kh«ng sÏ tèn víi kú tha m«n ph¸i .") 
end 
end; 

function L10_get_yes() 
Talk(1,"","<color=Red> ma m­a ch©m <color> lµ ë <color=Red> thµnh ®« phñ <color> mÊt ®İch , ng­¬i cã thÓ tíi tr­íc trong thµnh ©m thÇm hái th¨m mét phen . ®óng råi , ng­¬i cßn kh«ng cã ra m¾t <color=Red> ma m­a ch©m <color> ®i ? nã lµ mét lo¹i gièng v¨n tu gièng nhau ch©m nhá , toµn th©n ®en nh¸nh .") 
	SetTask(2, 10*256+20)
AddNote(" ë vâ c«ng phßng gÆp ph¶i ®­êng h¾c , tiÕp nhËn vô <color=Red> ®i thµnh ®« t×m ma m­a ch©m .<color> ") 
Msg2Player("NhËn ma m­a ch©m nhiÖm vô , ®i thµnh ®« t×m ma m­a ch©m ") 
end; 

function refuse() 
Talk(1,"","Bæn m«n ¸m khİ mÊt , ng­¬i lµm sao cã thÓ nãi chuyÖn kh«ng liªn quan ng­¬i ®©y ?") 
end; 

function L10_prise() 
Talk(1,"","Ng­¬i qu¶ nhiªn cã chót b¶n l·nh , cã thÓ gióp bæn täa t×m vÒ ma m­a ch©m , h¶o , bæn täa sÏ d¹y ng­¬i mÊy chiªu , nh×n kü ! ") 
DelItem(36) 
SetRank(26) 
SetTask(2, 20*256) 
-- script viet hoa By http://tranhba.com  AddMagic(43) 
-- script viet hoa By http://tranhba.com  AddMagic(347) 
add_tm(20) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
AddNote("Trë vÒ vâ c«ng phßng , ®ãng ma m­a ch©m cho ®­êng h¾c , hoµn thµnh nhiÖm vô , th¨ng lµm tr¸ng ®inh . ") 
Msg2Player("§ãng ma m­a ch©m , t×m ®­îc ®­êng h¾c , hoµn thµnh ma m­a ch©m nhiÖm vô , th¨ng lµm §­êng m«n tr¸ng ®inh , häc ®­îc §­êng m«n ¸m khİ , ®Şa diÔm háa . ") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - thÕ giíi nhiÖm vô -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function Uworld51_50() 
SetTask(51,50) 
Msg2Player("§­êng h¾c suy ®o¸n , chuyÖn nµy cïng ngµy nhÉn d¹y cã liªn quan , cho ng­¬i ®i dß xĞt tin tøc . ") 
end 
