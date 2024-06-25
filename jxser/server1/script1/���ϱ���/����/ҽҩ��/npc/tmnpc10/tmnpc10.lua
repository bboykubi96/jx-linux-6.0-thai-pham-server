-- script viet hoa By http://tranhba.com  t©y nam b¾c khu \ §­êng m«n \ y d­îc phßng \npc\tmnpc10.lua 
-- script viet hoa By http://tranhba.com description: §­êng m«n ®­êng d· 40 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/12 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nhËp m«n ph¸i nhiÖm vô cÊp bËc yªu cÇu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 
-- script viet hoa By http://tranhba.com  Update: xiaoyang(2004\4\13) gia nhËp 90 cÊp n¨m ®éc nhiÖm vô 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_tm = GetTask(2) 
Uworld124 = GetTask(124) 
if(GetFaction() == "tangmen") and (GetSeries() == 1) then 
if((UTask_tm == 40*256) and (GetLevel() >= 40) and (GetFaction() == "tangmen")) then -- script viet hoa By http://tranhba.com 40 cÊp nhiÖm vô khëi ®éng 
Talk(4,"L40_get","Ta §­êng mç mét ®êi ng­êi ta ®­îc ta lµm , chØ cã mét chuyÖn , cho tíi h«m nay vÉn lµm l·o phu c¶nh c¶nh víi nghi ngê ", " l·o phu tõng cã mét m¹c nghÞch chi giao gäi c¶nh tö kú , m­êi n¨m tr­íc , c¶nh tö kú ®Ých thª tö m¾c ph¶i qu¸i bÖnh , ®i cÇu ta ch÷a trÞ , nh­ng lµ bæn m«n sím cã m«n quy , kh«ng ph¶i lµ §­êng m«n ng­êi trong , nhÊt luËt kh«ng ph¶i ch÷a trÞ . l·o phu h¹n vu m«n quy , bÊt luËn c¶nh tö kú cÇu khÈn thÕ nµo , kiªn tr× kh«ng chÞu xuÊt thñ cøu gióp , kÕt qu¶ thª tö cña h¾n kh«ng l©u sau bëi v× bÖnh qua ®êi , ta hai ng­êi tõ nay ph¶n béi thµnh thï ","MÊy ngµy tr­íc ®©y l·o phu nhËn ®­îc c¶nh tö kú ®Ých mét phong th¬ , ­íc l·o phu gÆp mÆt tù cùu , ta biÕt h¾n lµ tíi t×m ta b¸o thï , ta thiÕu h¾n mét c¸i m¹ng , tr¶ l¹i cho h¾n vèn lµ còng kh«ng cã c¸i g× , ch¼ng qua lµ l·o phu thËt sù lµ kh«ng mÆt mòi nh×n b¹n cò a ! ","S­ thóc , chuyÖn nµy nguyªn kh«ng tr¸ch ng­¬i , ng­¬i h¼n h­íng h¾n gi¶i thÝch râ nguyªn nh©n , ®Ó cho h¾n hiÓu ng­¬i n¨m ®ã khã xö .") 
		elseif(UTask_tm == 40*256+40) then 
Talk(3, "L40_step44","§­êng d· s­ thóc , c¶nh tiÒn bèi ®Ých n÷ nhi ®­îc cïng mÉu th©n gièng nhau qu¸i bÖnh , t¸nh m¹ng nguy ë ®¸n tÞch , nÕu nh­ ng­¬i cã thÓ cøu sèng n÷ nhi cña h¾n , h¾n nhÊt ®Þnh sÏ kh«ng n÷a tr¸ch ng­¬i ®Ých !","Nh­ng lµ m«n quy .....","S­ thóc , ng­¬i yªn t©m , ta ®· nghÜ ra liÔu mét biÖn ph¸p tèt , ng­¬i kh«ng cÇn ph¸ h­ m«n quy còng cã thÓ cøu ng­êi , chØ cÇn ng­¬i ®em ph­¬ng thuèc nãi cho ta biÕt lµ ®­îc !") 
		elseif(UTask_tm == 40*256+80) then
Talk(4, "L40_prise","§­êng d· s­ thóc , ng­¬i khai ®Ých ph­¬ng thuèc qu¶ nhiªn h÷u hiÖu , c¶nh tiÒn bèi ®Ých n÷ nhi ®­îc cøu råi # h¾n ®· kh«ng hÒ n÷a tr¸ch ng­¬i !","Cã thËt kh«ng ? thËt tèt qu¸ # bÊt qu¸ h¾n ®Ých n÷ nhi còng kh«ng ph¶i lµ ta cøu ®Ých , mµ lµ ng­¬i cøu ®Ých , ng­¬i hiÓu ý cña ta kh«ng ?","HiÓu # chuyÖn nµy cïng s­ thóc kh«ng liªn quan , lµ ta lµm ! ","Ng­¬i qu¶ nhiªn c¬ trÝ , l·o phu kh«ng nh×n lÇm ng­¬i , c¸p c¸p c¸p c¸p ! ") 
		elseif(UTask_tm > 40*256) and (UTask_tm < 40*256+60) then					-- script viet hoa By http://tranhba.com 40¼¶ÈÎÎñÖÐÆÕÍ¨¶Ô»°
Talk(1,"","<color=Red> c¶nh tö kú <color> mét mùc Èn c­ ë <color=Red> nói Thanh Thµnh ®Ých t©y bé <color>.") 
		elseif(UTask_tm >= 40*256+60) and (UTask_tm < 50*256) then					-- script viet hoa By http://tranhba.com ÉÐÎ´Íê³É40¼¶ÈÎÎñ
Talk(1,"","D­îc liÖu tæng céng cã n¨m lo¹i #<color=Red> thiÒm thõ ®Ých da <color> , <color=Red> r¾n ®éc ®Ých ®¶m <color>#<<color=Red> anh tóc ®Ých x¸c <color>#<color=Red> con bß c¹p ®Ých ®u«i <color>#<color=Red> c­¬ng tµm ®Ých ®Çu <color> , nh÷ng d­îc liÖu nµy ë <color=Red> nói Thanh Thµnh ®«ng b¾c <color> ®Ých <color=Red> thanh d­¬ng ngän nói <color> t­¬ng ®èi nhiÒu .") 
elseif(UTask_tm >= 50*256) and (GetFaction() == "tangmen") then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 40 cÊp nhiÖm vô , ch­a xuÊt s­ 
Talk(1,"","Ng­¬i gióp l·o phu hãa gi¶i ®o¹n nµy m­êi n¨m ©n o¸n , thËt kh«ng hiÓu thÕ nµo c¶m t¹ ng­¬i ") 
else 
Talk(1,"","B»ng h÷u trë mÆt , thËt lµm cho lßng ng­êi ®au / th­¬ng yªu !") 
end 
elseif (Uworld124 == 20) and (HaveItem(385) == 1) then 
Talk (2,"Uworld_wdutask","§­êng tiªn sinh , n¬i nµy cã phong th­ , mêi/xin ng­¬i xem qua !","§em nã nÐm , ta kh«ng nh×n !") 
elseif (Uworld124 == 20) then 
Msg2Player("Tin/th¬ cã ph¶i hay kh«ng r¬i ë trªn ®­êng ? nhanh ®i t×m mét chót ") 
elseif (Uworld124 == 25) then 
Talk (15,"Uworld_wdutask2","ChuyÖn g× ?","TiÓu tö , ng­¬i mau bá m¹ng , biÕt kh«ng ?","Nga , t¹i h¹ ngu muéi !","NÕu nh­ ta ë Ngò ®éc gi¸o kh«ng cã néi gian , h«m nay liÒn trung v©n l·o nhi ®Ých kÕ liÔu . phong th­ nµy lµ kh«ng ph¶i lµ v©n kh«ng tµ ®Ó cho ng­¬i mang tíi ? ","§èi víi .","Ha ha , ng­¬i tróng kÕ , phong th­ nµy cã v« h×nh ®Ých ®éc , bªn ngoµi c¸i g× còng kh«ng thÊy ®­îc , nh­ng lµ , më ra ®Ých thêi ®iÓm sÏ nhiÔu lo¹n kinh m¹ch , v©n l·o NhÞ vèn lµ muèn h¹i ta , kh«ng ®em ng­êi kh¸c t¸nh m¹ng coi ra g× .","¤ « , lµm sao b©y giê , tiªn sinh ?","Kh«ng cÇn lo l¾ng , v©n l·o nhi th­êng h¹i ta , lµ bëi v× ta th­êng cøu h¾n lµm h¹i ng­êi , bÖnh cña ng­¬i giao cho l·o phu .","§­êng d· sö dông néi c«ng v× ng­¬i trõ ®éc , ng­¬i c¶m gi¸c cã ngµn qu¶ ®¹n ®¸nh rít xuèng liÔu .","§­êng d· # may nhê ph¸t hiÖn sím , nÕu kh«ng ng­¬i nhÊt ®Þnh ph¶i chÕt .","C¶m t¹ §­êng l·o gia .","Kh«ng ph¶i lµ b¹ch lµm , ng­¬i gióp ta mang phong th­ nµy trë vÒ , ta ®· th¶ nh÷ng kh¸c ®éc d­îc , chØ cÇn ng­¬i nãi lµ ®· ph¸t hiÖn ©m m­u cña h¾n , h¾n liÒn lËp tøc më ra tin cËy nh×n , khi ®ã , sÏ cã ng­êi lÊy tÝnh mÖnh cña h¾n .","V©n kh«ng tµ dông ®éc h¹i ng­êi , ta nhÊt ®Þnh sÏ kh«ng bá qua h¾n .","Ng­¬i uèng hoµn gi¶i d­îc liÒn lªn ®­êng ®i .","Tèt ") 
elseif(Uworld124 == 30 ) and (HaveItem(386) == 0) then 
Talk (1,"","TiÓu tö , tin/th¬ ë n¬i nµo , cÈn thËn mét chót , v©n l·o tÆc kh«ng dÔ dµng ®èi phã . ") 
AddEventItem(386) 
Msg2Player("TiÕp nhËn ®­êng d· ®Ých tin/th¬ ") 
elseif(UTask_tm == 70*256) then -- script viet hoa By http://tranhba.com  ®· xuÊt s­ 
Talk(1,"","Cã r·nh rçi tíi cïng ta uèng r­îu !") 
else -- script viet hoa By http://tranhba.com  kh«ng hoµn thµnh 40 cÊp nhiÖm vô # thiÕu tØnh ®èi tho¹i # 
Talk(1,"","§­êng mç nhÊt ng«n ký xuÊt tø m· nan truy !") 
end 
end; 

function L40_step44() 
	SetTask(2, 40*256+60)
AddNote("Trë vÒ y d­îc phßng thÊy ®­êng d· , biÕt ph­¬ng thuèc bao gåm # thiÒm thõ ®Ých da , r¾n ®éc ®Ých ®¶m , anh tóc ®Ých x¸c , con bß c¹p ®Ých ®u«i , c­¬ng tµm ®Ých ®Çu .") 
Msg2Player("# ®i nói Thanh Thµnh , ®Õn thanh d­¬ng ngän nói t×m d­îc liÖu ") 
Talk(2,"","ChuyÖn ®· nh­ thÕ , muèn trÞ bÖnh d­îc liÖu cÇn thiÕt tæng céng cã n¨m lo¹i #<color=Red> thiÒm thõ ®Ých da <color> , <color=Red> r¾n ®éc ®Ých ®¶m <color>#<<color=Red> anh tóc ®Ých x¸c <color>#<color=Red> con bß c¹p ®Ých ®u«i <color>#<color=Red> c­¬ng tµm ®Ých ®Çu <color> , nh÷ng d­îc liÖu nµy ë <color=Red> nói Thanh Thµnh ®«ng b¾c <color> ®Ých <color=Red> thanh d­¬ng ngän nói <color> t­¬ng ®èi nhiÒu , bÊt qu¸ n¬i ®ã th­êng cã <color=Red> h¾c ­ng <color>#<color=Red> hung thøu <color>#<color=Red> linh ®iªu <color> ra kh«ng cã , ng­¬i ph¶i cÈn thËn !") 
end; 

function L40_get() 
Say("H¾n hËn ta , thÊy chÕt mµ kh«ng cøu , lµm sao cã thÓ nghe ta gi¶i thÝch .", 2,"Hãa gi¶i gi÷a hai ng­êi ®Ých ©n o¸n /L40_get_yes","Ta kh«ng thÓ gióp ng­¬i c¸i g× /L40_get_no") 
end; 

function L40_get_yes() 
Talk(1,"","<color=Red> c¶nh tö kú <color> mét mùc Èn c­ ë <color=Red> nói Thanh Thµnh ®Ých t©y bé <color>.") 
	SetTask(2, 40*256+20)
AddNote(" ë y d­îc phßng thÊy ®­êng d· , nhËn <color=red> c¶nh tö kú nhiÖm vô <color>, hãa gi¶i ®­êng d· cïng c¶nh tö kú gi÷a ®Ých ©n o¸n ") 
Msg2Player("C¶nh tö kú nhiÖm vô # hãa gi¶i ®­êng d· cïng c¶nh tö kú gi÷a ®Ých ©n o¸n ") 
end; 

function L40_get_no() 
end; 

function L40_prise() 
SetRank(29) 
SetTask(2, 50*256) 
-- script viet hoa By http://tranhba.com  AddMagic(345) 
add_tm(50) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®Ých hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
Msg2Player("Chóc mõng ng­¬i th¨ng lµm vµo c¸c ®Ö tö , cã thÓ häc ®­îc §­êng m«n hµn b¨ng ®©m vâ c«ng . ") 
AddNote("§Õn §­êng m«n d­îc phßng , phôc mÖnh ®­êng d· , hoµn thµnh c¶nh tö kú nhiÖm vô , th¨ng lµm vµo c¸c ®Ö tö . ") 
end; 

function Uworld_wdutask() 
DelItem(385) 
Msg2Player("Ng­¬i nÐm v©n kh«ng tµ ®Ých tin/th¬ ") 
SetTask(124,25) 
end 

function Uworld_wdutask2() 
AddEventItem(386) 
Msg2Player("§éc tè ®· mæ hoµn , nhËn ®­îc ®­êng d· ®Ých tin/th¬ , giao cho v©n kh«ng tµ ") 
AddNote("Mang ®­êng d· ®Ých th¬ håi ©m cho v©n kh«ng tµ ") 
SetTask(124,30) 
end 
