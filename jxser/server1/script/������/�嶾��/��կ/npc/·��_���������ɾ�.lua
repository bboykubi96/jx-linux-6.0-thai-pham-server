-- script viet hoa By http://tranhba.com  n¨m ®éc ng­êi ®i ®­êng NPC gi¸o chñ h¾c mÆt lang qu©n xuÊt s­ nhiÖm vô # trë l¹i m«n ph¸i nhiÖm vô 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 
-- script viet hoa By http://tranhba.com  Update#Dan_Deng(2003-10-27) nÆng viÕt trë l¹i s­ m«n nhiÖm vô , còng lÇn n÷a söa sang l¹i ch©n vèn 

Include("\\script\\global\\skills_table.lua")
Include([[\script\event\teachersday06_v\prize_qingyika.lua]]); 
Include("\\script\\task\\lv120skill\\head.lua")
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")	-- script viet hoa By http://tranhba.com  ´øÒÕÍ¶Ê¦
-- script viet hoa By http://tranhba.com dinhhq: new lunar year 2011 
Include("\\script\\vng_event\\LunarYear2011\\npc\\mastergift.lua")

function main() 
if tbVNG_LY2011:isActive() == 1 then 
local tbSay = 
{ 
" ®­a b¸nh sinh nhËt /#tbMasterGift:getGift('wudu')", 
" muèn mêi d¹y nh÷ng chuyÖn kh¸c /oldMain" 
} 
Say("N¨m míi an khang h­ng v­îng ", getn(tbSay), tbSay) 
return 
end 
oldMain() 
end 
function oldMain() 
if allbrother_0801_CheckIsDialog(4) == 1 then 
allbrother_0801_FindNpcTaskDialog(4) 
return 0; 
end 
if (vt06_isactive() ~= 0) then 
Say("T×m ta cã chuyÖn g× ", 2,"Muèn mêi d¹y ®¹i s­ /oldentence","H¹ ©n s­ lÔ , ta ®· t×m ®ñ ©n s­ t¹p cïng ®é cao t¹p /vt06_prizeenter"); 
return 
end; 

if (GetLevel() >= 120 and GetTask(LV120_SKILL_STATE) ~= 19 and GetLastFactionNumber() == 3) then 
Describe("T×m ta cã chuyÖn g× ", 2, 
" häc 120 cÊp kü n¨ng ./lvl120skill_learn", 
" muèn mêi d¹y chuyÖn kh¸c /oldentence" 
); 
return 
end; 

oldentence() 
end; 

function oldentence() 
local UTask_wu = GetTask(10) 
local nFactID = GetLastFactionNumber(); 

if (UTask_wu == 70*256) and (GetFaction() == "wudu") then -- script viet hoa By http://tranhba.com  trë vÒ s­ sai lÇm tu ch¸nh 
SetFaction("") 
Say("HÖ thèng ph¸t hiÖn chç s¬ hë , ®· gÇn lóc ch÷a trÞ !",0) 
return 
elseif (UTask_wu == 70*256) and (GetTask(2) >= 5*256) and (GetTask(2) < 10*256) then -- script viet hoa By http://tranhba.com  tr­íc kia nhËn lÊy nhËp m«n nhiÖm vô 
SetTask(2,0) 
Say("HÖ thèng ph¸t hiÖn chç s¬ hë , ®· gÇn lóc ch÷a trÞ !",0) 
return 
elseif (UTask_wu == 80*256) and (GetCamp() == 4) then -- script viet hoa By http://tranhba.com  trë vÒ s­ sai lÇm tu ch¸nh 
SetTask(10,70*256) 
Say("HÖ thèng ph¸t hiÖn chç s¬ hë , ®· gÇn lóc ch÷a trÞ !",0) 
return 
elseif (GetTask(2) == 70*256) and (GetTask(10) == 70*256) then -- script viet hoa By http://tranhba.com  chuyÓn m«n ph¸i sai lÇm tu ch¸nh 
SetTask(2,75*256) 
Say("HÖ thèng ph¸t hiÖn chç s¬ hë , ®· gÇn lóc ch÷a trÞ !",0) 
return 
elseif (UTask_wu == 80*256 and nFactID == 3 and GetCamp() == 2 and GetFaction() == " muèn mêi d¹y chuyÖn kh¸c ") then 
local _, nTongID = GetTong(); 
if (nTongID == 0) then 
SetFaction("wudu"); 
Say("HÖ thèng ph¸t hiÖn chç s¬ hë , ®· gÇn lóc ch÷a trÞ !",0) 
return 
end 
elseif (UTask_wu == 70*256 and nFactID == 3 and GetCamp() ~= 4 and GetFaction() == " muèn mêi d¹y chuyÖn kh¸c ") then 
local _, nTongID = GetTong(); 
if (nTongID == 0) then 
SetFaction(""); 
SetCurCamp(GetCamp()); 
Say("HÖ thèng ph¸t hiÖn chç s¬ hë , ®· gÇn lóc ch÷a trÞ !",0) 
return 
end 
end 

local tbDes = {"Mang nghÖ ®Çu s­ /#daiyitoushi_main(3)","Muèn mêi d¹y nh÷ng chuyÖn kh¸c /common_talk"}; 


Say("H«m nay ta l¹i rÊt nhiÒu chuyÖn t×nh muèn gi¶i quyÕt , ng­¬i tíi cã chuyÖn g× ", getn(tbDes), tbDes); 
end 

function common_talk() 
local UTask_wu = GetTask(10) 
if (GetTask(39) == 10) and (GetBit(GetTask(40),10) == 0) then -- script viet hoa By http://tranhba.com  thÕ giíi nhiÖm vô # vâ l©m h­íng bèi 
Talk(1,"","§éc c« kiÕm muèn liªn tèng kh¸ng kim ? nãi kh«ng uæng ? bæn gi¸o cïng kim quèc nguyªn lµ mËt thiÕt liªn minh . nh÷ng thø nµy thÕ ®¬n lùc b¹c ®Ých cã c¸i g× sao ") 
Uworld40 = SetBit(GetTask(40),10,1) 
SetTask(40,Uworld40) 
elseif (GetSeries() == 1) and (GetFaction() == "wudu") then 
		if (UTask_wu == 60*256+20) and (HaveItem(222) == 1) then		-- script viet hoa By http://tranhba.com  ÈÎÎñ½øÐÐÖÐ
Talk(2,"L60_prise","Thuéc h¹ ®· ®o¹t tíi gi¸o ph¸i ®Ých b¶o vËt , xin/mêi tr¹i chñ xem mét chót #","H¶o ! thËt tèt qu¸ ! tèt v« cïng # qu¶ nhiªn kh«ng cã c« phô ta ký ng¾m . thËt lµ kh«ng chÞu Ngò ®éc gi¸o ph¸i ' ®Ých danh hiÖu , b©y giê ng­¬i cã thÓ thuËn lîi xuÊt s­ ! sau h­ëng dù vâ l©m liÔu kh«ng nªn quªn bæn gi¸o ") 
elseif (UTask_wu == 60*256) and (GetLevel() >= 50) then -- script viet hoa By http://tranhba.com  xuÊt s­ nhiÖm vô 
Say("Bæn gi¸o cïng nh¹n ®·ng ph¸i nguyªn bÊt céng ®¸i thiªn . 10 n¨m tr­íc bæn gi¸o cïng nh¹n ®·ng ph¸i tiÕn hµnh mét lÇn ¸c chiÕn . bæn gi¸o bÞ ¸m to¸n , bæn gi¸o ®Ých trÊn gi¸o chi b¶o Ých ®éc ch©u bÞ nh¹n ®·ng ph¸i ®o¹t ®i , thu ë Nh¹n §·ng s¬n ®Ých dª gi¸c trong ®éng . chuyÖn nµy mét con ®Ó cho ta c¶nh c¶nh víi nghi ngê , thËt sù lµ bæn gi¸o ®Ých kú sØ ®¹i nhôc . nÕu nh­ ng­¬i nghÜ xuÊt s­ lêi cña , ®i ngay ®em Ých ®éc ch©u cho ta ®o¹t l¹i tíi , nÕu kh«ng kh«ng bµn n÷a . ",2,"Thuéc h¹ ®em ®em hÕt toµn lùc ®o¹t l¹i trÊn gi¸o chi b¶o /L60_get_yes","§Ö tö n¨ng lùc cã h¹n , sî r»ng kh«ng thÓ hoµn thµnh nhiÖm vô nµy ! /no") 
elseif (UTask_wu == 80*256) then -- script viet hoa By http://tranhba.com  trë l¹i sau ®Ých tù do xuÊt nhËp 
Say("Ng­¬i nghÜ xuÊt s­ ®óng kh«ng ? thêi ®iÓm ®Õn # còng lµ thêi ®iÓm ®Ó cho ng­êi Trung nguyªn sÜ xem mét chót ®Ö tö bæn m«n ®Ých lîi h¹i ",2," lµ # ®a t¹ gi¸o chñ /goff_yes","§Ö tö tù nhËn kh«ng mét kh«ng tinh , sî r»ng muèn c« phô gi¸o chñ liÔu #/no") 
else 
Talk(1,"","Kh«ng nªn nh×n C¸i Bang tù x­ng lµ vâ l©m ®Ö nhÊt bang , thËt ra th× ThiÕu L©m míi lµ # hõ , coi nh­ lµ ®Ö nhÊt cao thñ còng khã tr¸nh ®­îc ta ®éc d­îc . ") 
end 
-- script viet hoa By http://tranhba.com 	elseif (UTask_wu == 5*256+20) then			-- script viet hoa By http://tranhba.com  ×ªÃÅÅÉÍê³É
-- script viet hoa By http://tranhba.com  Talk(1,"defection_complete","H¾c mÆt lang qu©n # c¸p c¸p c¸p c¸p , cho ta lµm rÊt tèt , vinh hoa phó quý kh«ng thiÕu ®­îc ng­¬i #") 
-- script viet hoa By http://tranhba.com 	elseif (GetSeries() == 1) and (GetTask(2) == 5*256+10) and (HaveMagic(76) >= 0) then		-- script viet hoa By http://tranhba.com  ÅÑÊ¦ÈëÌÆÃÅ£¬Öð³öÎå¶¾£¬ÊÕ»ØÈ«²¿¼¼ÄÜ
-- script viet hoa By http://tranhba.com  Say("H¾c mÆt lang qu©n # muèn vµo §­êng m«n ? ch¼ng lÏ bæn m«n vâ c«ng cßn ch­a ®ñ m¹nh , ng­¬i l¹i muèn ®Çu ch¹y §­êng m«n ? ",2,"§Ö tö chØ lµ muèn häc trém §­êng m«n tuyÖt kû tíi lµm gèc d¹y quang ®¹i /defection_yes","ThËt xin lçi , ®Ö tö biÕt sai råi /no") 
elseif (GetSeries() == 1) and (GetCamp() == 4) and (GetLevel() >= 60) and (UTask_wu == 70*256) and ((GetTask(2) < 5*256) or (GetTask(2) == 75*256)) then -- script viet hoa By http://tranhba.com  trë l¹i s­ m«n nhiÖm vô 
Say("Ng­¬i nghÜ trë l¹i s­ m«n ? chuyÖn nµy nãi ®¹i còng lín nãi nhá th× còng nhá . chØ cÇn ng­¬i cã thÓ râ rµng n¾m gi÷ nh÷ng thø kia quy luËt liÒn cã thÓ quyÕt ®Þnh . ",2,"ThØnh gi¸o chñ chiÕu cè /return_yes","ThØnh gi¸o chñ ®Ó cho ta muèn mét c¸i /no") 
	elseif (GetCamp() == 4) and ((UTask_wu == 70*256+10) or (UTask_wu == 70*256+20)) then			-- script viet hoa By http://tranhba.com  ÖØ·µ¹ý³ÌÖÐ¡£ÉèÖÃÎª70*256+20£¬µ«¼æÈÝ70*256+10µÄÖµ
Say("Ng­¬i nãi nh÷ng thø kia còng ®· chuÈn bÞ xong ch­a ",2,"ChuÈn bÞ xong /return_complete","Xin/mêi cho thªm ®Ö tö mét chót thêi gian /return_uncompleted") 
else -- script viet hoa By http://tranhba.com  th­êng quy ®èi tho¹i 
Talk(1,"","Cho phÐp bæn ph¸i ®Ö tö lÉn nhau tù ®i h¹ ®éc lµ bæn ph¸i bªn trong quy . ng­êi nµo t­¬ng ®èi m¹nh sÏ sinh tån h¹ ") 
end 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  kü n¨ng ®iÒu chØnh t­¬ng quan -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com function check_skill() 
-- script viet hoa By http://tranhba.com  x = 0 
-- script viet hoa By http://tranhba.com  skillID = 61 -- script viet hoa By http://tranhba.com  n¨m ®éc ca tông ph¸p 
-- script viet hoa By http://tranhba.com  i = HaveMagic(skillID) 
-- script viet hoa By http://tranhba.com  if (i >= 0) then 
-- script viet hoa By http://tranhba.com 		x = x + 1
-- script viet hoa By http://tranhba.com  DelMagic(skillID) 
-- script viet hoa By http://tranhba.com  AddMagicPoint(i) 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com  if (x > 0) then -- script viet hoa By http://tranhba.com  nÕu cã kü n¨ng ph¸t sinh biÕn hãa , lµ ®¸ xuèng tuyÕn , nÕu kh«ng trë vÒ tiÕp tôc l­u tr×nh 
-- script viet hoa By http://tranhba.com  Say("H¾c mÆt lang qu©n # vi s­ lÇn nµy bÕ quan khæ t­ mÊy ngµy , ®em bæn m«n vâ nghÖ lµm mét phen chØnh ®èn , b©y giê truyÒn thô cho ng­¬i . ng­¬i häc xong sau ®i vÒ tr­íc nghØ ng¬i thËt tèt mét phen , ®Ó tr¸nh th­¬ng tæn ®­îc kinh m¹ch . ",1,"§a t¹ s­ phô /KickOutSelf") 
-- script viet hoa By http://tranhba.com  else 
-- script viet hoa By http://tranhba.com  return 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - chuyÓn m«n ph¸i t­¬ng quan -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function defection_complete() 
Msg2Player("Hoan nghªnh ng­¬i gia nhËp Ngò ®éc gi¸o , ng­¬i ®· thµnh v× Ngò ®éc gi¸o ®ång tö ") 
SetRevPos(183,70) -- script viet hoa By http://tranhba.com  thiÕt trÝ sèng l¹i ®iÓm 
SetTask(10,10*256) -- script viet hoa By http://tranhba.com  nhËp m«n 
SetFaction("wudu") -- script viet hoa By http://tranhba.com  nhµ ch¬i gia nhËp m«n ph¸i 
SetCamp(2) 
SetCurCamp(2) 
SetRank(49) 
AddMagic(63) 
Msg2Player("Häc ®­îc ®éc sa ch­ëng ") 
AddNote("Gia nhËp Ngò ®éc gi¸o trë thµnh n¨m ®éc ®ång tö häc ®­îc ®éc sa ch­ëng ") 
Msg2Faction("wudu",GetName().." rêi ®i §­êng m«n gia nhËp Ngò ®éc gi¸o . m«n ph¸i lùc l­îng cµng thªm m¹nh !",GetName()) 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - trë l¹i m«n ph¸i t­¬ng quan -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function goff_yes() 
Talk(1,"","Tèt l¾m ! xuÊt s­ sau ë trong vâ l©m kh«ng muèn lµm cã tæn m«n ph¸i danh dù chuyÖn cña t×nh ") 
SetTask(10,70*256) 
AddNote("Rêi ®i Ngò ®éc gi¸o , tiÕp tôc chu du giang hå ") 
Msg2Player("Ng­¬i rêi ®i Ngò ®éc gi¸o , tiÕp tôc chu du giang hå ") 
SetFaction("") 
SetCamp(4) 
SetCurCamp(4) 
end 

function return_yes() 
Talk(3,"","§Ö tö c¸i nµy cã 5000 hai ng©n l­îng . thØnh gi¸o chñ vui vÎ nhËn ","H¶o , ng­¬i cã thµnh ý nh­ vËy ta còng sÏ kh«ng tõ chèi ","Xin/mêi chÝnh x¸c ®Ö tö ®i chuÈn bÞ ") 
	SetTask(10,70*256+20)
AddNote("Nép lªn 50000 hai ng©n l­îng liÒn cã thÓ trë vÒ Ngò ®éc gi¸o ") 
Msg2Player("Nép lªn 50000 hai ng©n l­îng liÒn cã thÓ trë vÒ Ngò ®éc gi¸o ") 
end; 

function return_complete() 
if(GetCash() >= 50000) then 
Talk(1,"","Uy ! ng­¬i b©y giê ®· lµ bæn gi¸o ®Ö tö ! ta ®em cÊt nh¾c ng­¬i lµm u minh quû v­¬ng ") 
Pay(50000) 
SetTask(10,80*256) 
SetRank(80) 
-- script viet hoa By http://tranhba.com  if (HaveMagic(75) == -1) then 
-- script viet hoa By http://tranhba.com  AddMagic(71) 
-- script viet hoa By http://tranhba.com  AddMagic(74) 
-- script viet hoa By http://tranhba.com  AddMagic(75) 
add_wu(70) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®Ých hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
Msg2Player("Ng­¬i häc ®­îc trÊn ph¸i tuyÖt häc , n¨m ®éc kú tr¶i qua , vâ c«ng thiªn c­¬ng ®Þa s¸t , chu c¸p thanh minh . ") 
-- script viet hoa By http://tranhba.com  end 
SetFaction("wudu") 
SetCamp(2) 
SetCurCamp(2) 
AddNote("Trë l¹i Ngò ®éc gi¸o , tiÕp tôc luyÖn vâ ") 
Msg2Player(GetName().." quay trë vÒ Ngò ®éc gi¸o , bÞ ®ãng cöa v× u minh quû v­¬ng . ") 
else 
Talk(2,"","NghÜ ra s­ , nh­ng ng­¬i râ rµng kh«ng cã g× c¶ chuÈn bÞ ","Ng­îng ngïng ! ta kiÓm tra mét c¸i .") 
end 
end; 

function return_uncompleted() 
Talk(1,"","Nhanh lªn mét chót !") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  m«n ph¸i nhiÖm vô t­¬ng quan -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function L60_get_yes() 
	SetTask(10,60*256+10)
AddNote("§o¹t tíi nguyªn bÞ nh¹n ®·ng ph¸i c­íp ®i ®Ých b¶o vËt trÊn ph¸i tÞ ®éc ch©u ") 
Msg2Player("§o¹t tíi nguyªn bÞ nh¹n ®·ng ph¸i c­íp ®i ®Ých b¶o vËt trÊn ph¸i tÞ ®éc ch©u ") 
end; 

function L60_prise() 
Talk(1,"","Thuéc h¹ kh¾c cèt minh t©m , tuyÖt kh«ng d¸m quªn ") 
SetTask(10,70*256) 
DelItem(222) 
SetRank(70) 
SetFaction("") 
SetCamp(4) 
SetCurCamp(4) 
AddNote("Tõ nh¹n ®·ng ph¸i trong tay ®o¹t tíi tÞ ®éc ch©u , tr¶ l¹i cho Ngò ®éc gi¸o . hoµn thµnh xuÊt s­ nhiÖm vô . bÞ ®ãng cöa v× u minh quû khiÕn cho , thuËn lîi xuÊt s­ ") 
Msg2Player("Chóc mõng ng­¬i ! ®· thµnh c«ng xuÊt s­ . bÞ ®ãng cöa v× u minh quû khiÕn cho ") 
end; 

function no() 
end; 
