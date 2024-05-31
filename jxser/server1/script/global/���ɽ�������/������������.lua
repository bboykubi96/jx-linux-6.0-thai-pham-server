-- script viet hoa By http://tranhba.com  Thiªn v­¬ng tiÕp dÉn ®Ö tö m« b¶n Thiªn v­¬ng t­íng l·nh 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-10-28) tõ nh©n vËt ®èi tho¹i söa ®æi tíi 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-05-25) thÓ dïng/uèng kü n¨ng toµn khai söa ®æi ®iÒu dông bªn ngoµi v¨n kiÖn ph­¬ng thøc 
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )

npc_name = "Thiªn V­¬ng T­íng LÜnh " 

Include("\\script\\global\\g7vn\\g7configall.lua")

function default_talk()

local nDate = tonumber(date("%Y%m%d%H%M"))
if nDate <= ThoiGianHetHanDiemTP then
	Say("§óng vµo lóc <color=yellow>"..ThoiGianOpenStr.."<color> míi b¾t ®Çu chİnh thøc khai më m¸y chñ");
	return 1
end

player_Faction = GetFaction() 
Uworld1000 = nt_getTask(1000) 
if (( Uworld1000 == 240 ) or ( Uworld1000 == 250 )) and ( GetLastFactionNumber() == 1 ) then 
nt_setTask(1000,250) 
Talk(1,"Uworld1000_jiaoyutianwang","Ng­¬i ®· lµ ®Ö tö bæn m«n , kh«ng cÇn ®i , cã thÓ trùc tiÕp cïng Long nhi gÆp mÆt nãi .") 
elseif (player_Faction == "emei") then 
Talk(1,"","TÖ gióp mét tay chñ th­êng th­êng cïng bän thuéc h¹ nh¾c tíi quı ph¸i , ®èi víi quı ph¸i ch­ëng m«n thanh hiÓu s­ th¸i vÉn lu«n lµ hÕt søc kİnh mé ®İch . ") 
elseif (player_Faction == "cuiyan") then 
Talk(1,"","N÷ nh©n phiÒn to¸i , n÷ nh©n xinh ®Ñp h¬n n÷a phiÒn to¸i , biÕt vâ c«ng n÷ nh©n xinh ®Ñp cµng lµ phiÒn to¸i trung ®İch phiÒn to¸i , quı ph¸i ng­êi cña ta còng kh«ng d¸m trªu chäc") 
elseif (player_Faction == "tangmen") then 
Talk(1,"","Häc vâ ng­êi h¼n quang minh lçi l¹c , ta ghĞt nhÊt nh÷ng thø kia khiÕn cho ¸m khİ h¹ ®éc thuèc ®İch thÊy kh«ng ph¶i quang ®İch hµnh kİnh") 
elseif (player_Faction == "wudu") then 
Talk(1,"","Bæn bang mÆc dï kh«ng mª tİn bÊt kú danh m«n chİnh ph¸i , nh­ng lµ còng kh«ng tiÕt cïng nh÷ng thø kia khiÕn cho cæ h¹ ®éc ®å v× ngò") 
elseif (player_Faction == "shaolin") then 
Talk(1,"","ThiÕu L©m c«ng phu mÆc dï ®­îc x­ng vâ l©m chİnh t«ng , nh­ng lµ ta còng kh«ng lµm sao phôc khİ , hßa th­îng thËt tèt niÖm kinh míi lµ ®øng ®¾n , häc ng­êi nµo ®¸nh nhau , b©y giê cã vi thanh söa chi ®¹o . ") 
elseif (player_Faction == "wudang") then 
Talk(1,"","TruyÒn thuyÕt quı ph¸i nãi mét ch©n nh©n vâ c«ng s©u kh«ng l­êng ®­îc , kh«ng biÕt lóc nµo cã c¬ héi thÊy . ") 
elseif (player_Faction == "kunlun") then 
Talk(1,"","Quı ph¸i n¨m gÇn ®©y ph¸t triÓn thÇn tèc , nãi vËy còng kh«ng ph¶i l·ng ph¶i h­ danh , ch¼ng qua lµ chí ®em Trung Nguyªn vâ l©m còng coi th­êng") 
elseif (player_Faction == "tianren") then 
Talk(1,"","Chóng ta còng kh«ng cïng ng­êi Kim ®¸nh c¸i g× giao ®¹o") 
elseif (player_Faction == "gaibang") then 
Talk(1,"","§¾t gióp cïng bæn bang ®­îc x­ng thiªn h¹ hai ®¹i bang , cã c¬ héi chóng ta tèt h¬n h¶o th©n cËn mét chót . ") 
elseif (player_Faction == "tianwang") then 
Say("Huynh ®Ö , cã muèn hay kh«ng ta ®­a ng­¬i trë vÒ ®¶o ? ",4,"H¶o , ®a t¹ huynh ®Ö /return_yes","B¶n ®å giíi thiÖu /map_help","Kü n¨ng nãi râ /skill_help","Kh«ng cÇn , ®a t¹ /no") 
-- script viet hoa By http://tranhba.com  Say("Ng­îng ngïng , bëi v× cã İt ng­êi nhiÖm vô tr¹ng th¸i bÊt ch¸nh x¸c , chóng ta ®ang lÇn n÷a v× m«n h¹ ®Ö tö tiÕn hµnh kiÓm tra . ng­¬i muèn kiÓm tra nhiÖm vô cña ng­¬i tr¹ng th¸i sao ? nÕu nh­ ng­¬i cho r»ng ng­¬i ®İch tr¹ng th¸i lµ chİnh x¸c còng kh«ng tÊt kiÓm tra . ",2,"KiÓm tra /tw_check_yes","Kh«ng cÇn /tw_check_no") 
elseif (nt_getTask(75) == 255) then -- script viet hoa By http://tranhba.com  häc d· cÇu quyÒn ®İch , kh«ng cho phĞp n÷a nhËp m«n ph¸i 
Talk(1,"","Ng­¬i ®· häc ®­îc d· cÇu quyÒn ! kh«ng thÓ n÷a nhËp m«n ph¸i !") 
else -- script viet hoa By http://tranhba.com  chØ cÇn kh«ng thuéc vÒ 10 c¸ m«n ph¸i , kh«ng hÒ n÷a ®¬n ®éc kiÓm tr¾c “ kh«ng cöa ph¸i ” 
UTask_tw = nt_getTask(3) 
-- script viet hoa By http://tranhba.com  if ((UTask_tw > 5*256) and (UTask_tw < 10*256)) then -- script viet hoa By http://tranhba.com  nhËp m«n nhiÖm vô trung 
-- script viet hoa By http://tranhba.com  Talk(1,"","Ng­¬i ®· ë trªn trêi v­¬ng ®¶o t«n ®¹o dÉn chç nhËn bæn bang ®İch nhËp m«n nhiÖm vô , nh­ng lµ ch­a hoµn thµnh , ng­¬i cÇn ®i ba l¨ng huyÒn töu qu¸n mua ®­îc r­îu ngon “ oµnh lai xu©n ”") 
if (UTask_tw >= 70*256) then -- script viet hoa By http://tranhba.com  Thiªn v­¬ng gióp xuÊt s­ 
Say("Ng­¬i ®· ë trªn trêi v­¬ng ®¶o t«n ®¹o dÉn chç nhËn bæn bang ®İch nhËp m«n nhiÖm vô , nh­ng lµ ch­a hoµn thµnh , ng­¬i cÇn ®i ba l¨ng huyÒn töu qu¸n mua ®­îc r­îu ngon “ oµnh lai xu©n ”",3,"B¶n ®å giíi thiÖu /map_help","Kü n¨ng nãi râ /skill_help","BiÕt /no") 
		elseif (UTask_tw == 5*256+80) and (GetByte(nt_getTask(38),1) == 127) then		-- script viet hoa By http://tranhba.com  ÌìÍõ¼ÇÃûÍê³É£¬µ«ÊÇÓĞBUGµÄÈËµÄĞŞ²¹
Talk(1,"","H¶o huynh ®Ö , chóng ta l¹i gÆp mÆt , chí tíi kháe kh«ng ? cã c¬ héi hai anh em ta uèng n÷a mét chĞn") 
if (HaveMagic(29) >= 0) then -- script viet hoa By http://tranhba.com  häc ®­îc chĞm long quyÕt ®İch ®Ö tö bæn m«n , thiÕt trİ v× ®· xuÊt s­ 
nt_setTask(3,70*256) 
else -- script viet hoa By http://tranhba.com  nÕu kh«ng liÒn thanh linh , bao gåm tr­íc kia ph¶n béi ®Õn ThiÕu L©m ®İch . 
nt_setTask(3,0) 
end 
else 
Talk(3, "select","Bæn bang bang chñ d­¬ng anh ë trªn giang hå h¸ch h¸ch næi danh , ®õng xem nµng lµ c¸ c« g¸i , nh­ng lµ vâ nghÖ cao c­êng , ®¶m thøc h¬n ng­êi , kh«ng ®Ó cho bùc mµy r©u , c¸c huynh ®Ö trong bang còng dïng/uèng nµng","Bæn bang bang chóng tr¶i réng hai hå , nhiÒu ng­êi thÕ lín , thiªn h¹ kh«ng ng­êi d¸m khinh th­êng chóng ta","Bæn bang võa kh¸ng qu©n Kim còng ph¶n tèng ®×nh , c¸c huynh ®Ö ®Òu lµ nghÌo khæ d©n chóng xuÊt th©n , x«ng x¸o giang hå còng chØ lµ v× cã con ®­êng sèng . hoµng ®Õ nµo ngåi giang s¬n , cïng chóng ta còng kh«ng quan hÖ thÕ nµo") 
end 
end 
end; 

function select()
UTask_tw = nt_getTask(3) 
UTask_sl = nt_getTask(7) -- script viet hoa By http://tranhba.com  t¹m thêi kh«ng cho phĞp trë l¹i ThiÕu L©m nÆng h¬n ph¶n Thiªn v­¬ng . 
if ((UTask_sl > 5*256) and (UTask_sl < 10*256)) then -- script viet hoa By http://tranhba.com  ®· nhËn ThiÕu L©m nhËp m«n nhiÖm vô 
Talk(1,"","huynh ®Ö nguyªn lai lµ muèn vµo ph¸i ThiÕu l©m , ngµy sau còng hoan nghªnh ngµy qua/n÷a v­¬ng gióp lµm kh¸ch . ") 
elseif (GetCamp() == 0) and (GetSeries() == 0) and (UTask_sl < 5*256) and (UTask_tw < 5*256) then -- script viet hoa By http://tranhba.com  kim hÖ kh«ng/ch­a vµo ThiÕu L©m Thiªn v­¬ng 
if (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com  cÊp bËc ®¹t tíi cÊp m­êi 
Say("ng­¬i gia nhËp bæn bang , chóng ta chİnh lµ mét gia huynh ®Ö n÷a/råi , ®oµn ng­êi cã phóc cïng h­ëng , cã n¹n cïng chŞu , oanh oanh liÖt liÖt ®Şa ®¹i lµm mét cuéc", 3,"Gia nhËp Thiªn v­¬ng gióp /go","Ta suy nghÜ l¹i mét chót /no","HiÓu râ c¸c cöa vâ nghÖ tinh hoa /Uworld1000_knowmagic") 
else 
Talk(1,"","häc vâ ng­êi , ng­êi nµo kh«ng cã ch¶y qua m¸u ch¶y qua må h«i ? sî khæ kh«ng thÓ ®­îc tr­íc ra th«n luyÖn thËt giái mét luyÖn , ®¸nh h¶o c¨n c¬ ®Õn <color=Red> cÊp m­êi <color> tíi t×m ta n÷a . ") 
end 
end 
end; 

function go() 
Uworld1000 = nt_getTask(1000) 
if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then 
nt_setTask(1000,260) 
end 
SetRevPos(59,21) -- script viet hoa By http://tranhba.com  thiÕt trİ sèng l¹i ®iÓm 
-- script viet hoa By http://tranhba.com  nt_setTask(3, 10*256) 
SetFaction("tianwang") -- script viet hoa By http://tranhba.com  nhµ ch¬i gia nhËp Thiªn v­¬ng gióp 
SetCamp(3) 
SetCurCamp(3) 
-- script viet hoa By http://tranhba.com  SetRank(43) 
nt_setTask(137,63) 
SetLastFactionNumber(1) 
-- script viet hoa By http://tranhba.com  trùc tiÕp xö lı l­u tr×nh 
nt_setTask(3,10*256) 
SetRank(79) 
Msg2Player("Hoan nghªnh ng­¬i gia nhËp Thiªn v­¬ng gióp , trùc tiÕp häc ®­îc bæn m«n tÊt c¶ kü n¨ng . ") 
add_tw(70) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
-- script viet hoa By http://tranhba.com  kÕt thóc 
-- script viet hoa By http://tranhba.com  Msg2Player("Hoan nghªnh gia nhËp Thiªn v­¬ng gióp , biÕn thµnh Thiªn v­¬ng gióp ®Ö tö !") 
-- script viet hoa By http://tranhba.com  Msg2Player("Häc ®­îc sÊm sĞt chĞm , trë vÒ phong r¬i nh¹n ") 
-- script viet hoa By http://tranhba.com  AddNote("Gia nhËp Thiªn v­¬ng gióp , trë thµnh bæn bang ®Ö tö .") 
Msg2Faction("tianwang",GetName().." kÓ tõ h«m nay gia nhËp Thiªn v­¬ng gióp , b¸i kiÕn c¸c vŞ , hy väng c¸c vŞ chØ gi¸o nhiÒu h¬n !",GetName()) 
---NewWorld(59,1552,3188) -- script viet hoa By http://tranhba.com  ®em nhµ ch¬i truyÒn tèng ®Õn m«n ph¸i nhËp khÈu 
end; 

function return_yes() 
NewWorld(59, 1425, 3472) -- script viet hoa By http://tranhba.com  ®em nhµ ch¬i truyÒn tèng ®Õn m«n ph¸i nhËp khÈu 
end; 

function tw_check_yes() 
if (GetSeries() ~= 0) then 
Talk(1,"","ng­¬i ngò hµnh thuéc tİnh kh«ng ph¶i chóng ta kim hÖ , lµm sao sÏ lÉn vµo ®Õn bæn bang tíi ? ®i tr­íc hái mét chót trß ch¬i nh©n viªn qu¶n lı ®i . ") 
elseif (HaveMagic(41) >= 0) then -- script viet hoa By http://tranhba.com  lµm xong 50 cÊp nhiÖm vô , huyÕt chiÕn b¸t ph­¬ng 
nt_setTask(3,60*256) 
Talk(1,"","ta ®· ®em nhiÖm vô cña ng­¬i tr¹ng th¸i lÇn n÷a söa sang l¹i qua . ng­¬i b©y giê cã thÓ ®i nhËn xuÊt s­ nhiÖm vô . ") 
elseif (HaveMagic(37) >= 0) then -- script viet hoa By http://tranhba.com  lµm xong 40 cÊp nhiÖm vô , b¸t phong chĞm 
nt_setTask(3,50*256) 
Talk(1,"","ta ®· ®em nhiÖm vô cña ng­¬i tr¹ng th¸i lÇn n÷a söa sang l¹i qua . ng­¬i ®· hoµn thµnh 40 cÊp nhiÖm vô . ") 
elseif (HaveMagic(36) >= 0) then -- script viet hoa By http://tranhba.com  lµm xong 30 cÊp nhiÖm vô , Thiªn v­¬ng chiÕn ı 
nt_setTask(3,40*256) 
Talk(1,"","ta ®· ®em nhiÖm vô cña ng­¬i tr¹ng th¸i lÇn n÷a söa sang l¹i qua . ng­¬i ®· hoµn thµnh 30 cÊp nhiÖm vô . ") 
elseif (HaveMagic(33) >= 0) then -- script viet hoa By http://tranhba.com  lµm xong 20 cÊp nhiÖm vô , tÜnh t©m quyÕt 
nt_setTask(3,30*256) 
Talk(1,"","ta ®· ®em nhiÖm vô cña ng­¬i tr¹ng th¸i lÇn n÷a söa sang l¹i qua . ng­¬i ®· hoµn thµnh 20 cÊp nhiÖm vô . ") 
elseif (HaveMagic(23) >= 0) then -- script viet hoa By http://tranhba.com  lµm xong 10 cÊp nhiÖm vô , Thiªn v­¬ng th­¬ng ph¸p 
nt_setTask(3,20*256) 
Talk(1,"","ta ®· ®em nhiÖm vô cña ng­¬i tr¹ng th¸i lÇn n÷a söa sang l¹i qua . ng­¬i ®· hoµn thµnh 10 cÊp nhiÖm vô . ") 
else 
nt_setTask(3,10*256) 
Talk(1,"","ta ®· ®em nhiÖm vô cña ng­¬i tr¹ng th¸i lÇn n÷a söa sang l¹i qua . ng­¬i b©y giê cã thÓ ®i nhËn 10 cÊp nhiÖm vô . ") 
end 
end 

function tw_check_no() 
Say("huynh ®Ö , cã muèn hay kh«ng ta ®­a ng­¬i trë vÒ ®¶o ? ",2,"H¶o , ®a t¹ huynh ®Ö /return_yes","Kh«ng cÇn , ®a t¹ /return_no") 
end 


function Uworld1000_jiaoyutianwang() 
nt_setTask(1000,260) 
Msg2Player("Thiªn v­¬ng gióp tiÕp dÉn ®Ö tö nãi ®· lµ m«n ph¸i ®Ö tö , ng­¬i cã thÓ trùc tiÕp ®i gÆp Long nhi nãi chuyÖn .") 
end 


function no() 
end; 
