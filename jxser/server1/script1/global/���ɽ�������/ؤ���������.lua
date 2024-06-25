-- script viet hoa By http://tranhba.com  c¸c m«n ph¸i tiÕp dÉn ®Ö tö ch©n vèn  C¸i Bang 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-10-27) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-05-25) thÓ dïng/uèng kü n¨ng toµn khai söa ®æi  ®iÒu dông bªn ngoµi v¨n kiÖn ph­¬ng thøc  
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
npc_name = "§Ö tö 3 tói C¸i Bang "

Include("\\script\\global\\g7vn\\g7configall.lua")

function default_talk()

local nDate = tonumber(date("%Y%m%d%H%M"))
if nDate <= ThoiGianHetHanDiemTP then
	Say("§óng vµo lóc <color=yellow>"..ThoiGianOpenStr.."<color> míi b¾t ®Çu chİnh thøc khai më m¸y chñ");
	return 1
end

player_Faction = GetFaction() 
Uworld1000 = nt_getTask(1000) 
if (( Uworld1000 == 240 ) or ( Uworld1000 == 250 )) and ( GetLastFactionNumber() == 6 ) then 
nt_setTask(1000,250) 
Talk(1,"Uworld1000_jiaoyugaibang","Ng­¬i ®· lµ ®Ö tö bæn m«n , kh«ng cÇn ®i , cã thÓ trùc tiÕp cïng Long nhi gÆp mÆt nãi .") 
elseif (player_Faction == "cuiyan") then 
Talk(1,"","Nghe tiÕng ®· l©u thóy khãi m«n h¹ c« n­¬ng xinh ®Ñp l¹i hiÒn lµnh , vŞ c« n­¬ng nµy lµ tíi khen th­ëng khiÕu hãa tö mÊy r­îu tiÒn sao ? ") 
elseif (player_Faction == "emei") then 
Talk(1,"","KhiÕu hãa tö ®èi víi Nga Mi vâ c«ng kú thuËt kİnh ng­ìng ®· l©u , h«m nay nh×n thÊy , hiÖp cèt nhu trµng , nh©n t©m nh©n thuËt qu¶ nhiªn danh bÊt h­ truyÒn . ") 
elseif (player_Faction == "tangmen") then 
Talk(1,"","§­êng m«n ¸m khİ mÆc dï nghe thÊy ng­êi biÕn s¾c , nh­ng cuèi cïng lµ khĞo lĞo c«ng phu , thËt ra th× quı m«n ®ao ph¸p kh«ng kĞm , ë ®ã phİa trªn h¹ c«ng phu còng ch­a ch¾c tèn cho ng­êi kh¸c . ") 
elseif (player_Faction == "wudu") then 
Talk(1,"","Tõ x­a ch¸nh tµ bÊt l­ìng lËp , cæ ®éc thuËt còng d¸m tr­¬ng cuång ") 
elseif (player_Faction == "tianwang") then 
Talk(1,"","Bæn bang cïng ®¾t gióp hîp x­ng thiªn h¹ hai ngµy gióp , ta ca mµ hai còng nªn thËt tèt th©n cËn mét chót . ha ha ") 
elseif (player_Faction == "shaolin") then 
Talk(1,"","Quı ph¸i v× trung hoa vâ thuËt chi nguyªn , h«m nay ë kim quèc hung c¶nh vÉn ®øng v÷ng vµng kh«ng ng· , khiÕu hãa tö thËt béi phôc ®­îc ngay . ") 
elseif (player_Faction == "wudang") then 
Talk(1,"","Vâ §­¬ng ch­ hiÖp danh kh¾p thiªn h¹ , kh«ng hç ta bèi giai m« . xin/mêi thay mÆt khiÕu hãa tö h­íng ®¹o mét ch©n nh©n cïng c¸c vŞ ®¹o tr­ëng h­íng hËu . ") 
elseif (player_Faction == "kunlun") then 
Talk(1,"","Nguyªn lai lµ míi gÇn quËt khëi ®İch C«n L«n ph¸i cao ®å , khã tr¸ch khİ thÕ nh­ vËy l¨ng nh©n . ") 
elseif (player_Faction == "tianren") then 
Talk(1,"","Tuy lµ c¸c v× kú chñ , nh­ng C¸i Bang ngµy nhÉn võa v× tö ®Şch , chóng ta còng kh«ng tÊt nhiÒu lêi , ngµy sau sa tr­êng gÆp l¹i sau ®i . ") 
elseif (player_Faction == "gaibang") then -- script viet hoa By http://tranhba.com  bæn m«n 
Say("Cã c¸i g× muèn ta chuyÓn c¸o bang chñ ®İch , hay lµ muèn ta ®­a ng­¬i trë vÒ tæng ®µ ? ",4,"PhiÒn to¸i ®­a ta trë vÒ /return_yes","B¶n ®å giíi thiÖu /map_help","Kü n¨ng nãi râ /skill_help","Xin/mêi h­íng bang chñ th¨m hái , ®Ö tö hÕt th¶y m¹nh kháe /no") 
elseif (nt_getTask(75) == 255) then -- script viet hoa By http://tranhba.com  häc d· cÇu quyÒn ®İch , kh«ng cho phĞp n÷a nhËp m«n ph¸i 
Talk(1,"","Ng­¬i ®· häc ®­îc d· cÇu quyÒn ! kh«ng thÓ n÷a nhËp m«n ph¸i !") 
else -- script viet hoa By http://tranhba.com  chØ cÇn kh«ng thuéc vÒ 10 c¸ m«n ph¸i , kh«ng hÒ n÷a ®¬n ®éc kiÓm tr¾c “ kh«ng cöa ph¸i ” 
UTask_gb = nt_getTask(8) 
-- script viet hoa By http://tranhba.com  if (GetSeries() == 3) and (GetCamp() == 4) and (GetLevel() >= 50) and (UTask_gb < 5*256) and (nt_getTask(4) == 70*256) then -- script viet hoa By http://tranhba.com  chuyÓn m«n ph¸i nhiÖm vô khëi ®éng 
-- script viet hoa By http://tranhba.com  Say("Th©n lµ ®¹i Tèng nhi n÷ , l¹i nhËn giÆc lµm cha lµ trêi nhÉn hiÖu lùc , ng­¬i thÑn thïng còng kh«ng thÑn thïng ? cßn kh«ng mau khİ ¸m ®Çu minh dïng hµnh ®éng thùc tÕ ®Ó chøng minh ng­¬i tõng quyÒn xİch tö t©m ? ",2," lµ , xin cho ta c¬ héi gia nhËp C¸i Bang v× ®¹i tèng xuÊt lùc /defection_get","Kh«ng cã høng thó /defection_no") 
if ((UTask_gb > 5*256) and (UTask_gb < 10*256)) then -- script viet hoa By http://tranhba.com  nhËp m«n nhiÖm vô trung 
Talk(1,"","Ng­¬i ®ang tiÕn hµnh ®İch nhËp m«n nhiÖm vô lµ ë D­¬ng Ch©u thµnh , kĞo ph¶i qu¸ l©u còng kh«ng qu¸ tèt . ") 
elseif (UTask_gb >= 70*256) and (player_Faction ~= "gaibang") then -- script viet hoa By http://tranhba.com  ®· xuÊt s­ 
Say("Gióp ba ®¹i ®Ö tö  håi l©u kh«ng thÊy , mäi ng­êi mµ ®Òu do t­ëng niÖm ®İch , kh«ng biÕt gÇn ®©y kháe kh«ng ? ",3,"B¶n ®å giíi thiÖu /map_help","Kü n¨ng nãi râ /skill_help","Xin/mêi h­íng bang chñ th¨m hái , ®Ö tö hÕt th¶y m¹nh kháe /no") 
else 
Talk(1,"enroll_select","Bæn bang cã ®Ö nhÊt thiªn h¹ gióp ®İch danh hiÖu , næi danh giang hå , tr¨m n¨m kh«ng suy , trong bang ®Çm rång hang hæ , nh©n tµi bèi xuÊt . ") 
end 
end 
end; 

function defection_get() 
Talk(1,"","NÕu ng­¬i cã hèi c¶i ı , nh­ vËy chØ cÇn h­íng thiªn nhÉn hoµn nhan hång liÖt thØnh cÇu c¸ch d¹y , sau ®ã sÏ tíi t×m chóng ta ng­êi nµo ta bang chñ bÈm râ lµ ®­îc . ") 
	nt_setTask(8,5*256+10)
Msg2Player("Muèn chuyÓn ®Çu C¸i Bang , chØ cÇn h­íng thiªn nhÉn d¹y gi¸o chñ thØnh cÇu c¸ch d¹y , l¹i ®i h­íng C¸i Bang ng­êi nµo ta bang chñ bÈm râ t×nh huèng lµ ®­îc . ") 
AddNote("Muèn chuyÓn ®Çu C¸i Bang , chØ cÇn h­íng thiªn nhÉn d¹y gi¸o chñ thØnh cÇu c¸ch d¹y , l¹i ®i h­íng C¸i Bang ng­êi nµo ta bang chñ bÈm râ t×nh huèng lµ ®­îc . ") 
end 

function defection_no() 
Talk(1,"","Nhµ ch¬i  tõ tr­íc ®Õn giê ®­îc lµm vua thua lµm giÆc , nµo cã nhiÒu nh­ vËy ph©n ®óng sai , huèng chi kia nhµm ch¸n h¸n di chi phßng cµng lµ r¬i vµo h¹ thõa . C¸i Bang ra hÕt lo¹i ng­êi nh­ ng­¬i tµi , xem ra kh«ng ®i còng ®­îc . ") 
end 

function enroll_select() 
UTask_gb = nt_getTask(8) 
UTask_tr = nt_getTask(4) 
if ((UTask_tr > 5*256) and (UTask_tr < 10*256)) then -- script viet hoa By http://tranhba.com  ®· nhËn ngµy nhÉn nhËp m«n nhiÖm vô 
Talk(1,"","Bæn bang cïng ngµy nhÉn lµ tö ®Şch , nÕu ng­¬i nghÜ vµo ngµy nhÉn , vËy ta còng kh«ng cã g× cã thÓ nãi ®İch liÔu . ") 
elseif (GetSeries() == 3) and (GetCamp() == 0) and (UTask_tr < 5*256) and (UTask_gb < 5*256) then -- script viet hoa By http://tranhba.com  háa hÖ  kh«ng/ch­a vµo ngµy nhÉn C¸i Bang 
if (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com  cÊp bËc ®¹t tíi cÊp m­êi 
Say("Cã høng thó hay kh«ng gia nhËp C¸i Bang , mäi ng­êi cã c¬m cïng nhau ¨n , cã r­îu cïng uèng ", 3,"Gia nhËp C¸i Bang /go","Ta suy nghÜ l¹i mét chót /no","HiÓu râ c¸c cöa vâ nghÖ tinh hoa /Uworld1000_knowmagic") 
else 
Talk(1,"","Ng­¬i c¨n c¬ ch­a ®¸nh h¶o , qu¸ sím vµo gióp ®èi víi ng­¬i cã h¹i v« lîi , kh«ng b»ng ®i tr­íc ®em c¨n c¬ ®¸nh kh¸ mét chót , ®Õn cÊp m­êi tíi t×m ta n÷a ®i . ") 
end 
end -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ háa hÖ ®İch còng kh«ng nãi thªm n÷a liÔu . 
end; 

function go() 
Uworld1000 = nt_getTask(1000) 
if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then 
nt_setTask(1000,260) 
end 
SetRevPos(115,53) -- script viet hoa By http://tranhba.com  chê ®îi cung cÊp sèng l¹i ®iÓm 
-- script viet hoa By http://tranhba.com  nt_setTask(8, 10*256) -- script viet hoa By http://tranhba.com  trùc tiÕp nhËp m«n 
SetFaction("gaibang") -- script viet hoa By http://tranhba.com  nhµ ch¬i gia nhËp m«n ph¸i 
SetCamp(1) 
SetCurCamp(1) 
-- script viet hoa By http://tranhba.com  SetRank(37) 
nt_setTask(137,68) 
SetLastFactionNumber(6) 
-- script viet hoa By http://tranhba.com  trùc tiÕp xö lı l­u tr×nh 
nt_setTask(8,10*256) 
SetRank(70) 
Msg2Player("Hoan nghªnh ng­¬i gia nhËp C¸i Bang , trùc tiÕp häc ®­îc bæn m«n tÊt c¶ kü n¨ng . ") 
add_gb(70) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
-- script viet hoa By http://tranhba.com  kÕt thóc 
-- script viet hoa By http://tranhba.com  Msg2Player("Hoan nghªnh gia nhËp C¸i Bang , trë thµnh v« ®¹i ®Ö tö , häc ®­îc bæn m«n kü n¨ng ") 
-- script viet hoa By http://tranhba.com  AddNote("Gia nhËp C¸i Bang , trë thµnh v« ®¹i ®Ö tö .") 
Msg2Faction("gaibang",GetName().." h«m nay gia nhËp C¸i Bang , b¸i kiÕn c¸c vŞ s­ tæ , hy väng c¸c vŞ quan t©m chØ gi¸o !",GetName()) 
--NewWorld(115, 1501, 3672) -- script viet hoa By http://tranhba.com  ®em nhµ ch¬i truyÒn tèng ®Õn m«n ph¸i nhËp khÈu 

end; 

function return_yes() 
NewWorld(115, 1501, 3672) -- script viet hoa By http://tranhba.com  ®em nhµ ch¬i truyÒn tèng ®Õn m«n ph¸i nhËp khÈu 
end; 

function gb_check_yes() -- script viet hoa By http://tranhba.com  theo nh­ kü n¨ng x¸c ®Şnh nhiÖm vô thay ®æi l­îng ®İch kiÓm tra . . . ch­a t­¬ng øng ®æi míi 
if (GetSeries() ~= 2) then 
Talk(1,"","Ng­¬i ngò hµnh thuéc tİnh kh«ng ph¶i chóng ta thñy hÖ , lµm sao sÏ lÉn vµo ®Õn bæn m«n tíi ? ®i tr­íc hái mét chót trß ch¬i nh©n viªn qu¶n lı ®i . ") 
elseif (HaveMagic(91) >= 0) then -- script viet hoa By http://tranhba.com  lµm xong 50 cÊp nhiÖm vô , phËt quang chiÕu kh¾p 
nt_setTask(1,60*256) 
Talk(1,"","Ta ®· ®em nhiÖm vô cña ng­¬i tr¹ng th¸i lÇn n÷a söa sang l¹i qua . ng­¬i b©y giê cã thÓ ®i nhËn xuÊt s­ nhiÖm vô . ") 
elseif (HaveMagic(88) >= 0) then -- script viet hoa By http://tranhba.com  lµm xong 40 cÊp nhiÖm vô , bÊt diÖt kh«ng døt 
nt_setTask(1,50*256) 
Talk(1,"","Ta ®· ®em nhiÖm vô cña ng­¬i tr¹ng th¸i lÇn n÷a söa sang l¹i qua . ng­¬i ®· hoµn thµnh 40 cÊp nhiÖm vô . ") 
elseif (HaveMagic(85) >= 0) then -- script viet hoa By http://tranhba.com  lµm xong 30 cÊp nhiÖm vô , mét l¸ biÕt thu 
nt_setTask(1,40*256) 
Talk(1,"","Ta ®· ®em nhiÖm vô cña ng­¬i tr¹ng th¸i lÇn n÷a söa sang l¹i qua . ng­¬i ®· hoµn thµnh 30 cÊp nhiÖm vô . ") 
elseif (HaveMagic(82) >= 0) then -- script viet hoa By http://tranhba.com  lµm xong 20 cÊp nhiÖm vô , tø t­îng cïng thuéc vÒ 
nt_setTask(1,30*256) 
Talk(1,"","Ta ®· ®em nhiÖm vô cña ng­¬i tr¹ng th¸i lÇn n÷a söa sang l¹i qua . ng­¬i ®· hoµn thµnh 20 cÊp nhiÖm vô . ") 
elseif (HaveMagic(77) >= 0) then -- script viet hoa By http://tranhba.com  lµm xong 10 cÊp nhiÖm vô , Nga Mi kiÕm ph¸p 
nt_setTask(1,20*256) 
Talk(1,"","Ta ®· ®em nhiÖm vô cña ng­¬i tr¹ng th¸i lÇn n÷a söa sang l¹i qua . ng­¬i ®· hoµn thµnh 10 cÊp nhiÖm vô . ") 
else 
nt_setTask(1,10*256) 
Talk(1,"","Ta ®· ®em nhiÖm vô cña ng­¬i tr¹ng th¸i lÇn n÷a söa sang l¹i qua . ng­¬i b©y giê cã thÓ ®i nhËn 10 cÊp nhiÖm vô . ") 
end 
end; 

function gb_check_no() 
Say("Cã c¸i g× muèn ta chuyÓn c¸o bang chñ ®İch , hay lµ muèn ta ®­a ng­¬i trë vÒ tæng ®µ ? ",2,"PhiÒn to¸i ®­a ta trë vÒ /return_yes","Xin/mêi h­íng bang chñ th¨m hái , ®Ö tö hÕt th¶y m¹nh kháe /no") 
end 

function Uworld1000_jiaoyugaibang() 
nt_setTask(1000,260) 
Msg2Player("Ng­¬i ®· lµ C¸i Bang ®Ö tö , kh«ng cÇn ®i , ng­¬i cã thÓ trùc tiÕp ®i gÆp Long nhi nãi chuyÖn .") 
end 

function no() 
end; 
