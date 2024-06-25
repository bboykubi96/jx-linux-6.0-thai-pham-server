-- script viet hoa By http://tranhba.com description: ngµy nhÉn d¹y nhËt nguyÖt ®µn chñ 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/18 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nhËp m«n ph¸i nhiÖm vô cÊp bËc yªu cÇu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_tr = GetTask(4) 
Uworld51 = GetTask(51) 
if (Uworld51 == 50) then -- script viet hoa By http://tranhba.com  röa s¹ch oan khuÊt nhiÖm vô tiÕn hµnh trung 
Talk(5,"Uworld51_55","Nam binh gian tr¸ , chóng ta lÇn nµy kÕ ly gi¸n còng kh«ng thua bëi h¾n cöa , ha ha . bän hä tù giÕt lÉn nhau , tiÕt lé bİ tŞch cho chóng ta , ng­êi nam triÒu míi ®· hÕt , cã g× ph¶i sî ? ","Nghe nãi lÇn tr­íc giÕt mÊy ThiÕu L©m ®Ö tö ®Ó cho bän hä cïng §­êng m«n l©m vµo khñng ho¶ng , lÇn nµy n÷a giÕt mÊy ... d¹/õ , C¸i Bang l·o thŞ cïng chóng ta ®èi nghŞch , lÇn nµy giÕt C¸i Bang ®Ö tö . ®óng råi , ë vµo cóc ®éng phôc kİch bän hä .","Ng­¬i lµ ai ? tíi n¬i nµy lµm g× ?","T¹i h¹ míi tíi , liÒn gÆp ph¶i ®¹i danh ®Ønh ®Ønh # ngäc thô l©m phong # th«ng minh tuyÖt ®Ønh # vâ c«ng thiªn h¹ thø t­ ®İch nhËt nguyÖt ®µn chñ « ®µn chñ , nhÊt thêi kİch ®éng . ®· l©u kh«ng gÆp ®µn chñ liÔu , cµng ngµy cµng uy phong .","Ha ha ha , h¶o .") 
elseif (GetSeries() == 3) and (GetFaction() == "tianren") then 
if (UTask_tr == 20*256) and (GetLevel() >= 20) then 
AddNote(" ë trªn trêi nhÉn d¹y qu¶ng tr­êng thÊy nhËt nguyÖt ®µn chñ « hîp t¸t , tr¶ lêi vÊn ®Ò cña h¾n . ") 
Msg2Player(" ë trªn trêi nhÉn d¹y qu¶ng tr­êng thÊy nhËt nguyÖt ®µn chñ « hîp t¸t , tr¶ lêi vÊn ®Ò cña h¾n . ") 
Talk(8,"L20_get_test","Ai nha , nĞm xong råi , kh«ng cã mÆt gÆp ng­êi liÔu .....","ChuyÖn g× ?","Ta bŞ khi dÔ !","¤ ®µn chñ vâ c«ng c¸i thÕ , ai d¸m khi dÔ ng­¬i ? ","Mét ®øa bĞ !","§øa trÎ ?","Ta ë phİa ®«ng trong rõng c©y gÆp ph¶i mét ®øa bĞ , kia tiÓu quû hái ta mét c¸i vÊn ®Ò , nh­ng lµ ta tr¶ lêi kh«ng ®­îc , cho nªn , ®em nhËt nguyÖt song ®æi phiªn thua bëi h¾n liÔu . chuyÖn nµy nÕu nh­ truyÒn tíi bªn ngoµi , sÏ bŞ ng­êi c­êi chÕt . mÆc dï ta vâ c«ng cao c­êng , nh­ng lµ kh«ng thÓ cÇm vÒ , thÕ nµo cßn cã mÆt mòi ë trªn giang hå x«ng ®©y ?","VÊn ®Ò rèt cuéc lµ nh­ thÕ nµo ?") 
		elseif (UTask_tr == 20*256+10) then 
L20_get_test() 
		elseif (UTask_tr == 20*256+20) then 
L20_get() 
		elseif (UTask_tr == 20*256+80) and (HaveItem(58) == 1 ) then
L20_prise() 
		elseif (UTask_tr == 30*256+20) then	-- script viet hoa By http://tranhba.com ½Óµ½30¼¶ÈÎÎñ£¬ÒªÖ±½ÓÇĞ»»µ½ÇØÊ¼»ÊÁê
Say("Muèn ta ®­a ng­¬i ®i TÇn Thñy Hoµng l¨ng ? kh«ng thµnh vÊn ®Ò , lÊy tr­íc n¨m tr¨m l­îng b¹c tíi !", 2, " lµm phiÒn ng­¬i ®­a ta ®o¹n ®­êng /L30_deliver_yes","Ta cßn lµ m×nh ®i th«i ! /L30_deliver_no") 
		elseif (UTask_tr == 40*256+20) then	-- script viet hoa By http://tranhba.com ½Óµ½40¼¶ÈÎÎñ£¬ÒªÖ±½ÓÇĞ»»µ½½£¸óÖĞÔ­
Say("Muèn ta ®­a ng­¬i ®i TÇn Thñy Hoµng l¨ng ? kh«ng thµnh vÊn ®Ò , lÊy tr­íc b¶y tr¨m l­îng b¹c tíi !", 2, " lµm phiÒn ng­¬i ®­a ta ®o¹n ®­êng /L40_deliver_yes","Ta cßn lµ m×nh ®i th«i ! /L40_deliver_no") 
		elseif (UTask_tr >= 20*256+30) and (UTask_tr < 20*256+80) then					-- script viet hoa By http://tranhba.com ÒÑ¾­½Óµ½20¼¶ÈÎÎñ£¬ÉĞÎ´Íê³É
Talk(1,"","Kia tiÓu quû ®ang ë <color=Red> mÆt ®«ng ®İch rõng c©y <color> trong , thay ta thËt tèt d¹y dç h¾n ") 
elseif (UTask_tr >= 30*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 20 cÊp nhiÖm vô , ch­a xuÊt s­ 
Talk(1,"","MÆc dï vâ c«ng cña ng­¬i kh«ng cã ta lîi h¹i , bÊt qu¸ ng­¬i cã thÓ gióp ta ®o¹t l¹i nhËt nguyÖt song ®æi phiªn , ta còng tßng phôc ng­¬i !") 
else 
Talk(4, "","BiÕt ta lµ ai kh«ng ? ta chİnh lµ ngäc thô l©m phong # th«ng minh tuyÖt ®Ønh # vâ c«ng thiªn h¹ thø t­ ®İch nhËt nguyÖt ®µn chñ « hîp t¸t !","Vâ c«ng thiªn h¹ thø t­ ?","§óng vËy , gi¸o chñ cña chóng ta vâ c«ng ®Ö nhÊt thiªn h¹ , trõ gi¸o chñ # còng luËt İch c¸ch cïng ®oan méc duÖ ra , ta chİnh lµ lîi h¹i nhÊt n÷a/råi # nh­ thÕ nµo ? ng­¬i cã tøc giËn hay kh«ng ? kh«ng phôc tho¹i sÏ ®Ó cho ng­¬i nÕm thö mét chót ta nhËt nguyÖt song ®æi phiªn ®İch lîi h¹i !","Tßng phôc # tßng phôc !") 
end 
elseif (GetTask(30) == 5) then -- script viet hoa By http://tranhba.com  nhËn ®­îc vò v­¬ng kiÕm nhiÖm vô , muèn trùc tiÕp thiÕt ®æi ®Õn Hoa S¬n 
Say("Muèn ta ®­a ng­¬i ®i TÇn Thñy Hoµng l¨ng ? kh«ng thµnh vÊn ®Ò , lÊy tr­íc n¨m tr¨m l­îng b¹c tíi !", 2, " lµm phiÒn ng­¬i ®­a ta ®o¹n ®­êng /L30_deliver_yes","Ta cßn lµ m×nh ®i th«i ! /W30_deliver_no") 
elseif (UTask_tr >= 70*256) then -- script viet hoa By http://tranhba.com  ®· xuÊt s­ 
Talk(1,"","Ng­¬i ph¶i ®i n÷a/råi ? ta sÏ nhí ng­¬i ®İch , « « « ") 
else 
Talk(4, "","BiÕt ta lµ ai kh«ng ? ta chİnh lµ ngäc thô l©m phong # th«ng minh tuyÖt ®Ønh # vâ c«ng thiªn h¹ thø t­ ®İch nhËt nguyÖt ®µn chñ « hîp t¸t !","Vâ c«ng thiªn h¹ thø t­ ?","§óng vËy , gi¸o chñ cña chóng ta vâ c«ng ®Ö nhÊt thiªn h¹ , trõ gi¸o chñ # còng luËt İch c¸ch cïng ®oan méc duÖ ra , ta chİnh lµ lîi h¹i nhÊt n÷a/råi # nh­ thÕ nµo ? ng­¬i cã tøc giËn hay kh«ng ? kh«ng phôc tho¹i sÏ ®Ó cho ng­¬i nÕm thö mét chót ta nhËt nguyÖt song ®æi phiªn ®İch lîi h¹i !","Tßng phôc # tßng phôc !") 
end 
end; 

function L20_get_test() 
Say("Cã tÊt c¶ h­íng b¾c ®İch bß , tr­íc h­íng quÑo ph¶i t¹i chç chuyÓn ba vßng , sau ®ã vÒ phİa sau chuyÓn t¹i chç chuyÓn ba vßng , tiÕp theo n÷a h­íng quÑo ph¶i , lóc nµy c¸i ®u«i cña nã h­íng kia ?", 5,"Nh¾m h­íng ®«ng /L20_get_fail","H­íng nam /L20_get_fail","VÒ phİa t©y /L20_get_fail","H­íng b¾c /L20_get_fail","H­íng ®Şa /L20_get_pre") 
end; 

function L20_get_fail() 
	SetTask(4, 20*256+10)
Talk(1,"","Th× ra lµ ng­¬i còng kh«ng biÕt a , thËt lµ mét ngu ngèc !") 
end; 

function L20_get_pre() 
	SetTask(4,20*256+20)
Talk(2, "L20_get","Ha ha ha , c¸i vÊn ®Ò nµy qu¸ ®¬n gi¶n n÷a/råi # bÊt kÓ ®Çu kia ®Çn bß thÕ nµo chuyÓn , c¸i ®u«i cña nã ®Òu lµ h­íng ®Şa ®İch nha !", "#! oa # ng­¬i qu¸ th«ng minh n÷a/råi # kh«ng b»ng ng­¬i ®i gióp ta gi¸o huÊn mét chót c¸i ®ã tiÓu quû , t×m h¾n ph¶i vÒ <color=Red> nhËt nguyÖt song ®æi phiªn <color> .") 
end; 

function L20_get() 
Say("Coi nh­ ta van ng­¬i , gióp mét tay ®i ?", 2,"§­îc råi , ta thö mét chót /L20_get_yes","Ta cßn kh¸c biÖt chuyÖn cña . /L20_get_no") 
end; 

function L20_get_yes() 
Talk(1,"","ThËt tèt qu¸ # kia tiÓu quû ®ang ë <color=Red> mÆt ®«ng ®İch rõng c©y <color> trong , thay ta thËt tèt d¹y dç h¾n ") 
	SetTask(4, 20*256+30)
AddNote("Th«ng minh ®øa trÎ nhiÖm vô # t×m ®­îc ®øa trÎ , b¾t ®­îc nhËt nguyÖt song ®æi phiªn cho « hîp t¸t . ") 
Msg2Player("Th«ng minh ®øa trÎ nhiÖm vô # t×m ®­îc ®øa trÎ , b¾t ®­îc nhËt nguyÖt song ®æi phiªn cho « hîp t¸t . ") 
end; 

function L20_get_no() 
Talk(1,"","Ngay c¶ ng­¬i còng kh«ng chŞu gióp ta , ta cßn cã thÓ t×m ai a , « « « .") 
end; 

function L20_prise() 
Talk(1,"","Ng­¬i gióp ta ph¶i vÒ nhËt nguyÖt song ®æi phiªn , ®¬n gi¶n chİnh lµ ta ©n nh©n cøu m¹ng a # kh«ng kh«ng kh«ng , ng­¬i ®¬n gi¶n chİnh lµ ta t¸i sanh phô mÉu !") 
SetRank(57) 
DelItem(58) 
SetTask(4, 30*256) 
-- script viet hoa By http://tranhba.com  AddMagic(137) 
add_tr(30) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
Msg2Player("Ng­¬i th¨ng lµm ngµy nhÉn tö sÜ , häc ®­îc ¶o ¶nh bay hå ") 
AddNote("§em nhËt nguyÖt song ®æi phiªn cho « hîp t¸t , hoµn thµnh th«ng minh ®øa trÎ nhiÖm vô , th¨ng lµm tö sÜ ") 
end; 

function W30_deliver_yes() -- script viet hoa By http://tranhba.com  vò v­¬ng kiÕm nhiÖm vô , muèn trùc tiÕp thiÕt ®æi ®Õn Hoa S¬n 
if (GetCash() >= 300) then 
Pay(300) 
NewWorld(2, 2288, 4091) 
else 
Talk(1,"","Kh«ng cã b¹c nh­ng xin/mêi kh«ng tíi ta ®¹i danh ®Ønh ®Ønh # ngäc thô l©m phong # th«ng minh tuyÖt ®Ønh # vâ c«ng thiªn h¹ thø t­ ®İch nhËt nguyÖt ®µn chñ « hîp t¸t .") 
end 
end; 

function W30_deliver_no() 
Talk(1,"","§iÓm nµy b¹c cã thÓ mua ®­îc c¸i g× ?") 
end; 

function L30_deliver_yes() -- script viet hoa By http://tranhba.com  ngµy nhÉn 30 cÊp nhiÖm vô , muèn trùc tiÕp thiÕt ®æi ®Õn TÇn Thñy Hoµng l¨ng 
if (GetCash() >= 500) then 
Pay(500) 
NewWorld(7, 2235, 2847) 
else 
Talk(1,"","Ai còng biÕt , kh«ng cã b¹c nh­ng xin/mêi kh«ng tíi ta ®¹i danh ®Ønh ®Ønh # ngäc thô l©m phong # th«ng minh tuyÖt ®Ønh # vâ c«ng thiªn h¹ thø t­ ®İch nhËt nguyÖt ®µn chñ « hîp t¸t .") 
end 
end; 

function L30_deliver_no() 
Talk(1,"","Hao tµi tiªu tai nghe nãi qua ch­a ? nh­ vËy İt b¹c còng kh«ng bá ®­îc hoa , cÈn thËn mÖnh tang trªn ®­êng a !") 
end; 

function L40_deliver_yes() -- script viet hoa By http://tranhba.com 40 cÊp nhiÖm vô , muèn trùc tiÕp thiÕt ®æi ®Õn kiÕm c¸c Trung Nguyªn 
if (GetCash() >= 700) then 
Pay(700) 
NewWorld(43, 1695, 3200) 
else 
Talk(1,"","Ai còng biÕt , kh«ng cã b¹c nh­ng xin/mêi kh«ng tíi ta ®¹i danh ®Ønh ®Ønh # ngäc thô l©m phong # th«ng minh tuyÖt ®Ønh # vâ c«ng thiªn h¹ thø t­ ®İch nhËt nguyÖt ®µn chñ « hîp t¸t .") 
end 
end; 

function L40_deliver_no() 
Talk(1,"","VËy ng­¬i tõ tõ ®i th«i , cÈn thËn l¹c ®­êng , h¾c h¾c !") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - thÕ giíi nhiÖm vô -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function Uworld51_55() 
SetTask(51,55) 
Msg2Player("Nghe lĞn « hîp t¸t nãi chuyÖn , chuyÖn nµy qu¶ nhiªn tõ ngµy nhÉn d¹y lµm , mau trë vÒ b¸o tin . ") 
end 
