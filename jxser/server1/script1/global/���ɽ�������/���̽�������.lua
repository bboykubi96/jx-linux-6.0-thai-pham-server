-- script viet hoa By http://tranhba.com  ngµy nhÉn tiÕp dÉn ®Ö tö m« b¶n ngµy nhÉn tö sÜ 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-10-28) tõ nh©n vËt ®èi tho¹i söa ®æi tíi 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-05-25) thÓ dïng/uèng kü n¨ng toµn khai söa ®æi ®iÒu dông bªn ngoµi v¨n kiÖn ph­¬ng thøc 
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
npc_name = "Thiªn NhÉn Tö SÜ"

Include("\\script\\global\\g7vn\\g7configall.lua")

function default_talk()

local nDate = tonumber(date("%Y%m%d%H%M"))
if nDate <= ThoiGianHetHanDiemTP then
	Say("§óng vµo lóc <color=yellow>"..ThoiGianOpenStr.."<color> míi b¾t ®Çu chİnh thøc khai më m¸y chñ");
	return 1
end

player_Faction = GetFaction() 
Uworld1000 = nt_getTask(1000) 
if (( Uworld1000 == 240 ) or ( Uworld1000 == 250 )) and ( GetLastFactionNumber() == 7 ) then 
nt_setTask(1000,250) 
Talk(1,"Uworld1000_jiaoyutianren","Ng­¬i ®· lµ ®Ö tö bæn m«n , kh«ng cÇn ®i , cã thÓ trùc tiÕp cïng Long nhi gÆp mÆt nãi .") 
elseif (player_Faction == "emei") then 
Talk(1,"","Ph¸i Nga Mi nÕu nh­ cã thÓ gia nhËp bæn gi¸o , c¶ ngµy h­íng vÒ phİa nh÷ng ngµy qua tiªn bµn ®İch mü nh©n , thËt lµ ®İch muèn nh¹c chÕt") 
elseif (player_Faction == "cuiyan") then 
Talk(1,"","§· sím nghe nãi nam quèc c« g¸i xinh ®Ñp quyÕn rò , h«m nay chİnh m¾t võa thÊy , qu¶ nhiªn so víi chóng ta b¾c n­íc ®İch c« g¸i mÒm m¹i . nh­ vËy mét kiÒu tİch tİch ®İch mü nh©n , cÇn g× ph¶i vò ®ao lÊy kiÕm ®©y ? ") 
elseif (player_Faction == "tangmen") then 
Talk(1,"","Bæn gi¸o gi¸o chñ mét mùc hy väng quı ph¸i cã thÓ gia nhËp chóng ta bªn nµy , vinh hoa phó quı cao quan dÇy léc , h­ëng dông v« tËn a") 
elseif (player_Faction == "wudu") then 
Talk(1,"","Chóng ta ngµy nhÉn d¹y cïng Ngò ®éc gi¸o mét b¾c mét nam , ®· thµnh hîp vi chi thÕ , Trung Nguyªn cßn kh«ng sím muén lµ vËt trong tói ? ") 
elseif (player_Faction == "tianwang") then 
Talk(1,"","BÊt luËn kÎ nµo còng ng¨n c¶n kh«ng ®­îc bæn gi¸o nhËp chñ Trung Nguyªn ®İch hoµnh ®å vÜ nghiÖp") 
elseif (player_Faction == "shaolin") then 
Talk(1,"","C¸c ng­¬i ph¸i ThiÕu l©m ®İch cao thñ ®Òu ®· r¬i vµo l·o c¶nh , trÎ tuæi hËu bèi trung gièng nh­ kh«ng cã nh©n tµi nµo , xem ra còng lµ næi danh d­íi thËt ra th× khã kh¨n bŞ/cha/chŞu nha , c¸p c¸p c¸p c¸p") 
elseif (player_Faction == "wudang") then 
Talk(1,"","§· sím nghe nãi ph¸i Vâ §­¬ng néi c«ng kiÕm thuËt thiªn h¹ nhÊt l­u , cã c¬ héi nhÊt ®Şnh ph¶i thØnh gi¸o thØnh gi¸o") 
elseif (player_Faction == "kunlun") then 
Talk(1,"","C¸c ng­¬i C«n L«n ph¸i x­ng b¸ T©y Vùc , mét mùc th× cã trôc léc Trung Nguyªn ®İch d· t©m , lu«n cã mét ngµy , bæn gi¸o sÏ cïng c¸c ng­¬i ë Trung Nguyªn nhÊt quyÕt th¾ng b¹i ®İch") 
elseif (player_Faction == "tianren") then 
Say("Cã hµnh ®éng sao ? ",4,"Hµnh ®éng ®· hoµn thµnh , ®­a ta trë vÒ tæng ®µn /return_yes","B¶n ®å giíi thiÖu /map_help","Kü n¨ng nãi râ /skill_help","Kh«ng cã sao /no") 
-- script viet hoa By http://tranhba.com  Say("Ng­îng ngïng , bëi v× cã İt ng­êi nhiÖm vô tr¹ng th¸i bÊt ch¸nh x¸c , chóng ta ®ang lÇn n÷a v× m«n h¹ ®Ö tö tiÕn hµnh kiÓm tra . ng­¬i muèn kiÓm tra nhiÖm vô cña ng­¬i tr¹ng th¸i sao ? nÕu nh­ ng­¬i cho r»ng ng­¬i ®İch tr¹ng th¸i lµ chİnh x¸c còng kh«ng tÊt kiÓm tra . ",2,"KiÓm tra /tr_check_yes","Kh«ng cÇn /tr_check_no") 
elseif (player_Faction == "gaibang") then 
Talk(1,"","Ng­¬i c¸i nµy khiÕu hãa tö muèn x©m nhËp vµo ®Ó lµm gian tÕ sao ? ") 
elseif (nt_getTask(75) == 255) then -- script viet hoa By http://tranhba.com  häc d· cÇu quyÒn ®İch , kh«ng cho phĞp n÷a nhËp m«n ph¸i 
Talk(1,"","Ng­¬i ®· häc ®­îc d· cÇu quyÒn ! kh«ng thÓ n÷a nhËp m«n ph¸i !") 
else 
UTask_tr = nt_getTask(4) 
if ((UTask_tr > 5*256) and (UTask_tr < 10*256)) then -- script viet hoa By http://tranhba.com  nhËp m«n nhiÖm vô trung 
Talk(1,"","Ng­¬i ®· ë tæng ®µn nhËn bæn gi¸o ®İch nhËp m«n nhiÖm vô , nh­ng lµ ch­a hoµn thµnh , ng­¬i nhÊt ®Şnh ph¶i th­îng Hoa S¬n lµm gèc d¹y ®o¹t ®­îc vò v­¬ng kiÕm . ") 
elseif (UTask_tr >= 70*256) and (player_Faction ~= "tianren") then -- script viet hoa By http://tranhba.com  ®· xuÊt s­ 
Say("Nghe nãi ng­¬i xuÊt s­ sau nµy , l¹i lÉn vµo x¶y ra chót danh ®­êng , thËt lµ sÜ biÖt ba ngµy , khi qu¸t môc nh×n nhau a",3,"B¶n ®å giíi thiÖu /map_help","Kü n¨ng nãi râ /skill_help","Kh«ng cã sao /no") 
else 
Talk(1,"select","Bæn gi¸o tin phông ®¹i kim quèc ®İch n­íc d¹y t¸t m·n d¹y , gi¸o chñ chİnh lµ quèc s­ hoµn nhan hoµnh liÖt , h¾n tİnh t×nh cuång ng¹o , m­u trİ h¬n ng­êi , ngay c¶ ®¹i kim hoµng ®Õ ®èi víi h¾n còng lÔ nh­îng ba ph©n . bæn gi¸o v« sè cao thñ , chiªu mé liÔu nhãm lín kim tèng hai n­íc ®İch cao thñ , cã thÓ nãi ®Çm rång hang hæ . ") 
end 
end 
end; 

function select() 
UTask_tr = nt_getTask(4) 
UTask_gb = nt_getTask(8) 
if ((UTask_gb > 5*256) and (UTask_gb < 10*256)) then -- script viet hoa By http://tranhba.com  ®· nhËn C¸i Bang nhËp m«n nhiÖm vô 
Talk(1,"","Nam triÒu ngu ngèc , c¸c ng­¬i nh÷ng thø nµy tù cho lµ hiÖp nghÜa ®¹o vÉn cßn muèn v× kia TriÖu l·o nhi b¸n m¹ng , khæ nh­ thÕ chø . ") 
elseif (GetSeries() == 3) and (GetCamp() == 0) and (UTask_gb < 5*256) and (UTask_tr < 5*256) then -- script viet hoa By http://tranhba.com  háa hÖ kh«ng/ch­a vµo C¸i Bang ngµy nhÉn 
if (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com  cÊp bËc ®¹t tíi cÊp m­êi 
Say("Ng­¬i nghÜ gia nhËp bæn gi¸o sao ? ", 3,"Gia nhËp ngµy nhÉn d¹y /yes","Kh«ng gia nhËp /no","HiÓu râ c¸c cöa vâ nghÖ tinh hoa /Uworld1000_knowmagic") 
else 
Talk(1,"","Bæn gi¸o ®Ö tö ®Òu lµ tinh anh h¹ng ng­êi , gièng nh­ ng­¬i vËy kh«ng cã tr¶i qua ma luyÖn ®İch tay míi , ®Ò nghŞ ng­¬i ®i tr­íc d· ngo¹i luyÖn mét chót , <color=Red> cÊp m­êi <color> sau nµy tíi t×m ta n÷a . ") 
end 
end 
end; 

function yes() 
Uworld1000 = nt_getTask(1000) 
if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then 
nt_setTask(1000,260) 
end 
Talk(1,"","Võa gia nhËp bæn gi¸o , sÏ ph¶i tu©n theo gi¸o chñ hiÖu lÖnh . bæn gi¸o gi¸o quy s©m nghiªm , ­u th¾ng liÖt th¸i lµ bæn gi¸o ®İch ph¸p t¾c , ng­¬i sÏ dïng thùc lùc cña m×nh ®Ó chøng minh gi¸ trŞ cña ng­¬i ®i") 
SetRevPos(49,28) -- script viet hoa By http://tranhba.com  thiÕt trİ sèng l¹i ®iÓm 
-- script viet hoa By http://tranhba.com  nt_setTask(4, 10*256) 
SetFaction("tianren") -- script viet hoa By http://tranhba.com  nhµ ch¬i gia nhËp ngµy nhÉn d¹y 
SetCamp(2) 
SetCurCamp(2) 
-- script viet hoa By http://tranhba.com  SetRank(55) -- script viet hoa By http://tranhba.com  thiÕt trİ danh hiÖu 
nt_setTask(137,64) 
SetLastFactionNumber(7) 
-- script viet hoa By http://tranhba.com  Msg2Player("Gia nhËp ngµy nhÉn d¹y , trë thµnh mét tªn s¸t thñ . ") 
-- script viet hoa By http://tranhba.com  AddNote("Gia nhËp ngµy nhÉn d¹y , trë thµnh s¸t thñ , häc ®­îc vâ c«ng tµn d­¬ng nh­ m¸u . ") 
Msg2Faction("tianren",GetName().." tõ h«m nay trë ®i gia nhËp ngµy nhÉn d¹y , b¸i kiÕn c¸c vŞ s­ huynh s­ tû",GetName()) 
-- script viet hoa By http://tranhba.com  trùc tiÕp xö lı l­u tr×nh 
nt_setTask(4,10*256) 
SetRank(81) 
Msg2Player("Hoan nghªnh ng­¬i gia nhËp ngµy nhÉn d¹y , trùc tiÕp häc ®­îc bæn m«n tÊt c¶ kü n¨ng . ") 
add_tr(70) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
-- script viet hoa By http://tranhba.com  kÕt thóc 
--NewWorld(49, 1644, 3215) -- script viet hoa By http://tranhba.com  ®em nhµ ch¬i truyÒn tèng ®Õn m«n ph¸i nhËp khÈu 

end; 

function return_yes() 
NewWorld(49, 1644, 3215) -- script viet hoa By http://tranhba.com  ®em nhµ ch¬i truyÒn tèng ®Õn m«n ph¸i nhËp khÈu 
end; 

function tr_check_yes() 
if (GetSeries() ~= 3) then 
Talk(1,"","Ng­¬i ngò hµnh thuéc tİnh kh«ng ph¶i chóng ta háa hÖ , lµm sao sÏ lÉn vµo ®Õn bæn gi¸o tíi ? ®i tr­íc hái mét chót trß ch¬i nh©n viªn qu¶n lı ®i . ") 
elseif (HaveMagic(148) >= 0) then -- script viet hoa By http://tranhba.com  lµm xong 50 cÊp nhiÖm vô , thÊt s¸t thÇn quyÒn 
nt_setTask(4,60*256) 
Talk(1,"","Ta ®· ®em nhiÖm vô cña ng­¬i tr¹ng th¸i lÇn n÷a söa sang l¹i qua . ng­¬i b©y giê cã thÓ ®i nhËn xuÊt s­ nhiÖm vô . ") 
elseif (HaveMagic(146) >= 0) then -- script viet hoa By http://tranhba.com  lµm xong 40 cÊp nhiÖm vô , Ngò hiÒn chÊt 
nt_setTask(4,50*256) 
Talk(1,"","Ta ®· ®em nhiÖm vô cña ng­¬i tr¹ng th¸i lÇn n÷a söa sang l¹i qua . ng­¬i ®· hoµn thµnh 40 cÊp nhiÖm vô . ") 
elseif (HaveMagic(141) >= 0) then -- script viet hoa By http://tranhba.com  lµm xong 30 cÊp nhiÖm vô , liÖt háa t×nh ngµy 
nt_setTask(4,40*256) 
Talk(1,"","Ta ®· ®em nhiÖm vô cña ng­¬i tr¹ng th¸i lÇn n÷a söa sang l¹i qua . ng­¬i ®· hoµn thµnh 30 cÊp nhiÖm vô . ") 
elseif (HaveMagic(138) >= 0) then -- script viet hoa By http://tranhba.com  lµm xong 20 cÊp nhiÖm vô , ®Èy s¬n ®iÒn h¶i 
nt_setTask(4,30*256) 
Talk(1,"","Ta ®· ®em nhiÖm vô cña ng­¬i tr¹ng th¸i lÇn n÷a söa sang l¹i qua . ng­¬i ®· hoµn thµnh 20 cÊp nhiÖm vô . ") 
elseif (HaveMagic(131) >= 0) then -- script viet hoa By http://tranhba.com  lµm xong 10 cÊp nhiÖm vô , ngµy nhÉn m©u ph¸p 
nt_setTask(4,20*256) 
Talk(1,"","Ta ®· ®em nhiÖm vô cña ng­¬i tr¹ng th¸i lÇn n÷a söa sang l¹i qua . ng­¬i ®· hoµn thµnh 10 cÊp nhiÖm vô . ") 
else 
nt_setTask(4,10*256) 
Talk(1,"","Ta ®· ®em nhiÖm vô cña ng­¬i tr¹ng th¸i lÇn n÷a söa sang l¹i qua . ng­¬i b©y giê cã thÓ ®i nhËn 10 cÊp nhiÖm vô . ") 
end 
end 

function tr_check_no() 
Say("Cã hµnh ®éng sao ? ",2,"Hµnh ®éng ®· hoµn thµnh , ®­a ta trë vÒ tæng ®µn /return_yes","Kh«ng cã sao /return_no") 
end 

function Uworld1000_jiaoyutianren() 
nt_setTask(1000,260) 
Msg2Player("Ngµy nhÉn ph¸i tiÕp dÉn ®Ö tö nãi ®· lµ m«n ph¸i ®Ö tö , ng­¬i cã thÓ trùc tiÕp ®i gÆp Long nhi nãi chuyÖn .") 
end 

function no() 
end; 
