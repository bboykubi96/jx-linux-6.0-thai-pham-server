-- script viet hoa By http://tranhba.com  c¸c m«n ph¸i tiÕp dÉn ®Ö tö ch©n vèn ThiÕu L©m 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-10-27) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-05-25) thÓ dïng/uèng kü n¨ng toµn khai söa ®æi ®iÒu dông bªn ngoµi v¨n kiÖn ph­¬ng thøc 
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
npc_name = "ThiÕu L©m La H¸n " 

Include("\\script\\global\\g7vn\\g7configall.lua")

function default_talk()

local nDate = tonumber(date("%Y%m%d%H%M"))
if nDate <= ThoiGianHetHanDiemTP then
	Say("§óng vµo lóc <color=yellow>"..ThoiGianOpenStr.."<color> míi b¾t ®Çu chİnh thøc khai më m¸y chñ");
	return 1
end

player_Faction = GetFaction() 
Uworld1000 = nt_getTask(1000) 
if (( Uworld1000 == 240 ) or ( Uworld1000 == 250 )) and ( GetLastFactionNumber() == 0 ) then 
nt_setTask(1000,250) 
Talk(1,"Uworld1000_jiaoyushaolin","Ng­¬i ®· lµ ®Ö tö bæn m«n , kh«ng cÇn ®i , cã thÓ trùc tiÕp cïng Long nhi gÆp mÆt nãi .") 
elseif (player_Faction == "cuiyan") then 
Talk(1,"","Quı m«n lÊy vò vµo vò , ë vâ häc chi ®¹o th­îng kh¸c khai hÒ kİnh , ch©n thÇn hå kú kü còng . tiÓu t¨ng nµy s­¬ng lÔ ®é liÔu . ") 
elseif (player_Faction == "emei") then 
Talk(1,"","Quı ph¸i thanh hiÓu s­ th¸i phËt häc tinh th©m , vâ nghÖ cao minh , tiÓu t¨ng tªn nghe thÊy ®· l©u . ") 
elseif (player_Faction == "tangmen") then 
Talk(1,"","Nghe tiÕng ®· l©u thôc trung §­êng m«n hãa ¸m khİ v× minh khİ , ®em ¸m khİ th­îng ®İch c«ng phu luyÖn ®­îc xuÊt thÇn nhËp hãa , v¨n tr­îng ®¹i s­ nh¾c tíi lóc còng ®Òu béi phôc ®­îc ngay . ") 
elseif (player_Faction == "wudu") then 
Talk(1,"","Quı ph¸i c«ng phu v« cïng ©m ®éc tµn nhÉn , cã vi thiªn hßa , bÇn t¨ng c¶ gan khuyªn ng­¬i cöa nhiÒu h¬n tu tËp kinh phËt thiÖn lı , khÈn kı tõ ¸i t­êng hßa , hãa gi¶i lÖ khİ míi lµ . ") 
elseif (player_Faction == "tianwang") then 
Talk(1,"","§¾t gióp kh¾p n¬i cïng qu©n Kim ch©m phong t­¬ng ®èi , nghe nãi kim quèc ®ang ®iÒu binh khiÓn t­íng ®èi phã ®¾t gióp , xin/mêi c¸c vŞ cÈn thËn nhiÒu h¬n . ") 
elseif (player_Faction == "shaolin") then 
Say("S­ ®Ö , s­ phô l¹i khiÕn/sai ng­¬i xuèng nói lµm viÖc ? ",4," lµ , xin mêi s­ huynh ®­a ta trë vÒ nói /return_yes","B¶n ®å giíi thiÖu /map_help","Kü n¨ng nãi râ /skill_help","§óng vËy , thay ta h­íng s­ phô vÊn an /no") 
elseif (player_Faction == "wudang") then 
Talk(1,"","Xin/mêi chuyÓn c¸o quı ph¸i ®¹o mét ch©n nh©n chç ngåi , tÖ ph¸i ph­¬ng tr­îng trë xuèng , c¸c vŞ thñ täa còng mong ®îi cïng quı ph¸i c¸c vŞ t¸i tô , céng tù vâ häc ch©n ®Õ . ") 
elseif (player_Faction == "kunlun") then 
Talk(1,"","Quı ph¸i vâ häc v« cïng cÇu thµnh , phong mang qu¸ møc tÊt chiªu tËt hËn . hµnh tÈu giang hå , ®©y chİnh lµ ®¹i kş a . A di ®µ phËt") 
elseif (player_Faction == "tianren") then 
Talk(1,"","Quı gi¸o tuy bŞ kim quèc che chë , nh­ng giang hå tù cã giang hå quy t¾c , còng kh«ng ph¶i lµ trë thµnh kim quèc n­íc d¹y liÒn cã thÓ kh«ng chç nµo kiªng kş liÔu . ") 
elseif (player_Faction == "gaibang") then 
Talk(1,"","§¾t gióp ë Hµ bang chñ d­íi sù h­íng dÉn cña ch­ng ch­ng mÆt trêi lªn cao , trë thµnh Trung Nguyªn trong chèn vâ l©m kh¸ng kim ®İch chñ lùc trung thµnh , kh«ng hç ta bèi giai m« . ") 
elseif (nt_getTask(75) == 255) then -- script viet hoa By http://tranhba.com  häc d· cÇu quyÒn ®İch , kh«ng cho phĞp n÷a nhËp m«n ph¸i 
Talk(1,"","Ng­¬i ®· häc ®­îc d· cÇu quyÒn ! kh«ng thÓ n÷a nhËp m«n ph¸i ! ") 
else -- script viet hoa By http://tranhba.com  chØ cÇn kh«ng thuéc vÒ 10 c¸ m«n ph¸i , kh«ng hÒ n÷a ®¬n ®éc kiÓm tr¾c “ kh«ng cöa ph¸i ” 
UTask_sl = nt_getTask(7) 
-- script viet hoa By http://tranhba.com  if (GetSeries() == 0) and (GetCamp() == 4) and (GetLevel() >= 50) and (UTask_sl < 5*256) and (nt_getTask(3) == 70*256) then -- script viet hoa By http://tranhba.com  chuyÓn m«n ph¸i nhiÖm vô khëi ®éng 
-- script viet hoa By http://tranhba.com  Say("Thiªn h¹ vâ c«ng ra ThiÕu L©m , bæn ph¸i vâ c«ng danh m«n chİnh t«ng , vèn tù b¶y ngµn ®Ö tö tÊt c¶ dÉn cho lµ ng¹o . ",2,"Ta muèn ®æi ®Çu quı ph¸i häc nghÖ /defection_get","Kh«ng cã høng thó /defection_no") 
if ((UTask_sl > 5*256) and (UTask_sl < 10*256)) then -- script viet hoa By http://tranhba.com  nhËp m«n nhiÖm vô trung 
Talk(1,"","S­ huynh ®­a cho ng­¬i nhËp m«n nhiÖm vô lµ kh¶o nghiÖm rÌn luyÖn lßng cña ng­¬i chİ nghŞ lùc , chØ cÇn ®em chi hoµn thµnh liÒn cã thÓ tiÕn vµo vèn tù liÔu . ") 
elseif (UTask_sl >= 70*256) and (player_Faction ~= "shaolin") then -- script viet hoa By http://tranhba.com  ®· xuÊt s­ 
Say("Nguyªn lai lµ xuÊt s­ s­ huynh , kh«ng biÕt gÇn ®©y kháe kh«ng ? ",3,"B¶n ®å giíi thiÖu /map_help","Kü n¨ng nãi râ /skill_help","§óng vËy , thay ta h­íng s­ phô vÊn an /no") 
else 
Talk(1,"enroll_select","Ph¸i ThiÕu l©m x­a nay ®­îc gäi lµ vâ l©m m«n ph¸i thø nhÊt , ®­îc x­ng Trung Nguyªn vâ l©m ®İch th¸i s¬n b¾c ®Èu . ThiÕu l©m tù t¨ng chóng tËp vâ nguyªn viÔn l­u tr­êng , lÊy “ ThiÕu L©m b¶y m­¬i hai tuyÖt kû ” danh vang rÒn thiªn h¹ . ") 
end 
end 
end; 

function defection_get() 
Talk(1,"","A di ®µ phËt , ng­¬i chØ cÇn ®i vÒ phİa ®¾t gióp D­¬ng bang chñ thØnh cÇu tho¸t khái Thiªn v­¬ng gióp , n÷a h­íng tÖ tù huyÒn bëi v× ph­¬ng tr­îng bÈm b¸o , liÒn cã thÓ gia nhËp tÖ tù liÔu . ") 
	nt_setTask(7,5*256+10)
Msg2Player("Muèn chuyÓn ®Çu ph¸i ThiÕu l©m , chØ cÇn h­íng thiªn v­¬ng gióp D­¬ng bang chñ thØnh cÇu , l¹i ®i h­íng ph¸i ThiÕu l©m huyÒn bëi v× ph­¬ng tr­îng bÈm b¸o lµ ®­îc . ") 
AddNote("Muèn chuyÓn ®Çu ph¸i ThiÕu l©m , chØ cÇn h­íng thiªn v­¬ng gióp D­¬ng bang chñ thØnh cÇu , l¹i ®i h­íng ph¸i ThiÕu l©m huyÒn bëi v× ph­¬ng tr­îng bÈm b¸o lµ ®­îc . ") 
end 

function defection_no() 
Talk(1,"","Nhµ ch¬i bæn bang vâ c«ng tù thµnh mét c¸ch , còng ch­a ch¾c liÒn thua víi ThiÕu L©m . ta cßn lµ t×nh nguyÖn trung thµnh víi D­¬ng bang chñ . ") 
end 

function enroll_select() 
UTask_sl = nt_getTask(7) 
UTask_tw = nt_getTask(3) 
if ((UTask_tw > 5*256) and (UTask_tw < 10*256)) then -- script viet hoa By http://tranhba.com  ®· nhËn nhËp m«n nhiÖm vô 
Talk(1,"","Thiªn v­¬ng gióp ®ang hång hång háa háa , l¹i kh«ng gièng vèn tù ®ang ®øng ë kim quèc l·nh ®Şa nguy hiÓm c¶nh , ng­¬i lµm nµy lùa chän còng kh«ng th­êng kh«ng tèt . ") 
elseif (GetSeries() == 0) and (GetCamp() == 0) and (UTask_tw < 5*256) and (UTask_sl < 5*256) then -- script viet hoa By http://tranhba.com  kim hÖ kh«ng/ch­a vµo Thiªn v­¬ng ThiÕu L©m 
if ((GetLevel() >= 10) and (HaveMagic(29) == -1)) then -- script viet hoa By http://tranhba.com  cÊp bËc ®¹t tíi cÊp m­êi h¬n n÷a kh«ng cã häc qua “ chĞm long quyÕt ”# 
Say("Vèn tù v× Trung Nguyªn c¸c ®¹i danh cöa chİnh ph¸i ®øng ®Çu , ng­¬i cã hay kh«ng còng muèn gia nhËp vèn tù ? ", 3,"Gia nhËp ph¸i ThiÕu l©m /go","Ta suy nghÜ l¹i mét chót /no","HiÓu râ c¸c cöa vâ nghÖ tinh hoa /Uworld1000_knowmagic") 
else 
Talk(1,"","Ng­¬i c¨n c¬ ch­a ®¸nh h¶o , kh«ng thİch hîp qu¸ sím tu luyÖn bæn ph¸i tuyÖt häc , kh«ng b»ng ng­¬i ®i tr­íc ®¸nh h¶o trô cét , ®Õn cÊp m­êi trë l¹i t×m tiÓu t¨ng . ") 
end 
end -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ kim hÖ ®İch còng kh«ng nãi thªm n÷a liÔu . 
end; 

function go() 
Uworld1000 = nt_getTask(1000) 
if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then 
nt_setTask(1000,260) 
end 
SetRevPos(103,51) -- script viet hoa By http://tranhba.com  thiÕt trİ sèng l¹i ®iÓm 
-- script viet hoa By http://tranhba.com  nt_setTask(7,10*256) -- script viet hoa By http://tranhba.com  trùc tiÕp nhËp m«n 
SetFaction("shaolin") -- script viet hoa By http://tranhba.com  nhµ ch¬i gia nhËp m«n ph¸i 
SetCamp(1) 
SetCurCamp(1) 
-- script viet hoa By http://tranhba.com  SetRank(1) 
nt_setTask(137,67) 
SetLastFactionNumber(0) 
-- script viet hoa By http://tranhba.com  trùc tiÕp xö lı l­u tr×nh 
nt_setTask(7,10*256) 
SetRank(72) 
Msg2Player("Hoan nghªnh ng­¬i gia nhËp ph¸i ThiÕu l©m , trùc tiÕp häc ®­îc bæn m«n tÊt c¶ kü n¨ng . ") 
add_sl(70) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
-- script viet hoa By http://tranhba.com  kÕt thóc 
-- script viet hoa By http://tranhba.com  Msg2Player("Hoan nghªnh ng­¬i gia nhËp ph¸i ThiÕu l©m , trë thµnh quĞt s©n t¨ng , häc ®­îc hµng long vâ c«ng , kim c­¬ng phôc ma ") 
-- script viet hoa By http://tranhba.com  AddNote("Gia nhËp ph¸i ThiÕu l©m , trë thµnh quĞt s©n t¨ng .") 
Msg2Faction("shaolin",GetName().." tõ h«m nay ®i gia nhËp ThiÕu L©m , b¸i kiÕn c¸c vŞ s­ tæ , hy väng c¸c vŞ quan t©m chØ gi¸o !",GetName()) 
--NewWorld(103, 1845, 2983) -- script viet hoa By http://tranhba.com  ®em nhµ ch¬i truyÒn tèng ®Õn m«n ph¸i nhËp khÈu 

end; 

function return_yes() 
NewWorld(103, 1845, 2983) -- script viet hoa By http://tranhba.com  ®em nhµ ch¬i truyÒn tèng ®Õn m«n ph¸i nhËp khÈu 
end; 

function sl_check_yes() -- script viet hoa By http://tranhba.com  theo nh­ kü n¨ng x¸c ®Şnh nhiÖm vô thay ®æi l­îng ®İch kiÓm tra . . . ch­a t­¬ng øng ®æi míi 
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
Say("S­ ®Ö , s­ phô l¹i khiÕn sai ng­¬i xuèng nói lµm viÖc ? ",2,"Xin mêi s­ huynh ®­a ta trë vÒ nói /return_yes","§óng vËy , thay ta h­íng s­ phô vÊn an /no") 
end 

function Uworld1000_jiaoyushaolin() 
nt_setTask(1000,260) 
Msg2Player("Ph¸i ThiÕu l©m tiÕp dÉn ®Ö tö nãi ®· lµ m«n ph¸i ®Ö tö , ng­¬i cã thÓ trùc tiÕp ®i gÆp Long nhi nãi chuyÖn .") 
end 

function no() 
end; 
