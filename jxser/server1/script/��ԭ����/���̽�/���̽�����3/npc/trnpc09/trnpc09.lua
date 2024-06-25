-- script viet hoa By http://tranhba.com description: ngµy nhÉn d¹y gi¸o chñ hoµn nhan hoµnh liÖt # ngµy nhÉn d¹y ra s­ nhiÖm vô # trë l¹i m«n ph¸i nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/19 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nhËp m«n ph¸i nhiÖm vô cÊp bËc yªu cÇu 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-24), gia nhËp trë l¹i m«n ph¸i nhiÖm vô 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 
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
" ®­a xu©n bİnh /#tbMasterGift:getGift('tianren')", 
" muèn mêi d¹y nh÷ng chuyÖn kh¸c /oldMain" 
} 
Say("N¨m míi an khang h­ng v­îng ", getn(tbSay), tbSay) 
return 
end 
oldMain() 
end 
function oldMain() 
if (vt06_isactive() ~= 0) then 
Say("T×m ta cã chuyÖn g× ?", 2,"Muèn mêi d¹y ®¹i s­ /oldentence","¡n mõng ©n s­ tiÕt , t¹i h¹ ®· t×m ®ñ ©n s­ t¹p cïng cao thñ t¹p /vt06_prizeenter"); 
return 
end; 

if (GetLevel() >= 120 and GetTask(LV120_SKILL_STATE) ~= 19 and GetLastFactionNumber() == 7) then 
Describe("T×m ta cã chuyÖn g× ? ", 2, 
" häc 120 kü n¨ng ./lvl120skill_learn", 
" muèn mêi d¹y nh÷ng chuyÖn kh¸c /oldentence" 
); 
return 
end; 

oldentence() 
end; 

function oldentence() 
local UTask_tr = GetTask(4); 
local nFactID = GetLastFactionNumber(); 

if (UTask_tr == 70*256) and (GetFaction() == "tianren") then -- script viet hoa By http://tranhba.com  trë vÒ s­ sai lÇm tu ch¸nh 
SetFaction("") 
Say("HÖ thèng ph¸t hiÖn sai lÇm , ®· gÇn lóc kh«i phôc !",0) 
return 
elseif (UTask_tr == 70*256) and (GetTask(8) >= 5*256) and (GetTask(8) < 10*256) then -- script viet hoa By http://tranhba.com  tr­íc kia nhËn lÊy nhËp m«n nhiÖm vô 
SetTask(8,0) 
Say("HÖ thèng ph¸t hiÖn sai lÇm , ®· gÇn lóc kh«i phôc !",0) 
return 
elseif (UTask_tr == 80*256) and (GetCamp() == 4) then -- script viet hoa By http://tranhba.com  trë vÒ s­ sai lÇm tu ch¸nh 
SetTask(4,70*256) 
Say("HÖ thèng ph¸t hiÖn sai lÇm , ®· gÇn lóc kh«i phôc !",0) 
return 
elseif (UTask_tr == 80*256 and nFactID == 7 and GetCamp() == 2 and GetFaction() == " míi vµo giang hå ") then 
local _, nTongID = GetTong(); 
if (nTongID == 0) then 
SetFaction("tianren"); 
Say("HÖ thèng ph¸t hiÖn sai lÇm , ®· gÇn lóc kh«i phôc !",0) 
return 
end 
elseif (UTask_tr == 70*256 and nFactID == 7 and GetCamp() ~= 4 and GetFaction() == " míi vµo giang hå ") then 
local _, nTongID = GetTong(); 
if (nTongID == 0) then 
SetFaction(""); 
SetCurCamp(GetCamp()); 
Say("HÖ thèng ph¸t hiÖn sai lÇm , ®· gÇn lóc kh«i phôc !",0) 
return 
end 
end 

local tbDes = {"Mang nghÖ ®Çu s­ /#daiyitoushi_main(7)","Muèn mêi d¹y nh÷ng chuyÖn kh¸c /common_talk"}; 

Say("GÇn nhÊt ta bÒ bén nhiÒu viÖc , ng­¬i tíi ®©y cã chuyÖn g× ? ", getn(tbDes), tbDes); 
end 

function common_talk() 
local UTask_tr = GetTask(4); 
if (GetTask(39) == 10) and (GetBit(GetTask(40),4) == 0) then -- script viet hoa By http://tranhba.com  thÕ giíi nhiÖm vô # vâ l©m h­íng bèi 
Talk(1,"","§éc c« kiÕm mÊt ®i lı trİ a ? bæn gi¸o vèn lµ ®¹i kim quèc d¹y , ®éc c« kiÕm ph¸i ng­êi ®Õn hái l·o phô chuyÖn nµy . h¶o , ng­¬i cïng ®éc c« kiÕm nãi , c¸c ng­¬i ch¼ng qua lµ mét ®¸m ng­êi « hîp , d¸m cïng ®¹i kim ph¶n kh¸ng , tr­íc c©n nh¾c ®êi sau l¹i nãi , ha ha ha !") 
Uworld40 = SetBit(GetTask(40),4,1) 
SetTask(40,Uworld40) 
elseif (GetSeries() == 3) and (GetFaction() == "tianren") then 
if (UTask_tr == 60*256) and (GetLevel() >= 50) then -- script viet hoa By http://tranhba.com  xuÊt s­ nhiÖm vô khëi ®éng 
Say("Bæn gi¸o th¸nh th­ chİnh lµ mét quyÓn ghi l¹i cã kim quèc n­íc d¹y —— t¸t m·n d¹y kinh v¨n ®İch <color=Red> da dª s¸ch <color> , c¸i nµy cuèn da dª s¸ch bŞ nhËm chøc gi¸o chñ phong tån t¹i phİa sau <color=Red> th¸nh ®éng <color> trong , nghe nãi phµm lµ x«ng vµo th¸nh ®éng ng­êi ®Òu cã ®i v« trë vÒ . ng­¬i th©n lµ bæn gi¸o ®İch hé gi¸o ph¸p v­¬ng , cã can ®¶m tiÕn vµo th¸nh ®éng thu håi da dª s¸ch sao ? ", 2,"Thuéc h¹ tr¸ch v« c¹nh vay /L60_get_yes","Thuéc h¹ chØ kh«ng chŞu næi nµy ®¹i ®¶m nhiÖm /L60_get_no") 
		elseif (UTask_tr == 60*256+20) and (HaveItem(127) == 1 and HaveItem(128) == 1 and HaveItem(129) == 1 and HaveItem(130) == 1 and HaveItem(131) == 1) then 
DelItem(127) 
DelItem(128) 
DelItem(129) 
DelItem(130) 
DelItem(131) 
SetTask(28,0) -- script viet hoa By http://tranhba.com  ®em tö thay ®æi l­îng phôc vŞ , th¸nh trong ®éng sÏ tiÕp tôc sö dông 
			SetTask(4,60*256+50)		-- script viet hoa By http://tranhba.com  ÄÃÆëÎå°Ñ¶Ï½£ºóÏÈÕÒÍêÑÕºéÁÒ²ÅÄÜ½øÊ¥¶´£¬¼ò»¯³ÌĞò´¦Àí¡£
AddNote("T×m ®­îc 5 ®em ®o¹n kiÕm sau , håi thiªn nhÉn d¹y , vµo th¸nh ®éng . ") 
Msg2Player("Ng­¬i ®· cã thÓ ®i vµo th¸nh ®éng ") 
Talk(1,"","RÊt tèt , b©y giê ng­¬i cã thÓ vµo th¸nh ®éng cÇm da dª cuèn trë l¹i .") 
		elseif (UTask_tr == 60*256+70) and (HaveItem(132) == 1) then		-- script viet hoa By http://tranhba.com  ³öÊ¦ÈÎÎñÍê³É
Talk(2, "L60_prise","Tr¸i c©y kia nhiªn chİnh lµ bæn gi¸o ®İch th¸nh th­ # h¶o # h¶o # l·o phu sÏ kh«ng nh×n lÇm ng­êi , lÊy ng­¬i tr­íc m¾t ®İch vâ c«ng cïng ®¶m thøc , gi¶ lÊy ngµy giê , tÊt sÏ cã mét phen kinh thiªn ®éng ®Şa ®İch ®¹i t¸c v× # hy väng ng­¬i xuÊt s­ sau nµy , sÏ kh«ng trë thµnh l·o phu ®İch ®Şch nh©n # c¸p c¸p c¸p c¸p !","Chóc mõng ng­¬i thµnh tµi xuÊt s­ # ng­¬i ®· bŞ phong lµm ngµy nhÉn d¹y ®İch t¸t m·n ph¸p v­¬ng , tõ nay vÒ sau cã thÓ tù do hµnh tÈu giang hå n÷a/råi , hy väng ng­¬i cã thÓ ®¹i triÓn quyÒn c­íc , më ra hång ®å !") 
elseif (UTask_tr == 80*256) then -- script viet hoa By http://tranhba.com  trë l¹i sau ®İch tù do xuÊt nhËp 
check_skill() 
		elseif (UTask_tr > 60*256) and (UTask_tr < 60*256+50) then					-- script viet hoa By http://tranhba.com ÒÑ¾­½Óµ½³öÊ¦ÈÎÎñ£¬ÉĞÎ´ÄÃµ½Îå°Ñ¶Ï½£
Talk(1,""," ë tiÕn vµo <color=Red> th¸nh ®éng <color> thu håi <color=Red> da dª s¸ch <color> tr­íc , ng­¬i tr­íc hÕt t×m ®­îc l­u l¹c ë <color=Red> biÖn kinh <color> trong thµnh <color=Red> n¨m ®em ®o¹n kiÕm <color> .") 
		elseif (UTask_tr >= 60*256+50) and (UTask_tr <= 60*256+70) then					-- script viet hoa By http://tranhba.com ÒÑ¾­½Óµ½³öÊ¦ÈÎÎñ£¬ÉĞÎ´ÄÃµ½ÑòÆ¤Êé
Talk(1,"","<color=Red> da dª s¸ch <color> ®ang ë phİa sau <color=Red> th¸nh ®éng <color> trong .") 
else 
Talk(1,"","Tõ x­a tíi nay , quyÒn cao chøc träng ng­êi ®a sè ng­êi chñ ®è kş , ®­¬ng kim Th¸nh th­îng mÆc dï ®èi víi l·o phu ©n sñng cã thªm , nh­ng lµ nghi kş lßng sî r»ng tõ ch­a tiªu thÊt qu¸ , nÕu kh«ng l¹i nh­ thÕ nµo ®em ThÊt c«ng chóa ph¸i ®Õn d¹y trung lµm mét nho nhá §­êng chñ ®©y ? ai # th«i # th«i # th«i # l·o phu chØ cÇu kh«ng hç lµ trêi ®Êt chøng gi¸m , kh«ng qu¶n ®­îc kia rÊt nhiÒu sµm ng«n ®İch phØ b¸ng ®Ó hñy !") 
end 
-- script viet hoa By http://tranhba.com 	elseif (GetTask(8) == 5*256+10) then		-- script viet hoa By http://tranhba.com  ×ªÃÅÅÉµ½Ø¤°ï
-- script viet hoa By http://tranhba.com  Say("Hoµn nhan hång liÖt # C¸i Bang cïng bæn bang thÒ kh«ng l­ìng lËp , ng­¬i cßn muèn bèi khİ bæn gi¸o ®æi ®Çu C¸i Bang ? cÈn thËn ta phÕ c«ng phu cña ng­¬i #",2,"ThËt xin lçi , nh­ng ta ı ®· quyÕt /defection_yes","Ta cßn lµ kh«ng ®i /defection_no") 
elseif (GetSeries() == 3) and (GetCamp() == 4) and (GetLevel() >= 60) and (UTask_tr == 70*256) and (GetTask(8) < 5*256) then -- script viet hoa By http://tranhba.com  trë l¹i s­ m«n nhiÖm vô 
Talk(1,"return_sele","Gi¸o chñ , xuÊt s­ sau ng­êi cña cã thÓ trë vÒ m«n ph¸i tiÕp tôc phông chuyÖn sao ?") 
	elseif (GetCamp() == 4) and ((UTask_tr == 70*256+10) or (UTask_tr == 70*256+20)) then		-- script viet hoa By http://tranhba.com  ÖØ·µÊ¦ÃÅÈÎÎñÖĞ
Say("ChuÈn bŞ xong n¨m v¹n l­îng sao ?",2,"ChuÈn bŞ xong /return_complete","Cßn ch­a chuÈn bŞ xong /return_uncompleted") 
elseif (UTask_tr >= 70*256) then -- script viet hoa By http://tranhba.com  ®· xuÊt s­ 
Talk(1,"","Rèt cuéc lµ hËu sinh kh¶ óy a # lÊy ng­¬i tr­íc m¾t ®İch vâ c«ng cïng ®¶m thøc , gi¶ lÊy ngµy giê , tÊt sÏ cã mét phen kinh thiªn ®éng ®Şa ®İch ®¹i t¸c v× # hy väng ngµy sau ta ng­¬i sÏ kh«ng thµnh ®Şch nh©n !") 
else 
Talk(1,"","ChØ cÇn lµ thanh niªn tµi giái ®Ñp trai muèn gia nhËp bæn gi¸o , bæn gi¸o còng hÕt søc hoan nghªnh .") 
end 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  kü n¨ng ®iÒu chØnh t­¬ng quan -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function check_skill() 
-- script viet hoa By http://tranhba.com  if (HaveMagic(150) == -1) then 
-- script viet hoa By http://tranhba.com  AddMagic(142) 
-- script viet hoa By http://tranhba.com  AddMagic(148) 
-- script viet hoa By http://tranhba.com  AddMagic(150) 
-- script viet hoa By http://tranhba.com  AddNote("Ng­¬i häc ®­îc trÊn ph¸i tuyÖt häc thiªn ma gi¶i thÓ # vâ c«ng th©u thiªn ho¸n nhËt # ma diÔm thÊt s¸t . ") 
-- script viet hoa By http://tranhba.com  Msg2Player("Ng­¬i häc ®­îc trÊn ph¸i tuyÖt häc thiªn ma gi¶i thÓ # vâ c«ng th©u thiªn ho¸n nhËt # ma diÔm thÊt s¸t . ") 
-- script viet hoa By http://tranhba.com  Say("Hoµn nhan hoµnh liÖt # vi s­ lÇn nµy bÕ quan khæ t­ mÊy ngµy , c¶i tiÕn bæn m«n vâ c«ng , b©y giê truyÒn thô cho ng­¬i . ng­¬i häc xong sau ®i vÒ tr­íc nghØ ng¬i thËt tèt mét phen , ®Ó tr¸nh th­¬ng tæn ®­îc kinh m¹ch . ",1,"§a t¹ s­ phô /KickOutSelf") 
-- script viet hoa By http://tranhba.com  else 
Say("Ng­¬i nghÜ ®i nam triÒu dß xĞt tin tøc sao ?",2,"Cã thÓ thuéc h¹ còng muèn x©m nhËp giang hå nhÊt ph¸i . /goff_yes","Thuéc h¹ c¶m gi¸c luyÖn tËp kh«ng ®ñ /no") 
-- script viet hoa By http://tranhba.com  end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - trë l¹i m«n ph¸i t­¬ng quan -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function goff_yes() 
Talk(1,"","RÊt tèt , kü n¨ng kh«ng muèn r¬i vµo nam triÒu ®İch c¸m dç . ") 
SetTask(4,70*256) 
AddNote("Rêi ®i ngµy nhÉn d¹y , tiÕp tôc hµnh tÈu giang hå ") 
Msg2Player("Ng­¬i rêi ®i ngµy nhÉn d¹y , tiÕp tôc hµnh tÈu giang hå ") 
SetFaction("") 
SetCamp(4) 
SetCurCamp(4) 
end 

function defection_yes() -- script viet hoa By http://tranhba.com  chuyÓn ph¸i , thu håi nguyªn m«n ph¸i vâ c«ng kü n¨ng 
-- script viet hoa By http://tranhba.com  cµ r¬i kü n¨ng 
n = 0 
	i=135; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ²ĞÑôÈçÑª
	i=131; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ÌìÈÌµ¶·¨
	i=132; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ÌìÈÌÃ¬·¨
	i=134; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ÌìÈÌ´¸·¨
	i=136; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  »ğÁ«·Ù»ª
	i=137; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  »ÃÓ°·Éºü
	i=138; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ÍÆÉ½Ìîº£
	i=139; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  »ëË®ÃşÓã
	i=140; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ·ÉºèÎŞ¼£
	i=141; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ÁÒË®¾¦Ìì
	i=142; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ÍµÌì»»ÈÕ
	i=143; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  À÷Ä§¶á»ê
	i=145; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  µ¯Ö¸ÁÒÑæ
	i=146; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ÎåĞĞÕó
	i=147; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ĞşÚ¤ÎüĞÇ
	i=148; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ÆßÉ±ÉñÈ­
	i=149; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  Ê´¹ÇÑªÈĞ
	i=150; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ÌìÄ§½âÌå
	i=254; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ÈıÎ¶Õæ»ğ
AddMagicPoint(n) 
-- script viet hoa By http://tranhba.com  cµ hoµn kü n¨ng nèi nghiÖp tôc chuyÓn m«n ph¸i l­u tr×nh 
	SetTask(8,5*256+20)
SetTask(4,75*256) -- script viet hoa By http://tranhba.com  v× nguyªn m«n ph¸i lµm c¸ dÊu hiÖu 
SetRank(71) 
if (GetRepute() < 200) then 
Msg2Player("Bëi v× hµnh ®éng cïng m«n ph¸i bÊt trung , danh väng gi¶m bít "..GetRepute().." ®iÓm !") 
AddRepute(-1 * GetRepute()) 
else 
Msg2Player("Bëi v× hµnh ®éng cïng m«n ph¸i bÊt trung , danh väng gi¶m bít 200 ®iÓm ! ") 
AddRepute(-200) 
end 
AddNote("Bu«ng tha cho ngµy nhÉn d¹y ®İch kü n¨ng vµ danh hiÖu sau , b©y giê ng­¬i cã thÓ gia nhËp C¸i Bang liÔu . ") 
Msg2Player("Bu«ng tha cho ngµy nhÉn d¹y ®İch kü n¨ng vµ danh hiÖu sau , b©y giê ng­¬i cã thÓ gia nhËp C¸i Bang liÔu . ") 
Talk(1,"KickOutSelf","§· nh­ vËy , xin/mêi phÕ trõ vâ c«ng , ng­¬i nghÜ nh­ thÕ nµo ®Òu ®­îc . ") 
end 

function defection_no() 
AddNote("Ng­¬i bu«ng tha cho gia nhËp C¸i Bang . ") 
Msg2Player("Ng­¬i bu«ng tha cho gia nhËp C¸i Bang . ") 
SetTask(8,1*256) -- script viet hoa By http://tranhba.com  v× ı ®å ph¶n béi s­ lµm dÊu hiÖu , ®Ó phßng t­¬ng lai bÊt cø t×nh huèng nµo 
end 

function return_sele() 
Say("Ng­¬i nãi muèn trë vÒ bæn gi¸o ?",2,"Tu©n lÖnh !/return_yes","Kh«ng . /return_no") 
end; 

function return_yes() 
Talk(2,"","NghÜ ®Õn bæn gi¸o gian khæ ®İch ph¸t triÓn qu¸ tr×nh , bæn gi¸o quy ®Şnh trë vÒ bæn gi¸o cÇn ®ãng 5 v¹n l­îng ","H¶o , ®Ö tö ®· mang theo 5 v¹n l­îng .") 
	SetTask(4,70*256+20)
AddNote("§ãng n¨m v¹n l­îng trë vÒ ngµy nhÉn d¹y . ") 
Msg2Player("§ãng n¨m v¹n l­îng trë vÒ ngµy nhÉn d¹y . ") 
end; 

function return_no() 
Talk(1,"","Sau nµy trë l¹i phôc vô bæn gi¸o , b©y giê cßn cã kh«ng lµm xong chuyÖn cña . ") 
end; 

function return_complete() 
if(GetCash() >= 50000) then 
Talk(1,"","RÊt tèt , ng­¬i ®· thµnh lµm gèc d¹y ®Ö tö kı danh , ta sÏ h­íng bæn gi¸o th¸nh gi¸o tr­ëng l·o cÊt nh¾c ng­¬i , kh«ng ®Ó cho ta thÊt väng .") 
Pay(50000) 
SetFaction("tianren") 
SetCamp(2) 
SetCurCamp(2) 
SetRank(81) 
SetTask(4, 80*256) 
-- script viet hoa By http://tranhba.com  if (HaveMagic(150) == -1) then 
-- script viet hoa By http://tranhba.com  AddMagic(142) 
-- script viet hoa By http://tranhba.com  AddMagic(148) 
-- script viet hoa By http://tranhba.com  AddMagic(150) 
add_tr(70) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
Msg2Player("Ng­¬i ®· häc ®­îc trÊn ph¸i tuyÖt häc # thiªn ma gi¶i thÓ , du ngµy ®æi ngµy , ma diÔm thÊt s¸t . ") 
-- script viet hoa By http://tranhba.com  end 
AddNote("Trë vÒ ngµy nhÉn d¹y ") 
Msg2Player(GetName().." trë vÒ ngµy nhÉn d¹y , bŞ ®ãng cöa v× th¸nh gi¸o tr­ëng l·o . ") 
else 
Talk(2,"","ThÕ nµo ? ng­¬i chØ mang nhiÒu nh­ vËy ng©n l­îng ?","ThËt xin lçi , ®Ó cho ta kiÓm tra mét c¸i .") 
end 
end; 

function return_uncompleted() 
Talk(1,"","Nhanh lªn mét chót !") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - xuÊt s­ nhiÖm vô -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function L60_get_yes() 
Talk(1,""," l·o phu qu¶ nhiªn kh«ng cã nh×n ®i m¾t , ng­¬i ng­îc l¹i cã chót ®¶m thøc # bÊt qu¸ ë tiÕn vµo th¸nh ®éng tr­íc , ng­¬i tr­íc hÕt t×m ®­îc l­u l¹c ë <color=Red> biÖn kinh <color> dÆm <color=Red> n¨m ®em ®o¹n kiÕm <color> .") 
	SetTask(4, 60*256+20)
AddNote("ThÊy hoµn nhan hång liÖt , nhËn xuÊt s­ nhiÖm vô , ®Çu tiªn muèn ®i biÖn kinh t×m n¨m ®em ®o¹n kiÕm . ") 
Msg2Player("ThÊy hoµn nhan hång liÖt , nhËn xuÊt s­ nhiÖm vô , ®Çu tiªn muèn ®i biÖn kinh t×m n¨m ®em ®o¹n kiÕm . ") 
end; 

function L60_get_no() 
Talk(1,"","Ch¼ng lÏ ng­¬i kh«ng chó träng danh tiÕng sao ?") 
end; 

function L60_prise() 
DelItem(132) 
-- script viet hoa By http://tranhba.com  AddGlobalCountNews(GetName().." thµnh tµi xuÊt s­ , tõ gi¶ c¸c vŞ d¹y h÷u xu«i nam giang hå . ", 1) 
Msg2SubWorld("Ngµy nhÉn d¹y tİn ®å "..GetName().." xuÊt s­ thµnh c«ng , tõ gi¶ c¸c vŞ d¹y h÷u trë vÒ nam ph­¬ng . ") 
SetRank(71) 
SetTask(28,0) -- script viet hoa By http://tranhba.com  ®em tö thay ®æi l­îng phôc vŞ 
SetTask(4, 70*256) 
SetFaction("") 
SetCamp(4) 
SetCurCamp(4) 
AddNote("Trë vÒ ngµy nhÉn d¹y , ®em da dª cuèn cho hoµn nhan hång liÖt , hoµn thµnh xuÊt s­ nhiÖm vô , th¨ng lµm t¸t m·n ph¸p v­¬ng ") 
Msg2Player("Chóc mõng ng­¬i thµnh tµi xuÊt s­ # ng­¬i ®· bŞ phong lµm ngµy nhÉn d¹y ®İch t¸t m·n ph¸p v­¬ng , danh väng gia t¨ng 120 ®iÓm ! ") 
AddRepute(120) 
end; 

function no() 
end 
