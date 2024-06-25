-- script viet hoa By http://tranhba.com description: §­êng m«n ®­êng thï 20 cÊp nhiÖm vô # xuÊt s­ nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/11 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nhËp m«n ph¸i nhiÖm vô cÊp bËc yªu cÇu 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-24), gia nhËp trë l¹i m«n ph¸i nhiÖm vô 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-21) lÇn n÷a thiÕt kÕ trë l¹i m«n ph¸i cïng trÊn ph¸i tuyÖt häc t­¬ng quan 
-- script viet hoa By http://tranhba.com  Update#Dan_Deng(2003-10-27) lµm träng ph¶n s­ m«n nhiÖm vô gia nhËp hñy bá nhiÖm vô chøc n¨ng , cïng víi cïng míi m«n ph¸i ®èi øng 

Include("\\script\\global\\skills_table.lua")
Include([[\script\event\teachersday06_v\prize_qingyika.lua]]); 
Include("\\script\\task\\lv120skill\\head.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")	-- script viet hoa By http://tranhba.com  ´øÒÕÍ¶Ê¦
-- script viet hoa By http://tranhba.com dinhhq: new lunar year 2011 
Include("\\script\\vng_event\\LunarYear2011\\npc\\mastergift.lua")

function main() 
if tbVNG_LY2011:isActive() == 1 then 
local tbSay = 
{ 
" tÆng mïa xu©n bİnh /#tbMasterGift:getGift('tangmen')", 
" muèn mêi d¹y nh÷ng chuyÖn kh¸c /oldMain" 
} 
Say("N¨m míi an khang h­ng v­îng ", getn(tbSay), tbSay) 
return 
end 
oldMain() 
end 

function oldMain() 
if (vt06_isactive() ~= 0) then 
Say("T×m ta cã chuyÖn g× ?", 2,"Muèn mêi d¹y ®¹i s­ /oldentence","¡n mõng ©n s­ tiÕt , t¹i h¹ ®· t×m ®ñ ©n s­ t¹p cïng cao ®å t¹p /vt06_prizeenter"); 
return 
end; 

if (GetLevel() >= 120 and GetTask(LV120_SKILL_STATE) ~= 19 and GetLastFactionNumber() == 2) then 
Describe("T×m ta cã chuyÖn g× ?", 2, 
" häc 120 kü n¨ng ./lvl120skill_learn", 
" muèn mêi d¹y nh÷ng chuyÖn kh¸c /oldentence" 
); 
return 
end; 

oldentence() 
end; 

function oldentence() 
-- script viet hoa By http://tranhba.com  if (check_skill() == 0) then 
-- script viet hoa By http://tranhba.com  return 
-- script viet hoa By http://tranhba.com  end 
local UTask_tm = GetTask(2); 
local nFactID = GetLastFactionNumber(); 

if (UTask_tm == 70*256) and (GetFaction() == "tangmen") then -- script viet hoa By http://tranhba.com  trë vÒ s­ sai lÇm tu ch¸nh 
SetFaction("") 
Say("HÖ thèng ph¸t hiÖn sai lÇm , ®· gÇn lóc kh«i phôc !",0) 
return 
elseif (UTask_tm == 70*256) and (GetTask(10) >= 5*256) and (GetTask(10) < 10*256) then -- script viet hoa By http://tranhba.com  tr­íc kia nhËn lÊy nhËp m«n nhiÖm vô 
SetTask(10,0) 
Say("HÖ thèng ph¸t hiÖn sai lÇm , ®· gÇn lóc kh«i phôc !",0) 
return 
elseif (UTask_tm == 80*256) and (GetCamp() == 4) then -- script viet hoa By http://tranhba.com  trë vÒ s­ sai lÇm tu ch¸nh 
SetTask(2,70*256) 
Say("HÖ thèng ph¸t hiÖn sai lÇm , ®· gÇn lóc kh«i phôc !",0) 
return 
elseif (UTask_tm == 80*256 and nFactID == 2 and GetCamp() == 3 and GetFaction() == " míi vµo giang hå ") then 
local _, nTongID = GetTong(); 
if (nTongID == 0) then 
SetFaction("tangmen"); 
Say("HÖ thèng ph¸t hiÖn sai lÇm , ®· gÇn lóc kh«i phôc !",0) 
return 
end 
elseif (UTask_tm == 70*256 and nFactID == 2 and GetCamp() ~= 4 and GetFaction() == " míi vµo giang hå ") then 
local _, nTongID = GetTong(); 
if (nTongID == 0) then 
SetFaction(""); 
SetCurCamp(GetCamp()); 
Say("HÖ thèng ph¸t hiÖn sai lÇm , ®· gÇn lóc kh«i phôc !",0) 
return 
end 
end 

local tbDes = {"Mang nghÖ ®Çu s­ /#daiyitoushi_main(2)","Muèn mêi d¹y nh÷ng chuyÖn kh¸c /common_talk"}; 

Say("GÇn nhÊt ta bÒ bén nhiÒu viÖc , ng­¬i cã chuyÖn g× ?", getn(tbDes), tbDes); 
end 

function common_talk() 
local UTask_tm = GetTask(2); 
local Uworld51 = GetTask(51) 
if (GetTask(39) == 10) and (GetBit(GetTask(40),2) == 0) then -- script viet hoa By http://tranhba.com  thÕ giíi nhiÖm vô # vâ l©m h­íng bèi 
if (GetSex() == 0) then 
Talk(1,"","§­êng m«n tæ s­ d¹y dç ®Ö tö kh«ng thÓ xen vµo phİa ngoµi chuyÖn , . ®­êng thï kh«ng d¸m chèng l¹i , phiÒn to¸i c«ng tö chuyÓn ®¹t ta ®èi víi ®éc c« minh chñ ®İch ¸y n¸y ") 
else 
Talk(1,"","§­êng m«n tæ s­ d¹y dç ®Ö tö kh«ng thÓ xen vµo phİa ngoµi chuyÖn , . ®­êng thï kh«ng d¸m chèng l¹i , phiÒn to¸i c«ng tö chuyÓn ®¹t ta ®èi víi ®éc c« minh chñ ®İch ¸y n¸y ") 
end 
Uworld40 = SetBit(GetTask(40),2,1) 
SetTask(40,Uworld40) 
elseif (Uworld51 == 30) then -- script viet hoa By http://tranhba.com  röa s¹ch oan khuÊt nhiÖm vô tiÕn hµnh trung 
Talk(4,"Uworld51_40","Ch­ëng m«n , t¹i h¹ nghe nãi ng­¬i cïng mét trÇn c«ng tö cã thµnh kiÕn , hiÖn t¹i h¾n bŞ ng­¬i hiÓu lÇm .","§©y lµ §­êng gia chuyÖn cña , cïng ng­¬i kh«ng liªn quan !","Ch­ëng m«n , mét trÇn c«ng tö lµ cña ng­¬i ®İch th©n x­¬ng thŞt ?.!","Hõ , tiÔn kh¸ch ! ") 
elseif (Uworld51 == 80) and (HaveItem(377) == 1) then -- script viet hoa By http://tranhba.com  röa s¹ch oan khuÊt nhiÖm vô # ®· ®o¹t l¹i bİ kİp 
Talk(8,"Uworld51_90","Ch­ëng m«n , ThiÕu L©m cao t¨ng gÆp n¹n ®· ®iÒu tra râ rµng , ngµy nhÉn d¹y ®o¹t ®­îc bæn gi¸o bİ kİp sau , ¸m to¸n ThiÕu L©m cao t¨ng , c¸i nµy bİ kİp tõ bÊt nhiÔm c«ng tö tiÕt lé ra ngoµi !","C¸i g× ? t¹i sao cã thÓ nh­ vËy ?","BÊt nhiÔm lo l¾ng mét trÇn lµ con trai lín , sî t­¬ng lai sÏ cïng h¾n tranh ®o¹t chøc ch­ëng m«n . cho nªn , h¾n th­êng xuyªn cïng kim quèc bİ khiÕn cho B¹ch c«ng tö liªn l¹c , trém s¸ch cho ngµy nhÉn d¹y !","Ngµy nhÉn d¹y lÊy ®­îc s¸ch nµy sau , ph¸i 2 cao thñ ®i ¸m s¸t ThiÕu L©m cao t¨ng , lÇn nµy , bän hä ®ang chuÈn bŞ ¸m s¸t C¸i Bang cao thñ . t¹i h¹ ®i ®o¹t l¹i bæn m«n bİ kİp , xin/mêi ch­ëng m«n kh«ng muèn phiÒn lßng .","BÊt nhiÔm l¹i nh­ vËy ? thËt lµ nghŞch tö a ","Ch­ëng m«n bít giËn , bÊt nhiÔm c«ng tö ch¼ng qua lµ nhÊt thêi hå ®å , t¹i h¹ thØnh cÇu ch­ëng m«n l­în quanh h¾n mét lÇn !","§¹i nghŞch bÊt ®¹o ®İch ng­êi , tö téi khã tr¸nh khái , ®õng nghÜ thõa kÕ chøc ch­ëng m«n ."," lµm phiÒn ng­¬i thay ta an ñi mét trÇn , th× ra lµ ta tr¸ch lÇm h¾n !") 
elseif (GetFaction() == "tangmen") and (GetSeries() == 1) then 
		if ((UTask_tm >= 20*256+60) and (UTask_tm <= 20*256+70) and (HaveItem(41) == 1)) then		-- script viet hoa By http://tranhba.com  20¼¶ÈÎÎñÍê³É
Talk(5, "L20_prise","§©y lµ u muéi muéi ®İch h¹ng vßng , thÕ nµo ë ng­¬i n¬i nµy ?","§©y lµ s­ c« gäi ta giao cho ch­ëng m«n ®İch , nµng ®· tha thø ch­ëng m«n !","U muéi muéi nµng thËt tha thø ta ? nµng thËt nguyÖn ı vÒ nhµ ? lµ ng­¬i nãi dïng/uèng nµng sao ?","ChuyÖn nµy lµ ®¹i s­ huynh an bµi , ®Ö tö còng kh«ng cã lµm c¸i g× ","BÊt kÓ nãi thÕ nµo , ng­¬i gióp vi s­ gi¶i khai ®êi nµy lín nhÊt t©m kÕt , c«ng lao kh«ng nhá , vi s­ tuyÖt sÏ kh«ng b¹c ®·i ng­¬i .") 
		elseif (UTask_tm == 60*256+60) and (HaveItem(49) == 1) then		-- script viet hoa By http://tranhba.com  ³öÊ¦ÈÎÎñÍê³É
Talk(3, "L60_prise","Ch­ëng m«n , ta ë tróc ti trong ®éng chi t×m ®­îc c¸i thanh nµy r¸ch kiÕm , nã kh«ng ph¶i lµ trong truyÒn thuyÕt ®İch thÊt tinh tuyÖt mÖnh kiÕm ®i ?","§©y chİnh lµ thÊt tinh tuyÖt mÖnh kiÕm # ®õng xem nã tµn ph¸ , gi¸ trŞ cña nã ®ang ë víi ng­¬i ®èi víi nã ®İch lÊy bá . ng­¬i bu«ng tha cho kim tiÒn cïng b¶o tµng mµ lùa chän nã , nãi râ ng­¬i ë ®©y ®èi mÆt c¸m dç ®İch thêi ®iÓm , vÉn cã thÓ gi÷ v÷ng ®èi víi bæn m«n ®İch trung thµnh , rÊt tèt # rÊt tèt # ng­¬i ®· th«ng qua kh¶o nghiÖm , cã thÓ thuËn lîi xuÊt s­ ","Chóc mõng ng­¬i thµnh tµi xuÊt s­ # ng­¬i ®· bŞ phong lµm §­êng m«n ®İch thiªn thñ thÇn vÖ , tõ nay vÒ sau cã thÓ tù do hµnh tÈu giang hå n÷a/råi # ng­¬i cã thÓ lùa chän gia nhËp m«n ph¸i kh¸c tiÕp tôc häc nghÖ , còng cã thÓ ®i khai s¸ng bang héi ph¸t triÓn m×nh giang hå thÕ lùc , hay hoÆc lµ lµm mét ®éc hµnh kh¸ch còng kh«ng lçi a # kiÕm hiÖp giang hå , trêi cao h¶i kho¸t , hy väng ng­¬i cã thÓ ®¹i triÓn quyÒn c­íc , më ra hång ®å ") 
		elseif (UTask_tm == 60*256+70) then				-- script viet hoa By http://tranhba.com ³öÊ¦ÈÎÎñ
Talk(3, "L60_fail","Ta muèn thÊt tinh tuyÖt mÖnh kiÕm ®©y ?", "............","Ng­¬i nh­ thÕ kh«ng qua næi vµng b¹c tµi b¶o ®İch c¸m dç , ta thÕ nµo yªn t©m ®Ó cho ng­¬i xuÊt s­ ®©y ? nãi kh«ng chõng cã mét ngµy ng­¬i sÏ v× lîi İch lín h¬n n÷a , mµ ph¶n béi bæn m«n !") 
		elseif (UTask_tm == 60*256+80) then
if (GetCash() >= 20000) then 
Talk(1,"","Xem ng­¬i thµnh t©m hèi c·i , ta liÒn sÏ cho ng­¬i mét lÇn c¬ héi , ng­¬i nhÊt ®Şnh ph¶i n÷a x«ng mét lÇn tróc ti ®éng , thu håi thÊt tinh tuyÖt mÖnh kiÕm .") 
Pay(20000) 
				SetTask(2, 60*256+20)
AddNote("Phã 20000 hai , cÇu xin ch­ëng m«n khoan thø , ®Õn tróc ti ®éng thu håi thÊt tinh tuyÖt mÖnh kiÕm . ") 
Msg2Player("Phã 20000 hai , cÇu xin ch­ëng m«n khoan thø , ®Õn tróc ti ®éng thu håi thÊt tinh tuyÖt mÖnh kiÕm . ") 
else 
Talk(1,"","Hèi hËn còng v« İch , mau ®­a tiÒn ®©y l¹i nãi !") 
end 
		elseif (UTask_tm == 60*256+90) then
if (GetCash() >= 40000) then 
Talk(1,"","Hõ , ta sÏ cho ng­¬i mét lÇn c¬ héi , ng­¬i ®i mét lÇn tróc ti ®éng , thu håi thÊt tinh tuyÖt mÖnh kiÕm ..") 
Pay(40000) 
				SetTask(2, 60*256+20)
AddNote("Phã 40000 hai , cÇu xin ch­ëng m«n khoan thø , ®Õn tróc ti ®éng thu håi thÊt tinh tuyÖt mÖnh kiÕm . ") 
Msg2Player("Phã 40000 hai , cÇu xin ch­ëng m«n khoan thø , ®Õn tróc ti ®éng thu håi thÊt tinh tuyÖt mÖnh kiÕm . ") 
else 
Talk(1,"","Mau phã 40000 hai , ®Õn tróc ti ®éng thu håi thÊt tinh tuyÖt mÖnh kiÕm .. ") 
end 
elseif ((UTask_tm == 60*256) and (GetLevel() >= 50) and (GetFaction() == "tangmen")) then -- script viet hoa By http://tranhba.com  xuÊt s­ nhiÖm vô khëi ®éng 
Say("Ng­¬i ë ®©y bæn m«n häc nghÖ ®· l©u , vi s­ muèn thi mét thi ng­¬i , mÆt ®«ng rõng tróc chç s©u cã mét <color=Red> tróc ti ®éng <color> , nÕu nh­ ng­¬i cã thÓ ë <color=Red> tróc ti ®éng <color> trung lÊy ®­îc mét thanh <color=Red> thÊt tinh tuyÖt mÖnh kiÕm <color> , liÒn cã thÓ thuËn lîi xuÊt s­ ", 2,"TiÕp nhËn kh¶o nghiÖm /L60_get_yes","T¹m kh«ng chÊp nhËn /no") 
elseif (UTask_tm == 80*256) then -- script viet hoa By http://tranhba.com  trë l¹i sau ®İch tù do xuÊt nhËp 
Say(" l¹i muèn ®äc giang hå chuyÖn liÔu ? ",2,"§óng vËy , xin mêi ch­ëng m«n cho ®Ö tö hµnh tÈu giang hå /goff_yes","§Ö tö tu luyÖn kh«ng ®ñ , cÇn cè g¾ng luyÖn c«ng . /no") 
		elseif (UTask_tm > 20*256) and (UTask_tm < 20*256+60) then					-- script viet hoa By http://tranhba.com ÒÑ¾­½Óµ½20¼¶ÈÎÎñ£¬ÉĞÎ´Íê³É
Talk(1,"","Kh«ng biÕt u muéi muéi qu¸ kháe kh«ng ? ai # cho tíi h«m nay , nµng vÉn kh«ng chŞu tha thø ta ®©y c¸ ca ca !") 
elseif (UTask_tm >= 30*256) and (UTask_tm <= 60*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 20 cÊp nhiÖm vô , ch­a nhËn ®­îc xuÊt s­ nhiÖm vô 
Talk(1,"","Ng­¬i gióp vi s­ gi¶i khai ®êi nµy lín nhÊt t©m kÕt , vi s­ tuyÖt sÏ kh«ng b¹c ®·i ng­¬i !") 
elseif (UTask_tm > 60*256) and (UTask_tm < 70*256) then -- script viet hoa By http://tranhba.com  ®· nhËn ®­îc xuÊt s­ nhiÖm vô , ch­a hoµn thµnh 
Talk(1,"","ChØ cÇn ng­¬i cã thÓ ë <color=Red> tróc ti ®éng <color> trung thu håi mét thanh <color=Red> thÊt tinh tuyÖt mÖnh kiÕm <color> , coi nh­ th«ng qua xuÊt s­ kh¶o nghiÖm ") 
else -- script viet hoa By http://tranhba.com  ®· nhËp m«n , ch­a nhËn 20 cÊp nhiÖm vô # thiÕu tØnh ®èi tho¹i # 
Talk(1,"","Bæn m«n kü thuËt tõ kh«ng truyÒn ra ngoµi , vİ nh­ m«n h¹ ®Ö tö cã ng­êi d¸m tiÕt lé tuyÖt kû , tÊt theo nh­ m«n quy xö trİ , tuyÖt kh«ng nhÑ tha cho !") 
end 
-- script viet hoa By http://tranhba.com 	elseif (GetTask(10) == 5*256+10) then		-- script viet hoa By http://tranhba.com  ×ªÃÅÅÉµ½Îå¶¾½Ì
-- script viet hoa By http://tranhba.com  Say("§­êng thï # muèn ®Çu nhËp n¨m ®éc ? cÇn ph¶i biÕt bæn m«n kh«ng cho mang nghÖ kh¸c ®Çu , trõ phi ng­¬i tr­íc tù ®i phÕ bá bæn m«n tuyÖt nghÖ . ng­¬i kh«ng hÒ n÷a lÇn n÷a suy tİnh mét chót sao ? ",2,"Kh«ng tÖ , ta ı ®· quyÕt /defection_yes","Ta cßn lµ kh«ng ®i n¨m ®éc tİnh / chän /defection_no") 
elseif (GetSeries() == 1) and (GetCamp() == 4) and (GetLevel() >= 60) and (UTask_tm == 70*256) and (GetTask(10) < 5*256) then -- script viet hoa By http://tranhba.com  trë l¹i s­ m«n nhiÖm vô 
Say(" lÇn nµy trë l¹i , ng­¬i nghÜ trë vÒ §­êng m«n sao ?",2,"Tu©n lÖnh !/return_yes","Kh«ng . /return_no") 
	elseif (GetCamp() == 4) and ((UTask_tm == 70*256+10) or (UTask_tm == 70*256+20)) then		-- script viet hoa By http://tranhba.com  ÖØ·µÊ¦ÃÅÈÎÎñÖĞ
Say("ChuÈn bŞ xong 5 v¹n sao ?",2,"§· chuÈn bŞ xong /return_complete","Kh«ng chuÈn bŞ xong /return_uncompleted") 
elseif (Uworld51 >= 90) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh “ röa s¹ch oan khuÊt ” nhiÖm vô 
Talk(1,"","§¸ng chÕt bÊt nhiÔm cã bŞ cha chŞu víi ta !") 
elseif (UTask_tm == 70*256) and (GetFaction() ~= "tangmen") then -- script viet hoa By http://tranhba.com  ®· xuÊt s­ 
Talk(1,"","Ng­¬i xuÊt s­ sau tèt h¬n tù trë nªn , kh«ng thÓ ®Ó cho ng­êi ta coi th­êng bæn m«n ®İch c«ng phu !") 
else 
Talk(1,"","ThÕ nh©n còng ®em ta §­êng m«n nh×n thµnh ®Çm rång hang hæ , ®em ta ®­êng thï nh×n thµnh hØ né v« th­êng ®İch ma ®Çu , hõ #?") 
end 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  kü n¨ng ®iÒu chØnh t­¬ng quan -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function check_skill() 
x = 0 
skillID = 51 -- script viet hoa By http://tranhba.com  thanh méc c«ng 
i = HaveMagic(skillID) 
if (i >= 0) then 
		x = x + 1
DelMagic(skillID) 
AddMagicPoint(i) 
end 
if (GetFaction() == "tangmen") and (GetTask(2) == 80*256) and (HaveMagic(253) == -1) then -- script viet hoa By http://tranhba.com  trë l¹i s­ m«n th¶ v« kü n¨ng míi 
AddMagic(253) 
Msg2Player("Ng­¬i häc ®­îc kh«ng ®éc thùc cèt . ") 
Say("Ta ®· bÕ quan tu luyÖn nhiÒu ngµy , s¸ng t¹o ra mét chiªu kh«ng ®éc thùc cèt , h«m nay ta truyÒn cho ng­¬i . ng­¬i häc xong sau , cÇn chó ı nghØ ng¬i , tr¸nh khái th­¬ng cïng kinh m¹ch !",1,"# ®a t¹ s­ phã /KickOutSelf") 
return 0 
elseif (x > 0) then -- script viet hoa By http://tranhba.com  nÕu cã kü n¨ng ph¸t sinh biÕn hãa , lµ ®¸ xuèng tuyÕn , nÕu kh«ng trë vÒ tiÕp tôc l­u tr×nh 
Say("Ta ®· bÕ quan tu luyÖn nhiÒu ngµy , s¸ng t¹o ra mét chiªu kh«ng ®éc thùc cèt , h«m nay ta truyÒn cho ng­¬i . ng­¬i häc xong sau , cÇn chó ı nghØ ng¬i , tr¸nh khái th­¬ng cïng kinh m¹ch !",1,"# ®a t¹ s­ phã /KickOutSelf") 
return 0 
else 
return 1 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  trë l¹i m«n ph¸i t­¬ng quan -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function goff_yes() 
Talk(1,"","H¶o , ®i ®i , ph¶i nhí ph¶i kh«ng thÓ cïng tµ gi¸o kÕt giao ") 
SetTask(2,70*256) 
AddNote("Rêi ®i §­êng m«n , hµnh tÈu giang hå ") 
Msg2Player("Rêi ®i §­êng m«n , hµnh tÈu giang hå ") 
SetFaction("") 
SetCamp(4) 
SetCurCamp(4) 
end 

function defection_yes() -- script viet hoa By http://tranhba.com  chuyÓn ph¸i , thu håi nguyªn m«n ph¸i vâ c«ng kü n¨ng 
-- script viet hoa By http://tranhba.com  cµ r¬i kü n¨ng 
n = 0 
	i=45; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  Åùö¨µ¯
	i=43; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ÌÆÃÅ°µÆ÷
	i=44; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ÌÆÃÅµ¶·¨
	i=47; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ¶á»êïÚ
	i=48; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ĞÄÑÛ
	i=50; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ×·ĞÄ¼ı
	i=51; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ÇàÄ¾¹¦£¨ÒÑÈ¡Ïû£©
	i=54; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ÂşÌì»¨Óê
	i=55; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ´ã¶¾Êõ
	i=57; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ±ùÆÇº®¹â
	i=58; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ÌìÂŞµØÍø
	i=249;x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  Ğ¡Àî·Éµ¶
	i=253;x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  Ô¦¶¾Ê´¹Ç
AddMagicPoint(n) 
-- script viet hoa By http://tranhba.com  cµ hoµn kü n¨ng nèi nghiÖp tôc chuyÓn m«n ph¸i l­u tr×nh 
	SetTask(10,5*256+20)
SetTask(2,75*256) -- script viet hoa By http://tranhba.com  v× nguyªn m«n ph¸i lµm c¸ dÊu hiÖu 
SetRank(66) 
if (GetRepute() < 200) then 
Msg2Player("Bëi v× cïng bæn ph¸i kh«ng tróng , ng­¬i danh väng gi¶m bít "..GetRepute().." ®iÓm !") 
AddRepute(-1 * GetRepute()) 
else 
Msg2Player("Bëi v× cïng bæn ph¸i kh«ng tróng , ng­¬i danh väng gi¶m bít 200 ®iÓm ! ") 
AddRepute(-200) 
end 
AddNote("§­êng thï thu håi ng­¬i §­êng m«n vâ c«ng , b©y giê ng­¬i cã thÓ gia nhËp Ngò ®éc gi¸o liÔu . ") 
Msg2Player("§­êng thï thu håi ng­¬i §­êng m«n vâ c«ng , b©y giê ng­¬i cã thÓ gia nhËp Ngò ®éc gi¸o liÔu . ") 
Talk(1,"KickOutSelf","V× phßng ngõa bæn m«n tuyÖt häc lé ra ngoµi , ng­¬i ®· quyÕt t©m gia nhËp n¨m ®éc , ta sÏ ph¶i thu håi §­êng m«n tuyÖt häc i!") 
end 

function defection_no() 
AddNote("Ng­¬i hñy bá gia nhËp Ngò ®éc gi¸o ®İch ı t­ëng ") 
Msg2Player("Ng­¬i hñy bá gia nhËp Ngò ®éc gi¸o ®İch ı t­ëng ") 
SetTask(10,1*256) -- script viet hoa By http://tranhba.com  v× ı ®å ph¶n béi s­ lµm dÊu hiÖu , ®Ó phßng t­¬ng lai bÊt cø t×nh huèng nµo 
end 

function return_yes() 
Talk(3,"","§èi víi , ®Ö tö ë giang hå cßn kh«ng cã g× danh tiÕng , muèn mêi c¸c vŞ s­ b¸ chØ gi¸o !","Dùa theo m«n quy , ng­¬i muèn ®ãng n¨m v¹n l­îng trë l¹i m«n ph¸i !"," lµ , ®Ó cho ®Ö tö chuÈn bŞ mét chót !") 
	SetTask(2,70*256+20)
AddNote("§ãng n¨m v¹n l­îng liÒn lËp tøc cã thÓ trë vÒ §­êng m«n ") 
Msg2Player("§ãng n¨m v¹n l­îng liÒn lËp tøc cã thÓ trë vÒ §­êng m«n ") 
end; 

function return_no() 
Talk(2,"","Ta muèn nhiÒu phiªu b¹c giang hå mét ®o¹n thêi gian .","§· nh­ vËy , ng­¬i ph¶i b¶o träng !") 
end; 

function return_complete() 
if(GetCash() >= 50000) then 
Talk(1,"","RÊt tèt , ng­¬i cã phÇn nµy thµnh tİn , ta lµm sao cã thÓ cù tuyÖt !") 
Pay(50000) 
SetTask(2,80*256) 
SetRank(76) 
-- script viet hoa By http://tranhba.com  if (HaveMagic(48) == -1) then 
-- script viet hoa By http://tranhba.com  AddMagic(249) 
-- script viet hoa By http://tranhba.com  AddMagic(58) 
-- script viet hoa By http://tranhba.com  AddMagic(341) 
-- script viet hoa By http://tranhba.com  AddMagic(48) 
add_tm(70) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
Msg2Player("Ng­¬i häc ®­îc trÊn ph¸i tuyÖt häc # míi m¾t , TiÓu lı phi ®ao , thiªn la ®Şa vâng , t¸n hoa phiªu ") 
-- script viet hoa By http://tranhba.com  end 
SetFaction("tangmen") 
SetCamp(3) 
SetCurCamp(3) 
AddNote("§· trë vÒ §­êng m«n ") 
Msg2Player(GetName().." trë vÒ §­êng m«n , th¨ng lµm léc c¸c tr­ëng l·o . ") 
else 
Talk(2,"","Ng­¬i râ rµng kh«ng cã chuÈn bŞ xong !","ThËt xin lçi , ta kiÓm tra mét c¸i .") 
end 
end; 

function return_uncompleted() 
Talk(1,"","Kh«ng sai , tiÕp tôc chuÈn bŞ ®i !") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 20 cÊp nhiÖm vô -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function L20_prise() 
DelItem(41) 
SetRank(27) 
SetTask(2, 30*256) 
-- script viet hoa By http://tranhba.com  AddMagic(303) 
add_tm(30) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
Msg2Player("Chóc mõng ng­¬i trë thµnh §­êng m«n hé vÖ , häc ®­îc gai ®éc cèt ") 
AddNote("§ãng kim h¹ng vßng cho ®­êng thï ch­ëng m«n , hoµn thµnh ®­êng u nhiÖm vô , th¨ng lµm hé vÖ ") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - xuÊt s­ nhiÖm vô -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function L60_get_yes() 
	SetTask(2, 60*256+20)
AddNote(" ë ®¹i s¶nh ( 508, 322) , thÊy ®­êng thï , nhËn <color=red> xuÊt s­ nhiÖm vô <color>, ®Õn tróc ti ®éng thu håi thÊt tinh tuyÖt mÖnh kiÕm ") 
Msg2Player(" ë ®¹i s¶nh thÊy ®­êng thï , nhËn xuÊt s­ nhiÖm vô , ®Õn tróc ti ®éng thu håi thÊt tinh tuyÖt mÖnh kiÕm ") 
end; 

function L60_prise() 
DelItem(49) 
Msg2Player("Chóc mõng ng­¬i häc thµnh , cã thÓ xuÊt s­ . ng­¬i bŞ ®ãng cöa lµ trêi thñ thÇn vÖ , danh väng gia t¨ng 120 ®iÓm ") 
-- script viet hoa By http://tranhba.com  AddGlobalCountNews(GetName().." thµnh tµi xuÊt s­ , tõ gi¶ c¸c vŞ ®ång m«n hµnh tÈu giang hå . ", 1) 
Msg2SubWorld("§­êng m«n "..GetName().." häc thµnh xuÊt s­ , tõ biÖt cïng tªn huynh muéi , hµnh tÈu giang hå ") 
AddRepute(120) 
SetRank(66) 
SetTask(2, 70*256) 
SetFaction("") -- script viet hoa By http://tranhba.com  nhµ ch¬i thèi lui ra §­êng m«n 
SetCamp(4) 
SetCurCamp(4) 
AddNote("Trë vÒ §­êng m«n , ®ãng thÊt tinh tuyÖt mÖnh kiÕm cho ®­êng thï ch­ëng m«n , hoµn thµnh xuÊt s­ nhiÖm vô , th¨ng lµm ngµy thñ thÇn vÖ ") 
end; 

function L60_fail() 
Say("Ch­ëng m«n tøc giËn , ng­¬i nªn lµm c¸i g× b©y giê ?", 2,"TiÒn tíi tay cßn nh­ vËy /L60_faila","Xin/mêi ch­ëng m«n khoan thø /L60_failb") 
end; 

function L60_faila() 
	SetTask(2,60*256+90)
Talk(1,""," lËp tøc ®ãng 4 v¹n l­îng , sau ®ã ®i tróc ti ®éng thu håi thÊt tinh tuyÖt mÖnh kiÕm !") 
end; 

function L60_failb() 
	SetTask(2,60*256+80)
Talk(1,"","Xem ng­¬i thµnh tİn söa ®æi , ta liÒn cho ng­¬i mét c¸i c¬ héi , lËp tøc ®ãng 2 v¹n l­îng , sau ®ã ®i tróc ti ®éng thu håi thÊt tinh tuyÖt mÖnh kiÕm .") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - thÕ giíi nhiÖm vô -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function Uworld51_40() 
SetTask(51,40) 
Msg2Player("Xem ra kh«ng cã c¸ch nµo khuyªn ®­êng thï liÔu , ng­¬i quyÕt ®Şnh ®i t×m ®­êng mét trÇn ®İch s­ phã ®­êng h¾c gi¶i quyÕt chuyÖn nµy ") 
end 

function Uworld51_90() 
DelItem(377) 
SetTask(51,90) 
Msg2Player("Ch©n t­íng hiÓu , ®­êng thï cuèi cïng biÕt tr¸ch lÇm ®­êng mét trÇn . nhanh ®i nãi cho ®­êng mét trÇn c«ng tö ") 
AddNote("Ch©n t­íng hiÓu , ®­êng thï cuèi cïng biÕt tr¸ch lÇm ®­êng mét trÇn . ") 
end 

function no() 
end 
