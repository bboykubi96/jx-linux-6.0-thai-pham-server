-- script viet hoa By http://tranhba.com description: Thiªn v­¬ng gióp tÈm cung d­¬ng anh # Thiªn v­¬ng xuÊt s­ nhiÖm vô # trë l¹i m«n ph¸i nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/28 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nhËp m«n ph¸i nhiÖm vô cÊp bËc yªu cÇu 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-24), gia nhËp trë l¹i m«n ph¸i nhiÖm vô 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-21) lÇn n÷a thiÕt kÕ trë l¹i m«n ph¸i cïng trÊn ph¸i tuyÖt häc t­¬ng quan 
-- script viet hoa By http://tranhba.com  Update#Dan_Deng(2003-10-27) lµm träng ph¶n s­ m«n nhiÖm vô gia nhËp hñy bá nhiÖm vô chøc n¨ng , cïng víi cïng míi m«n ph¸i ®èi øng 

Include("\\script\\global\\skills_table.lua")
Include([[\script\event\teachersday06_v\prize_qingyika.lua]]); 
Include("\\script\\task\\lv120skill\\head.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")	-- script viet hoa By http://tranhba.com  ´øÒÕÍ¶Ê¦

Include("\\script\\task\\150skilltask\\g_task.lua")
Include("\\script\\dailogsys\\g_dialog.lua")


function main() 
if (vt06_isactive() ~= 0) then 
Say("T×m ta cã chuyÖn g× ?", 2,"Muèn mêi d¹y ®¹i s­ #/oldentence","¢n s­ , t¹i h¹ ®· t×m ®ñ ©n s­ thiÕp cïng ®é cao thiÕp liÔu /vt06_prizeenter"); 
return 
end; 

local nNpcIndex = GetLastDiagNpc(); 
local nCurDate = tonumber(GetLocalDate("%Y%m%d%H%M")) 
local szNpcName = GetNpcName(nNpcIndex) 
if NpcName2Replace then 
szNpcName = NpcName2Replace(szNpcName) 
end 
local tbDailog = DailogClass:new(szNpcName) 
tbDailog.szTitleMsg = "<npc> ngµy gÇn ®©y ta cã rÊt nhiÒu chuyÖn muèn gi¶i quyÕt , ng­¬i tíi cã chuyÖn g× ?" 
G_TASK:OnMessage("Thiªn v­¬ng ", tbDailog, "DialogWithNpc") 
if (GetLevel() >= 120 and GetTask(LV120_SKILL_STATE) ~= 19 and GetLastFactionNumber() == 1) then 
tbDailog:AddOptEntry("Häc tËp 120 cÊp kü n¨ng .", lvl120skill_learn) 
end 
tbDailog:AddOptEntry("Muèn mêi d¹y chuyÖn kh¸c ", oldentence) 
tbDailog:Show() 

end 

function oldentence() 
-- script viet hoa By http://tranhba.com  if (check_skill() == 0) then 
-- script viet hoa By http://tranhba.com  return 
-- script viet hoa By http://tranhba.com  end 

UTask_tw = GetTask(3); 
local nFactID = GetLastFactionNumber(); 

if (UTask_tw == 70*256) and (GetFaction() == "tianwang") then -- script viet hoa By http://tranhba.com  trë vÒ s­ sai lÇm tu ch¸nh 
SetFaction("") 
Say("HÖ thèng ph¸t hiÖn chç s¬ hë ®· gÇn lóc ch÷a trŞ !",0) 
return 
elseif (UTask_tw == 70*256) and (GetTask(7) >= 5*256) and (GetTask(7) < 10*256) then -- script viet hoa By http://tranhba.com  tr­íc kia nhËn lÊy nhËp m«n nhiÖm vô 
SetTask(7,0) 
Say("HÖ thèng ph¸t hiÖn chç s¬ hë ®· gÇn lóc ch÷a trŞ !",0) 
return 
elseif (UTask_tw == 80*256) and (GetCamp() == 4) then -- script viet hoa By http://tranhba.com  trë vÒ s­ sai lÇm tu ch¸nh 
SetTask(3,70*256) 
Say("HÖ thèng ph¸t hiÖn chç s¬ hë ®· gÇn lóc ch÷a trŞ !",0) 
return 
elseif (UTask_tw == 80*256 and nFactID == 1 and GetCamp() == 3 and GetFaction() == " míi vµo giang hå ") then 
local _, nTongID = GetTong(); 
if (nTongID == 0) then 
SetFaction("tianwang"); 
Say("HÖ thèng ph¸t hiÖn chç s¬ hë ®· gÇn lóc ch÷a trŞ !",0) 
return 
end 
elseif (UTask_tw == 70*256 and nFactID == 1 and GetCamp() ~= 4 and GetFaction() == " míi vµo giang hå ") then 
local _, nTongID = GetTong(); 
if (nTongID == 0) then 
SetFaction(""); 
SetCurCamp(GetCamp()); 
Say("HÖ thèng ph¸t hiÖn chç s¬ hë ®· gÇn lóc ch÷a trŞ !",0) 
return 
end 
end 
local tbDes = {"Mang nghÖ ®Çu s­ /#daiyitoushi_main(1)","Muèn mêi d¹y chuyÖn kh¸c /common_talk"}; 

Say("Ngµy gÇn ®©y ta cã rÊt nhiÒu chuyÖn muèn gi¶i quyÕt , ng­¬i t×m ta cã chuyÖn g× ?", getn(tbDes), tbDes); 
end 

function common_talk() 
local UTask_tw = GetTask(3); 
if (GetTask(39) == 10) and (GetBit(GetTask(40),3) == 0) then -- script viet hoa By http://tranhba.com  thÕ giíi nhiÖm vô # vâ l©m h­íng bèi 
Talk(1,"","Tèng triÒu triÒu ®×nh ngu xuÈn , cïng ta D­¬ng gia bÊt céng ®¸i thiªn . n¨m ®ã Së v­¬ng cïng phô th©n ta kiªn quyÕt diÖt tèng . d­¬ng anh theo bÊt tµi , còng muèn thùc hiÖn c¸i nµy chİ lín !") 
Uworld40 = SetBit(GetTask(40),3,1) 
SetTask(40,Uworld40) 
elseif (GetSeries() == 0) and (GetFaction() == "tianwang") then 
		if (UTask_tw == 60*256+40) and (HaveItem(96) == 1) then					-- script viet hoa By http://tranhba.com ÄÃµ½ÌìÍõÒÅÊé
Talk(3, "L60_prise","Thuéc h¹ kh«ng cã nhôc sø m¹ng , ®· ®em # Thiªn v­¬ng di th­ # thu håi , xin/mêi bang chñ xem qua ! ","ThËt tèt qu¸ # b¾t ®­îc Thiªn v­¬ng di th­ ch¼ng nh÷ng cã thÓ b¶o toµn bæn bang cßn ng¨n c¶n liÔu mét cuéc vâ l©m h¹o kiÕp # ng­¬i lµm rÊt tèt # h«m nay khëi ng­¬i cã thÓ tù do x«ng x¸o giang hå liÔu ?","Chóc mõng ng­¬i thµnh c«ng xuÊt s­ . ng­¬i bŞ ®ãng cöa v× kinh thiªn Nguyªn so¸i , tõ nay vÒ sau ng­¬i cã thÓ tù do x«ng x¸o giang hå liÔu # hy väng ng­¬i cã thÓ ph¸t huy lùc l­îng , ph¸t triÓn tiÒn ®å !") 
elseif (UTask_tw == 60*256) and (GetLevel() >= 50) then 
Talk(3, "L60_get","Nhí n¨m ®ã , Së v­¬ng ë §éng ®×nh hå khëi binh , nam kh¸ng triÖu tèng , b¾c ®Ó qu©n Kim , bùc nµo anh hïng # Së v­¬ng th©n cè sau , nghÜa qu©n tµn bé ®Ò cö cha ta ®¹i th¸nh thiªn v­¬ng v× l·nh tô , tiÕp tôc l·nh ®¹o khëi nghÜa . nghÜa qu©n ph¸t triÓn tÊn m·nh , ®­a tíi triÒu ®×nh khñng ho¶ng , ph¸i träng binh tíi tr­íc tiªu diÖt , ë ®ã trµng huyÕt chiÕn trung , cha ta bÊt h¹nh bŞ ph¶n ®å b¸n , lùc chiÕn bÊt khuÊt , ë thanh loa ®¶o bŞ b¾t hy sinh ","ChuyÖn sau , ta ®em cha ®İch y quan # béi kiÕm cïng mét quyÓn binh th­ cïng nhau ch«n ë <color=Red> thanh loa ®¶o <color>. quyÓn kia binh th­ ®­îc ®Æt tªn lµ <color=Red>' Thiªn v­¬ng di th­ <color>, bªn trong kh«ng chØ cã ghi l¹i cha ta khi cßn sèng hµnh qu©n bµy trËn t©m ®¾c cïng mËt muèn , h¬n n÷a cßn ghi chĞp cÆn kÏ §éng ®×nh hå ®Şa khu qu©n sù yÕu ®Şa cïng thñy lé muèn t¾c , v× vËy ®èi víi bæn bang mµ nãi chİnh lµ mét quyÓn hÕt søc träng yÕu mËt s¸ch . ","Nh­ng lµ gÇn nhÊt kh«ng biÕt bŞ ng­êi nµo ®i lät tin tøc , quyÓn s¸ch nµy bŞ kim quèc dß th¨m , bän hä ph¸i ®¹i l­îng s¸t thñ ®i tr­íc thanh loa ®¶o , muèn ®i c­íp ®o¹t quyÓn s¸ch nµy . ") 
elseif (UTask_tw == 80*256) or (UTask_tw == 80) then -- script viet hoa By http://tranhba.com  trë l¹i sau ®İch tù do xuÊt nhËp 
Say("ThÕ nµo ? muèn hµnh tÈu giang hå mét phen ?",2,"§óng vËy , xin mêi bang chñ ©n chuÈn . /goff_yes","Kh«ng , tù ta luyÖn ®İch c«ng phu cßn ch­a ®ñ . /no") 
elseif (UTask_tw > 60*256) and (UTask_tw < 70*256) then -- script viet hoa By http://tranhba.com  ®· nhËn ®­îc xuÊt s­ nhiÖm vô , ch­a hoµn thµnh 
Talk(1,"","<color=Red>' Thiªn v­¬ng di th­ <color> bŞ giÊu ë mét <color=Red> b¶o r­¬ng trong <color>, b¶o r­¬ng giÊu ë <color=Red> thanh loa ®¶o b¾c bé <color>, tr­íc ph¶i t×m ®­îc <color=Red> më ra b¶o r­¬ng ®İch c¸i ch×a khãa <color>.") 
else 
Talk(1,"","Kim quèc cuång väng ®Şa muèn lËt ®æ trong chóng ta nguyªn vâ l©m , nÕu nh­ huynh ®Ö chóng ta kh«ng ®ång lßng , lµm sao cã thÓ ®èi kh¸ng ®Şch qu©n ®©y ") 
end 
-- script viet hoa By http://tranhba.com 	elseif (GetTask(7) == 5*256+10) then		-- script viet hoa By http://tranhba.com  ×ªÅÉÖÁÉÙÁÖÅÉ
-- script viet hoa By http://tranhba.com  Say("D­¬ng anh # ph¶n béi gióp ng­êi muèn phÕ ®i bæn bang toµn bé vâ c«ng , ng­¬i thËt muèn bèi khİ bæn m«n ®Çu nhËp ph¸i ThiÕu l©m ? ",2,"Kh«ng tÖ , ta ı ®· quyÕt /defection_yes","Kh«ng , ta cßn lµ kh«ng thay ®æi ®Çu ThiÕu L©m liÔu /defection_no") 
elseif (GetSeries() == 0) and (GetCamp() == 4) and (GetLevel() >= 60) and (UTask_tw == 70*256) and (GetTask(7) < 5*256) then -- script viet hoa By http://tranhba.com  trë l¹i s­ m«n nhiÖm vô 
Talk(1,"return_select","RÊt tèt # hµnh tÈu giang hå nhí ph¶i gióp gióp khèn khæ ng­êi cña ") 
	elseif (GetCamp() == 4) and ((UTask_tw == 70*256+10) or (UTask_tw == 70*256+20)) then
Say("Ng­¬i chuÈn bŞ xong 5 v¹n l­îng sao ?",2,"ChuÈn bŞ xong /return_complete","Cßn kh«ng cã chuÈn bŞ xong /no") 
elseif (UTask_tw >= 70*256) and (GetFaction() ~= "tianwang") then -- script viet hoa By http://tranhba.com  ®· xuÊt s­ 
Talk(1,"","Rêi ®i Thiªn v­¬ng sau mçi ng­êi nh­ cò gièng nh­ tù tay ch©n mét d¹ng !") 
else 
Talk(1,"","Thiªn v­¬ng gióp kh«ng dùa vµo tèng kim bÊt kú võa còng cã thÓ ®øng v÷ng , thËm chİ ph¸t triÓn nhanh chãng , ®Òu lµ bëi v× bang chóng huynh ®Ö mét lßng ®oµn kÕt ") 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  kü n¨ng ®iÒu chØnh t­¬ng quan -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function check_skill() 
x = 0 
skillID = 38 -- script viet hoa By http://tranhba.com  Bµn Cæ chİn thøc 
i = HaveMagic(skillID) 
if (i >= 0) then 
		x = x + 1
DelMagic(skillID) 
AddMagicPoint(i) 
end 
if (x > 0) then -- script viet hoa By http://tranhba.com  nÕu cã kü n¨ng ph¸t sinh biÕn hãa , lµ ®¸ xuèng tuyÕn , nÕu kh«ng trë vÒ tiÕp tôc l­u tr×nh 
Say("Vi s­ lÇn nµy bÕ quan suy tİnh mÊy ngµy , s¸ng lËp chiªu thøc míi , b©y giê truyÒn cho ng­¬i . häc xong sau nhí ph¶i tÜnh d­ìng mét ®o¹n thêi gian tr¸nh khái tæn th­¬ng g©n m¹ch .",1,"§a t¹ s­ phô /KickOutSelf") 
return 0 
else 
return 1 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  trë l¹i nhiÖm vô -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function goff_yes() 
Talk(1,"","ThËt tèt qu¸ ! hµnh tÈu giang hå ph¶i nhí ph¶i trî gióp khèn khæ ng­êi cña a ") 
SetTask(3,70*256) 
AddNote("Rêi ®i Thiªn v­¬ng gióp , tiÕp tôc hµnh tÈu giang hå ") 
Msg2Player("Ng­¬i ®· rêi ®i Thiªn v­¬ng gióp , tiÕp tôc hµnh tÈu giang hå ") 
SetFaction("") 
SetCamp(4) 
SetCurCamp(4) 
end 

function defection_yes() 
-- script viet hoa By http://tranhba.com  cµ r¬i kü n¨ng 
n = 0 
	i=29; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  Õ¶Áú¾÷
	i=23; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ÌìÍõÇ¹·¨
	i=24; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ÌìÍõµ¶·¨
	i=26; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ÌìÍõ´¸·¨
	i=30; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  »Ø·çÂäÑã
	i=31; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ĞĞÔÆ¾÷
	i=32; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ÎŞĞÄÕ¶
	i=33; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ¾²ĞÄ¾÷
	i=34; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ¾ªÀ×Õ¶
	i=35; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  Ñô¹ØÈıµş
	i=36; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ÌìÍõÕ½Òâ
	i=37; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ÆÃ·çÕ¶
	i=38; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ÅÌ¹Å¾ÅÊ½£¨ÒÑÈ¡Ïû¼¼ÄÜ£©
	i=40; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ¶Ï»êØİ
	i=41; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ÑªÕ½°Ë·½
	i=42; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ½ğÖÓÕÖ
AddMagicPoint(n) 
-- script viet hoa By http://tranhba.com  cµ hoµn kü n¨ng nèi nghiÖp tôc chuyÓn m«n ph¸i l­u tr×nh 
	SetTask(7,5*256+20)
SetTask(3,75*256) -- script viet hoa By http://tranhba.com  v× nguyªn m«n ph¸i lµm c¸ dÊu hiÖu 
SetRank(79) -- script viet hoa By http://tranhba.com  ®Çu hµm xuèng lµm trÊn gióp Nguyªn so¸i 
if (GetRepute() < 200) then 
Msg2Player("Bëi v× hµnh ®éng ®èi víi m«n ph¸i bÊt trung , ng­¬i danh väng gi¶m bít "..GetRepute().." ®iÓm !") 
AddRepute(-1 * GetRepute()) 
else 
Msg2Player("Bëi v× hµnh ®éng ®èi víi m«n ph¸i bÊt trung , ng­¬i danh väng gi¶m bít 200 ®iÓm ! ") 
AddRepute(-200) 
end 
AddNote("D­¬ng anh phÕ ng­¬i Thiªn v­¬ng gióp ®İch vâ c«ng , ®o¹t tíi ng­¬i kinh thiªn Nguyªn so¸i ®İch chøc vŞ , ®ång thêi th«ng b¸o thiªn h¹ ng­¬i ®· rêi ®i Thiªn v­¬ng gióp . b©y giê ng­¬i cã thÓ gia nhËp ph¸i ThiÕu l©m . ") 
Msg2Player("D­¬ng anh phÕ ng­¬i Thiªn v­¬ng gióp ®İch vâ c«ng , ®o¹t tíi ng­¬i kinh thiªn Nguyªn so¸i ®İch chøc vŞ , ®ång thêi th«ng b¸o thiªn h¹ ng­¬i ®· rêi ®i Thiªn v­¬ng gióp . b©y giê ng­¬i cã thÓ gia nhËp ph¸i ThiÕu l©m . ") 
Talk(1,"KickOutSelf","ThËt tiÕc nuèi , ta muèn thu trë vÒ d¹y vâ c«ng cña ng­¬i # hñy bá ng­¬i kinh thiªn Nguyªn so¸i tªn ") 
end 

function defection_no() 
SetTask(7,1*256) -- script viet hoa By http://tranhba.com  v× ı ®å ph¶n béi s­ lµm c¸ dÊu hiÖu , ®Ó phßng t­¬ng lai bÊt cø t×nh huèng nµo 
AddNote("Ng­¬i bu«ng tha cho gia nhËp ThiÕu L©m . ") 
Msg2Player("Ng­¬i bu«ng tha cho gia nhËp ThiÕu L©m . ") 
end 

function return_select() 
Say("§èi víi # mét ng­êi lùc l­îng cã h¹n , muèn ®oµn kÕt mçi mét nh©n tµi cã thÓ ®­îc viÖc . bæn bang cßn cã trÊn ph¸i tuyÖt kû “ Kim chung tr¸o ” , chØ truyÒn cho trung thµnh ®İch ®Ö tö . nh­ thÕ nµo , muèn trë vÒ bæn bang sao ?",2,"Tèt , ta muèn håi thiªn v­¬ng gióp /return_yes","Kh«ng , ta ch¼ng qua lµ thuËn miÖng nãi mét chót . /return_no") 
end; 

function return_yes() 
Talk(2,"","ThËt tèt qu¸ , d­íi m¾t qu©n ta ®ang cïng tèng qu©n giao chiÕn , qu©n phİ ch­a ®ñ , ng­¬i ®ãng 5 v¹n l­îng liÒn cã thÓ trë vÒ bæn gi¸o tíi häc Kim chung tr¸o ","Tèt # ®Ö tö chuÈn bŞ mét chót . ") 
	SetTask(3,70*256+20)
AddNote(" lÊy ra 5 v¹n l­îng qu©n phİ ñng hé Thiªn v­¬ng gióp liÒn cã thÓ trë l¹i m«n ph¸i . ") 
Msg2Player(" lÊy ra 5 v¹n l­îng qu©n phİ ñng hé Thiªn v­¬ng gióp liÒn cã thÓ trë l¹i m«n ph¸i . ") 
end; 

function return_no() 
Talk(1,"","Ta ch¼ng qua lµ ®i ngang qua tíi xem mét chót ®ång m«n mµ th«i !") 
end; 

function return_complete() 
if(GetCash() >= 50000) then -- script viet hoa By http://tranhba.com  cã 50000 hai 
Talk(1,"","RÊt tèt # hoan nghªnh ng­¬i trë l¹i Thiªn v­¬ng gióp , ta phong ng­¬i v× kinh thiªn Nguyªn so¸i . ") 
Pay(50000) 
SetTask(3, 80*256) 
SetFaction("tianwang") 
SetCamp(3) 
SetCurCamp(3) 
SetRank(69) 
-- script viet hoa By http://tranhba.com  if (HaveMagic(36) == -1) then 
-- script viet hoa By http://tranhba.com  AddMagic(32) 
-- script viet hoa By http://tranhba.com  AddMagic(41) 
-- script viet hoa By http://tranhba.com  AddMagic(324) 
-- script viet hoa By http://tranhba.com  AddMagic(36) 
add_tw(70) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
Msg2Player("Ng­¬i häc ®­îc Thiªn v­¬ng gióp kü n¨ng # Thiªn v­¬ng chiÕn ı , vâ c«ng kh«ng lßng d¹ nµo chĞm , huyÕt chiÕn b¸t ph­¬ng , ngù long quyÕt . ") 
-- script viet hoa By http://tranhba.com  end 
AddNote("Trë l¹i Thiªn v­¬ng gióp . ") 
Msg2Faction(GetName().." trë l¹i Thiªn v­¬ng gióp , bŞ ®ãng cöa v× kinh thiªn Nguyªn so¸i ") 
else 
Talk(2,"","A ? gièng nh­ cßn ch­a ®ñ ","Ng­îng ngïng , ta kiÓm tra mét c¸i .") 
end 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  xuÊt s­ nhiÖm vô -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function L60_get() 
Say("<color=Red>' Thiªn v­¬ng di th­ <color> tuyÖt ®èi kh«ng thÓ r¬i vµo ng­êi Kim trong tay . ng­¬i lËp tøc ®Õn <color=Red> thanh loa ®¶o <color>, b¾t ®­îc <color=Red>' Thiªn v­¬ng di th­ <color> trë l¹i # lµm ®­îc ®Õn sao ?", 2,"Thuéc h¹ nhÊt ®Şnh tËn t©m tËn lùc /L60_get_yes","Thuéc h¹ sî r»ng kh«ng thÓ tiÕp nhËn nhiÖm vô nµy /no") 
end; 

function L60_get_yes() 
Talk(1,"","<color=Red>' Thiªn v­¬ng di th­ <color> giÊu ë mét <color=Red> b¶o r­¬ng <color>, b¶o r­¬ng giÊu ë <color=Red> thanh loa ®¶o b¾c bé <color>, tr­íc ph¶i t×m ®­îc <color=Red> më ra b¶o r­¬ng ®İch c¸i ch×a khãa <color>. ng­¬i nhanh lªn ngåi thuyÒn ®i <color=Red> thanh loa ®¶o <color>. nhí muèn ngµn v¹n cÈn thËn !") 
	SetTask(3, 60*256+20)
AddNote(" ë trªn trêi v­¬ng gióp tÈm cung (223, 196) thÊy d­¬ng anh , tiÕp nhËn nhiÖm vô ®i thanh loa ®¶o cÇm håi thiªn v­¬ng di th­ ") 
Msg2Player(" ë trªn trêi v­¬ng gióp tÈm cung (223, 196) thÊy d­¬ng anh , tiÕp nhËn nhiÖm vô ®i thanh loa ®¶o cÇm håi thiªn v­¬ng di th­ ") 
end; 

function L60_prise() 
DelItem(96) 
Msg2Player("Chóc mõng ng­¬i xuÊt s­ thµnh c«ng , ng­¬i bŞ ®ãng cöa v× trÊn bang Nguyªn so¸i # danh väng gia t¨ng 120 ®iÓm ") 
-- script viet hoa By http://tranhba.com AddGlobalCountNews(GetName().." thµnh tµi xuÊt s­ , tõ gi¶ ®ång m«n s­ ®Ö b¾t ®Çu x«ng x¸o giang hå . ", 1) 
Msg2SubWorld("Thiªn v­¬ng "..GetName().." thµnh tµi xuÊt s­ , tõ gi¶ ®ång m«n huynh ®Ö tiÕp tôc x«ng x¸o giang hå ") 
AddRepute(120) 
SetRank(79) 
SetTask(3, 70*256) 
SetFaction("") 
SetCamp(4) -- script viet hoa By http://tranhba.com  nhµ ch¬i thèi lui ra Thiªn v­¬ng gióp 
SetCurCamp(4) 
AddNote("Trë vÒ Thiªn v­¬ng gióp tÈm cung , ®em Thiªn v­¬ng di th­ giao cho bang chñ d­¬ng anh , hoµn thµnh xuÊt s­ nhiÖm vô . vinh th¨ng lªn kinh thiªn Nguyªn so¸i .. ") 
end; 

function no() 
end 
