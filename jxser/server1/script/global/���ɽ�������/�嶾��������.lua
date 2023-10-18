-- script viet hoa By http://tranhba.com  c¸c m«n ph¸i tiÕp dÉn ®Ö tö ch©n vèn n¨m ®éc 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-10-27) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-05-25) thÓ dïng/uèng kü n¨ng toµn khai söa ®æi ®iÒu dông bªn ngoµi v¨n kiÖn ph­¬ng thøc 
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
npc_name = "Ngò §éc T¸n Nh©n" 

Include("\\script\\global\\g7vn\\g7configall.lua")

function default_talk()

local nDate = tonumber(date("%Y%m%d%H%M"))
if nDate <= ThoiGianHetHanDiemTP then
	Say("§óng vµo lóc <color=yellow>"..ThoiGianOpenStr.."<color> míi b¾t ®Çu chİnh thøc khai më m¸y chñ");
	return 1
end

player_Faction = GetFaction() 
Uworld1000 = nt_getTask(1000) 
if (( Uworld1000 == 240 ) or ( Uworld1000 == 250 )) and ( GetLastFactionNumber() == 3 ) then 
nt_setTask(1000,250) 
Talk(1,"Uworld1000_jiaoyuwudu","Ng­¬i ®· lµ ®Ö tö bæn m«n , kh«ng cÇn ®i , cã thÓ trùc tiÕp cïng Long nhi gÆp mÆt nãi .") 
elseif (player_Faction == "cuiyan") then 
Talk(1,"","TiÓu mü nh©n , tíi th¨m ng­¬i ca ca ta sao ? tíi tíi h­¬ng mét . ") 
elseif (player_Faction == "emei") then 
Talk(1,"","Xó ni c« ? thËt lµ xui xÎo , phi phi phi , ®¹i c¸t ®¹i lîi ®¹i c¸t ®¹i lîi . ") 
elseif (player_Faction == "tangmen") then 
Talk(1,"","§õng t­ëng r»ng c¸c ng­¬i phi ®ao cã g× ®Æc biÖt h¬n ng­êi , chóng ta chung ®éc thuËt míi thËt sù lµ v« ¶nh v« h×nh , khã lßng phßng bŞ") 
elseif (player_Faction == "wudu") then 
Say("Nghe nãi trªn nói l¹i tíi mét nhãm tuÊn nam mü n÷ , cã ph¶i hay kh«ng véi v¶ trë vÒ xem mét chót a ? h¾c h¾c h¾c",4,"Ha ha , phiÒn to¸i ®­a ta ®o¹n ®­êng /return_yes","B¶n ®å giíi thiÖu /map_help","Kü n¨ng nãi râ /skill_help","Kh«ng cÇn , còng kh«ng cÊp ë nhÊt thêi /no") 
elseif (player_Faction == "tianwang") then 
Talk(1,"","Cïng ®¹i kim quèc ®èi nghŞch lµ kh«ng cã g× hay chç ®İch , cã ı h­íng mét ngµy ®¹i kim quèc b×nh ®Şnh Trung Nguyªn c¸c ng­¬i nªn sau khi biÕt hèi liÔu . ") 
elseif (player_Faction == "shaolin") then 
Talk(1,"","ThiÕu L©m ®İch tÆc ngèc cöa , ®õng t­ëng r»ng c¸c ng­¬i gi¶ bé lé ra ®µng hoµng d¹ng chóng ta sÏ tin th¬ ng­¬i , ng­êi nµo kh«ng biÕt c¸c ng­¬i th©n ë ®¹i kim lßng mang nam triÒu . chØ cÇn ®Ó cho chóng ta b¾t ®­îc c¸c ng­¬i ®em chu«i liÔu , hõ hõ hõ") 
elseif (player_Faction == "wudang") then 
Talk(1,"","ThÕ nµo , Vâ §­¬ng ®İch c¸c ®¹i hiÖp l¹i muèn chØ gi¸o t¹i h¹ ? lÇn nµy chØ sî sÏ kh«ng ®Ó cho c¸c ng­¬i nh­ ı liÔu") 
elseif (player_Faction == "kunlun") then 
Talk(1,"","T­íc nhän ®Çu muèn ®i chİnh ph¸i còng ®İch hîp ı ph©n tö , trîn to c¸c ng­¬i ¸nh m¾t nh×n mét chót râ rµng , ®¹i kim quèc cïng chóng ta míi lµ thiªn h¹ ®¹i thÕ së xu , kh«ng muèn lÇm") 
elseif (player_Faction == "tianren") then 
Talk(1,"","Ta ng­¬i hai gi¸o liªn minh , ®ang thµnh nam b¾c gi¸p c«ng , trong øng ngoµi hîp chi thÕ , hoa nµy hoa giang s¬n cßn kh«ng thãa tay cã thÓ ph¶i ? c¸p c¸p c¸p c¸p") 
elseif (player_Faction == "gaibang") then 
Talk(1,"","Xó khiÕu hãa tö , cót ngay , ®õng ®ông d¬ bÈn ®¹i gia quÇn ¸o cña ta") 
elseif (nt_getTask(75) == 255) then -- script viet hoa By http://tranhba.com  häc d· cÇu quyÒn ®İch , kh«ng cho phĞp n÷a nhËp m«n ph¸i 
Talk(1,"","Ng­¬i ®· häc ®­îc d· cÇu quyÒn ! kh«ng thÓ n÷a nhËp m«n ph¸i !") 
else -- script viet hoa By http://tranhba.com  chØ cÇn kh«ng thuéc vÒ 10 c¸ m«n ph¸i , kh«ng hÒ n÷a ®¬n ®éc kiÓm tr¾c “ kh«ng cöa ph¸i ” 
UTask_wu = nt_getTask(10) 
-- script viet hoa By http://tranhba.com  if (GetSeries() == 1) and (GetCamp() == 4) and (GetLevel() >= 50) and (UTask_wu < 5*256) and (nt_getTask(2) == 70*256) then -- script viet hoa By http://tranhba.com  chuyÓn m«n ph¸i nhiÖm vô khëi ®éng 
-- script viet hoa By http://tranhba.com  Say("Ng­¬i §­êng m«n ¸m khİ sao cïng ta ®éc d­îc chung thuËt chi s¶o , huèng chi ®­êng thï ng¹o m¹n kh«ng bÇy , v« lÔ khi kh«ng c©u chÊp , t­¬ng lai ®Şnh sÏ bŞ ®¹i kim thiÕt kş d¹y dç . ng­¬i kh«ng b»ng thõa dŞp sím ®æi ®Çu ta d¹y , t­¬ng lai ®¹i kim b×nh ®Şnh Trung Nguyªn lóc cßn cã thÓ chia mét chĞn sóp . ",2,"T¸n nh©n nãi nh­ vËy ®Ó ı tíi , ta muèn ®æi ®Çu Ngò ®éc gi¸o /defection_get"," l­êi lı ng­¬i /no") 
if ((UTask_wu > 5*256) and (UTask_wu < 10*256)) then -- script viet hoa By http://tranhba.com  nhËp m«n nhiÖm vô trung 
Talk(1,"","ChØ cÇn th«ng qua bæn ph¸i ®İch nhËp m«n kh¶o nghiÖm , ng­¬i liÒn cã thÓ vinh quang ®Şa trë thµnh chóng ta mét thµnh viªn n÷a/råi . ha ha") 
elseif (UTask_wu >= 70*256) and (player_Faction ~= "wudu") then -- script viet hoa By http://tranhba.com  ®· xuÊt s­ 
Talk(1,"","§· l©u kh«ng gÆp , tho¹t nh×n ng­¬i gÇn nhÊt lÉn vµo ph¶i kh«ng tÖ l¾m . ") 
else 
Talk(1,"enroll_select","Ngò ®éc gi¸o gÇn ®©y míi ë trong vâ l©m cao høng , tæ chøc nghiªm mËt . bæn gi¸o ®· cïng kim quèc n­íc d¹y ngµy nhÉn d¹y kÕt thµnh liªn minh , t­¬ng lai kim quèc thèng nhÊt Trung Nguyªn lµ ®­îc cïng h­ëng quı b¸u liÔu . c¸p c¸p c¸p c¸p") 
end 
end 
end; 

function defection_get() 
Talk(1,"","C¸p c¸p c¸p c¸p , qu¶ nhiªn lµ thøc thêi vô ng­êi ng­¬i chØ cÇn ®i vÒ phİa ®­êng thï l·o nhi nãi tho¸t khái §­êng m«n , sau ®ã sÏ h­íng bæn gi¸o gi¸o chñ h¾c mÆt lang qu©n bÈm b¸o , liÒn cã thÓ gia nhËp Ngò ®éc gi¸o liÔu . ") 
	nt_setTask(10,5*256+10)
Msg2Player("Muèn chuyÓn ®Çu Ngò ®éc gi¸o , chØ cÇn h­íng ®­êng thï thØnh cÇu , l¹i ®i h­íng Ngò ®éc gi¸o chñ h¾c mÆt lang qu©n bÈm b¸o lµ ®­îc . ") 
AddNote("Muèn chuyÓn ®Çu Ngò ®éc gi¸o , chØ cÇn h­íng ®­êng thï thØnh cÇu , l¹i ®i h­íng Ngò ®éc gi¸o chñ h¾c mÆt lang qu©n bÈm b¸o lµ ®­îc . ") 
end 

function enroll_select() 
UTask_wu = nt_getTask(10) 
UTask_tm = nt_getTask(2) 
if ((UTask_tm > 5*256) and (UTask_tm < 10*256)) then -- script viet hoa By http://tranhba.com  ®· nhËn §­êng m«n nhËp m«n nhiÖm vô 
Talk(1,"","§­êng m«n c¸i lo¹i ®ã bÊt nhËp l­u ®İch m«n ph¸i còng cã ng­êi muèn vµo . ai , l·ng phİ nöa ngµy n­íc miÕng . ") 
elseif (GetSeries() == 1) and (GetCamp() == 0) and (UTask_tm < 5*256) and (UTask_wu < 5*256) then -- script viet hoa By http://tranhba.com  méc hÖ kh«ng/ch­a vµo §­êng m«n n¨m ®éc 
if (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com  cÊp bËc ®¹t tíi cÊp m­êi 
Say("Nh­ thÕ nµo , cã muèn hay kh«ng gia nhËp bæn gi¸o ? ", 3,"Gia nhËp Ngò ®éc gi¸o /go","Ta suy nghÜ l¹i mét chót /no","HiÓu râ c¸c cöa vâ nghÖ tinh hoa /Uworld1000_knowmagic") 
else 
Talk(1,"","Ng­¬i b©y giê cßn mét chót trô cét ®Òu kh«ng cã , mËu tïy tiÖn vµo d¹y ngµy ngµy cïng chung ®éc lµm b¹n ®ã kh«ng ph¶i lµ muèn chÕt sao . ng­¬i ®i tr­íc luyÖn ®Õn cÊp m­êi råi h·y nãi . ") 
end 
end -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ méc hÖ ®İch còng kh«ng nãi thªm n÷a liÔu . 
end; 

function go() 
Uworld1000 = nt_getTask(1000) 
if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then 
nt_setTask(1000,260) 
end 
SetRevPos(183,70) -- script viet hoa By http://tranhba.com  thiÕt trİ sèng l¹i ®iÓm 
-- script viet hoa By http://tranhba.com  nt_setTask(10,10*256) -- script viet hoa By http://tranhba.com  trùc tiÕp nhËp m«n 
SetFaction("wudu") -- script viet hoa By http://tranhba.com  nhµ ch¬i gia nhËp ph¸i Nga Mi 
SetCamp(2) 
SetCurCamp(2) 
-- script viet hoa By http://tranhba.com  SetRank(49) 
nt_setTask(137,70) 
SetLastFactionNumber(3) 
-- script viet hoa By http://tranhba.com  trùc tiÕp xö lı l­u tr×nh 
nt_setTask(10,10*256) 
SetRank(80) 
Msg2Player("Hoan nghªnh ng­¬i gia nhËp Ngò ®éc gi¸o , trùc tiÕp häc ®­îc bæn m«n tÊt c¶ kü n¨ng . ") 
add_wu(70) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
-- script viet hoa By http://tranhba.com  kÕt thóc 
-- script viet hoa By http://tranhba.com  Msg2Player("Hoan nghªnh gia nhËp Ngò ®éc gi¸o , trë thµnh n¨m ®éc ®ång tö , häc ®­îc ®éc sa ch­ëng , huyÕt ®ao ®éc giÕt .") 
-- script viet hoa By http://tranhba.com  AddNote("Gia nhËp Ngò ®éc gi¸o , trë thµnh n¨m ®éc ®ång tö .") 
Msg2Faction("wudu",GetName().." h«m nay gia nhËp Ngò ®éc gi¸o , b¸i kiÕn c¸c vŞ huynh tr­ëng , hy väng c¸c vŞ chØ gi¸o nhiÒu h¬n !",GetName()) 
--NewWorld(183, 1746, 2673) -- script viet hoa By http://tranhba.com  ®em nhµ ch¬i truyÒn tèng ®Õn m«n ph¸i nhËp khÈu 

end; 

function return_yes() 
NewWorld(183, 1746, 2673) -- script viet hoa By http://tranhba.com  ®em nhµ ch¬i truyÒn tèng ®Õn m«n ph¸i nhËp khÈu 
end; 

function wu_check_yes() -- script viet hoa By http://tranhba.com  theo nh­ kü n¨ng x¸c ®Şnh nhiÖm vô thay ®æi l­îng ®İch kiÓm tra . . . ch­a t­¬ng øng ®æi míi 
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
Say("Nghe nãi trªn nói l¹i tíi mét nhãm tuÊn nam mü n÷ , cã ph¶i hay kh«ng véi v¶ trë vÒ xem mét chót a ? h¾c h¾c h¾c",2,"Ha ha , phiÒn to¸i ®­a ta ®o¹n ®­êng /return_yes","Kh«ng cÇn , còng kh«ng cÊp ë nhÊt thêi /no") 
end 

function Uworld1000_jiaoyuwudu() 
nt_setTask(1000,260) 
Msg2Player("N¨m ®éc tiÕp dÉn ®Ö tö nãi ®· lµ m«n ph¸i ®Ö tö , ng­¬i cã thÓ trùc tiÕp ®i gÆp Long nhi nãi chuyÖn .") 
end 

function no() 
end; 
