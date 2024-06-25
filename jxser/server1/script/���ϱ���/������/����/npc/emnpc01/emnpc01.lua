-- script viet hoa By http://tranhba.com description: ph¸i Nga Mi thanh hiÓu s­ th¸i # Nga Mi nhËp m«n nhiÖm vô #50 cÊp nhiÖm vô # xuÊt s­ nhiÖm vô # trë l¹i m«n ph¸i nhiÖm vô # 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/6 
-- script viet hoa By http://tranhba.com update: Dan_Deng(2003-07-22), gia nhËp m«n ph¸i nhiÖm vô cÊp bËc yªu cÇu 
-- script viet hoa By http://tranhba.com update: Dan_Deng(2003-07-24), thªm “ trë l¹i m«n ph¸i ” nhiÖm vô 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-12) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-21) lÇn n÷a thiÕt kÕ trë l¹i m«n ph¸i cïng trÊn ph¸i tuyÖt häc t­¬ng quan 
-- script viet hoa By http://tranhba.com  Update#Dan_Deng(2003-10-27) lµm träng ph¶n s­ m«n nhiÖm vô gia nhËp hñy bá nhiÖm vô chøc n¨ng , cïng víi cïng míi m«n ph¸i ®èi øng 
-- script viet hoa By http://tranhba.com  update: xiaoyang(2004\4\19) Nga Mi 90 cÊp nhiÖm vô 

Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\task\\lv120skill\\head.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")	-- script viet hoa By http://tranhba.com  ´øÒÕÍ¶Ê¦

Include("\\script\\task\\150skilltask\\g_task.lua")
Include("\\script\\dailogsys\\g_dialog.lua")

Include("\\script\\item\\skillbook.lua")

function main() 

local nNpcIndex = GetLastDiagNpc(); 
local nCurDate = tonumber(GetLocalDate("%Y%m%d%H%M")) 
local szNpcName = GetNpcName(nNpcIndex) 
if NpcName2Replace then 
szNpcName = NpcName2Replace(szNpcName) 
end 
local tbDailog = DailogClass:new(szNpcName) 
tbDailog.szTitleMsg = "<npc> gÇn nhÊt ta bÒ bén nhiÒu viÖc , ng­¬i tíi ®©y cã chuyÖn g× ?" 
G_TASK:OnMessage("Nga Mi", tbDailog, "DialogWithNpc") 
if (GetLevel() >= 120 and GetTask(LV120_SKILL_STATE) ~= 19 and GetLastFactionNumber() == 4) then 
tbDailog:AddOptEntry("Häc tËp 120 kü n¨ng .", lvl120skill_learn) 
end 
tbDailog:AddOptEntry("Muèn mêi d¹y nh÷ng chuyÖn kh¸c ", oldentence) 
tbDailog:Show() 

end 

function oldentence() 
local UTask_em = GetTask(1) 
local nFactID = GetLastFactionNumber(); 

if (UTask_em == 70*256) and (GetFaction() == "emei") then -- script viet hoa By http://tranhba.com  trë vÒ s­ sai lÇm tu ch¸nh 
SetFaction("") 
Say("HÖ thèng ph¸t sinh sai lÇm , ®· gÇn lóc kh«i phôc !",0) 
return 
elseif (UTask_em == 70*256) and (GetTask(6) >= 5*256) and (GetTask(6) < 10*256) then -- script viet hoa By http://tranhba.com  tr­íc kia nhËn lÊy nhËp m«n nhiÖm vô 
SetTask(6,0) 
Say("HÖ thèng ph¸t sinh sai lÇm , ®· gÇn lóc kh«i phôc !",0) 
return 
elseif (UTask_em == 80*256) and (GetCamp() == 4) then -- script viet hoa By http://tranhba.com  trë vÒ s­ sai lÇm tu ch¸nh 
SetTask(1,70*256) 
Say("HÖ thèng ph¸t sinh sai lÇm , ®· gÇn lóc kh«i phôc !",0) 
return 
elseif (UTask_em == 80*256 and nFactID == 4 and GetCamp() == 1 and GetFaction() == " míi vµo giang hå ") then 
local _, nTongID = GetTong(); 
if (nTongID == 0) then 
SetFaction("emei"); 
Say("HÖ thèng ph¸t sinh sai lÇm , ®· gÇn lóc kh«i phôc !",0) 
return 
end 
elseif (UTask_em == 70*256 and nFactID == 4 and GetCamp() ~= 4 and GetFaction() == " míi vµo giang hå ") then 
local _, nTongID = GetTong(); 
if (nTongID == 0) then 
SetFaction(""); 
SetCurCamp(GetCamp()); 
Say("HÖ thèng ph¸t sinh sai lÇm , ®· gÇn lóc kh«i phôc !",0) 
return 
end 
end 

local tbDes = {"Mang nghÖ ®Çu s­ /#daiyitoushi_main(4)","Muèn mêi d¹y nh÷ng chuyÖn kh¸c /common_talk"}; 

Say("GÇn nhÊt ta bÒ bén nhiÒu viÖc , ng­¬i tíi ®©y cã chuyÖn g× ?", getn(tbDes), tbDes); 
end 

function common_talk() 
local UTask_em = GetTask(1) 
local Uworld125 = GetTask(125) 
if (GetTask(39) == 10) and (GetBit(GetTask(40),1) == 0) then -- script viet hoa By http://tranhba.com  thÕ giíi nhiÖm vô # vâ l©m h­íng bèi 
Talk(1,"","Bæn m«n tuy lµ n÷ l­u h¹ng ng­êi , nh­ng lµ quèc gia h­ng vong thÊt phu h÷u tr¸ch . tr¶ lêi ch¾c ch¾n ®éc c« minh chñ , Nga Mi nghe tõ ng­¬i ph©n phã !") 
Uworld40 = SetBit(GetTask(40),1,1) 
SetTask(40,Uworld40) 
elseif (GetSeries() == 2) and (GetFaction() == "emei") then 
if (UTask_em == 80*256) then -- script viet hoa By http://tranhba.com  trë l¹i sau ®İch tù do xuÊt nhËp 
check_skill() 
		elseif ((UTask_em == 60*256+50) and (HaveItem(24) == 1)) then		-- script viet hoa By http://tranhba.com ÄÃµ½ÑÌÓñÖ¸»·£¬³öÊ¦ÈÎÎñÍê³É
DelItem(24) 
Talk(1,"L60_prise","Ng­¬i lÇn nµy cã thÓ thµnh c«ng lµm gèc ph¸i ®o¹t l¹i b¶o vËt trÊn ph¸i , c«ng lao kh«ng nhá , lÊy trİ tuÖ cña ng­¬i cïng n¨ng lùc , ®· cã thÓ thuËn lîi xuÊt s­ , ngµy sau hµnh tÈu giang hå , cÇn ph¶i gi÷ m×nh tù yªu , nhí lÊy nhí lÊy !") 
elseif (UTask_em == 60*256) and (GetLevel() >= 50) then -- script viet hoa By http://tranhba.com  xuÊt s­ nhiÖm vô khëi ®éng 
DelItem(24) 
Say("Ch­ëng m«n tİn vËt <color=Red> khãi ngãn tay ngäc hoµn <color> , chİnh lµ bæn ph¸i tæ s­ truyÒn xuèng ®İch b¶o vËt trÊn ph¸i . nh­ng lµ ë mÊy thËp niªn tr­íc , bæn ph¸i ra khái mét ph¶n ®å <color=Red> thanh cïng <color> , nµng lµ vi s­ s­ tû , bëi v× ®èi víi vi s­ tiÕp nhËn ch­ëng m«n bÊt m·n , cho nªn ®¸nh c¾p <color=Red> khãi ngãn tay ngäc hoµn <color> , ng­¬i nguyÖn ı gióp bæn ph¸i ®o¹t l¹i <color=Red> khãi ngãn tay ngäc hoµn <color> sao ?" , 2,"NguyÖn ı /L60_get_yes","ChØ kh«ng chŞu næi nµy ®¹i ®¶m nhiÖm /L60_get_no") 
		elseif (UTask_em == 50*256+80) then													-- script viet hoa By http://tranhba.com 50¼¶ÈÎÎñÍê³É
L50_prise() 
		elseif ((UTask_em == 50*256+50) or (UTask_em == 50*256+60)) and (HaveItem(23) == 0) then
AddEventItem(23) 
Talk(1,"","Vâ c«ng cña ng­¬i danh tiÕng cµng ngµy cµng cao , thËt lµ bæn ph¸i ®İch chi trô , tõ nay vÒ sau lµm viÖc kh«ng thÓ tïy ı , c¸i nµy kinh Kim C­¬ng muèn dÉn ë bªn ng­êi !") 
elseif (UTask_em == 50*256) and (GetLevel() >= 50) then -- script viet hoa By http://tranhba.com 50 cÊp nhiÖm vô khëi ®éng 
DelItem(23) 
Say("Vi s­ cïng <color=Red> thµnh ®« tin/th¬ t­¬ng tù <color> ®İch trô tr× <color=Red> tõ h¶i ®¹i s­ <color> lµ ph­¬ng bªn trong biÕt ®ãng , tin/th¬ t­¬ng tù khai s¸ng víi Tïy D­¬ng §Õ nghiÖp lín n¨m ®ang lóc , cù kim ®· n¨m tr¨m n¨m m­¬i l¨m n¨m . ®Ó ¨n mõng tin/th¬ t­¬ng tù chÕ tù ®İch thËt tèt ngµy , vi s­ chuÈn bŞ ®­a cho tin/th¬ t­¬ng tù mét mãn phËt m«n chİ b¶o <color=Red># kim tuyÕn tó gièng nh­ kinh Kim C­¬ng #<color> lµm quµ tÆng . ng­¬i nguyÖn ı gióp ta ®i ®­a phÇn nµy quµ tÆng sao ?", 2,"NguyÖn ı /L50_get_yes","ChØ kh«ng chŞu næi nµy ®¹i ®¶m nhiÖm /L50_get_no") 
elseif (UTask_em > 50*256) and (UTask_em < 60*256) then -- script viet hoa By http://tranhba.com  ®· nhËn ®­îc 50 cÊp nhiÖm vô , ch­a hoµn thµnh b×nh th­êng ®èi tho¹i 
Talk(1,"","Kinh Kim C­¬ng ®­a sao ?") 
elseif (UTask_em > 60*256) and (UTask_em < 70*256) then -- script viet hoa By http://tranhba.com  xuÊt s­ nhiÖm vô trung ®İch b×nh th­êng ®èi tho¹i 
Talk(1,"","<color=Red> khãi ngãn tay ngäc hoµn <color> chİnh lµ b¶o vËt trÊn ph¸i , l­u l¹c bªn ngoµi . nghe nãi gÇn nhÊt <color=Red> thanh cïng <color> ë <color=Red> Tr­êng giang ngän nguån <color> phô cËn hiÖn th©n , ng­¬i muèn hÕt th¶y cÈn thËn !") 
else 
Talk(1,"","Ng· phËt tõ bi # võa vµo chóng ta , cÇn cÈn gi÷ cöa quy . ng¾m ng­¬i m¹nh kháe sinh häc nghÖ , kh«ng muèn c« phô vi s­ kú väng !") 
end 
-- script viet hoa By http://tranhba.com 	elseif (UTask_em == 5*256+70) and (HaveItem(17) == 1) and (GetSeries() == 2) and (GetCamp() == 0) then		-- script viet hoa By http://tranhba.com ÄÃµ½°×ÓñÈçÒâ£¬ÈëÃÅÈÎÎñÍê³É
-- script viet hoa By http://tranhba.com  enroll_prise() 
elseif (Uworld125 == 20) and (HaveItem(388) == 1)then 
Talk(7,"Uworld125_lose","S­ th¸i , ngµi kháe ","Ng­¬i lµ ...?","T¹i h¹ nhËn ®­îc Tiªu b¸ b¸ ®İch nhiÖm vô , mang kh«ng cã ch÷ thiªn th­ tİn vËt cho Nga Mi .","ThËt tèt qu¸ , kh«ng muèn mÊy tr¨m n¨m sau , s­ tæ ®İch thÇn c«ng l¹i trë vÒ Nga Mi . b»ng h÷u , ®a t¹ ng­¬i !","Kh«ng cÇn kh¸ch khİ !","§©y lµ Nga Mi ch­ëng m«n ®İch lÖnh tiÔn , cÇm ®i thµnh ®« t×m Tiªu b¸ b¸ nhËn lÊy thï lao . trë vÒ sau Nga Mi , cã thÓ dïng lÖnh tiÔn ®iÒu ®éng ta chç nµy ®İch tÊt c¶ lùc l­îng .","# ®a t¹ s­ th¸i !.") 
elseif (Uworld125 == 30) and (HaveItem(389) == 0)then 
Talk(1,"","Yªn t©m , Nga Mi ®¸p øng ng­¬i ®iÒu kiÖn , tuyÖt kh«ng ®æi ı !") 
AddEventItem(389) 
Msg2Player("B¾t ®­îc Nga Mi lÖnh tiÔn ") 
elseif (Uworld125 == 40) then 
Talk(5,"Uworld125_finish","S­ th¸i nh­ vËy t×m ta cã chuyÖn g× kh«ng ?","Ta rÊt nhiÒu ®Ö tö bëi v× luyÖn tËp kh«ng cã ch÷ thiªn th­ kinh m¹ch hçn lo¹n , ng­êi bŞ th­¬ng nÆng .","ThÕ nµo ? kh«ng thÓ nµo . ta kh«ng nhóc nhİch ®Õn bİ tŞch .","# c¸i nµy ta biÕt , chuyÖn ph¸t sinh ë ng­¬i mang bİ tŞch ®İch thêi ®iÓm , chØ cã ng­êi h÷u duyªn míi cã thÓ lÜnh ngé ","Th× ra lµ nh­ vËy ") 
-- script viet hoa By http://tranhba.com 	elseif (GetTask(6) == 5*256+10) then		-- script viet hoa By http://tranhba.com  ×ªÅÉÖÁ´äÑÌÃÅ
-- script viet hoa By http://tranhba.com  Say("Thanh hiÓu s­ th¸i # bæn m«n m«n quy mÆc dï kh«ng khái chuyÓn ®Çu h¾n ph¸i , nh­ng kh«ng thÓ mang ®i bæn m«n bÊt kú vâ nghÖ . ng­¬i thËt tİnh to¸n muèn ®Çu nhËp thóy khãi cöa ? ",2,"Kh«ng tÖ , ta ı ®· quyÕt /defection_yes","Kh«ng , ta cßn lµ kh«ng thay ®æi ®Çu /defection_no") 
elseif (GetSeries() == 2) and (GetCamp() == 4) and (GetLevel() >= 60) and (UTask_em == 70*256) and (GetTask(6) < 5*256) then -- script viet hoa By http://tranhba.com  trë l¹i s­ m«n nhiÖm vô 
Talk(5,"return_sele","S­ phã ","Ng­¬i l¹i lªn s¬n tíi ch¬i a ","§óng vËy , ®Ö tö l¹i nghÜ tíi ë trªn cao s¬n ®İch nh÷ng ngµy ®ã . "," õ d¹ , ta còng lµ , trong nh¸y m¾t ng­¬i ®· ®i xuèng nói . ","Giang hå hiÓm ¸c , thÕ sù khã liÖu . b©y giê ta muèn ë l¹i lªn nói . ") 
	elseif (GetCamp() == 4) and ((UTask_em == 70*256+10) or (UTask_em == 70*256+20)) then		-- script viet hoa By http://tranhba.com  ÖØ·µÊ¦ÃÅÈÎÎñÖĞ
Say("ChuÈn bŞ xong 5 v¹n l­îng sao ?",2,"ChuÈn bŞ xong /return_complete","Cßn kh«ng cã chuÈn bŞ xong /return_uncompleted") 
elseif (Uworld125 > 20) and (Uworld125 < 40)then 
Talk(1,"","Nga Mi cïng c¸c h¹ cßn cã duyªn phËn , sau nµy hy väng cã thÓ tiÕp tôc gióp mét tay .") 
elseif (UTask_em < 10*256) and (GetSeries() == 2) then -- script viet hoa By http://tranhba.com  ch­a nhËp m«n 
Talk(1,"","Ta Nga Mi nhÊt ph¸i , truyÖn ®Õn nay ngµy , ®· cã tr¨m n¨m , ®Ö tö ®«ng ®¶o , nghiÔm kÕt thiÖn duyªn , bÊt luËn lµ hay kh«ng xÕp vµo m«n t­êng , ®· lªn nói , ®Òu cã duyÕn ng­êi .") 
elseif (UTask_em == 70*256) then -- script viet hoa By http://tranhba.com  xuÊt s­ ®Ö tö # c©n nh¾c trë l¹i m«n ph¸i kiªm cho # 
Talk(1,"","Ng­¬i ®· xuÊt s­ , tõ nay vÒ sau hµnh tÈu giang hå cÇn ph¶i gi÷ m×nh tù yªu !") 
else -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ ph¸i Nga Mi ®èi tho¹i 
Talk(1,"","Ta Nga Mi mÆc dï lµ n÷ l­u h¹ng ng­êi , nh­ng còng sÏ kh«ng b¹i bëi nh÷ng m«n ph¸i kh¸c .") 
end 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  kü n¨ng ®iÒu chØnh t­¬ng quan -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function check_skill() 
-- script viet hoa By http://tranhba.com  if (HaveMagic(92) == -1) then 
-- script viet hoa By http://tranhba.com  AddMagic(92) -- script viet hoa By http://tranhba.com  phËt t©m tõ h÷u 
-- script viet hoa By http://tranhba.com  Msg2Player("Ng­¬i häc ®­îc “ phËt t©m tõ h÷u ”") 
-- script viet hoa By http://tranhba.com  Say("Thanh hiÓu s­ th¸i # vi s­ lÇn nµy bÕ quan khæ t­ mÊy ngµy , míi sang mét chiªu “ phËt t©m tõ h÷u ” , b©y giê truyÒn thô cho ng­¬i . ng­¬i häc xong sau ®i vÒ tr­íc nghØ ng¬i thËt tèt mét phen , ®Ó tr¸nh th­¬ng tæn ®­îc kinh m¹ch . ",1,"§a t¹ s­ phô /KickOutSelf") 
-- script viet hoa By http://tranhba.com  elseif (HaveMagic(252) == -1) then 
-- script viet hoa By http://tranhba.com  AddMagic(252) -- script viet hoa By http://tranhba.com  phËt ph¸p v« biªn 
-- script viet hoa By http://tranhba.com  Msg2Player("Ng­¬i häc ®­îc “ phËt ph¸p v« biªn ”") 
-- script viet hoa By http://tranhba.com  Say("Thanh hiÓu s­ th¸i # vi s­ lÇn nµy bÕ quan khæ t­ mÊy ngµy , míi sang mét chiªu “ phËt ph¸p v« biªn ” , b©y giê truyÒn thô cho ng­¬i . ng­¬i häc xong sau ®i vÒ tr­íc nghØ ng¬i thËt tèt mét phen , ®Ó tr¸nh th­¬ng tæn ®­îc kinh m¹ch . ",1,"§a t¹ s­ phô /KickOutSelf") 
-- script viet hoa By http://tranhba.com  else 
Say(" l¹i muèn xuèng nói du ngo¹n ?",2,"§óng vËy , xin mêi s­ phô cho phĞp /goff_yes","Kh«ng ph¶i lµ , ta c¶m gi¸c c«ng phu : thêi gian cßn ch­a ®ñ #. /no") 
-- script viet hoa By http://tranhba.com  end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - trë l¹i s­ m«n t­¬ng quan -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function goff_yes() -- script viet hoa By http://tranhba.com  trë l¹i sau ®İch tù do xuÊt nhËp # ra # 
Talk(1,"","RÊt tèt , ¨n võa thÊy tr­êng mét trİ .") 
SetTask(1,70*256) 
AddNote("Rêi ®i Nga Mi , hµnh tÈu giang hå ") 
Msg2Player("Rêi ®i Nga Mi , hµnh tÈu giang hå ") 
SetFaction("") 
SetCamp(4) 
SetCurCamp(4) 
end 

function defection_yes() -- script viet hoa By http://tranhba.com  chuyÓn ph¸i , thu håi nguyªn m«n ph¸i vâ c«ng kü n¨ng 
-- script viet hoa By http://tranhba.com  cµ r¬i kü n¨ng 
n = 0 
	i=80; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  Æ®Ñ©´©ÔÆ
	i=101;x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ÖÎÁÆÊõ
	i=77; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ¶ëáÒ½£·¨
	i=79; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ¶ëáÒÕÆ·¨
	i=81; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  Çï·çÒ¶
	i=82; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ËÄÏóÍ¬¹é
	i=83; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ÍûÔÂ
	i=84; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ·çÓêÆ®Ïã
	i=85; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  Ò»Ò¶ÖªÇï
	i=86; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  Á÷Ë®
	i=87; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ±ùĞÄ¾ö
	i=88; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ²»Ãğ²»¾ø
	i=89; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ÃÎµû
	i=91; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ·ğ¹âÆÕÕÕ
	i=93; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ´Èº½ÆÕ¶É
	i=252;x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ·ğ·¨ÎŞ±ß
	i=92; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ·ğĞÄ´ÈÓÓ
AddMagicPoint(n) 
-- script viet hoa By http://tranhba.com  cµ hoµn kü n¨ng nèi nghiÖp tôc chuyÓn m«n ph¸i l­u tr×nh 
	SetTask(6,5*256+20)
SetTask(1,75*256) -- script viet hoa By http://tranhba.com  v× nguyªn m«n ph¸i lµm c¸ dÊu hiÖu 
SetRank(74) 
if (GetRepute() < 200) then 
Msg2Player("Bëi v× ng­¬i ®èi víi m«n ph¸i ®İch hµnh ®éng bÊt trung , danh väng gi¶m bít "..GetRepute().." ®iÓm !") 
AddRepute(-1 * GetRepute()) 
else 
Msg2Player("Bëi v× ng­¬i ®èi víi m«n ph¸i ®İch hµnh ®éng bÊt trung , danh väng gi¶m bít 200 ®iÓm ! ") 
AddRepute(-200) 
end 
AddNote("Thanh hiÓu s­ th¸i ®· phÕ vâ c«ng , b¾t ®­îc th¸nh n÷ kim ®Ønh danh hiÖu , nãi thiªn h¹ biÕt ®· xem ng­¬i ®uæi ra khái Nga Mi , ng­¬i cã thÓ gia nhËp thóy khãi liÔu . ") 
Msg2Player("Thanh hiÓu s­ th¸i ®· phÕ vâ c«ng , b¾t ®­îc th¸nh n÷ kim ®Ønh danh hiÖu , nãi thiªn h¹ biÕt ®· xem ng­¬i ®uæi ra khái Nga Mi , ng­¬i cã thÓ gia nhËp thóy khãi liÔu . ") 
Talk(1,"KickOutSelf","Kh«ng ngê , ta d¹y cho ng­¬i ®İch vâ c«ng , ng­¬i nghÜ phÕ bá , thËt lµ thÕ sù khã liÖu !") 
end 

function defection_no() 
AddNote("Ng­¬i bu«ng tha cho gia nhËp thóy khãi ph¸i . ") 
Msg2Player("Ng­¬i bu«ng tha cho gia nhËp thóy khãi ph¸i . ") 
SetTask(6,1*256) -- script viet hoa By http://tranhba.com  v× ı ®å ph¶n béi s­ lµm dÊu hiÖu , ®Ó phßng t­¬ng lai bÊt cø t×nh huèng nµo 
end 

function return_sele() 
Say("Ng­¬i cã thµnh ı , ta kh«ng thÓ cù tuyÖt ",2,"# ®a t¹ s­ phô /return_yes","Tİnh / chän , kh«ng cÇn /return_no") 
end; 

function return_yes() -- script viet hoa By http://tranhba.com  trë l¹i ®İch kiÓm tra 
Talk(3,"","# ®a t¹ s­ phô , ®Ö tö phiªu b¹c giang hå còng ®¹t ®­îc mét chót ng©n l­îng , kh«ng hiÓu s­ m«n cÇn sao ?","Kh«ng nghÜ tíi ng­¬i cã phÇn nµy t©m , vËy th× quyªn 50000 hai , söa ch÷a mét c¸i Nga Mi ®­êng nói ®i "," lµ , ®Ö tö ®i chuÈn bŞ ") 
	SetTask(1,70*256+20)
AddNote("Quyªn 500 l­îng b¹c tr¾ng söa ch÷a Nga Mi s¬n ®­êng nói , lµ cã thÓ trë vÒ Nga Mi . ") 
Msg2Player("Quyªn 500 l­îng b¹c tr¾ng söa ch÷a Nga Mi s¬n ®­êng nói , lµ cã thÓ trë vÒ Nga Mi . ") 
end; 

function return_no() 
Talk(2,"","Giang hå kh«ng ®­êng trë vÒ , cÇn m×nh x«ng ra , ®a t¹ s­ phô ı tèt ","Kh«ng quan hÖ , nÕu nh­ muèn trë l¹i , Nga Mi tïy thêi v× ng­¬i më ra ") 
end; 

function return_complete() -- script viet hoa By http://tranhba.com  trë l¹i thµnh c«ng 
if (GetCash() >= 50000) then 
Talk(1,"","H¶o , ®©y lµ 5 v¹n l­îng , ng­¬i bŞ ®ãng cöa v× kim ®Ønh th¸nh n÷ , hy väng ng­¬i cè g¾ng trî gióp bæn ph¸i ph¸t d­¬ng quang ®¹i .") 
Pay(50000) 
SetTask(1,80*256) 
SetFaction("emei") 
SetCamp(1) 
SetCurCamp(1) 
SetRank(64) 
-- script viet hoa By http://tranhba.com  if (HaveMagic(252) == -1) then 
-- script viet hoa By http://tranhba.com  AddMagic(88) 
-- script viet hoa By http://tranhba.com  AddMagic(91) 
-- script viet hoa By http://tranhba.com  AddMagic(282) 
-- script viet hoa By http://tranhba.com  AddMagic(252) 
add_em(70) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
Msg2Player("Ng­¬i häc ®­îc trÊn ph¸i tuyÖt häc # phËt ph¸p v« biªn , bÊt diÖt kh«ng døt vâ c«ng , phËt quang chiÕu kh¾p . ") 
-- script viet hoa By http://tranhba.com  end 
AddNote("§· trë vÒ ph¸i Nga Mi ") 
Msg2Player(GetName().." bŞ ®ãng cöa v× kim ®Ønh th¸nh n÷ , trë vÒ ph¸i Nga Mi . ") 
else 
Talk(2,"","Gièng nh­ ng­¬i kh«ng cã mang rÊt nhiÒu tiÒn ","ThËt xin lçi , ta ®i cÇm tiÒn . ") 
end 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - nhËp m«n nhiÖm vô -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function enroll_prise() -- script viet hoa By http://tranhba.com  nhËp m«n nhiÖm vô hoµn thµnh 
Talk(1,"","Ng· phËt tõ bi , nÕu ng­¬i mét lßng tíi thµnh , bÇn ni h·y thu ng­¬i lµm ®å ®Ö , hy väng ng­¬i m¹nh kháe sinh häc nghÖ , cÈn gi÷ cöa quy , kh«ng muèn c« phô vi s­ kú väng .") 
DelItem(17) 
SetFaction("emei") 
SetCamp(1) 
SetCurCamp(1) 
SetRank(13) 
AddMagic(80) 
AddMagic(101) 
SetRevPos(13, 13) 
SetTask(1, 10*256) 
AddNote("§ãng b¹ch ngäc nh­ ı cho thanh hiÓu s­ th¸i , hoµn thµnh nhËp m«n nhiÖm vô . . gia nhËp ph¸i Nga Mi , trë thµnh ¸o v¶i ni , häc ®­îc tuyÕt bay xuyªn v©n , trŞ liÖu thuËt ") 
Msg2Player("§ãng b¹ch ngäc nh­ ı cho thanh hiÓu s­ th¸i , hoµn thµnh nhËp m«n nhiÖm vô . ") 
Msg2Player("Hoan nghªnh gia nhËp ph¸i Nga Mi , trë thµnh ¸o v¶i ni ") 
Msg2Player("Häc ®­îc tuyÕt bay xuyªn v©n vâ c«ng '. ") 
Msg2Player("Häc ®­îc ph¸i Nga Mi tuyÖt häc trŞ liÖu thuËt ' ") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 50 cÊp nhiÖm vô -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function L50_get_yes() 
Talk(1,"","<color=Red> tõ h¶i ®¹i s­ <color> bÕ quan nhiÒu n¨m , tÇm th­êng kh«ng thÊy bªn ngoµi kh¸ch , ng­¬i cã thÓ ®i tr­íc t×m s­ ®Ö cña h¾n <color=Red> tõ v©n ph¸p s­ <color>. ") 
AddEventItem(23) 
Msg2Player("TiÕp nhËn vô , mang kim tuyÕn tó gièng nh­ kinh Kim C­¬ng ®i thµnh ®« tin/th¬ t­¬ng tù . ") 
Msg2Player("§¹t ®­îc kim tuyÕn tó gièng nh­ kinh Kim C­¬ng . ") 
	SetTask(1, 50*256+50)
AddNote(" ë ch¸nh ®iÖn thÊy thanh hiÓu s­ th¸i , tiÕp nhËn vô ®i tin/th¬ t­¬ng tù , ®ãng kim tuyÕn tó gièng nh­ kinh Kim C­¬ng . ") 
end; 

function L50_get_no() 
Talk(1,"","Kia ®i t×m h¾n ®i !") 
end; 

function L50_prise() 
Talk(1,"","ChuyÖn nµy ng­¬i lµm ®­îc rÊt tèt , ng­¬i thiªn t­ th«ng dÜnh , chØ cÇn tiÕp tôc cè g¾ng , t­¬ng lai nhÊt ®Şnh sÏ häc cã ®iÒu thµnh ") 
AddNote("Trë vÒ ch¸nh ®iÖn h­íng thanh hiÓu s­ th¸i phôc mÖnh , hoµn thµnh tin/th¬ t­¬ng tù nhiÖm vô , th¨ng lµm t¸n hoa thiªn n÷ , häc ®­îc phËt t©m tõ h÷u . ") 
SetRank(18) 
SetTask(1, 60*256) 
-- script viet hoa By http://tranhba.com  AddMagic(92) 
add_em(60) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
Msg2Player("Chóc mõng ng­¬i th¨ng lµm t¸n hoa thiªn n÷ , häc ®­îc phËt t©m tõ h÷u . ") 
AddNote("NhiÖm vô hoµn thµnh , bŞ ®ãng cöa v× t¸n hoa thiªn n÷ ") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - xuÊt s­ nhiÖm vô -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function L60_get_yes() 
Talk(1,"","Nghe nãi gÇn nhÊt <color=Red> thanh cïng <color> ë <color=Red> Tr­êng giang ngän nguån <color> phô cËn hiÖn th©n , ng­¬i muèn hÕt th¶y cÈn thËn ! ") 
	SetTask(1, 60*256+50)
AddNote(" ë ch¸nh ®iÖn thÊy thanh hiÓu s­ th¸i , nhËn xuÊt s­ nhiÖm vô , ®o¹t l¹i ch­ëng m«n tİn vËt khãi m­a chiÕc nhÉn . ") 
Msg2Player("NhËn xuÊt s­ nhiÖm vô , ®o¹t l¹i ch­ëng m«n tİn vËt khãi m­a chiÕc nhÉn . ") 
end; 

function L60_get_no() 
Talk(1,"","Xem ra chØ cã thÓ ®­a c¸i nµy tr¸ch nhiÖm nÆng nÒ giao cho ng­¬i !") 
end; 

function L60_prise() 
Talk(1, "","Chóc mõng ng­¬i thµnh c«ng xuÊt s­ , bŞ ®ãng cöa v× th¸nh n÷ . ngµy sau cã thÓ tù do hµnh tÈu giang hå . ng­¬i cã thÓ lùa chän gia nhËp nh÷ng m«n ph¸i kh¸c tiÕp tôc häc nghÖ , còng cã thÓ thµnh lËp bang héi , hoÆc lµ lµm mét ®éc hµnh ®İch n÷ hiÖp còng rÊt uy phong . giang hå kiÕm hiÖp , trêi cao ®Êt réng , hy väng ng­¬i më ra hoµnh ®å !") 
Msg2Player("Chóc mõng ng­¬i häc thµnh , ng­¬i bŞ ®ãng cöa v× Nga Mi th¸nh n÷ , danh väng gia t¨ng 120 ®iÓm ! ") 
-- script viet hoa By http://tranhba.com  AddGlobalCountNews("Nga Mi "..GetName().." thµnh tµi xuÊt s­ , tõ gi¶ ®ång m«n s­ muéi xuèng nói x«ng x¸o giang hå ", 1) 
Msg2SubWorld("Nga Mi ®Ö tö "..GetName().." thµnh tµi xuÊt s­ , tõ gi¶ ®ång m«n s­ muéi xuèng nói x«ng x¸o giang hå ") 
AddRepute(120) 
SetRank(74) 
SetTask(1, 70*256) 
SetFaction("") -- script viet hoa By http://tranhba.com  nhµ ch¬i thèi lui ra ph¸i Nga Mi 
SetCamp(4) 
SetCurCamp(4) 
AddNote("Trë l¹i ch¸nh ®iÖn , ®ãng khãi m­a chiÕc nhÉn cho thanh hiÓu s­ th¸i , hoµn thµnh xuÊt s­ nhiÖm vô , th¨ng lµm th¸nh n÷ ") 
end; 

function no() 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  thÕ giíi nhiÖm vô -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function Uworld125_lose() 
DelItem(388) 
AddEventItem(389) 
SetTask(125,30) 
Msg2Player("Giao ra kh«ng cã ch÷ thiªn th­ , b¾t ®­îc Nga Mi lÖnh tiÔn . ") 
AddNote("B¾t ®­îc lÖnh tiÔn , trë vÒ thµnh ®« t×m Tiªu b¸ b¸ dÉn t­ëng . ") 
end 

function Uworld125_finish() 
if (GetTask(1) >= 70*256) and (GetTask(1) ~= 75*256) then 
Talk(4,"","Xem ra Nga Mi cïng thiªn th­ ®İch duyªn phËn ®· hÕt , c¸i nµy sø m¹ng lµ cña ng­¬i míi ®óng !","T¹i h¹ ?","§óng vËy , còng ®­îc chØ cã ng­¬i míi cã thÓ hiÓu bªn trong bİ tŞch , bÇn ni ®em truyÖn cïng ng­¬i trong ®ã chiªu thøc , hy väng ng­¬i thµnh c«ng , kh«ng muèn uæng phİ ta mét phen khæ t©m !","§Ö tö nhÊt ®Şnh kh«ng c« phô kú väng cña ngµi . ngµy sau cã c¸i g× ph©n phã , ®Ö tö nhÊt ®Şnh tu©n theo !") 
if (HaveMagic(328) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(328,1) 
end 
if (HaveMagic(380) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(380,1) 
end 
if (HaveMagic(332) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(332) 
end 
CheckIsCanGet150SkillTask() 
Msg2Player("Ng­¬i häc ®­îc ba nga ®ñ tuyÕt , phong ®­êng thóy ¶nh , phæ ®é chóng sanh ") 
SetTask(125,255) -- script viet hoa By http://tranhba.com  häc ®­îc kü n¨ng ®İch thiÕt trİ thay ®æi l­îng 255 
else 
Talk(1,"","QuyÓn nµy thiªn th­ kh«ng ng­êi nµo cã thÓ tu luyÖn , chØ cã thÓ ®Æt ë tr¶i qua l©u chê hËu nh©n . ng­¬i khæ cùc nh­ vËy , c¸i nµy tiÓu lÔ vËt cho ng­¬i . ","§Ö tö kia còng kh«ng kh¸ch khİ !") 
SetTask(125,245) -- script viet hoa By http://tranhba.com  ®¹t ®­îc danh väng ®İch thiÕt trİ thay ®æi l­îng 245 
end 
add_repute = ReturnRepute(30,100,4) -- script viet hoa By http://tranhba.com  danh väng t­ëng th­ëng # lín nhÊt 30 ®iÓm , tõ 100 cÊp khëi mçi cÊp ®Ö gi¶m 4% 
AddRepute(add_repute) 
Msg2Player("Nga Mi thiªn th­ thuËn lîi trë vÒ , nhiÖm vô hoµn thµnh . danh väng gia t¨ng "..add_repute.." ®iÓm .") 
AddNote("Nga Mi thiªn th­ thuËn lîi trë vÒ , nhiÖm vô hoµn thµnh . ") 
end 
