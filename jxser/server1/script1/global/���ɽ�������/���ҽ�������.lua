-- script viet hoa By http://tranhba.com  Nga Mi tiÕp dÉn ®Ö tö m« b¶n Nga Mi cÈm y ni 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-10-28) tõ nh©n vËt ®èi tho¹i söa ®æi tíi 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-05-25) thÓ dïng/uèng kü n¨ng toµn khai söa ®æi ®iÒu dông bªn ngoµi v¨n kiÖn ph­¬ng thøc 
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
npc_name = "Nga Mi CÈm Y Ni" 

Include("\\script\\global\\g7vn\\g7configall.lua")

function default_talk()

local nDate = tonumber(date("%Y%m%d%H%M"))
if nDate <= ThoiGianHetHanDiemTP then
	Say("§óng vµo lóc <color=yellow>"..ThoiGianOpenStr.."<color> míi b¾t ®Çu chİnh thøc khai më m¸y chñ");
	return 1
end

player_Faction = GetFaction() 
Uworld1000 = nt_getTask(1000) 
if (( Uworld1000 == 240 ) or ( Uworld1000 == 250 )) and ( GetLastFactionNumber() == 4 ) then 
nt_setTask(1000,250) 
Talk(1,"Uworld1000_jiaoyuemei","Ng­¬i ®· lµ ®Ö tö bæn m«n , kh«ng cÇn ®i , cã thÓ trùc tiÕp cïng Long nhi gÆp mÆt nãi .") 
elseif (player_Faction == "emei") then 
Say("TiÓu s­ muéi , l¹i xuèng nói tíi ch¬i ? lÇn nµy muèn ta ®­a ng­¬i trë vÒ nói sao ? ",4,"§óng vËy , l¹i muèn phiÒn to¸i tû tû /return_yes","B¶n ®å giíi thiÖu /map_help","Kü n¨ng nãi râ /skill_help","Kh«ng cÇn , ®a t¹ s­ tû /no") 
-- script viet hoa By http://tranhba.com  Say("ng­îng ngïng , bëi v× cã İt ng­êi nhiÖm vô tr¹ng th¸i bÊt ch¸nh x¸c , chóng ta ®ang lÇn n÷a v× m«n h¹ ®Ö tö tiÕn hµnh kiÓm tra . ng­¬i muèn kiÓm tra nhiÖm vô cña ng­¬i tr¹ng th¸i sao ? nÕu nh­ ng­¬i cho r»ng ng­¬i ®İch tr¹ng th¸i lµ chİnh x¸c còng kh«ng tÊt kiÓm tra . ",2,"KiÓm tra /em_check_yes","Kh«ng cÇn /em_check_no") 
elseif (player_Faction == "cuiyan") then 
Talk(1,"","Quı ph¸i thiªn chç V©n Nam , cïng bæn ph¸i ch­a tõng lui tíi , kh«ng biÕt cã g× chØ gi¸o ? ") 
elseif (player_Faction == "tangmen") then 
Talk(1,"","Ng­¬i lµ thôc nam ng­êi cña §­êng m«n sao ? bæn m«n chİnh lµ danh m«n chİnh ph¸i , tõ kh«ng cïng bµng m«n t¶ ®¹o ng­êi lui tíi . ") 
elseif (player_Faction == "wudu") then 
Talk(1,"","Vâ l©m ®İch tµ ma oai ®¹o , ng­êi ng­êi ph¶i mµ giÕt chi") 
elseif (player_Faction == "tianwang") then 
Talk(1,"","§¾t gióp mét tay chñ d­¬ng anh chİnh lµ mét vŞ n÷ trung hµo kiÖt , bÇn ni x­a nay ng­ìng mé , ®¸ng tiÕc mét mùc duyÕn khan mét mÆt . ") 
elseif (player_Faction == "shaolin") then 
Talk(1,"","A di ®µ phËt nguyªn lai lµ ph¸i ThiÕu l©m ®İch s­ huynh , kh«ng biÕt huyÒn bëi v× ®¹i s­ gÇn ®©y cã hay kh«ng khang kiÖn ? ") 
elseif (player_Faction == "wudang") then 
Talk(1,"","Vâ §­¬ng hiÖp nghÜa , tªn kh¾p thiªn h¹ , quı ph¸i ®¹o mét ch©n nh©n cïng bæn ph¸i ch­ëng m«n giao t×nh kh«ng c¹n , hai chóng ta ph¸i nh­ng x­ng lµ lµ cïng khİ ngay c¶ chi a") 
elseif (player_Faction == "kunlun") then 
Talk(1,"","TÖ ph¸i cïng quı ph¸i lµm v« lui tíi , kh«ng biÕt cã g× chØ gi¸o ? ") 
elseif (player_Faction == "tianren") then 
Talk(1,"","Quı gi¸o mét mùc c­ t©m kh«ng thÓ dß ®­îc , theo phô kim quèc , ®èi víi ta ®¹i tèng giang s¬n m­u ®å bÊt chİnh , chóng ta chİnh ph¸i vâ l©m cïng c¸c ng­¬i thÒ kh«ng l­ìng lËp") 
elseif (player_Faction == "gaibang") then 
Talk(1,"","§¾t gióp nhiÒu ng­êi thÕ lín , hµo khİ ngÊt trêi , bæn ph¸i rÊt nguyÖn ı kÕt giao c¸c ng­¬i nh÷ng ng­êi b¹n nÇy") 
elseif (nt_getTask(75) == 255) then -- script viet hoa By http://tranhba.com  häc d· cÇu quyÒn ®İch , kh«ng cho phĞp n÷a nhËp m«n ph¸i 
Talk(1,"","Ng­¬i ®· häc ®­îc d· cÇu quyÒn ! kh«ng thÓ n÷a nhËp m«n ph¸i ! ") 
else -- script viet hoa By http://tranhba.com  chØ cÇn kh«ng thuéc vÒ 10 c¸ m«n ph¸i , kh«ng hÒ n÷a ®¬n ®éc kiÓm tr¾c “ kh«ng cöa ph¸i ” 
UTask_em = nt_getTask(1) 
if ((UTask_em > 5*256) and (UTask_em < 10*256)) then -- script viet hoa By http://tranhba.com  nhËp m«n nhiÖm vô trung 
Talk(1,"","Ng­¬i ®· ë Nga Mi s¬n l¸ b¨ng vÕt s­ tû chç nhËn bæn ph¸i ®İch nhËp m«n nhiÖm vô , nh­ng lµ ch­a hoµn thµnh , ng­¬i tr­íc hÕt th«ng qua trµ cÇm s¸ch ®İch kh¶o nghiÖm , sau ®ã sÏ x«ng chui ngµy s­ên nói lÊy ®­îc b¹ch ngäc nh­ ı . ") 
elseif (UTask_em >= 70*256) and (player_Faction ~= "emei") then -- script viet hoa By http://tranhba.com  ®· xuÊt s­ 
Say("nguyªn lai lµ s­ tû , kh«ng biÕt gÇn ®©y kháe kh«ng ? ",3,"B¶n ®å giíi thiÖu /map_help","Kü n¨ng nãi râ /skill_help","Kh«ng cÇn , ®a t¹ s­ tû /no") 
else 
Talk(1,"select","Thiªn h¹ c« g¸i s¸ng chÕ ®İch trong m«n ph¸i , lÊy bæn ph¸i lµ thø nhÊt . bæn ph¸i ®Ö tö ®Òu v× c« g¸i , kh«ng chØ cã vâ c«ng cao c­êng , h¬n n÷a ®a tµi ®a nghÖ , cÇm kú th­ häa kh«ng chç nµo kh«ng tinh . cã ng­êi nãi giang hå lµ nam nh©n thÕ giíi , nh­ng lµ bæn ph¸i l¹i cã thÓ cïng ThiÕu L©m Vâ §­¬ng ®Ønh lËp , v× vËy ng­êi trong vâ l©m kh«ng khái kİnh ®Ö tö bæn m«n ba ph©n . ") 
end 
end 
end; 

function select() 
UTask_em = nt_getTask(1) 
UTask_cy = nt_getTask(6) 
if ((UTask_cy > 5*256) and (UTask_cy < 10*256)) then -- script viet hoa By http://tranhba.com  ®· nhËn thóy khãi nhËp m«n nhiÖm vô 
Talk(1,"","VŞ muéi muéi nµy nguyªn lai lµ muèn vµo thóy khãi cöa , ng­êi cã chİ riªng , ta còng kh«ng tiÖn miÔn c­ìng . ") 
elseif (GetSeries() == 2) and (GetCamp() == 0) and (UTask_cy < 5*256) and (UTask_em < 5*256) then -- script viet hoa By http://tranhba.com  thñy hÖ kh«ng/ch­a vµo thóy khãi Nga Mi 
if (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com  cÊp bËc ®¹t tíi cÊp m­êi 
Say("Gia nhËp chóng ta ph¸i Nga Mi , mäi ng­êi ®Òu lµ h¶o tû muéi , t­¬ng th©n t­¬ng ¸i , kh¾p n¬i lÊy bæn ph¸i İch lîi lµm träng , cïng chung ®em bæn ph¸i ph¸t d­¬ng quang ®¹i . ", 3,"Gia nhËp ph¸i Nga Mi /go","Ta suy nghÜ l¹i mét chót /no","HiÓu râ c¸c cöa vâ nghÖ tinh hoa /Uworld1000_knowmagic") 
else 
Say("Ng­¬i c¨n c¬ ch­a ®¸nh h¶o , th­îng cÇn mét ®o¹n ngµy giê ®İch ma luyÖn , kh«ng muèn thao chi qu¸ cÊp . ®i tr­íc d· ngo¹i luyÖn mét chót , ®Õn <color=Red> cÊp m­êi <color> tíi t×m ta n÷a ®i . ", 0) 
end 
end -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ thñy hÖ ®İch còng kh«ng nãi thªm n÷a liÔu . 
end; 

function go() 
Uworld1000 = nt_getTask(1000) 
if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then 
nt_setTask(1000,260) 
end 
SetRevPos(13,13) -- script viet hoa By http://tranhba.com  thiÕt trİ sèng l¹i ®iÓm 
-- script viet hoa By http://tranhba.com  nt_setTask(1, 10*256) -- script viet hoa By http://tranhba.com  trùc tiÕp nhËp m«n 
SetFaction("emei") -- script viet hoa By http://tranhba.com  nhµ ch¬i gia nhËp ph¸i Nga Mi 
SetCamp(1) 
SetCurCamp(1) 
-- script viet hoa By http://tranhba.com  SetRank(13) 
nt_setTask(137,61) 
SetLastFactionNumber(4) 
-- script viet hoa By http://tranhba.com  trùc tiÕp xö lı l­u tr×nh 
nt_setTask(1,10*256) 
SetRank(74) 
Msg2Player("Hoan nghªnh ng­¬i gia nhËp ph¸i Nga Mi , trùc tiÕp häc ®­îc bæn m«n tÊt c¶ kü n¨ng . ") 
add_em(70) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
-- script viet hoa By http://tranhba.com  kÕt thóc 
-- script viet hoa By http://tranhba.com  Msg2Player("Hoan nghªnh ng­¬i gia nhËp ph¸i Nga Mi , trë thµnh Nga Mi ®Ö tö , häc ®­îc mét l¸ biÕt thu , tuyÕt bay xuyªn v©n ") 
-- script viet hoa By http://tranhba.com  AddNote("Gia nhËp ph¸i Nga Mi , trë thµnh Nga Mi ®Ö tö ") 
Msg2Faction("emei",GetName().." kÓ tõ h«m nay gia nhËp ph¸i Nga Mi , b¸i kiÕn c¸c vŞ s­ tæ , hy väng c¸c vŞ quan t©m chØ gi¸o !",GetName()) 
--NewWorld(13, 1898, 4978) -- script viet hoa By http://tranhba.com  ®em nhµ ch¬i truyÒn tèng ®Õn m«n ph¸i nhËp khÈu 

end; 

function return_yes() 
NewWorld(13, 1898, 4978) -- script viet hoa By http://tranhba.com  ®em nhµ ch¬i truyÒn tèng ®Õn m«n ph¸i nhËp khÈu 
end; 

function em_check_yes() 
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
Say("TiÓu s­ muéi , l¹i xuèng nói tíi ch¬i ? lÇn nµy muèn ta ®­a ng­¬i trë vÒ nói sao ? ",2,"§óng vËy , l¹i muèn phiÒn to¸i tû tû /return_yes","Kh«ng cÇn , ®a t¹ s­ tû /return_no") 
end 

function Uworld1000_jiaoyuemei() 
nt_setTask(1000,260) 
Msg2Player("Ph¸i Nga Mi tiÕp dÉn ®Ö tö nãi ®· lµ m«n ph¸i ®Ö tö , ng­¬i cã thÓ trùc tiÕp ®i gÆp Long nhi nãi chuyÖn .") 
end 

function no() 
end; 
