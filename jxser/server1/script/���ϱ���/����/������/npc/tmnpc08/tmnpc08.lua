-- script viet hoa By http://tranhba.com description: §­êng m«n ®­êng bÊt nhiÔm 30 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/11 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nhËp m«n ph¸i nhiÖm vô cÊp bËc yªu cÇu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 
Include("\\script\\task\\150skilltask\\g_task.lua")
Include("\\script\\dailogsys\\g_dialog.lua")


function main() 
local nNpcIndex = GetLastDiagNpc() 
local szNpcName = GetNpcName(nNpcIndex) 
if NpcName2Replace then 
szNpcName = NpcName2Replace(szNpcName) 
end 
local tbDailog = DailogClass:new(szNpcName) 
tbDailog.szTitleMsg = "<npc> giæ tæ thİnh lµ tÕ tù bæn ph¸i liÖt tæ liÖt t«ng ®İch , th­êng nh©n kh«ng ®­îc ®i vµo !" 
G_TASK:OnMessage("§­êng m«n ", tbDailog, "DialogWithNpc") 
tbDailog:AddOptEntry("Ta tíi cã nh÷ng chuyÖn kh¸c ", main2) 
tbDailog:Show() 
end 

function main2() 
UTask_tm = GetTask(2) 
Uworld123 = GetTask(123) 
if (GetFaction() == "tangmen") and (GetSeries() == 1) then -- script viet hoa By http://tranhba.com  §­êng m«n m«n ph¸i nhiÖm vô 
if (UTask_tm == 30*256) and (GetLevel() >= 30) then -- script viet hoa By http://tranhba.com 30 cÊp nhiÖm vô khëi ®éng 
Talk(3, "L30_get", "<color=Red> háa khİ phßng <color> ®İch <color=Red> ®­êng v©n <color> s­ thóc thËt ®¸ng th­¬ng , hai n¨m tr­íc , mét nhãm kh«ng râ lai lŞch ng­êi cña b¾t cãc h¾n con ®éc nhÊt tiÓu xuyªn , uy hiÕp h¾n giao ra bæn m«n bİ kİp <color=Red> # háa khİ phæ # <color> . ","§­êng v©n s­ thóc kh«ng d¸m vi ph¹m m«n quy , kÕt qu¶ ngµy thø hai nhãm ng­êi kia sÏ ®­a tíi tiÓu xuyªn c¸nh tay cña , s­ thóc chØ cã nh­ vËy mét ®øa con trai , can ®¶m c©u liÖt d­íi bÊt ®¾c dÜ giao ra # háa khİ phæ # . nh­ng lµ kh«ng nghÜ tíi ®æi lÊy còng lµ tiÓu xuyªn ®İch thi thÓ , s­ thóc ®au ®ín muèn chÕt , thÒ nhÊt ®Şnh ph¶i chİnh tay ®©m cõu ®Şch . ","Nh­ng lµ bëi v× ®­êng v©n s­ thóc tiÕt lé liÔu §­êng m«n bİ kİp , nhÊt ®Şnh ph¶i tiÕp nhËn m«n quy xö ph¹t , cho nªn h¾n c¶ ®êi kh«ng thÓ sÏ rêi ®i §­êng m«n nöa b­íc , thï nµy hËn nµy sî r»ng kiÕp nÇy còng b¸o kh«ng ®­îc #!") 
		elseif (UTask_tm == 30*256+50) then
Talk(2, "","Ta ®· t×m ®­îc b¾t cãc ®­êng v©n s­ thóc con trai ®İch phØ ®å , ®o¹t l¹i liÔu <color=Red># háa khİ phæ #<color>.","ThËt tèt qu¸ , <color=Red> ®­êng v©n <color> s­ thóc nhÊt ®Şnh sÏ c¶m thÊy vui mõng , ng­¬i nhanh ®i ®em <color=Red># háa khİ phæ #<color> giao cho h¾n , h¾n ®ang ë <color=Red> háa khİ phßng <color> trong .") 
Msg2Player("Trë vÒ giæ tæ thİnh t×m ®­êng bÊt nhiÔm , biÕt ®­êng v©n s­ thóc ®ang háa khİ phßng ") 
			SetTask(2,30*256+60)
		elseif (UTask_tm == 30*256+60) then
Talk(1, "","S­ thóc nhÊt ®Şnh sÏ c¶m thÊy vui mõng , ng­¬i nhanh ®i <color=Red> háa khİ phßng <color> nãi cho h¾n biÕt c¸i tin tøc tèt nµy !") 
elseif (UTask_tm > 30*256) and (UTask_tm < 40*256) then -- script viet hoa By http://tranhba.com  ®· nhËn ®­îc 30 cÊp nhiÖm vô , ch­a hoµn thµnh 
Talk(1,"","Ta ®· tèi trung t×m kiÕm qu¸ , ®¸m kia trãi phØ gièng nh­ th­êng ra kh«ng cã ë <color=Red> nói Thanh Thµnh phİa ®«ng m©y tr¾ng ®éng <color> mét d·y .") 
elseif (UTask_tm >= 40*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 30 cÊp nhiÖm vô , ®Ö tö bæn m«n 
Skill150Dialog("Ng­¬i cã thÓ gióp ®­êng v©n s­ thóc t¾m cìi oan khuÊt , xem ra ta sÏ ®èi ng­¬i qu¸t môc nh×n nhau liÔu !") 
else 
Skill150Dialog("C¸i nµy giæ tæ thİnh lµ bæn m«n l¹y tÕ liÖt tæ liÖt t«ng ®İch ®Şa ph­¬ng , ng­êi b×nh th­êng chê kh«ng ph¶i thiÖn vµo !") 
end 
elseif (Uworld123 == 10) then -- script viet hoa By http://tranhba.com  §­êng m«n 90 cÊp kü n¨ng nhiÖm vô 
Say("Cã thÓ gióp ta mang mét phong th¬ sao ?",2,"Tu©n lÖnh !/Uworld123_get","ThËt lµ ng­îng ngïng , ch­ëng m«n míi võa gäi ta qu¸ khø h¾n n¬i ®ã . /L30_get_no") 
elseif (Uworld123 == 20) and (HaveItem(379) == 0) then -- script viet hoa By http://tranhba.com  ®­êng bÊt nhiÔm nhiÖm vô , ®¹o cô mÊt 
Talk(1,"","Ng­¬i thËt lµ .., tin/th¬ cßn ch­a cÇm liÒn ch¹y !") 
AddEventItem(379) 
Msg2Player("NhËn ®­êng bÊt nhiÔm ®İch tin/th¬ ") 
elseif (Uworld123 == 30) and (HaveItem(380) == 1) then -- script viet hoa By http://tranhba.com  ®­êng bÊt nhiÔm nhiÖm vô , ®¸nh 
Talk(3,"Uworld123_step2","Ha ha ha , qu¶ nhiªn diÖu kÕ , ®Ó cho ®­êng mét trÇn chÕt kh«ng cã chç ch«n !","Ng­¬i lµ ai ? thÕ nµo kh«ng ph¶i lµ a míi ?","Ng­¬i nghe ®­îc bİ mËt , muèn sèng còng kh«ng ®­îc liÔu , xem chiªu !") 
elseif (Uworld123 == 40) then -- script viet hoa By http://tranhba.com  kh«ng cã ®¸nh xong , tiÕp tôc ®¸nh 
Talk(1,"Uworld123_step2","§õng ch¹y , xem chiªu !") 
elseif (Uworld123 == 50) then 
if (GetSex() == 0) then 
sexstr = " ®¹i hiÖp " 
else 
sexstr = " n÷ hiÖp " 
end 
Talk(8,"Uworld123_step3","C«ng tö cÇn g× ph¶i rÇu rØ , mÆc dï ta cïng c«ng tö kh«ng h«n , nh­ng lµ , còng sÏ kh«ng h­ c«ng tö chuyÖn cña ","Ng­¬i , ng­¬i . ","C«ng tö th©n lµ §­êng gia b¶o ThiÕu chñ , ta tuy bÊt tµi , nh­ng lµ , kh«ng gióp c«ng tö , ch¼ng lÏ ®i gióp ng­êi kh¸c sao ? ","Kh«ng tÖ , ®óng nh­ anh hïng theo nh­ lêi , xin hái t«n tİnh ®¹i danh ? ","T¹i h¹ "..GetName().." a ","Th× ra lµ nh­ vËy "..GetName()..sexstr.." nghe ®¹i danh ®· l©u , kh«ng nghÜ tíi h«m nay ë n¬i nµy gÆp nhau . ","§¹i hiÖp nh­ thÕ ñng hé ta , kh«ng biÕt cã thÓ hay kh«ng ®em s¸ch nµy mang cho ®oan méc thôy ? s¸ch nµy ®èi víi ta mµ nãi , cùc kú träng yÕu . chuyÖn träng ®¹i , kh«ng thÓ dùa vµo ng­êi kh¸c liÔu . ","ChuyÖn nhá mét thung , giao cho ta lµ ®­îc . ") 
elseif (Uworld123 == 60) and (HaveItem(377) == 0) then -- script viet hoa By http://tranhba.com  bİ kİp mÊt 
if (GetSex() == 0) then 
Talk(1,"","§¹i hiÖp quªn mang bİ kİp liÔu !") 
else 
Talk(1,"","ThiÕu hiÖp quªn mang bİ kİp liÔu !") 
end 
AddEventItem(377) 
Msg2Player("B¾t ®­îc §­êng m«n bİ kİp ") 
elseif (Uworld123 == 70) or (Uworld123 == 75) then -- script viet hoa By http://tranhba.com  nhiÖm vô hoµn thµnh 
Talk(1,"Uworld123_prise","Ha ha ha , ta chê ng­¬i ®İch tin tøc tèt , thËt lµ c¶m t¹ ng­¬i !") 
elseif (Uworld123 >= 10) and (Uworld123 < 80) then -- script viet hoa By http://tranhba.com  ®­êng bÊt nhiÔm nhiÖm vô tiÕn hµnh trung 
Talk(1,"","Ta nãi , ng­¬i véi vµng ®i lµm , kh«ng muèn l·ng phİ thêi gian !") 
elseif (GetTask(51) >= 90) then -- script viet hoa By http://tranhba.com  mét trÇn “ röa s¹ch oan khuÊt ” nhiÖm vô sau , ®èi tho¹i söa ®æi 
Talk(1,"","T¹i sao h¾n lÊy ®­îc sñng ¸i , mµ ta l¹i kh«ng thÓ ? thËt lµ bÊt c«ng !") 
elseif (Uworld123 >= 80) then -- script viet hoa By http://tranhba.com  ®­êng bÊt nhiÔm nhiÖm vô ®· hoµn thµnh 
Talk(1,""," lÇn nµy lµm phiÒn ng­¬i , ta trë thµnh ch­ëng m«n sau , nhÊt ®Şnh sÏ kh«ng quªn ng­¬i !") 
elseif (UTask_tm >= 70*256) then -- script viet hoa By http://tranhba.com  ®· xuÊt s­ 
Skill150Dialog("Ta muèn ®i ra ngoµi , nh­ng lµ , phô th©n kh«ng ®ång ı ?") 
else 
Skill150Dialog("C¸i nµy giæ tæ thİnh lµ bæn m«n l¹y tÕ liÖt tæ liÖt t«ng ®İch ®Şa ph­¬ng , ng­êi b×nh th­êng chê kh«ng ph¶i thiÖn vµo !") 
end 
end; 

function Skill150Dialog(szTitle) 
local nNpcIndex = GetLastDiagNpc() 
local szNpcName = GetNpcName(nNpcIndex) 
if NpcName2Replace then 
szNpcName = NpcName2Replace(szNpcName) 
end 
local tbDailog = DailogClass:new(szNpcName) 
tbDailog.szTitleMsg = format("<npc>%s", szTitle) 
G_TASK:OnMessage("§­êng m«n ", tbDailog, "DialogWithNpc") 
tbDailog:Show() 
end 

function L30_get() 
-- script viet hoa By http://tranhba.com  DelItem(42) -- script viet hoa By http://tranhba.com  phßng ngõa nÆng tiÕp nhËn vô sau , nhµ ch¬i nhÆt lªn nhiÖm vô ®¹o cô 
Say("§­êng v©n s­ thóc ®· tõng nãi , bÊt kÓ lµ ai , chØ cÇn cã thÓ gióp h¾n b¸o mèi thï giÕt con , ®o¹t l¹i <color=Red># háa khİ phæ #<color> , h¾n sÏ dèc hÕt tÊt c¶ b¸o ®¸p ng­êi nµy !", 2,"T×m kiÕm trãi phØ /L30_get_yes","Kh«ng liªn quan chuyÖn ta !/L30_get_no") 
end; 

function L30_get_yes() 
Talk(1,"","Ta ®· tèi trung t×m kiÕm qu¸ , ®¸m kia trãi phØ gièng nh­ th­êng ra kh«ng cã ë <color=Red> nói Thanh Thµnh phİa ®«ng m©y tr¾ng ®éng <color> mét d·y .") 
	SetTask(2, 30*256+20)
AddNote("ThÊy ®­êng bÊt nhiÔm ë ( 514, 318) , nhËn <color=Red> háa khİ phæ nhiÖm vô <color>, gióp ®­êng v©n s­ thóc ®o¹t l¹i háa khİ phæ ") 
Msg2Player("NhËn háa khİ phæ nhiÖm vô , gióp ®­êng v©n s­ thóc ®o¹t l¹i háa khİ phæ ") 
end; 

function Uworld123_get() 
Talk(1,"","H¶o , mau thay ta mang phong th­ nµy ®Õn biÖn kinh cho B¹ch c«ng tö , nhanh ®i mau trë l¹i !") 
SetTask(123,20) 
Msg2Player("TiÕp nhËn vô # thay ®­êng bÊt nhiÔm mang tin/th¬ cho B¹ch c«ng tö ") 
AddEventItem(379) 
Msg2Player("NhËn ®­îc ®­êng bÊt nhiÔm ®İch tin/th¬ ") 
end 

function Uworld123_step2() 
DelItem(380) 
SetTask(123,40) 
SetFightState(1) 
NewWorld(229,1616,3195) 
end 

function Uworld123_step3() 
AddEventItem(377) 
SetTask(123,60) 
Msg2Player("B¾t ®­îc §­êng m«n bİ kİp . ") 
end 

function Uworld123_prise() 
AddRepute(10) 
Earn(20000) 
if (GetTask(123) == 70) then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ bæn m«n 
SetTask(123,245) 
else 
SetTask(123,255) 
end 
Msg2Player("NhiÖm vô hoµn thµnh , t­ëng th­ëng 2 v¹n l­îng , uy tİn gia t¨ng 10 ®iÓm . ") 
AddNote("NhiÖm vô hoµn thµnh , t­ëng th­ëng 2 v¹n l­îng , uy tİn gia t¨ng 10 ®iÓm . ") 
end 

function L30_get_no() 
end; 
