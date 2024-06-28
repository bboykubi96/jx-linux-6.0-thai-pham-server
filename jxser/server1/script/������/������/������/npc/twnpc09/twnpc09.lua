-- script viet hoa By http://tranhba.com description: Thiªn v­¬ng gióp ®Şa hé ph¸p h¹ thµnh # Thiªn v­¬ng 50 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/28 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nhËp m«n ph¸i nhiÖm vô cÊp bËc yªu cÇu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_tw = GetTask(3) 
if (GetSeries() == 0) and (GetFaction() == "tianwang") then 
if (UTask_tw == 50*256) and (GetLevel() >= 50) then 
Say("GÇn nhÊt n­íc tr¹i trong ®ån ®·i §éng ®×nh hå xuÊt hiÖn <color=Red> n­íc tr¸ch <color> , h¹i chÕt phô cËn rÊt nhiÒu c¸ d©n , lµm lßng ng­êi bµng hoµng , ng­¬i nguyÖn ı ®i ®iÒu tra mét c¸i chuyÖn nµy sao ? ", 2,"NguyÖn ı /L50_get_yes","Xin/mêi kh¸c ph¸i nh÷ng ng­êi kh¸c /L50_get_no") 
		elseif (UTask_tw == 50*256+20) and (HaveItem(95) == 1) then
L50_prise() 
elseif (UTask_tw > 50*256) and (UTask_tw < 60*256) then -- script viet hoa By http://tranhba.com  ®· nhËn ®­îc 50 cÊp nhiÖm vô , ch­a hoµn thµnh 
Talk(1,"","Cã mÊy c¸i ng­êi nh×n thÊy <color=Red> n­íc tr¸ch <color> tõng ë <color=Red> phİa ®«ng <color> ®İch mÆt hå ra kh«ng cã qu¸ , phİa ®«ng bÕn tµu phô cËn cã c¸ <color=Red> ®i th«ng §éng ®×nh hå ®Ó ®İch s¬n ®éng <color> , ta hoµi nghi trong ®éng cã cæ qu¸i !") 
else -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 50 cÊp nhiÖm vô , ch­a xuÊt s­ # thiÕu tØnh ®èi tho¹i # 
Talk(1,"","H«m nay thiªn h¹ thÕ côc lung tung , chØ mong ngµy h÷u bæn bang ") 
end 
elseif (UTask_tw >= 70*256) then -- script viet hoa By http://tranhba.com  ®· xuÊt s­ 
Talk("Mét ngµy lµm huynh ®Ö , c¶ ®êi lµ tay ch©n , ng­¬i ph¶i nhiÒu b¶o träng ") 
else 
Talk(1,"","GÇn ®©y trªn mÆt hå th­êng hiÖn lªn ra ngò th¶i kú mang , kh«ng biÕt lµ hung lµ c¸t ") 
end 
end; 

function L50_get_yes() 
Talk(1,"","Cã mÊy c¸i ng­êi nh×n thÊy <color=Red> n­íc tr¸ch <color> tõng ë <color=Red> phİa ®«ng <color> ®İch mÆt hå ra kh«ng cã qu¸ , phİa ®«ng bÕn tµu phô cËn cã c¸ <color=Red> ®i th«ng §éng ®×nh hå ®Ó ®İch s¬n ®éng <color> , ta hoµi nghi trong ®éng cã cæ qu¸i !") 
	SetTask(3, 50*256+20)
AddNote("§Õn hiÖu lÖnh thai phİa ®«ng thÊy h¹ thµnh , dÉn <color=Red> n­íc tr¸ch nhiÖm vô <color>, ®Õn §éng ®×nh hå phİa d­íi ®i xem mét chót h­ thËt ®i . ") 
Msg2Player("§Õn hiÖu lÖnh thai phİa ®«ng thÊy h¹ thµnh , dÉn n­íc tr¸ch nhiÖm vô , ®Õn §éng ®×nh hå phİa d­íi ®i xem mét chót h­ thËt ®i ") 
end; 

function L50_get_no() 
end; 

function L50_prise() 
Talk(1,"","Khèi nµy ngò th¶i th¹ch kh«ng chØ cã thÓ dÑp yªn lßng ng­êi , cßn cã thÓ lµm gèc gióp mang ®Õn phóc chØ . thËt lµ ngµy h÷u bæn bang a !") 
DelItem(95) 
SetTask(3, 60*256) 
SetRank(48) 
-- script viet hoa By http://tranhba.com  AddMagic(42) 
add_tw(60) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
Msg2Player("Hoµn thµnh n­íc tr¸ch nhiÖm vô , trë thµnh hé gi¸o t­íng qu©n , häc ®­îc vâ c«ng Kim chung tr¸o . ") 
AddNote("Trë l¹i Thiªn v­¬ng gióp , ®em ngò th¶i th¹ch giao cho h¹ thµnh hoµn thµnh nhiÖm vô , trë thµnh hé gi¸o t­íng qu©n . ") 
end; 
