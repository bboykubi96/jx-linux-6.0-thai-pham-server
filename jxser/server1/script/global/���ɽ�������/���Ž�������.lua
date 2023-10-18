-- script viet hoa By http://tranhba.com  §­êng m«n tiÕp dÉn ®Ö tö m« b¶n §­êng m«n thŞ vÖ 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-10-28) tõ nh©n vËt ®èi tho¹i söa ®æi tíi 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-05-25) thÓ dïng/uèng kü n¨ng toµn khai söa ®æi ®iÒu dông bªn ngoµi v¨n kiÖn ph­¬ng thøc 
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
npc_name = "§­êng M«n ThŞ VÖ" 

Include("\\script\\global\\g7vn\\g7configall.lua")

function default_talk()

local nDate = tonumber(date("%Y%m%d%H%M"))
if nDate <= ThoiGianHetHanDiemTP then
	Say("§óng vµo lóc <color=yellow>"..ThoiGianOpenStr.."<color> míi b¾t ®Çu chİnh thøc khai më m¸y chñ");
	return 1
end

player_Faction = GetFaction() 
Uworld1000 = nt_getTask(1000) 
if (( Uworld1000 == 240 ) or ( Uworld1000 == 250 )) and ( GetLastFactionNumber() == 2 ) then 
nt_setTask(1000,250) 
Talk(1,"Uworld1000_jiaoyutangmen","Ng­¬i ®· lµ ®Ö tö bæn m«n , kh«ng cÇn ®i , cã thÓ trùc tiÕp cïng Long nhi gÆp mÆt nãi .") 
elseif (player_Faction == "tangmen") then 
Say("M«n chñ ph¸i ng­¬i tíi lµ cã c¸i g× ph©n phã sao ? ",4,"Ta muèn mêi xin ng­¬i ®­a ta trë vÒ /return_yes","B¶n ®å giíi thiÖu /map_help","Kü n¨ng nãi râ /skill_help","Kh«ng cã , ta ®i ra lµm chuyÖn kh¸c /no") 
-- script viet hoa By http://tranhba.com  Say("Ng­îng ngïng , bëi v× cã İt ng­êi nhiÖm vô tr¹ng th¸i bÊt ch¸nh x¸c , chóng ta ®ang lÇn n÷a v× m«n h¹ ®Ö tö tiÕn hµnh kiÓm tra . ng­¬i muèn kiÓm tra nhiÖm vô cña ng­¬i tr¹ng th¸i sao ? nÕu nh­ ng­¬i cho r»ng ng­¬i ®İch tr¹ng th¸i lµ chİnh x¸c còng kh«ng tÊt kiÓm tra . ",2,"KiÓm tra /tm_check_yes","Kh«ng cÇn /tm_check_no") 
elseif (player_Faction == "emei") then 
Talk(1,"","Quı ph¸i ®èi víi bæn m«n mét mùc rÊt cã vi tõ , hai chóng ta ph¸i mÆc dï cïng tån t¹i thôc ®Şa , l¹i cho tíi b©y giê kh«ng cã lui tíi . ") 
elseif (player_Faction == "cuiyan") then 
Talk(1,"","Bæn m«n lµm viÖc mÆc dï kh«ng c©u th­êng quy , nh­ng lµ còng sÏ kh«ng khi dÔ nh­îc chÊt c« g¸i . ") 
elseif (player_Faction == "wudu") then 
Talk(1,"","Ng­¬i lµ Ngò ®éc gi¸o ng­êi cña sao ? bæn m«n cïng quı gi¸o lµm v« lui tíi , kh«ng biÕt cã g× quı kiÒn ? mÆc dï nghe nãi quı gi¸o khiÕn cho ®éc h¹ cæ tay cña ®o¹n thiªn h¹ nhÊt l­u , nh­ng lµ bæn m«n còng kh«ng sî , vİ nh­ quı gi¸o cã ı ®å g× , sî r»ng ë bæn m«n ®İch ¸m khİ phİa d­íi còng chiÕm kh«ng ®­îc xong ®i") 
elseif (player_Faction == "tianwang") then 
Talk(1,"","§¾t gióp xa ë §éng §×nh , cïng bæn m«n gièng nh­ kh«ng cã giao t×nh g× ®i ? ") 
elseif (player_Faction == "shaolin") then 
Talk(1,"","Bæn m«n tõ kh«ng cïng nh÷ng thø kia nÕu nãi danh m«n chİnh ph¸i lui tíi . ") 
elseif (player_Faction == "wudang") then 
Talk(1,"","Bæn m«n tõ kh«ng cïng nh÷ng thø kia nÕu nãi danh m«n chİnh ph¸i lui tíi . ") 
elseif (player_Faction == "kunlun") then 
Talk(1,"","Cã g× chØ gi¸o ? ") 
elseif (player_Faction == "tianren") then 
Talk(1,"","Ta ng­¬i còng kh«ng lµ b»ng h÷u , còng kh«ng ph¶i ®Şch nh©n , kh«ng cÇn bé/vá c¸i g× gÇn nh­") 
elseif (player_Faction == "gaibang") then 
Talk(1,"","Kh«ng nghÜ tíi mét ®¸m khiÕu hãa tö còng cã thÓ x«ng ra mét phen thiªn ®Şa , bæn m«n cßn lµ rÊt béi phôc ®İch . ") 
elseif (nt_getTask(75) == 255) then -- script viet hoa By http://tranhba.com  häc d· cÇu quyÒn ®İch , kh«ng cho phĞp n÷a nhËp m«n ph¸i 
Talk(1,"","Ng­¬i ®· häc ®­îc d· cÇu quyÒn ! kh«ng thÓ n÷a nhËp m«n ph¸i !") 
else 
UTask_tm = nt_getTask(2) 
if ((UTask_tm > 5*256) and (UTask_tm < 10*256)) then -- script viet hoa By http://tranhba.com  nhËp m«n nhiÖm vô trung 
Talk(1,"","Ng­¬i ®· ë tróc h¶i ba quan nhËn bæn m«n ®İch nhËp m«n nhiÖm vô , nh­ng lµ ch­a hoµn thµnh , ng­¬i nhÊt ®Şnh ph¶i b¾t ®­îc thanh tö b¹ch ba chu«i tróc tr­îng , sau ®ã giao cho cöa ra ®ång m«n . ") 
elseif (UTask_tm >= 70) and (GetFaction() ~= "tangmen") then -- script viet hoa By http://tranhba.com  ®· xuÊt s­ 
Say("Cöa thŞ vÖ ®· l©u kh«ng gÆp , xuÊt s­ sau nµy cã g× kú ngé a , nãi nghe mét chót ? ",3,"B¶n ®å giíi thiÖu /map_help","Kü n¨ng nãi râ /skill_help","Kh«ng cã , ta ®i ra lµm chuyÖn kh¸c /no") 
else 
Talk(2, "select","Bæn m«n hïng cø Xuyªn Thôc , b»ng vµo ¸m khİ cïng háa khİ ®éc bé vâ l©m , uèng dù giang hå ®¹t mÊy tr¨m n¨m l©u . ng­êi trong giang hå nãi bæn m«n mµ biÕn s¾c , cã thÓ thÊy ®­îc bæn m«n ®İch lîi h¹i","C¸i g× vâ l©m ch¸nh ®¹o d©n téc ®¹i nghÜa , tÊt c¶ ®Òu lµ chã m¸ chóng ta chØ dùa theo bµi cña m×nh lı ra bµi , còng kh«ng nguyÖn cïng nh÷ng thø kia nÕu nãi danh m«n chİnh ph¸i kÕt giao , còng kh«ng tiÕt cïng tµ ma oai ®¹o v× ngò . muèn gia nhËp bæn m«n còng kh«ng ph¶i lµ mét chuyÖn dÔ dµng chuyÖn cña , cè ı bÊt l­¬ng ng­êi cña chóng ta còng kh«ng nªn") 
end 
end 
end; 

function select() 
UTask_tm = nt_getTask(2) 
UTask_wu = nt_getTask(10) 
if ((UTask_wu > 5*256) and (UTask_wu < 10*256)) then -- script viet hoa By http://tranhba.com  ®· nhËn n¨m ®éc nhËp m«n nhiÖm vô 
Talk(1,"","ThËt tèt tµi hoa , l¹i muèn vµo Ngò ®éc gi¸o , thËt ®¸ng tiÕc ®¸ng tiÕc . ") 
elseif (GetSeries() == 1) and (GetCamp() == 0) and (UTask_wu < 5*256) and (UTask_tm < 5*256) then -- script viet hoa By http://tranhba.com  méc hÖ kh«ng/ch­a vµo n¨m ®éc §­êng m«n 
if (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com  cÊp bËc ®¹t tíi cÊp m­êi 
Say("Bæn m«n c«ng phu ¸m khİ thiªn h¹ næi tiÕng , ®èi víi c¬ quan bÉy rËp còng trµn ®Çy nghiªn cøu , ng­¬i kh«ng muèn ë n¬i nµy chót ph­¬ng diÖn thö mét lÇn th©n thñ sao ? nh­ng lµ ph¶i nhí kü , ngµn v¹n kh«ng thÓ tiÕt lé bæn m«n bİ kü", 3,"Gia nhËp §­êng m«n /go","Ta suy nghÜ l¹i mét chót /no","HiÓu râ c¸c cöa vâ nghÖ tinh hoa /Uworld1000_knowmagic") 
else 
Talk(1,"","Ng­¬i trô cét kĞm nh­ vËy , vµo bæn m«n còng khã mµ cã ®iÒu lµm , ®i tr­íc m×nh ma luyÖn ma luyÖn , ®Õn <color=Red> cÊp m­êi <color> sau nµy tíi t×m ta n÷a ®i") 
end 
end 
end; 

function go() 
Uworld1000 = nt_getTask(1000) 
if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then 
nt_setTask(1000,260) 
end 
SetRevPos(25,15) -- script viet hoa By http://tranhba.com  thiÕt trİ sèng l¹i ®iÓm 
-- script viet hoa By http://tranhba.com  nt_setTask(2, 10*256) 
SetFaction("tangmen") -- script viet hoa By http://tranhba.com  nhµ ch¬i gia nhËp §­êng m«n 
SetCamp(3) 
SetCurCamp(3) 
-- script viet hoa By http://tranhba.com  SetRank(25) 
nt_setTask(137,62) 
SetLastFactionNumber(2) 
-- script viet hoa By http://tranhba.com  trùc tiÕp xö lı l­u tr×nh 
nt_setTask(2,10*256) 
SetRank(76) 
Msg2Player("Hoan nghªnh ng­¬i gia nhËp §­êng m«n , trùc tiÕp häc ®­îc bæn m«n tÊt c¶ kü n¨ng . ") 
add_tm(70) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
-- script viet hoa By http://tranhba.com  kÕt thóc 
-- script viet hoa By http://tranhba.com  Msg2Player("Hoan nghªnh gia nhËp §­êng m«n , trë thµnh t¹p dŞch , häc ®­îc c«ng tİch lŞch ®an ") 
-- script viet hoa By http://tranhba.com  AddNote("Gia nhËp §­êng m«n , trë thµnh t¹p dŞch .") 
Msg2Faction("tangmen",GetName().." kÓ tõ h«m nay gia nhËp §­êng m«n , b¸i kiÕn c¸c vŞ s­ tæ , hy väng c¸c vŞ quan t©m chØ gi¸o !",GetName()) 
--NewWorld(25, 3982, 5235) -- script viet hoa By http://tranhba.com  ®em nhµ ch¬i truyÒn tèng ®Õn m«n ph¸i nhËp khÈu 

end; 

function return_yes() 
NewWorld(25, 3982, 5235) -- script viet hoa By http://tranhba.com  ®em nhµ ch¬i truyÒn tèng ®Õn m«n ph¸i nhËp khÈu 
end; 

function tm_check_yes() 
if (GetSeries() ~= 1) then 
Talk(1,"","Ng­¬i ngò hµnh thuéc tİnh kh«ng ph¶i chóng ta méc hÖ , lµm sao sÏ lÉn vµo ®Õn bæn m«n tíi ? ®i tr­íc hái mét chót trß ch¬i nh©n viªn qu¶n lı ®i . ") 
elseif (HaveMagic(58) >= 0) then -- script viet hoa By http://tranhba.com  lµm xong 50 cÊp nhiÖm vô , thiªn la ®Şa vâng 
nt_setTask(2,60*256) 
Talk(1,"","Ta ®· ®em nhiÖm vô cña ng­¬i tr¹ng th¸i lÇn n÷a söa sang l¹i qua . ng­¬i b©y giê cã thÓ ®i nhËn xuÊt s­ nhiÖm vô . ") 
elseif (HaveMagic(54) >= 0) then -- script viet hoa By http://tranhba.com  lµm xong 40 cÊp nhiÖm vô , ®Çy trêi hoa vò 
nt_setTask(2,50*256) 
Talk(1,"","Ta ®· ®em nhiÖm vô cña ng­¬i tr¹ng th¸i lÇn n÷a söa sang l¹i qua . ng­¬i ®· hoµn thµnh 40 cÊp nhiÖm vô . ") 
elseif (HaveMagic(50) >= 0) then -- script viet hoa By http://tranhba.com  lµm xong 30 cÊp nhiÖm vô , ®uæi t©m tiÕn 
nt_setTask(2,40*256) 
Talk(1,"","Ta ®· ®em nhiÖm vô cña ng­¬i tr¹ng th¸i lÇn n÷a söa sang l¹i qua . ng­¬i ®· hoµn thµnh 30 cÊp nhiÖm vô . ") 
elseif (HaveMagic(47) >= 0) then -- script viet hoa By http://tranhba.com  lµm xong 20 cÊp nhiÖm vô , ®o¹t hån phiªu 
nt_setTask(2,30*256) 
Talk(1,"","Ta ®· ®em nhiÖm vô cña ng­¬i tr¹ng th¸i lÇn n÷a söa sang l¹i qua . ng­¬i ®· hoµn thµnh 20 cÊp nhiÖm vô . ") 
elseif (HaveMagic(43) >= 0) then -- script viet hoa By http://tranhba.com  lµm xong 10 cÊp nhiÖm vô , §­êng m«n ¸m khİ 
nt_setTask(2,20*256) 
Talk(1,"","Ta ®· ®em nhiÖm vô cña ng­¬i tr¹ng th¸i lÇn n÷a söa sang l¹i qua . ng­¬i ®· hoµn thµnh 10 cÊp nhiÖm vô . ") 
else 
nt_setTask(2,10*256) 
Talk(1,"","Ta ®· ®em nhiÖm vô cña ng­¬i tr¹ng th¸i lÇn n÷a söa sang l¹i qua . ng­¬i b©y giê cã thÓ ®i nhËn 10 cÊp nhiÖm vô . ") 
end 
end; 

function tm_check_no() 
Say("M«n chñ ph¸i ng­¬i tíi lµ cã c¸i g× ph©n phã sao ? ",2,"Ta muèn mêi xin ng­¬i ®­a ta trë vÒ /return_yes","Kh«ng cã , ta ®i ra lµm chuyÖn kh¸c /return_no") 
end 

function Uworld1000_jiaoyutangmen() 
nt_setTask(1000,260) 
Msg2Player("§­êng m«n ph¸i tiÕp dÉn ®Ö tö nãi ®· lµ m«n ph¸i ®Ö tö , ng­¬i cã thÓ trùc tiÕp ®i gÆp Long nhi nãi chuyÖn .") 
end 

function no() 
end; 
