-- script viet hoa By http://tranhba.com  thóy khãi cöa ch­ëng m«n duÉn ngËm khãi 10 cÊp nhiÖm vô #50 cÊp nhiÖm vô # xuÊt s­ nhiÖm vô # trë l¹i s­ m«n nhiÖm vô 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-25) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-24) lÇn n÷a thiÕt kÕ trë l¹i m«n ph¸i cïng trÊn ph¸i tuyÖt häc t­¬ng quan 
-- script viet hoa By http://tranhba.com  Update#Dan_Deng(2003-10-27) nÆng viÕt trë l¹i s­ m«n nhiÖm vô , còng lÇn n÷a söa sang l¹i ch©n vèn 

Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\task\\lv120skill\\head.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")	-- script viet hoa By http://tranhba.com  ´øÒÕÍ¶Ê¦

Include("\\script\\item\\skillbook.lua")

function main() 

if (GetLevel() >= 120 and GetTask(LV120_SKILL_STATE) ~= 19 and GetLastFactionNumber() == 5) then 
Describe("T×m ta cã chuyÖn g× ", 2, 
" häc 120 cÊp kü n¨ng ./lvl120skill_learn", 
" muèn mêi d¹y nh÷ng chuyÖn kh¸c /oldentence" 
); 
return 
end; 

oldentence() 
end; 

function oldentence() 
local UTask_cy = GetTask(6) 
local nFactID = GetLastFactionNumber(); 

if (UTask_cy == 70*256) and (GetFaction() == "cuiyan") then -- script viet hoa By http://tranhba.com  trë vÒ s­ sai lÇm tu ch¸nh 
SetFaction("") 
Say("HÖ thèng ph¸t hiÖn sai lÇm , ®· gÇn lóc kh«i phôc !",0) 
return 
elseif (UTask_cy == 70*256) and (GetTask(1) >= 5*256) and (GetTask(1) < 10*256) then -- script viet hoa By http://tranhba.com  tr­íc kia nhËn lÊy nhËp m«n nhiÖm vô 
SetTask(1,0) 
Say("HÖ thèng ph¸t hiÖn sai lÇm , ®· gÇn lóc kh«i phôc !",0) 
return 
elseif (UTask_cy == 80*256) and (GetCamp() == 4) then -- script viet hoa By http://tranhba.com  trë vÒ s­ sai lÇm tu ch¸nh 
SetTask(6,70*256) 
Say("HÖ thèng ph¸t hiÖn sai lÇm , ®· gÇn lóc kh«i phôc !",0) 
return 
elseif (GetTask(1) == 70*256) and (GetTask(6) == 70*256) then -- script viet hoa By http://tranhba.com  chuyÓn m«n ph¸i sai lÇm tu ch¸nh 
SetTask(1,75*256) 
Say("HÖ thèng ph¸t hiÖn sai lÇm , ®· gÇn lóc kh«i phôc !",0) 
return 
elseif (UTask_cy == 80*256 and nFactID == 5 and GetCamp() == 3 and GetFaction() == " míi vµo giang hå ") then 
local _, nTongID = GetTong(); 
if (nTongID == 0) then 
SetFaction("cuiyan"); 
Say("HÖ thèng ph¸t hiÖn sai lÇm , ®· gÇn lóc kh«i phôc !",0) 
return 
end 
elseif (UTask_cy == 70*256 and nFactID == 5 and GetCamp() ~= 4 and GetFaction() == " míi vµo giang hå ") then 
local _, nTongID = GetTong(); 
if (nTongID == 0) then 
SetFaction(""); 
SetCurCamp(GetCamp()); 
Say("HÖ thèng ph¸t hiÖn sai lÇm , ®· gÇn lóc kh«i phôc !",0) 
return 
end 
end 

local tbDes = {"Mang nghÖ ®Çu s­ /#daiyitoushi_main(5)","Muèn mêi d¹y nh÷ng chuyÖn kh¸c /common_talk"}; 

Say("GÇn nhÊt ta bÒ bén nhiÒu viÖc , ng­¬i tíi ®©y cã chuyÖn g× ?", getn(tbDes), tbDes); 
end 

function common_talk() 
local UTask_cy = GetTask(6) 
local Uworld51 = GetTask(51) 
local Uworld126 = GetTask(126) 
if (GetTask(39) == 10) and (GetBit(GetTask(40),6) == 0) then -- script viet hoa By http://tranhba.com  thÕ giíi nhiÖm vô # vâ l©m h­íng bèi 
Talk(1,"","§éc c« minh chñ cã lÖnh , ta lµm sao d¸m kh«ng theo . nh­ng lµ bæn m«n ®Òu lµ n÷ l­u h¹ng ng­êi , sî r»ng kh«ng ®­îc . xin/mêi håi b¸o ®éc c« minh chñ , bæn m«n nhÊt ®Şnh ñng hé c¸c vŞ anh hïng , chóc c¸c vŞ kú khai ®¾c th¾ng !") 
Uworld40 = SetBit(GetTask(40),6,1) 
SetTask(40,Uworld40) 
elseif (Uworld51 == 10) then -- script viet hoa By http://tranhba.com  röa s¹ch oan khuÊt nhiÖm vô tiÕn hµnh trung 
Talk(5,"Uworld51_20","§­êng mét trÇn ®Ó cho ta mang miÖng tin/th¬ , phô th©n ta kh«ng hiÓu t¹i sao ®ét nhiªn ph¶n ®èi chóng ta hai ®İch h«n sù , h«n sù cã chót khã kh¨n , nh­ng lµ ng­¬i kh«ng cÇn lo l¾ng .","Mét trÇn ","Nga #... ®õng khãc , chuyÖn kh«ng nhÊt ®Şnh nh­ vËy , chØ cÇn chóng ta thËt lßng , liÒn nhÊt ®Şnh cã thÓ qu¸ liÔu khã kh¨n , ®i tíi cïng nhau ","§­êng mét trÇn rÊt yªu ng­¬i , ta nhÊt ®Şnh hái râ rµng sau tr¶ lêi ng­¬i .") 
elseif (Uworld51 == 100) then -- script viet hoa By http://tranhba.com  röa s¹ch oan khuÊt nhiÖm vô hoµn thµnh 
Talk(3,"Uworld51_prise","Th× ra lµ nh­ vËy , ng­¬i bëi v× mét trÇn cïng ta ®©y sao khæ cùc , kh«ng hiÓu thÕ nµo b¸o ®¸p ng­¬i , xin/mêi nhËn lÊy !","§©y lµ c¸i g× ","C¸i nµy lµ tiªn s­ ®Ó l¹i cho ta , cã thÓ th­ g©n ho¹t huyÕt , cã thÓ gia t¨ng c«ng lùc !") 
elseif (GetSeries() == 2) and (GetFaction() == "cuiyan") then -- script viet hoa By http://tranhba.com  nhiÖm vô t­¬ng quan cïng víi m«n ph¸i ®èi tho¹i 
		if (UTask_cy == 10*256+10) and (HaveItem(0) == 1) then		-- script viet hoa By http://tranhba.com  10¼¶ÈÎÎñÍê³É
Talk(2,"L10_prise","Ch­ëng m«n , ®Ö tö ®· gióp ng­¬i t×m vÒ thóy vò tr©m liÔu ! ","ThËt tèt qu¸ , ng­¬i t×m ®­îc a .") 
elseif (UTask_cy == 10*256) and (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com 10 cÊp nhiÖm vô khëi ®éng 
Say("ThËt lµ ®au lßng , ngµy h«m qua ®i ®«ng nam bªn ®İch rõng c©y nhá t¶n bé , mÊt ta thİch nhÊt thóy vò tr©m !",2,"Ta gióp ng­¬i ®i t×m /L10_get_yes"," lµm bé kh«ng nghe /no") 
		elseif (UTask_cy == 50*256+50) then		-- script viet hoa By http://tranhba.com Íê³É50¼¶ÈÎÎñ
Talk(1,"L50_prise","§Ö tö theo nh­ s­ mÖnh , trî gióp sïng th¸nh tù t×m vÒ liÔu ng« ®ång Quan ¢m , ph­¬ng tr­îng ®¹i s­ ®Ó cho ta truyÒn lêi cho ng­¬i , c¶m t¹ s­ phã ") 
elseif (UTask_cy == 50*256) and (GetLevel() >= 50) then -- script viet hoa By http://tranhba.com 50 cÊp nhiÖm vô khëi ®éng 
Say("H­ viªn ph­¬ng tr­îng lµ cña ta b¹n tèt , h¾n míi võa ph¸i ng­êi mµ nãi ¨n trém trém ®i ng« ®ång Quan ¢m , bŞ ph¸t hiÖn sau , bá ch¹y vµo thiªn tµm th¸p . ¨n trém ®İch vâ nghÖ cao c­êng , t¨ng nh©n kh«ng ai b»ng , cho nªn , ph¸i ng­êi tíi bæn m«n nhê gióp ®ë , ng­¬i ®ång ı ®i sïng th¸nh tù gióp mét tay sao ? ?",2,"Kh«ng thµnh vÊn ®Ò , ta ®i /L50_get_yes","§Ö tö vâ c«ng cßn kh«ng h¶o , sî r»ng kh«ng thÓ ®i /no") 
		elseif (UTask_cy == 60*256+30) then							-- script viet hoa By http://tranhba.com ³öÊ¦ÈÎÎñÍê³É
L60_prise() 
elseif (UTask_cy == 80*256) then -- script viet hoa By http://tranhba.com  trë l¹i sau ®İch tù do xuÊt nhËp 
check_skill() 
elseif (UTask_cy >10*256) and (UTask_cy < 20*256) then -- script viet hoa By http://tranhba.com  10 cÊp nhiÖm vô trung 
Talk(1,"","Cßn kh«ng cã t×m ®­îc thóy vò tr©m sao ?") 
elseif (UTask_cy > 50*256) and (UTask_cy < 60*256) then -- script viet hoa By http://tranhba.com  50 cÊp nhiÖm vô trung 
Talk(1,"","B¾t ®­îc ¨n trém liÔu sao ?") 
elseif (UTask_cy >= 60*256) then -- script viet hoa By http://tranhba.com  hoµn thµnh 50 cÊp nhiÖm vô sau ®İch th­êng quy ®èi tho¹i 
Talk(1,"","Sïng th¸nh tù chuyÖn cña ng­¬i quyÕt ®Şnh rÊt ®óng , tr­íc ®©y kh«ng l©u , h­ viªn ph­¬ng tr­îng tíi th¨m ng­¬i .") 
else -- script viet hoa By http://tranhba.com  bªn trong m«n ph¸i kú tha tr¹ng th¸i h¹ th­êng quy ®èi tho¹i 
Talk(1,"","Vâ c«ng cña ng­¬i tiÕn bé rÊt nhanh , nh­ng lµ còng kh«ng cÇn tù m·n , cÇn tiÕp tôc tu luyÖn míi ®­îc .") 
end 
elseif (Uworld126 == 20) then -- script viet hoa By http://tranhba.com  90 cÊp kü n¨ng nhiÖm vô 
Talk(5,"Uworld126_talk","DuÉn c« n­¬ng !","Ng­¬i cã chuyÖn g× ?","T¹i h¹ lÊy ®­îc ®o¹n t­ thµnh trî gióp , muèn cho hai ng­êi cïng h¶o , nh­ng lµ ly c« n­¬ng rÊt cè chÊp liÔu .","Nga , thu thñy rÊt cè chÊp . khi ®ã , §oµn c«ng tö lµ mét nh©n tµi , ®èi víi nµng thËt lßng ch©n ı , tiÕc nuèi lµ c«ng tö ë nhµ l¹i lµ ®éc t«n , lµm sao cã thÓ gia nhËp thóy khãi cöa ®©y ? h«m nay muèn cïng h¶o , thËt lµ khã kh¨n a . ta khuyªn kh«ng ®­îc ly c« n­¬ng , hy väng ng­¬i t×m biÖn ph¸p . .","Th× ra lµ nh­ vËy , t¹i h¹ sÏ cè g¾ng .") 
elseif (Uworld126 == 80) and (GetFaction() ~= "cuiyan") then 
Talk(5,"Uworld126_finish","DuÉn c« n­¬ng , chuyÖn thµnh c«ng ! ","Nga ? ","ChuyÖn lµ nh­ vËy ?","ThiÖt lµ , nh­ng lµ , bän hä ®· gÆp mÆt , duyªn phËn còng sÏ trë l¹i , thËt lµ kh«ng hiÓu thÕ nµo c¶m t¹ ng­¬i .","T¹i h¹ cã thÓ cïng c¸c vŞ c« n­¬ng lµm b»ng h÷u ®· rÊt h¹nh phóc , cÇn g× ph¶i c¸m ¬n ta ®©y ? ") 
elseif (Uworld126 > 20) and (Uworld126 < 70) then 
Talk(1,"","TiÓu LÖ tİnh t×nh cè chÊp , nµng kh«ng chŞu næi bæn m«n chuyÖn cña t×nh , nµng nãi , kh«ng cã chuyÖn tèt lµnh g× , cho nªn , lµm phiÒn ng­¬i .") 
-- script viet hoa By http://tranhba.com 	elseif (UTask_cy == 5*256+20) then			-- script viet hoa By http://tranhba.com  ×ªÃÅÅÉÍê³É
-- script viet hoa By http://tranhba.com  Talk(1,"defection_complete","DuÉn ngËm khãi # ng­¬i thiªn phó h¬n ng­êi , tin t­ëng rÊt nhanh lµ cã thÓ trë thµnh bæn m«n ®èng l­¬ng liÔu , kh«ng cÇn ®Ó ı b©y giê t¹m thêi mÊt ®i vâ c«ng . ng­¬i ®i tr­íc cïng bæn m«n c¸c vŞ tû muéi quen thuéc mét c¸i , ®Ó cho mäi ng­êi chóng ta còng mau vui vÎ nh¹c ®Şa cuéc sèng ®i . ") 
elseif (GetSeries() == 2) and (GetCamp() == 4) and (GetLevel() >= 60) and (UTask_cy == 70*256) and ((GetTask(1) < 5*256) or (GetTask(1) == 75*256)) then -- script viet hoa By http://tranhba.com  trë l¹i s­ m«n nhiÖm vô 
Talk(2,"return_sele"," lêi ®ån ®·i , gÇn nhÊt ng­¬i giÕt kh«ng İt c­êng ®¹o , cho nªn ë trªn giang hå rÊt næi danh ","Nh­ng lµ , ta cßn lµ nhí tíi trong m«n ph¸i Êm ¸p ®İch kh«ng khİ , s­ phã , ta cã thÓ trë vÒ thóy khãi cöa sao ?") 
	elseif (GetCamp() == 4) and ((UTask_cy == 70*256+10) or (UTask_cy == 70*256+20)) then		-- script viet hoa By http://tranhba.com  ÖØ·µÊ¦ÃÅÈÎÎñÖĞ
Say("ChuÈn bŞ xong n¨m v¹n l­îng kh«ng cã ?",2,"ChuÈn bŞ xong /return_complete","Cßn kh«ng cã chuÈn bŞ xong /return_uncompleted") 
-- script viet hoa By http://tranhba.com 	elseif (GetTask(1) == 70*256+10) and (HaveMagic(111) >= 0) then		-- script viet hoa By http://tranhba.com  ¶ëáÒÅÉÖØ·µÃÅÅÉ£¬ÊÕ»Ø±Ìº£³±Éú
-- script viet hoa By http://tranhba.com  Say("DuÉn ngËm khãi # thiÒu quang ®i mét lÇn kh«ng hÒ n÷a tíi , ng­¬i thËt cè ı muèn trèn vµo kh«ng m«n ? ",2,"Hång trÇn thùc kh«ng thÓ quyÕn luyÕn , xin/mêi ch­ëng m«n ®Ó cho ta ®i cho /defection_yes","Ta suy nghÜ mét chót n÷a /no") 
else 
Talk(1,"","NÕu nh­ bæn m«n cïng §­êng m«n liªn minh , ®­¬ng nhiªn lµ chuyÖn tèt , ch¼ng qua lµ ") 
end 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  kü n¨ng ®iÒu chØnh t­¬ng quan -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function check_skill() 
-- script viet hoa By http://tranhba.com  if (HaveMagic(114) == -1) then 
-- script viet hoa By http://tranhba.com  AddMagic(114) -- script viet hoa By http://tranhba.com  b¨ng cèt tuyÕt t©m 
-- script viet hoa By http://tranhba.com  Msg2Player("Ng­¬i häc ®­îc “ b¨ng cèt tuyÕt t©m ”") 
-- script viet hoa By http://tranhba.com  Say("DuÉn ngËm khãi # vi s­ lÇn nµy bÕ quan khæ t­ mÊy ngµy , míi sang mét chiªu “ b¨ng cèt tuyÕt t©m ” , b©y giê truyÒn thô cho ng­¬i . ng­¬i häc xong sau ®i vÒ tr­íc nghØ ng¬i thËt tèt mét phen , ®Ó tr¸nh th­¬ng tæn ®­îc kinh m¹ch . ",1,"§a t¹ s­ phô /KickOutSelf") 
-- script viet hoa By http://tranhba.com  else 
Say(" l¹i muèn thÕ giíi bªn ngoµi liÔu ?",2,"§óng vËy , xin mêi ch­ëng m«n ©n chuÈn /goff_yes","Kh«ng , ta c¶m gi¸c m×nh ®İch c«ng phu cßn ch­a ®ñ . /no") 
-- script viet hoa By http://tranhba.com  end 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - chuyÓn m«n ph¸i t­¬ng quan -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function defection_complete() 
Msg2Player("Hoan nghªnh ng­¬i gia nhËp thóy khãi cöa , trë thµnh hoa tú ") 
SetRevPos(154,61) -- script viet hoa By http://tranhba.com  sèng l¹i ®iÓm 
SetTask(6,10*256) -- script viet hoa By http://tranhba.com  nhËp m«n 
SetFaction("cuiyan") -- script viet hoa By http://tranhba.com  nhµ ch¬i gia nhËp m«n ph¸i 
SetCamp(3) 
SetCurCamp(3) 
SetRank(31) 
AddMagic(99) 
Msg2Player("Häc ®­îc phong hoa tuyÕt nguyÖt ") 
AddNote("Gia nhËp thóy khãi cöa , trë thµnh hoa tú , häc ®­îc phong hoa tuyÕt nguyÖt ") 
Msg2Faction("cuiyan",GetName().." tõ Nga Mi ®Õn gia nhËp thóy khãi cöa , m«n ph¸i lùc l­îng l¹i t¨ng m¹nh !",GetName()) 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  trë l¹i m«n ph¸i t­¬ng quan -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function goff_yes() 
Talk(1,"","Cã mét sè viÖc , chØ cã ®İch th©n tr¶i qua míi hiÓu ®­îc , ng­¬i ®i tr¶i qua còng ®­îc .") 
SetCamp(4) 
SetCurCamp(4) 
SetTask(6,70*256) 
SetFaction("") 
AddNote("Rêi ®i thóy khãi cöa , l¹i mét lÇn hµnh tÈu giang hå ") 
Msg2Player("Rêi ®i thóy khãi cöa , l¹i mét lÇn hµnh tÈu giang hå ") 
end 

function return_sele() 
Say("DÜ nhiªn cã thÓ , ng­¬i chØ cÇn 5 v¹n l­îng lµ cã thÓ trë vÒ m«n ph¸i .",2,"ThËt tèt qu¸ /return_yes","Ta ®i cÇm tiÒn l¹i nãi . /return_no") 
end; 

function return_yes() 
Talk(1,"","H¶o , ®Ö tö ®i lÊy n¨m v¹n l­îng ! ") 
	SetTask(6,70*256+20)
AddNote("Quyªn 5 v¹n l­îng cho thóy khãi cöa lµ cã thÓ trë vÒ m«n ph¸i . ") 
Msg2Player("Quyªn 5 v¹n l­îng cho thóy khãi cöa lµ cã thÓ trë vÒ m«n ph¸i . ") 
end; 

function return_no() 
Talk(1,"","5 v¹n l­îng kh«ng ph¶i lµ con sè nhá , ng­¬i nghÜ râ rµng .") 
end; 

function return_complete() 
if (GetCash() >= 50000) then 
Talk(1,"","H¶o , n¨m v¹n l­îng ®· ®ñ råi , ta phong ng­¬i lµm gèc ph¸i hoa thÇn , ®ång thêi truyÖn cïng ng­¬i bæn m«n tuyÖt häc , bİch sãng biÓn d©ng sinh , hy väng ng­¬i tiÕp tôc cè g¾ng .") 
Pay(50000) 
SetTask(6,80*256) 
SetFaction("cuiyan") 
SetCamp(3) 
SetCurCamp(3) 
SetRank(67) 
-- script viet hoa By http://tranhba.com  if (HaveMagic(114) == -1) then 
-- script viet hoa By http://tranhba.com  AddMagic(108) 
-- script viet hoa By http://tranhba.com  AddMagic(111) 
-- script viet hoa By http://tranhba.com  AddMagic(114) 
add_cy(70) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
Msg2Player("Ng­¬i häc ®­îc thóy khãi m«n tuyÖt häc , b¨ng cèt tuyÕt t©m , môc d· sao r¬i , bİch sãng biÓn d©ng sinh ") 
-- script viet hoa By http://tranhba.com  end 
Msg2Player(GetName().."<#> trë vÒ thóy khãi cöa , bŞ ®ãng cöa v× hoa thÇn ") 
AddNote("Trë vÒ thóy khãi cöa ") 
else 
Talk(1,"","Ng­¬i së mang ng©n l­îng gièng nh­ kh«ng ®ñ , kiÓm tra xem mét chót .") 
end 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  m«n ph¸i nhiÖm vô -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function L10_get_yes() 
Talk(2,"","RÊt İt gÆp ng­êi cã phÇn nµy t©m , lµm phiÒn ng­¬i .","S­ phã qu¸ kh¸ch khİ !") 
	SetTask(6,10*256+10)
AddNote("NhËn 10 cÊp nhiÖm vô # ®Õn ®«ng nam bªn rõng c©y nhá cho ®ßi thóy vò tr©m ") 
Msg2Player("NhËn 10 cÊp nhiÖm vô # ®Õn ®«ng nam bªn rõng c©y nhá cho ®ßi thóy vò tr©m ") 
end; 

function L10_prise() 
Talk(1,"","Cã thÓ , ng­¬i thËt lµ cã míi . ta th¨ng ng­¬i v× 10 cÊp ®Ö tö .") 
DelItem(0) 
SetTask(6,20*256) 
SetRank(32) 
-- script viet hoa By http://tranhba.com  AddMagic(95) 
-- script viet hoa By http://tranhba.com  AddMagic(97) 
add_cy(20) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
AddNote("§ãng thóy vò tr©m , trë vÒ h­íng duÉn ngËm khãi phôc mÖnh , hoµn thµnh t×m c©y tr©m nhiÖm vô , trë thµnh tam phÈm hoa khiÕn cho ") 
Msg2Player("Chóc mõng ng­¬i bŞ ®ãng cöa v× thóy khãi cöa tam phÈm hoa khiÕn cho , häc ®­îc thóy khãi ®ao ph¸p , thóy khãi song ®ao . ") 
end; 

function L50_get_yes() 
Talk(1,"","Mäi sù cÈn thËn .") 
	SetTask(6,50*256+10)
AddNote("NhËn 50 cÊp nhiÖm vô # v× sïng th¸nh tù ph­¬ng tr­îng h­ viªn ®o¹t l¹i ng« ®ång Quan ¢m # ") 
Msg2Player("NhËn 50 cÊp nhiÖm vô # v× sïng th¸nh tù ph­¬ng tr­îng h­ viªn ®o¹t l¹i ng« ®ång Quan ¢m # ") 
end; 

function L50_prise() 
Talk(1,"","RÊt tèt , ng­¬i qu¶ nhiªn trİ dòng song toµn , lµm gèc cöa ®· lµm nhiÒu lÇn chuyÖn , thËt kh«ng hç lµ ®Ö tö bæn m«n ! ") 
SetTask(6,60*256) 
SetRank(36) 
-- script viet hoa By http://tranhba.com  AddMagic(109) 
add_cy(60) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
Msg2Player("Chóc mõng ng­¬i bŞ ®ãng cöa v× hoa tinh , häc ®­îc tuyÕt ¶nh vâ c«ng ") 
AddNote("# ®o¹t l¹i ng« ®ång Quan ¢m , hoµn thµnh 50 cÊp nhiÖm vô , bŞ ®ãng cöa v× hoa tinh ") 
end; 

function L60_prise() 
Msg2Player("Ng­¬i ®ãng tin/th¬ cho duÉn ngËm khãi , ®em tÊt c¶ chuyÖn ®Òu nãi cho nµng nghe . ") 
Talk(2,""," lÇn nµy ng­¬i gióp ta gi¶i quyÕt bæn m«n chuyÖn cña , lËp c«ng lín . chóc mõng ng­¬i , ng­¬i cã thÓ xuÊt s­ ","# ®a t¹ ch­ëng m«n ! ") 
SetTask(6,70*256) 
SetRank(35) 
SetFaction("") -- script viet hoa By http://tranhba.com  thèi lui ra m«n ph¸i 
SetCamp(4) 
SetCurCamp(4) 
DelItem(235) 
AddNote("Ng­¬i ®ãng tin/th¬ cho duÉn ngËm khãi , ®em tÊt c¶ chuyÖn ®Òu nãi cho nµng nghe , hoµn thµnh xuÊt s­ nhiÖm vô , bŞ ®ãng cöa v× hoa tiªn ") 
Msg2Player("Chóc mõng ng­¬i trë thµnh hoa tiªn , cã thÓ xuÊt s­ ") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - thÕ giíi nhiÖm vô -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function Uworld51_20() 
SetTask(51,20) 
Msg2Player("# ®iÒu tra ®­êng mét trÇn rèt cuéc x¶y ra chuyÖn g× , cã biÖn ph¸p g× trë vÒ sao ? ") 
end 

function Uworld51_prise() 
SetTask(51,255) 
AddMagicPoint(1) 
	Task86_2 = GetByte(GetTask(86),2) + 1
if (Task86_2 > 255) then Task86_2 = 255 end 
Task86 = SetByte(GetTask(86),2,Task86_2) 
SetTask(86,Task86) -- script viet hoa By http://tranhba.com  ghi chĞp nhiÖm vô ph¶i kü n¨ng ®iÓm tæng sè 
Msg2Player("DuÉn ngËm khãi bëi v× muèn b¸o ®¸p , cÇm s­ phã kim ®an ®­a cho ng­¬i . c«ng phu cña ng­¬i gia t¨ng 1 ®iÓm ") 
Msg2Player("Hoµn thµnh röa s¹ch oan khuÊt nhiÖm vô ") 
AddNote("Hoµn thµnh röa s¹ch oan khuÊt nhiÖm vô ") 
end 

function no() 
end; 

function Uworld126_talk() 
SetTask(126,30) 
Msg2Player("DuÉn ngËm khãi còng kh«ng cã biÖn ph¸p tèt h¬n , ng­¬i quyÕt ®Şnh trë vÒ thÊy ly thu thñy ") 
AddNote("DuÉn ngËm khãi còng kh«ng cã biÖn ph¸p tèt h¬n , ng­¬i quyÕt ®Şnh trë vÒ thÊy ly thu thñy ") 
end 

function Uworld126_finish() 
if (GetTask(6) >= 70*256) and (GetTask(6) ~= 75*256) then 
Talk(3,"","Hµnh tÈu giang hå sÏ gÆp ph¶i rÊt nhiÒu nguy hiÓm , n¬i nµy ngËm khãi cã vèn thóy khãi bİ kİp cã thÓ gióp ng­¬i . ","ThËt lµ ng­îng ngïng ","Giang hå con g¸i , kh«ng cÇn c©u thóc , cÇm ®i !") 
if (HaveMagic(336) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(336,1) 
end 
if (HaveMagic(337) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(337,1) 
end 
CheckIsCanGet150SkillTask() 
Msg2Player("Häc xong thóy khãi vâ c«ng b¨ng tïng v« ¶nh , b¨ng t©m tiªn tö . ") 
SetTask(126,255) 
else 
Talk(2,"","Cøu ng­êi kh«ng cÇn b¸o ©n , thËt lµ hiÖp nghÜa ! ","DuÉn s­ phã qu¸ khen !") 
SetTask(126,245) -- script viet hoa By http://tranhba.com  ®¹t ®­îc danh väng ®İch thiÕt trİ thay ®æi l­îng 245 
end 
add_repute = ReturnRepute(30,100,4) -- script viet hoa By http://tranhba.com  danh väng t­ëng th­ëng # lín nhÊt 30 ®iÓm , tõ 100 cÊp khëi mçi cÊp ®Ö gi¶m 4% 
AddRepute(add_repute) 
Msg2Player("<#> ®i trõ ly thu thñy cïng ®o¹n t­ thµnh ©n o¸n , nhiÖm vô hoµn thµnh . ng­¬i danh väng gia t¨ng "..add_repute.."<#> ®iÓm .") 
AddNote("§i trõ ly thu thñy cïng ®o¹n t­ thµnh ©n o¸n , nhiÖm vô hoµn thµnh . ") 
end 
