-- script viet hoa By http://tranhba.com  c¸c m«n ph¸i tiÕp dÉn ®Ö tö ch©n vèn # thóy khãi cöa 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-10-27) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-05-25) thÓ dïng/uèng kü n¨ng toµn khai söa ®æi ®iÒu dông bªn ngoµi v¨n kiÖn ph­¬ng thøc 
Include("\\script\\task\\newtask\\newtask_head.lua") 
Include("\\script\\task\\newtask\\education\\knowmagic.lua") 
Include("\\script\\global\\skills_table.lua") 
Include("\\script\\global\\map_helper.lua") 
Include( "\\script\\missions\\freshman_match\\head.lua" ) 
npc_name = "Thóy Yªn Hoa Sø" 

Include("\\script\\global\\g7vn\\g7configall.lua")

function default_talk()

local nDate = tonumber(date("%Y%m%d%H%M"))
if nDate <= ThoiGianHetHanDiemTP then
	Say("§óng vµo lóc <color=yellow>"..ThoiGianOpenStr.."<color> míi b¾t ®Çu chİnh thøc khai më m¸y chñ");
	return 1
end

player_Faction = GetFaction() 
Uworld1000 = nt_getTask(1000) 
if (( Uworld1000 == 240 ) or ( Uworld1000 == 250 )) and ( GetLastFactionNumber() == 5 ) then 
nt_setTask(1000,250) 
Talk(1,"Uworld1000_jiaoyucuiyan","Ng­¬i ®· lµ ®Ö tö bæn m«n , kh«ng cÇn ®i , cã thÓ trùc tiÕp cïng Long nhi gÆp mÆt nãi .") 
elseif (player_Faction == "cuiyan") then -- script viet hoa By http://tranhba.com  bæn m«n 
Say("Muéi muéi l¹i len lĞn ch¹y ra ngoµi ch¬i ? ",4," õ d¹ , phiÒn to¸i tû tû ®­a ta trë vÒ /return_yes","B¶n ®å giíi thiÖu /map_help","Kü n¨ng nãi râ /skill_help","Tû tû lµm bé nh­ kh«ng thÊy ta lµ ®­îc n÷a/råi /no") 
elseif (player_Faction == "emei") then 
Talk(1,"","Nh­ hoa bµn ®İch c« g¸i , cµng muèn mçi ngµy ®èi mÆt thanh ®Ìn cæ phËt . ta kh«ng thİch nhÊt c¸c ng­¬i chİnh lµ ®iÓm nµy . ") 
elseif (player_Faction == "tangmen") then 
Talk(1,"","§¾t hai ta ph¸i ®¸m hái s¾p tíi , kh«ng cÇn n÷a ph©n víi nhau , qu¶ thËt thiªn ®¹i chuyÖn vui . ") 
elseif (player_Faction == "wudu") then 
Talk(1,"","Ta ghĞt nhÊt len lĞn h¹ ®éc h¹i ng­êi ®İch h¹ ba l¹m a , xin lçi , ta kh«ng ph¶i nãi ng­¬i a . ") 
elseif (player_Faction == "tianwang") then 
Talk(1,"","C¸c ng­¬i trong bang d­¬ng hå cã bŞ cha chŞu nhµ ta Hµ tû tû , hõ , thiªn h¹ nam nh©n qu¶ nhiªn kh«ng cã mét thø tèt") 
elseif (player_Faction == "shaolin") then 
Talk(1,"","Ta ph¶i kh«ng muèn lµm trø hßa th­îng m¾ng con lõa ngèc n÷a/råi , bÊt qu¸ ®¹i hßa th­îng ng­¬i kh«ng cã sao t×m ta ®Õn gÇn lµm g× ? ") 
elseif (player_Faction == "wudang") then 
Talk(1,"","Quı ph¸i lÊy hiÖp nghÜa tù c­ , còng kh«ng biÕt ®an t­ nam lu«n lµ gièng l¹i b× chã mét lo¹i kÒ cËn chóng ta yªn s­ tû lµ kia cöa tö hiÖp nghÜa ? ") 
elseif (player_Faction == "kunlun") then 
Talk(1,"","Ng­ìng mé ®· l©u C«n L«n ph¸i nhanh chãng quËt khëi danh tiÕng m¹nh mÎ , th× ra lµ quı ph¸i ®ång m«n luyÖn c«ng lµ thËt ®ao sóng thËt t¸nh m¹ng t­¬ng b¸c , thËt ®óng lµ ®¸ng quı , tiÓu n÷ tö tù than thë phÊt nh­ nha") 
elseif (player_Faction == "tianren") then 
Talk(1,"","Ng­êi nµo lµm hoµng ®Õ ph¶i kh«ng quan chuyÖn cña ta , nh­ng c¸c ng­¬i tµn s¸t v« téi ®å ®éc sinh linh bæn c« n­¬ng chİnh lµ nh×n kh«ng võa m¾t") 
elseif (player_Faction == "gaibang") then 
Talk(2,"","§¹i hiÖp kh«ng nªn tíi ","A!!! con rÖp...") 
elseif (nt_getTask(75) == 255) then -- script viet hoa By http://tranhba.com  häc d· cÇu quyÒn ®İch , kh«ng cho phĞp n÷a nhËp m«n ph¸i 
Talk(1,"","Ng­¬i ®· häc ®­îc d· cÇu quyÒn ! kh«ng thÓ n÷a nhËp m«n ph¸i ! ") 
else -- script viet hoa By http://tranhba.com  chØ cÇn kh«ng thuéc vÒ 10 c¸ m«n ph¸i , kh«ng hÒ n÷a ®¬n ®éc kiÓm tr¾c “ kh«ng cöa ph¸i ” 
UTask_cy = nt_getTask(6) 
-- script viet hoa By http://tranhba.com  if (GetSeries() == 2) and (GetCamp() == 4) and (GetLevel() >= 50) and (UTask_cy < 5*256) and (nt_getTask(1) == 70*256) then -- script viet hoa By http://tranhba.com  chuyÓn m«n ph¸i nhiÖm vô khëi ®éng 
-- script viet hoa By http://tranhba.com  Say("Nh­ hoa bµn ®İch c« g¸i , cµng muèn mçi ngµy ®èi mÆt thanh ®Ìn cæ phËt , cÇn g× chø . kia gièng chóng ta thóy khãi m«n h¹ , ngµy ngµy hoan thanh tiÕu ng÷ , ®ã míi lµ chóng ta ch©n chİnh h¼n cã ngµy nha . ",2,"Cã ®¹o lı , nh­ vËy ta muèn ®æi ®Çu thóy khãi nªn lµm c¸i g× b©y giê ? /defection_get","Thanh ®Ìn cæ phËt vèn ta mong muèn , tû tû kh«ng cÇn nhiÒu lêi /no") 
if ((UTask_cy > 5*256) and (UTask_cy < 10*256)) then -- script viet hoa By http://tranhba.com  nhËp m«n nhiÖm vô trung 
Talk(1,"","Ng­¬i ®· ë s­ muéi n¬i ®ã nhËn nhËp m«n nhiÖm vô , nh­ng lµ ch­a hoµn thµnh , ng­¬i th«ng qua hoa kh«i trËn ®İch kh¶o nghiÖm sau chİnh lµ ®ång m«n tû muéi liÔu . ") 
elseif (UTask_cy >= 70*256) and (player_Faction ~= "cuiyan") then -- script viet hoa By http://tranhba.com  ®· xuÊt s­ 
Say("Tû tû t¹i sao muèn xuÊt s­ sao , “ ngËm thóy ng­ng khãi c­êi mÉu ®¬n ” kh«ng ph¶i lµ h¬n tiªu dao tù t¹i sao ? ",3,"B¶n ®å giíi thiÖu /map_help","Kü n¨ng nãi râ /skill_help","Tû tû lµm bé nh­ kh«ng thÊy ta lµ ®­îc n÷a/råi /no") 
else 
Talk(1,"enroll_select","Thóy yªn m«n chóng ta tuy lµ n÷, nh­ng vâ nghÖ lÊy 'Khinh, Kho¸i, Kú, Mü' mµ næi tiÕng giang hå. Tû muéi tÒ t©m! Trong giang hå kh«ng ai d¸m coi khinh") 
end 
end 
end; 

function defection_get() 
Talk(1,"","RÊt ®¬n gi¶n , ng­¬i chØ cÇn ®i vÒ phİa quı ph¸i thanh hiÓu s­ th¸i thØnh cÇu chuyÓn tíi thóy khãi cöa , sau ®ã sÏ h­íng bæn m«n duÉn ngËm khãi ch­ëng m«n bÈm b¸o lµ ®­îc råi . yªn t©m , thanh hiÓu s­ th¸i th«ng t×nh ®¹t lı , sÏ kh«ng lµm khã ng­¬i . ") 
	nt_setTask(6,5*256+10)
Msg2Player("Muèn chuyÓn ®Çu thóy khãi cöa , chØ cÇn h­íng Nga Mi thanh hiÓu s­ th¸i thØnh cÇu , sau ®ã ®i vÒ phİa thóy khãi duÉn ngËm khãi ch­ëng m«n bÈm b¸o lµ ®­îc . ") 
AddNote("Muèn chuyÓn ®Çu thóy khãi cöa , chØ cÇn h­íng Nga Mi thanh hiÓu s­ th¸i thØnh cÇu , sau ®ã ®i vÒ phİa thóy khãi duÉn ngËm khãi ch­ëng m«n bÈm b¸o lµ ®­îc . ") 
end 

function enroll_select() 
UTask_em = nt_getTask(1) 
UTask_cy = nt_getTask(6) 
if ((UTask_em > 5*256) and (UTask_em < 10*256)) then -- script viet hoa By http://tranhba.com  ®· nhËn thóy khãi nhËp m«n nhiÖm vô 
Talk(1,"","L¹i mét vŞ h¶o tû muéi muèn ®i tr­êng b¹n c¸ gç thanh ®Ìn , thËt lµ ®¸ng tiÕc ®¸ng tiÕc") 
elseif (GetSeries() == 2) and (GetCamp() == 0) and (UTask_em < 5*256) and (UTask_cy < 5*256) then -- script viet hoa By http://tranhba.com  thñy hÖ kh«ng/ch­a vµo Nga Mi thóy khãi 
if (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com  cÊp bËc ®¹t tíi cÊp m­êi 
Say("Muéi muéi cã muèn hay kh«ng gia nhËp chóng ta thóy khãi cöa ? ", 3,"Gia nhËp thóy khãi cöa /go","Ta suy nghÜ l¹i mét chót /no","HiÓu râ c¸c cöa vâ nghÖ tinh hoa /Uworld1000_knowmagic") 
else 
Talk(1,"","Ng­¬i tr­íc ®em c¨n c¬ ®¸nh mét trËn , ®Õn <color=Red> cÊp m­êi <color> chóng ta cïng nhau lµm xong tû muéi ®i . ") 
end 
end -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ thñy hÖ ®İch còng kh«ng nãi thªm n÷a liÔu . 
end; 

function go() 
Uworld1000 = nt_getTask(1000) 
if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then 
nt_setTask(1000,260) 
end 
SetRevPos(154,61) -- script viet hoa By http://tranhba.com  sèng l¹i ®iÓm 
-- script viet hoa By http://tranhba.com  nt_setTask(6,10*256) -- script viet hoa By http://tranhba.com  trùc tiÕp nhËp m«n 
SetFaction("cuiyan") -- script viet hoa By http://tranhba.com  nhµ ch¬i gia nhËp ph¸i Nga Mi 
SetCamp(3) 
SetCurCamp(3) 
-- script viet hoa By http://tranhba.com  SetRank(31) 
nt_setTask(137,66) 
SetLastFactionNumber(5) 
-- script viet hoa By http://tranhba.com  trùc tiÕp xö lı l­u tr×nh 
nt_setTask(6,10*256) 
SetRank(77) 
Msg2Player("Hoan nghªnh ng­¬i gia nhËp thóy khãi cöa , trùc tiÕp häc ®­îc bæn m«n tÊt c¶ kü n¨ng . ") 
add_cy(70) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
-- script viet hoa By http://tranhba.com  kÕt thóc 
-- script viet hoa By http://tranhba.com  Msg2Player("Hoan nghªnh ngµi gia nhËp thóy khãi m«n ph¸i biÕn thµnh hoa tö , häc ®­îc phong hoa tuyÕt nguyÖt , giã cuèn tr¨ng tµn / cuèi kú / cuèi th¸ng ") 
-- script viet hoa By http://tranhba.com  AddNote("Gia nhËp thóy khãi m«n ph¸i , trë thµnh hoa tö ") 
Msg2Faction("cuiyan",GetName().." tõ h«m nay gia nhËp thóy khãi m«n ph¸i , b¸i kiÕn c¸c vŞ s­ tæ , hy väng c¸c vŞ quan t©m chØ gi¸o !",GetName()) 
--NewWorld(154, 403, 1361) -- script viet hoa By http://tranhba.com  truyÒn tíi trong m«n ph¸i 

end; 

function return_yes() 
NewWorld(154, 403, 1361) -- script viet hoa By http://tranhba.com  truyÒn tíi trong m«n ph¸i 
end; 

function cy_check_yes() -- script viet hoa By http://tranhba.com  tõ Nga Mi ®æi tíi . . . ch­a t­¬ng øng ®æi míi 
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

function cy_check_no() 
Say("Muéi muéi l¹i len lĞn ch¹y ra ngoµi ch¬i ? ",2," õ d¹ , phiÒn to¸i tû tû ®­a ta trë vÒ /return_yes","Tû tû lµm bé nh­ kh«ng thÊy ta lµ ®­îc n÷a/råi /no") 
end 

function Uworld1000_jiaoyucuiyan() 
nt_setTask(1000,260) 
Msg2Player("Thóy khãi cöa tiÕp dÉn ®Ö tö nãi ng­¬i cã thÓ trùc tiÕp ®i gÆp Long nhi nãi chuyÖn .") 
end 

function no() 
end; 
