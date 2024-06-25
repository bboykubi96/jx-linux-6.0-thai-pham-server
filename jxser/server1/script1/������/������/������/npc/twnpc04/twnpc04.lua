-- script viet hoa By http://tranhba.com description: Thiªn v­¬ng gióp bªn tr¸i khiÕn cho cæ b¸ch # Thiªn v­¬ng 30 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/25 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nhËp m«n ph¸i nhiÖm vô cÊp bËc yªu cÇu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_tw = GetTask(3) 
if (GetSeries() == 0) and (GetFaction() == "tianwang") then 
if ((UTask_tw == 30*256) and (GetLevel() >= 30) and (GetFaction() == "tianwang")) then 
Say("Nh¾c tíi thËt lµ xui xÎo , ta tr­íc ®ã vµi ngµy ®i mét chuyÕn <color=Red> yÕn tö ®éng <color>, kÕt qu¶ kh«ng cÈn thËn ®em <color=Red> Thiªn v­¬ng lµm <color>. cho vøt bá , Thiªn v­¬ng lµm lµ bæn bang tİn vËt , nÕu nh­ r¬i vµo c­ t©m kh«ng thÓ dß ®­îc ng­êi cña trªn tay , hËu qu¶ thiÕt t­ëng kh«ng chŞu næi !..", 2,"Trî gióp t×m kiÕm Thiªn v­¬ng lµm /L30_get_yes","Kh«ng liªn quan chuyÖn ta !/L30_get_no") 
		elseif (UTask_tw == 30*256+20) and (HaveItem(145) == 1 ) then
L30_prise() 
elseif (UTask_tw > 30*256) and (UTask_tw < 40*256) then -- script viet hoa By http://tranhba.com  ®· nhËn ®­îc 30 cÊp nhiÖm vô , ch­a hoµn thµnh 
Talk(1,"","<color=Red> Thiªn v­¬ng lµm <color> lµ ë <color=Red> miªu lÜnh yÕn tö ®éng <color> mÊt ®İch , nÕu nh­ ng­¬i cã thÓ gióp ta t×m trë vÒ , ta b¶o cö ng­¬i lµm ch­ëng ®µ ®Çu lÜnh .") 
elseif (UTask_tw >= 40*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 30 cÊp nhiÖm vô , ch­a xuÊt s­ 
Talk(1,"","H¶o huynh ®Ö # ng­¬i gióp ta mét ®¹i mang !") 
else 
Talk(1,"","Chóng ta b¾c kh¸ng qu©n Kim , nam phßng Tèng triÒu , hai bªn t¸c chiÕn còng kh«ng dÔ dµng ") 
end 
elseif (UTask_tw >= 70*256) then -- script viet hoa By http://tranhba.com  ®· xuÊt s­ 
Talk(1,"","XuÊt s­ sau kh«ng nªn quªn th­êng trë vÒ s­ m«n xem mét chót c¸c huynh ®Ö ") 
else 
Talk(1,"","§õng xem bang chñ lµ mét n÷ l­u h¹ng ng­êi , nh­ng lµ thèng trŞ bæn bang ©n uy còng thi # th­ëng ph¹t ph©n minh , mäi ng­êi trong lßng còng ®Ünh kİnh sî nµng .") 
end 
end; 

function L30_get_yes() 
Talk(1,"","<color=Red> Thiªn v­¬ng lµm <color> lµ ë <color=Red> miªu lÜnh yÕn tö ®éng <color> mÊt ®İch , nÕu nh­ ng­¬i cã thÓ gióp ta t×m trë vÒ , ta b¶o cö ng­¬i lµm ch­ëng ®µ ®Çu lÜnh .") 
	SetTask(3, 30*256+20)
AddNote(" ë t©y thiªn cöa ®iÖn nhËn <color=red> Thiªn v­¬ng lµm nhiÖm vô <color>, ®Õn yÕn tö ®éng t×m Thiªn v­¬ng lµm ") 
Msg2Player(" ë t©y thiªn cöa ®iÖn nhËn Thiªn v­¬ng lµm nhiÖm vô , ®Õn yÕn tö ®éng t×m Thiªn v­¬ng lµm ") 
end; 

function L30_get_no() 
end; 

function L30_prise() 
Talk(1,"","ThËt ra th× Thiªn v­¬ng lµm ë thóy khãi ®éng bŞ c­êng ®¹o vøt bá , may m¾n lµ l¹i t×m mét chót trë l¹i , nÕu kh«ng sÏ bŞ bang chñ tr¸ch cø ®İch , ng­¬i thËt lµ gióp ta mét ®¹i mang . vèn khiÕn cho nãi chuyÖn coi lµ tho¹i , nhÊt ®Şnh phong ng­¬i lµm ch­ëng ®µ thñ lÜnh .") 
DelItem(145) 
SetRank(46) 
SetTask(3, 40*256) 
-- script viet hoa By http://tranhba.com  AddMagic(37) 
-- script viet hoa By http://tranhba.com  AddMagic(35) 
-- script viet hoa By http://tranhba.com  AddMagic(31) 
add_tw(40) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
Msg2Player("§em Thiªn v­¬ng lµm giao cho cæ b¸ch , hoµn thµnh Thiªn v­¬ng lµm nhiÖm vô . bŞ ®ãng cöa v× # ch­ëng ®µ thñ lÜnh . häc ®­îc b¸t ph­¬ng chĞm , d­¬ng quan ba ®iÖp , ®­îc v©n quyÕt . ") 
AddNote("Trë l¹i Thiªn v­¬ng ®¶o ®em Thiªn v­¬ng lµm giao cho cæ b¸ch , hoµn thµnh nhiÖm vô , bŞ ®ãng cöa v× # ch­ëng ®µ thñ lÜnh ") 
end; 
