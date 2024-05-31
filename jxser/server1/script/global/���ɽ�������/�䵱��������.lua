-- script viet hoa By http://tranhba.com  Vâ §­¬ng tiÕp dÉn ®Ö tö m« b¶n Vâ §­¬ng ®¹o nh©n 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-10-28) tõ nh©n vËt ®èi tho¹i söa ®æi tíi 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-05-25) thÓ dïng/uèng kü n¨ng toµn khai söa ®æi ®iÒu dông bªn ngoµi v¨n kiÖn ph­¬ng thøc 
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
npc_name = "Vâ §­ang §¹o Nh©n " 

Include("\\script\\global\\g7vn\\g7configall.lua")

function default_talk()

local nDate = tonumber(date("%Y%m%d%H%M"))
if nDate <= ThoiGianHetHanDiemTP then
	Say("§óng vµo lóc <color=yellow>"..ThoiGianOpenStr.."<color> míi b¾t ®Çu chİnh thøc khai më m¸y chñ");
	return 1
end

check_WDtask() 
player_Faction = GetFaction() 
Uworld1000 = nt_getTask(1000) 
if (( Uworld1000 == 240 ) or ( Uworld1000 == 250 )) and ( GetLastFactionNumber() == 8 ) then 
nt_setTask(1000,250) 
Talk(1,"Uworld1000_jiaoyuwudang","Ng­¬i ®· lµ ®Ö tö bæn m«n , kh«ng cÇn ®i , cã thÓ trùc tiÕp cïng Long nhi gÆp mÆt nãi .") 
elseif (player_Faction == "emei") then 
Talk(1,"","Nga Mi n÷ hiÖp , tiÓu ®¹o : ®­êng nhá c¸i nµy s­¬ng lÔ ®é liÔu . lÖnh s­ thanh hiÓu s­ th¸i th©n thÓ kháe kh«ng ? ") 
elseif (player_Faction == "cuiyan") then 
Talk(1,"","Thóy khãi cöa ®İch c«ng phu tiÓu ®¹o : ®­êng nhá lµ rÊt béi phôc , kh«ng biÕt c« n­¬ng cã g× chØ gi¸o ? ") 
elseif (player_Faction == "tangmen") then 
Talk(1,"","Quı ph¸i ch­ëng m«n mÆc dï tİnh t×nh thiªn kİch lµm viÖc kh«ng theo lÏ th­êng , nh­ng lµ lµm ng­êi ngay th¼ng th¶n nhiªn , ng­îc l¹i còng kh«ng mÊt lµm mét c¸ ch©n qu©n tö . ") 
elseif (player_Faction == "wudu") then 
Talk(1,"","KhiÕn cho cæ h¹ ®éc ®İch b¶n lÜnh cao h¬n n÷a cùc kú , còng cuèi cïng lµ m¹t l­u chi kÕ , ®¨ng kh«ng ®­îc ®¹i nh· chi ®­êng . ") 
elseif (player_Faction == "tianwang") then 
Talk(1,"","§· sím nghe nãi Thiªn v­¬ng gióp ®İch c¸c huynh ®Ö ng­êi ng­êi ®Òu lµ h¶o h¸n , h«m nay võa thÊy , qu¶ nhiªn lµ ®Ønh thiªn lËp ®Şa ®İch h¶o nam nhi") 
elseif (player_Faction == "shaolin") then 
Talk(1,"","Nguyªn lai lµ ph¸i ThiÕu l©m ®İch tiÓu s­ phô , kh«ng biÕt cã g× chØ gi¸o ? ") 
elseif (player_Faction == "wudang") then 
Say("§¹o nh©n ta hÕt søc nhí s­ phô , l·o nh©n gia «ng ta gÇn ®©y th©n thÓ kháe kh«ng ? ",4,"Muèn lµm phiÒn s­ huynh ®­a ta trë vÒ nói /return_yes","B¶n ®å giíi thiÖu /map_help","Kü n¨ng nãi râ /skill_help","S­ phô hÕt th¶y ®Òu tèt /no") 
-- script viet hoa By http://tranhba.com  Say("Ng­îng ngïng , bëi v× cã İt ng­êi nhiÖm vô tr¹ng th¸i bÊt ch¸nh x¸c , chóng ta ®ang lÇn n÷a v× m«n h¹ ®Ö tö tiÕn hµnh kiÓm tra . ng­¬i muèn kiÓm tra nhiÖm vô cña ng­¬i tr¹ng th¸i sao ? nÕu nh­ ng­¬i cho r»ng ng­¬i ®İch tr¹ng th¸i lµ chİnh x¸c còng kh«ng tÊt kiÓm tra . ",2,"KiÓm tra /wd_check_yes","Kh«ng cÇn /wd_check_no") 
elseif (player_Faction == "kunlun") then 
Talk(1,"","Nguyªn lai lµ C«n L«n ph¸i ®İch b»ng h÷u , kh«ng biÕt ®­êng xa tíi , cã g× chØ gi¸o ? ") 
elseif (player_Faction == "tianren") then 
Talk(1,"","MÆc dï lµ c¸c v× kú chñ , nh­ng lµ ng­êi Kim lç ta n­íc s«ng , lÊn ta d©n chóng , th©n lµ ®¹i tèng con d©n , bæn ph¸i trªn d­íi nhÊt ®Şnh sÏ lùc kh¸ng rèt cuéc") 
elseif (player_Faction == "gaibang") then 
Talk(1,"","§¾t gióp ®İch Hµ bang chñ cïng tÖ ph¸i ch­ëng m«n chİnh lµ anh em kÕt nghÜa , ®¾t gióp cã chuyÖn g× , tÖ ph¸i nhÊt ®Şnh sÏ ®Ønh lËp t­¬ng trî . ") 
elseif (nt_getTask(75) == 255) then -- script viet hoa By http://tranhba.com  häc d· cÇu quyÒn ®İch , kh«ng cho phĞp n÷a nhËp m«n ph¸i 
Talk(1,"","T? ng­¬i ®· häc ®­îc d· cÇu quyÒn ! kh«ng thÓ n÷a nhËp m«n ph¸i !") 
else 
UTask_wd = nt_getTask(5) 
if ((UTask_wd > 5*256) and (UTask_wd < 10*256)) then -- script viet hoa By http://tranhba.com  nhËp m«n nhiÖm vô trung 
Talk(1,"","Ng­¬i ®· ë Vâ §­¬ng s¬n tiÓu ®¹o ®ång giã m¸t chç nhËn bæn ph¸i ®İch nhËp m«n nhiÖm vô , nh­ng lµ ch­a hoµn thµnh , ng­¬i cÇn cho h¾n t×m vÒ r¬i xuèng ë tØnh lı ®İch thïng gç . ") 
elseif (UTask_wd >= 70) and (player_Faction ~= "wudang") then -- script viet hoa By http://tranhba.com  ®· xuÊt s­ 
Say("MÆc dï ng­¬i ®· xuÊt s­ xuèng nói , nh­ng lµ chóng ta th­êng th­êng ®iÕm niÖm t×nh ng­¬i , ng­¬i c¸i nµy lu«n lu«n kháe kh«ng ? ",3,"B¶n ®å giíi thiÖu /map_help","Kü n¨ng nãi râ /skill_help","S­ phã hÕt th¶y ®Òu tèt /no") 
else 
Talk(3, "select","Thiªn h¹ vâ häc , b¾c t«ng ThiÕu L©m , nam sïng Vâ §­¬ng , ng­¬i nghÜ tÊt nghe nãi qua chø ? ","bæn ph¸i vâ c«ng ®Ó ı lÊy tŞnh chÕ ®éng , lÊy nhu th¾ng c­¬ng , lÊy ng¾n th¾ng tr­êng , lÊy chËm kİch mau lÊy ı vËn khİ , lÊy khİ vËn th©n , hËu ph¸t chÕ nh©n . h­íng h­ ®iÒm ®¹m , lÊy v« vi th¾ng cã chót , lÊy v« h×nh th¾ng h÷u h×nh , míi lµ vâ häc cao nhÊt c¶nh giíi . ","bæn ph¸i vâ c«ng cã “ n¨m bÊt truyÒn ” , tøc nhu cèt chÊt thóy t©m hiÓm h¶o ®Êu cuång r­îu nhÑ lé ng­êi , bÊt truyÒn . ") 
end 
end 
end; 

function select() 
UTask_wd = nt_getTask(5) 
UTask_kl = nt_getTask(9) 
if ((UTask_kl > 5*256) and (UTask_kl < 10*256)) then -- script viet hoa By http://tranhba.com  ®· nhËn C«n L«n nhËp m«n nhiÖm vô 
Talk(1,"","Nga , th× ra lµ ng­¬i nghÜ ®i C«n L«n häc phï ph¸p ®¹o thuËt . ") 
elseif (GetSeries() == 4) and (GetCamp() == 0) and (UTask_kl < 5*256) and (UTask_wd < 5*256) then -- script viet hoa By http://tranhba.com  háa hÖ kh«ng/ch­a vµo C«n L«n Vâ §­¬ng 
if (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com  cÊp bËc ®¹t tíi cÊp m­êi 
Say("NÕu gia nhËp bæn ph¸i cÇn thu liÔm t©m tİnh , chuyªn t©m tu hµnh , ngµy sau sÏ cã rÊt nhiÒu c¬ héi chê ng­¬i , ng¾m ng­¬i cã thÓ thiÖn thªm ®èi ®·i . ", 3,"Gia nhËp ph¸i Vâ §­¬ng /go","Ta suy nghÜ l¹i mét chót /no","HiÓu râ c¸c cöa vâ nghÖ tinh hoa /Uworld1000_knowmagic") 
else 
Say("Häc vâ chi ®¹o , dôc tèc th× bÊt ®¹t . ng­¬i míi vµo giang hå , hay lµ tr­íc thËt tèt häc hái kinh nghiÖm ®i ®Õn <color=Red> cÊp m­êi <color> sau nµy tíi t×m ta n÷a ", 0) 
end 
end 
end; 

function go() 
Uworld1000 = nt_getTask(1000) 
if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then 
nt_setTask(1000,260) 
end 
SetRevPos(81,40) -- script viet hoa By http://tranhba.com  thiÕt trİ sèng l¹i ®iÓm 
-- script viet hoa By http://tranhba.com  nt_setTask(5, 10*256) 
SetFaction("wudang") -- script viet hoa By http://tranhba.com  nhµ ch¬i gia nhËp Vâ §­¬ng 
SetCamp(1) 
SetCurCamp(1) 
-- script viet hoa By http://tranhba.com  SetRank(7) 
nt_setTask(137,65) 
SetLastFactionNumber(8) 
-- script viet hoa By http://tranhba.com  trùc tiÕp xö lı l­u tr×nh 
nt_setTask(5,10*256) 
SetRank(73) 
Msg2Player("Hoan nghªnh ng­¬i gia nhËp ph¸i Vâ §­¬ng , trùc tiÕp häc ®­îc bæn m«n tÊt c¶ kü n¨ng . ") 
add_wd(70) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
-- script viet hoa By http://tranhba.com  kÕt thóc 
-- script viet hoa By http://tranhba.com  Msg2Player("Hoan nghªnh gia nhËp ph¸i Vâ §­¬ng , xin/mêi tõ mét ®¹o ®ång b¾t ®Çu , häc ®­îc biÓn c¶ tr¨ng s¸ng vâ c«ng !") 
-- script viet hoa By http://tranhba.com  AddNote("Gia nhËp ph¸i Vâ §­¬ng , trë thµnh ®¹o ®ång !") 
Msg2Faction("wudang",GetName().." h«m nay gia nhËp ph¸i Vâ §­¬ng , tr­íc b¸i kiÕn c¸c vŞ huynh tr­ëng !",GetName()) 
--NewWorld(81, 1574, 3224) -- script viet hoa By http://tranhba.com  ®em nhµ ch¬i truyÒn tèng ®Õn m«n ph¸i nhËp khÈu 

end; 

function return_yes() 
NewWorld(81, 1574, 3224) -- script viet hoa By http://tranhba.com  ®em nhµ ch¬i truyÒn tèng ®Õn m«n ph¸i nhËp khÈu 
end; 

function wd_check_yes() 
if (GetSeries() ~= 4) then 
Talk(1,"","Ng­¬i ngò hµnh thuéc tİnh kh«ng ph¶i chóng ta thæ hÖ , lµm sao sÏ lÉn vµo ®Õn bæn ph¸i tíi ? ®i tr­íc hái mét chót trß ch¬i nh©n viªn qu¶n lı ®i . ") 
elseif (HaveMagic(164) >= 0) then -- script viet hoa By http://tranhba.com  lµm xong 50 cÊp nhiÖm vô , trãc cïng mµ phôc 
nt_setTask(5,60*256) 
Talk(1,"","Ta ®· ®em nhiÖm vô cña ng­¬i tr¹ng th¸i lÇn n÷a söa sang l¹i qua . ng­¬i b©y giê cã thÓ ®i nhËn xuÊt s­ nhiÖm vô . ") 
elseif (HaveMagic(161) >= 0) then -- script viet hoa By http://tranhba.com  lµm xong 40 cÊp nhiÖm vô , l­ìng nghi t©m ph¸p 
nt_setTask(5,50*256) 
Talk(1,"","Ta ®· ®em nhiÖm vô cña ng­¬i tr¹ng th¸i lÇn n÷a söa sang l¹i qua . ng­¬i ®· hoµn thµnh 40 cÊp nhiÖm vô . ") 
elseif (HaveMagic(158) >= 0) then -- script viet hoa By http://tranhba.com  lµm xong 30 cÊp nhiÖm vô , kiÕm bay kinh thiªn 
nt_setTask(5,40*256) 
Talk(1,"","Ta ®· ®em nhiÖm vô cña ng­¬i tr¹ng th¸i lÇn n÷a söa sang l¹i qua . ng­¬i ®· hoµn thµnh 30 cÊp nhiÖm vô . ") 
elseif (HaveMagic(156) >= 0) then -- script viet hoa By http://tranhba.com  lµm xong 20 cÊp nhiÖm vô , thuÇn d­¬ng t©m ph¸p 
nt_setTask(5,30*256) 
Talk(1,"","Ta ®· ®em nhiÖm vô cña ng­¬i tr¹ng th¸i lÇn n÷a söa sang l¹i qua . ng­¬i ®· hoµn thµnh 20 cÊp nhiÖm vô . ") 
elseif (HaveMagic(151) >= 0) then -- script viet hoa By http://tranhba.com  lµm xong 10 cÊp nhiÖm vô , Vâ §­¬ng kiÕm ph¸p 
nt_setTask(5,20*256) 
Talk(1,"","Ta ®· ®em nhiÖm vô cña ng­¬i tr¹ng th¸i lÇn n÷a söa sang l¹i qua . ng­¬i ®· hoµn thµnh 10 cÊp nhiÖm vô . ") 
else 
nt_setTask(5,10*256) 
Talk(1,"","Ta ®· ®em nhiÖm vô cña ng­¬i tr¹ng th¸i lÇn n÷a söa sang l¹i qua . ng­¬i b©y giê cã thÓ ®i nhËn 10 cÊp nhiÖm vô . ") 
end 
end 

function wd_check_no() 
Say("Ta hÕt søc nhí s­ phô , l·o nh©n gia «ng ta gÇn ®©y th©n thÓ kháe kh«ng ? ",2,"Muèn lµm phiÒn s­ huynh ®­a ta trë vÒ nói /return_yes","S­ phô hÕt th¶y ®Òu tèt /return_no") 
end 

function check_WDtask() 
	if (nt_getTask(5) == 30*256+50) then		-- script viet hoa By http://tranhba.com  ÈÎÎñ±äÁ¿´íÎó
if (GetFaction() == "wudang") then -- script viet hoa By http://tranhba.com  kh«ng xuÊt s­ lµm l¹i tÊt c¶ nhiÖm vô 
nt_setTask(5,10*256) 
Say("NhiÖm vô cña ng­¬i thay ®æi l­îng cã sai lÇm , v« cïng xin lçi muèn mêi/xin ng­¬i lÇn n÷a tõ 10 cÊp nhiÖm vô b¾t ®Çu lµm l¹i mét lÇn nhiÖm vô . ",1,"§a t¹ /no") 
elseif (HaveMagic(164) >= 0) then -- script viet hoa By http://tranhba.com  ®· xuÊt s­ ( häc ®­îc “ trãc cïng mµ phôc ” h¬n n÷a kh«ng cã ë ®©y trong m«n ph¸i ) ®İch thiÕt v× b×nh th­êng xuÊt s­ 
nt_setTask(5,70*256) 
Say("NhiÖm vô cña ng­¬i thay ®æi l­îng cã sai lÇm , ta ®· gióp ng­¬i tu ch¸nh v× ®· xuÊt s­ tr¹ng th¸i . ",1,"§a t¹ /no") 
else -- script viet hoa By http://tranhba.com  kú tha thiÕt v× kh«ng/ch­a vµo ph¸i Vâ §­¬ng 
nt_setTask(5,0) 
Say("NhiÖm vô cña ng­¬i thay ®æi l­îng cã sai lÇm , ta ®· gióp ng­¬i tu ch¸nh v× ch­a nhËp m«n tr¹ng th¸i . ",1,"§a t¹ /no") 
end 
end 
end 

function Uworld1000_jiaoyuwudang() 
nt_setTask(1000,260) 
Msg2Player("Ph¸i Vâ §­¬ng tiÕp dÉn ®Ö tö nãi ®· lµ m«n ph¸i ®Ö tö , ng­¬i cã thÓ trùc tiÕp ®i gÆp Long nhi nãi chuyÖn .") 
end 



function no() 
end; 
