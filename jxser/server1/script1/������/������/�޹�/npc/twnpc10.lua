-- script viet hoa By http://tranhba.com description: Thiªn v­¬ng gióp tÈm cung d­¬ng anh # Thiªn v­¬ng xuÊt s­ nhiÖm vô # trë l¹i m«n ph¸i nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/28 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nhËp m«n ph¸i nhiÖm vô cÊp bËc yªu cÇu 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-24), gia nhËp trë l¹i m«n ph¸i nhiÖm vô 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-21) lÇn n÷a thiÕt kÕ trë l¹i m«n ph¸i cïng trÊn ph¸i tuyÖt häc t­¬ng quan 
-- script viet hoa By http://tranhba.com  Update#Dan_Deng(2003-10-27) lµm träng ph¶n s­ m«n nhiÖm vô gia nhËp hñy bá nhiÖm vô chøc n¨ng , cïng víi cïng míi m«n ph¸i ®èi øng 

function main() 
-- script viet hoa By http://tranhba.com  if (check_skill() == 0) then 
-- script viet hoa By http://tranhba.com  return 
-- script viet hoa By http://tranhba.com  end 
UTask_tw = GetTask(3); 
if (GetTask(39) == 10) and (GetBit(GetTask(40),3) == 0) then -- script viet hoa By http://tranhba.com  thÕ giíi nhiÖm vô # vâ l©m h­íng bèi 
Talk(1,"", 11524) 
Uworld40 = SetBit(GetTask(40),3,1) 
SetTask(40,Uworld40) 
elseif (GetSeries() == 0) and (GetFaction() == "tianwang") then 
		if (UTask_tw == 60*256+40) and (HaveItem(96) == 1) then					-- script viet hoa By http://tranhba.com ÄÃµ½ÌìÍõÒÅÊé
Talk(3, "L60_prise", 11525, 11526, 11527) 
elseif (UTask_tw == 60*256) and (GetLevel() >= 50) then 
Talk(3, "L60_get", 11528, 11529, 11530) 
elseif (UTask_tw == 80*256) or (UTask_tw == 80) then -- script viet hoa By http://tranhba.com  trë l¹i sau ®İch tù do xuÊt nhËp 
Say(11531 ,2,"Tèt , xin/mêi bang chñ ©n chuÈn . /goff_yes","Kh«ng , ta tù nhËn lµ c«ng phu vÉn ch­a tíi nhµ . /no") 
elseif (UTask_tw > 60*256) and (UTask_tw < 70*256) then -- script viet hoa By http://tranhba.com  ®· nhËn ®­îc xuÊt s­ nhiÖm vô , ch­a hoµn thµnh 
Talk(1,"", 11532) 
else 
Talk(1,"", 11533) 
end 
-- script viet hoa By http://tranhba.com 	elseif (GetTask(7) == 5*256+10) then		-- script viet hoa By http://tranhba.com  ×ªÅÉÖÁÉÙÁÖÅÉ
-- script viet hoa By http://tranhba.com  Say(11534 ,2,"Kh«ng tÖ , ta ı ®· quyÕt /defection_yes","Kh«ng , ta cßn lµ kh«ng thay ®æi ®Çu ThiÕu L©m liÔu /defection_no") 
elseif (GetSeries() == 0) and (GetCamp() == 4) and (GetLevel() >= 60) and (UTask_tw == 70*256) and (GetTask(7) < 5*256) then -- script viet hoa By http://tranhba.com  trë l¹i s­ m«n nhiÖm vô 
Talk(1,"return_select", 11535) 
	elseif (GetCamp() == 4) and ((UTask_tw == 70*256+10) or (UTask_tw == 70*256+20)) then
Say(11536 ,2,"ChuÈn bŞ xong /return_complete","Cßn kh«ng cã chuÈn bŞ xong /no") 
elseif (UTask_tw >= 70*256) and (GetFaction() ~= "tianwang") then -- script viet hoa By http://tranhba.com  ®· xuÊt s­ 
Talk(1,"", 11537) 
else 
Talk(1,"", 11538) 
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
Say(11539 ,1,"§a t¹ s­ phô /KickOutSelf") 
return 0 
else 
return 1 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  trë l¹i nhiÖm vô -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function goff_yes() 
Talk(1,"", 11540) 
SetTask(3,70*256) 
AddNote("Rêi ®i Thiªn v­¬ng gióp tiÕp tôc hµnh tÈu giang hå ") 
Msg2Player("Rêi ®i Thiªn v­¬ng gióp tiÕp tôc hµnh tÈu giang hå ") 
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
Msg2Player("Bëi v× ®èi víi m«n ph¸i bÊt trung , ng­¬i danh väng gi¶m bít "..GetRepute().." ®iÓm !") 
AddRepute(-1 * GetRepute()) 
else 
Msg2Player("Bëi v× ®èi víi m«n ph¸i bÊt trung , ng­¬i danh väng gi¶m bít 200 ®iÓm ! ") 
AddRepute(-200) 
end 
AddNote("D­¬ng anh phÕ trõ ng­¬i ra ®İch Thiªn v­¬ng gióp vâ c«ng , ®o¹t l¹i kinh thiªn Nguyªn so¸i ®İch chøc vŞ , ®ång thêi chiªu c¸o thiªn h¹ ng­¬i rêi ®i Thiªn v­¬ng gióp . b©y giê ng­¬i cã thÓ gia nhËp ThiÕu L©m liÔu . ") 
Msg2Player("D­¬ng anh phÕ trõ ng­¬i ra ®İch Thiªn v­¬ng gióp vâ c«ng , ®o¹t l¹i kinh thiªn Nguyªn so¸i ®İch chøc vŞ , ®ång thêi chiªu c¸o thiªn h¹ ng­¬i rêi ®i Thiªn v­¬ng gióp . b©y giê ng­¬i cã thÓ gia nhËp ThiÕu L©m liÔu . ") 
Talk(1,"KickOutSelf", 11541) 
end 

function defection_no() 
SetTask(7,1*256) -- script viet hoa By http://tranhba.com  v× ı ®å ph¶n béi s­ lµm c¸ dÊu hiÖu , ®Ó phßng t­¬ng lai bÊt cø t×nh huèng nµo 
AddNote("Ng­¬i bu«ng tha cho gia nhËp ThiÕu L©m . ") 
Msg2Player("Ng­¬i bu«ng tha cho gia nhËp ThiÕu L©m . ") 
end 

function return_select() 
Say(11542 ,2,"§óng vËy , ta muèn håi thiªn v­¬ng /return_yes","Bæ , ta ch¼ng qua lµ thuËn miÖng nãi mét chót th«i . /return_no") 
end; 

function return_yes() 
Talk(2,"", 11543, 11544) 
	SetTask(3,70*256+20)
AddNote(" lÊy ra 5 v¹n l­îng qu©n phİ ñng hé Thiªn v­¬ng gióp liÒn cã thÓ trë l¹i m«n ph¸i . ") 
Msg2Player(" lÊy ra 5 v¹n l­îng qu©n phİ ñng hé Thiªn v­¬ng gióp liÒn cã thÓ trë l¹i m«n ph¸i . ") 
end; 

function return_no() 
Talk(1,"", 11545) 
end; 

function return_complete() 
if(GetCash() >= 50000) then -- script viet hoa By http://tranhba.com  cã 50000 hai 
Talk(1,"", 11546) 
Pay(50000) 
SetTask(3, 80*256) 
SetFaction("tianwang") 
SetCamp(3) 
SetCurCamp(3) 
SetRank(69) 
if (HaveMagic(36) == -1) then 
AddMagic(32) 
AddMagic(41) 
AddMagic(324) 
AddMagic(36) 
Msg2Player("Ng­¬i häc ®­îc Thiªn v­¬ng gióp kü n¨ng # Thiªn v­¬ng chiÕn ı , vâ c«ng kh«ng lßng d¹ nµo chĞm , huyÕt chiÕn b¸t ph­¬ng , ngù long quyÕt . ") 
end 
AddNote("Trë l¹i Thiªn v­¬ng gióp . ") 
Msg2Faction(GetName().." trë l¹i Thiªn v­¬ng gióp , bŞ ®ãng cöa v× kinh thiªn Nguyªn so¸i ") 
else 
Talk(2,"", 11547, 11548) 
end 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  xuÊt s­ nhiÖm vô -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function L60_get() 
Say(11549 , 2,"Thuéc h¹ nhÊt ®Şnh tËn t©m tËn lùc /L60_get_yes","Thuéc h¹ sî r»ng kh«ng thÓ tiÕp nhËn nhiÖm vô nµy /no") 
end; 

function L60_get_yes() 
Talk(1,"", 11550) 
	SetTask(3, 60*256+20)
AddNote(" ë trªn trêi v­¬ng gióp tÈm cung (223, 196) thÊy d­¬ng anh , tiÕp nhËn nhiÖm vô ®i thanh loa ®¶o cÇm håi thiªn v­¬ng di th­ ") 
Msg2Player(" ë trªn trêi v­¬ng gióp tÈm cung (223, 196) thÊy d­¬ng anh , tiÕp nhËn nhiÖm vô ®i thanh loa ®¶o cÇm håi thiªn v­¬ng di th­ ") 
end; 

function L60_prise() 
DelItem(96) 
Msg2Player("Chóc mõng ng­¬i xuÊt s­ thµnh c«ng , ng­¬i bŞ ®ãng cöa v× trÊn bang Nguyªn so¸i # danh väng gia t¨ng 120 ®iÓm ! ") 
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
