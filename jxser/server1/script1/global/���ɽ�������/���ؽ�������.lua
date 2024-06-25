-- script viet hoa By http://tranhba.com  c¸c m«n ph¸i tiÕp dÉn ®Ö tö ch©n vèn C«n L«n 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-10-27) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-05-25) thÓ dïng/uèng kü n¨ng toµn khai söa ®æi ®iÒu dông bªn ngoµi v¨n kiÖn ph­¬ng thøc 
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
npc_name = "C«n L«n Hé Ph¸p" 

Include("\\script\\global\\g7vn\\g7configall.lua")

function default_talk()

local nDate = tonumber(date("%Y%m%d%H%M"))
if nDate <= ThoiGianHetHanDiemTP then
	Say("§óng vµo lóc <color=yellow>"..ThoiGianOpenStr.."<color> míi b¾t ®Çu chİnh thøc khai më m¸y chñ");
	return 1
end

player_Faction = GetFaction() 
Uworld1000 = nt_getTask(1000) 
if (( Uworld1000 == 240 ) or ( Uworld1000 == 250 )) and ( GetLastFactionNumber() == 9 ) then 
nt_setTask(1000,250) 
Talk(1,"Uworld1000_jiaoyukunlun","Ng­¬i ®· lµ ®Ö tö bæn m«n , kh«ng cÇn ®i , cã thÓ trùc tiÕp cïng Long nhi gÆp mÆt nãi .") 
elseif (player_Faction == "cuiyan") then 
Talk(1,"","ThËt lµ ®Ñp ®İch c« nµng qu¶ nhiªn kh«ng ph¶i lµ t©y b¾c khæ hµn ®Êt cã thÓ so nghÜ , ai") 
elseif (player_Faction == "emei") then 
Talk(1,"","N÷ l­u h¹ng ng­êi nªn ë nhµ gióp chång d¹y con , ®i ra vò ®ao léng th­¬ng ®İch cßn thÓ thèng g× . thËt lµ thÕ phong nhËt h¹ a") 
elseif (player_Faction == "tangmen") then 
Talk(1,"","§­êng m«n ¸m khİ , vi m¹t chi kü , sao cïng chóng ta ®¹o ph¸p Thiªn t«n th©n truyÒn chó thuËt so s¸nh") 
elseif (player_Faction == "wudu") then 
Talk(1,"","Th¸i tµ ma bªn ngoµi ®¹o còng d¸m ®i ra hiÖn thÕ , nh×n ®¹o gia ta kh«ng ®em c¸c ng­¬i tæng ®µ chän") 
elseif (player_Faction == "tianwang") then 
Talk(1,"","Thiªn v­¬ng gióp mÆc dï b©y giê lµ hång hång háa háa , nh­ng tõ mét n÷ l­u mang , mét ngµy nµo ®ã sÏ ®em phÇn c¬ nghiÖp nµy cho hñy . ") 
elseif (player_Faction == "shaolin") then 
Talk(1,"","§Òu nãi ThiÕu L©m vâ häc chİnh t«ng , ®¸ng tiÕc còng lµ b¹c tíi vËt , kh«ng gièng ta C«n L«n thiªn s­ ®¹o thuËt , trung hoa chİnh t«ng vò kü . ") 
elseif (player_Faction == "wudang") then 
Talk(1,"","§¾t hai ta ph¸i ®ång chóc ®¹o t«ng , còng ®Òu am hiÓu kiÕm ph¸p , c¸i g× chóng ta bØ hoa bØ hoa , ®øng hµng c¸ cao thÊp m¹nh yÕu ®i ra . ") 
elseif (player_Faction == "kunlun") then 
Say("MÆt ®İch hoa hoa thÕ giíi qu¶ nhiªn so t©y b¾c khæ hµn ®Êt tèt h¬n nhiÒu ®i , cã muèn hay kh«ng ®i vÒ ? ",4,"Trë vÒ , ®a t¹ ®¹o huynh . /return_yes","B¶n ®å giíi thiÖu /map_help","Kü n¨ng nãi râ /skill_help","Tèt nh­ vËy ch¬i ®Şa ph­¬ng , véi v¶ trë vÒ lµm g× ? /no") 
elseif (player_Faction == "tianren") then 
Talk(1,"","DiÖt tuyÖt kim chã chİnh lµ ta bèi bæn phËn , tíi tíi tíi ¨n ®¹o gia mét kiÕm") 
elseif (player_Faction == "gaibang") then 
Talk(1,"","Mét gióp khiÕu hãa tö , coi nh­ thanh thÕ lín h¬n n÷a còng chØ lµ ®¸m ng­êi « hîp , cuèi cïng kh«ng thµnh ®­îc c¸i g× khİ hËu . ") 
elseif (nt_getTask(75) == 255) then -- script viet hoa By http://tranhba.com  häc d· cÇu quyÒn ®İch , kh«ng cho phĞp n÷a nhËp m«n ph¸i 
Talk(1,"","Ng­¬i ®· häc ®­îc d· cÇu quyÒn , kh«ng thÓ n÷a nhËp m«n ph¸i ! ") 
else -- script viet hoa By http://tranhba.com  chØ cÇn kh«ng thuéc vÒ 10 c¸ m«n ph¸i , kh«ng hÒ n÷a ®¬n ®éc kiÓm tr¾c “ kh«ng cöa ph¸i ” 
UTask_kl = nt_getTask(9) 
-- script viet hoa By http://tranhba.com  if (GetSeries() == 4) and (GetCamp() == 4) and (GetLevel() >= 50) and (UTask_kl < 5*256) and (nt_getTask(5) == 70*256) then -- script viet hoa By http://tranhba.com  chuyÓn m«n ph¸i nhiÖm vô khëi ®éng 
-- script viet hoa By http://tranhba.com  Say("Nãi theo mét l·o nhi cã c¸i g× tèt lÉn vµo ®İch sao , ®¹o mét l·o nh©n kia bèn tuæi míi cã thÓ nãi chuyÖn , b¶y tuæi cßn tÌ ra quÇn , ng­¬i nghÜ ng­¬i ®i theo h¾n cã c¸i g× tiÒn ®å kh«ng b»ng tíi chóng ta C«n L«n ph¸i tİnh / chän , gièng ca ca ta nh­ vËy tiªn phong ®¹o cèt , ch¼ng lÏ ng­¬i kh«ng h©m mé sao ? ",2," õ/d¹ ... cã thÓ c©n nh¾c /defection_get","T¹o dao phØ b¸ng , chiªu diªu chµng phiÕn ®å , ta phi/no") 
if ((UTask_kl > 5*256) and (UTask_kl < 10*256)) then -- script viet hoa By http://tranhba.com  nhËp m«n nhiÖm vô trung 
Talk(1,"","Bæn ph¸i kh«ng ph¶i lµ b×nh th­êng cã thÓ vµo , ng­¬i tr­íc thËt tèt ®em nhËp m«n nhiÖm vô hoµn thµnh råi h·y nãi . ") 
elseif (UTask_kl >= 70*256) and (player_Faction ~= "kunlun") then -- script viet hoa By http://tranhba.com  ®· xuÊt s­ 
Say("Nghe nãi ng­¬i sau khi xuèng nói rÊt lµ phong quang kho¸i ı a , cã hay kh«ng nghÜ ®Õn chóng ta s­ ®Ö s­ muéi a ? ",3,"B¶n ®å giíi thiÖu /map_help","Kü n¨ng nãi râ /skill_help","Tèt nh­ vËy ch¬i ®Şa ph­¬ng , véi v¶ trë vÒ lµm g× ? /no") 
else 
Talk(1,"enroll_select","C«n L«n ph¸i n¬i xa T©y Vùc , rÊt İt lı cïng Trung Nguyªn . ë mÊy ®êi ®¾c lùc ch­ëng m«n ®İch kh«ng ngõng cè g¾ng h¹ , bæn ph¸i kh«ng ngõng lín m¹nh , dÇn dÇn trë thµnh trªn giang hå mét ®¹i m«n ph¸i , hïng cø T©y Vùc , cïng Trung Nguyªn c¸c ®¹i m«n ph¸i ph©n ®×nh kh¸ng lÔ . ") 
end 
end 
end; 

function defection_get() 
Talk(1,"","Chİnh lµ a , xem ng­¬i thËt lµ b¾t m¾t , véi vµng ®i vÒ phİa ®¹o mét l·o nhi nãi ng­¬i kh«ng lµm , n÷a h­íng ta ph¸i tuyÒn ki ch­ëng m«n bÈm b¸o lµ ®­îc råi . ") 
	nt_setTask(9,5*256+10)
Msg2Player("Muèn chuyÓn ®Çu C«n L«n ph¸i , chØ cÇn h­íng ph¸i Vâ §­¬ng ®¹o mét ch©n nh©n thØnh cÇu , l¹i ®i h­íng C«n L«n ph¸i tuyÒn ki tö bÈm b¸o . ") 
AddNote("Muèn chuyÓn ®Çu C«n L«n ph¸i , chØ cÇn h­íng ph¸i Vâ §­¬ng ®¹o mét ch©n nh©n thØnh cÇu , l¹i ®i h­íng C«n L«n ph¸i tuyÒn ki tö bÈm b¸o . ") 
end 

function enroll_select() 
UTask_kl = nt_getTask(9) 
UTask_wd = nt_getTask(5) 
if ((UTask_wd > 5*256) and (UTask_wd < 10*256)) then -- script viet hoa By http://tranhba.com  ®· nhËn Vâ §­¬ng nhËp m«n nhiÖm vô 
Talk(1,"","Th× ra lµ ng­¬i nghÜ vµo Vâ §­¬ng , còng ®­îc còng ®­îc , ng­êi Trung nguyªn sÜ chİnh lµ thİch mª tİn danh m«n ®¹i ph¸i . ") 
elseif (GetSeries() == 4) and (GetCamp() == 0) and (UTask_wd < 5*256) and (UTask_kl < 5*256) then -- script viet hoa By http://tranhba.com  thñy hÖ kh«ng/ch­a vµo Vâ §­¬ng C«n L«n 
if (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com  cÊp bËc ®¹t tíi cÊp m­êi 
Say("Bæn m«n am hiÓu tiªn nguyÒn rña ®¹o thuËt , tû vâ khi khİ c«ng kiÕm ph¸p th¾ng ra kh«ng chØ mét bËc . nh­ thÕ nµo , muèn gia nhËp bæn ph¸i sao ? ", 3,"Gia nhËp C«n L«n ph¸i /go","Ta suy nghÜ l¹i mét chót /no","HiÓu râ c¸c cöa vâ nghÖ tinh hoa /Uworld1000_knowmagic") 
else 
Talk(1,"","Bæn ph¸i kh«ng khai ng­êi v« dông , ng­¬i c¨n c¬ ch­a ®¸nh h¶o , chê ®Õn cÊp m­êi trë l¹i ®i . ") 
end 
end -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ thæ hÖ ®İch còng kh«ng nãi thªm n÷a liÔu . 
end; 

function go() 
Uworld1000 = nt_getTask(1000) 
if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then 
nt_setTask(1000,260) 
end 
SetRevPos(131,57) -- script viet hoa By http://tranhba.com  chê ®îi cung cÊp sèng l¹i ®iÓm 
-- script viet hoa By http://tranhba.com  nt_setTask(9,10*256) -- script viet hoa By http://tranhba.com  trùc tiÕp nhËp m«n 
SetFaction("kunlun") -- script viet hoa By http://tranhba.com  nhµ ch¬i gia nhËp C«n L«n 
SetCamp(3) 
SetCurCamp(3) 
-- script viet hoa By http://tranhba.com  SetRank(19) 
nt_setTask(137,69) 
SetLastFactionNumber(9) 
-- script viet hoa By http://tranhba.com  trùc tiÕp xö lı l­u tr×nh 
nt_setTask(9,10*256) 
SetRank(75) 
Msg2Player("Hoan nghªnh ng­¬i gia nhËp ph¸i Vâ §­¬ng , trùc tiÕp häc ®­îc bæn m«n tÊt c¶ kü n¨ng . ") 
add_kl(70) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
-- script viet hoa By http://tranhba.com  kÕt thóc 
-- script viet hoa By http://tranhba.com  Msg2Player("Hoan nghªnh gia nhËp C«n L«n ph¸i , trë thµnh phËt trÇn ®Ö tö , häc ®­îc hé phong ph¸p , cuång sĞt ®¸nh ®Şa ") 
-- script viet hoa By http://tranhba.com  AddNote("Gia nhËp C«n L«n ph¸i , trë thµnh phËt trÇn ®Ö tö ?.") 
Msg2Faction("kunlun",GetName().." tõ h«m nay ®i gia nhËp C«n L«n ph¸i , b¸i kiÕn c¸c vŞ s­ tæ , hy väng c¸c vŞ quan t©m chØ gi¸o !",GetName()) 
--NewWorld(131, 1582, 3175) -- script viet hoa By http://tranhba.com  chê ®îi cung cÊp täa ®é 

end; 

function return_yes() 
NewWorld(131, 1582, 3175) -- script viet hoa By http://tranhba.com  ®em nhµ ch¬i truyÒn tèng ®Õn m«n ph¸i nhËp khÈu 
end; 

function kl_check_yes() -- script viet hoa By http://tranhba.com  theo nh­ kü n¨ng x¸c ®Şnh nhiÖm vô thay ®æi l­îng ®İch kiÓm tra . . . ch­a t­¬ng øng ®æi míi 
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

function em_check_no() 
Say("Phİa ngoµi hoa hoa thÕ giíi qu¶ nhiªn so t©y b¾c khæ hµn ®Êt tèt h¬n nhiÒu ®i , cã muèn hay kh«ng ®i vÒ ? ",2,"Trë vÒ , ®a t¹ ®¹o huynh . /return_yes","Tèt nh­ vËy ch¬i ®Şa ph­¬ng , véi v¶ trë vÒ lµm g× ? /no") 
end 

function Uworld1000_jiaoyukunlun() 
nt_setTask(1000,260) 
Msg2Player("C«n L«n ph¸i tiÕp dÉn ®Ö tö nãi kh«ng cÇn ®i , ng­¬i cã thÓ trùc tiÕp ®i gÆp Long nhi nãi chuyÖn ") 
end 

function no() 
end; 
