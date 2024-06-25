-- script viet hoa By http://tranhba.com  Thiªn v­¬ng gióp mét tay gióp NPC 

Include("\\script\\global\\map_helper.lua")
Include("\\script\\task\\newtask\\education\\dragonfive.lua")
npc_name = " v¨n th­ " 

function main(sel) 

UTask_tw = GetTask(3) 

if (UTask_tw < 10*256) then -- script viet hoa By http://tranhba.com  kh«ng nhËn Thiªn v­¬ng gióp nhËp m«n nhiÖm vô , kh«ng/ch­a vµo Thiªn v­¬ng gióp 
if (GetFaction() ~= "") then -- script viet hoa By http://tranhba.com  nÕu nh­ nhµ ch¬i ®· thuéc vÒ kh¸c mét m«n ph¸i 
Say("V¨n th­ # cã vÊn ®Ò g× kh«ng hiÓu , hái ta ®©y chİnh x¸c kh«ng sai #", 3,"HiÓu râ ®¾t gióp /org","HiÓu râ c¸c vŞ h¶o h¸n /member","HiÓu râ n¬i ®©y bè côc /config") 
return 
else 
Say("V¨n th­ # cã vÊn ®Ò g× kh«ng hiÓu , hái ta ®©y chİnh x¸c kh«ng sai #", 4,"HiÓu râ ®¾t gióp /org","HiÓu râ c¸c vŞ h¶o h¸n /member","HiÓu râ n¬i ®©y bè côc /config","Nh­ thÕ nµo nhËp m«n /task1") 
return 
end 
end; 

if (UTask_tw == 70*256) then -- script viet hoa By http://tranhba.com  Thiªn v­¬ng gióp ®· xuÊt s­ 
Say("V¨n th­ # nguyªn lai lµ tr­íc kia huynh ®Ö trong bang , cã chuyÖn g× kh«ng ? ", 4, " lÇn n÷a hiÓu râ Thiªn v­¬ng gióp /org", " lÇn n÷a hiÓu râ tr­íc kia huynh ®Ö trong bang /member", " lÇn n÷a trë vÒ cè n¬i ®©y bè côc /config","Cßn cã c¸i g× nhiÖm vô cã thÓ lµm /task2") 
return 
end; 

Say("V¨n th­ # cã vÊn ®Ò g× kh«ng hiÓu , hái ta ®©y chİnh x¸c kh«ng sai #", 4,"HiÓu râ bæn bang /org","HiÓu râ ®ång m«n /member","HiÓu râ n¬i ®©y bè côc /config","HiÓu râ nhiÖm vô /task3") 

end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function org() 
Say("V¨n th­ # muèn biÕt ph­¬ng diÖn nµo ? ", 4,"M«n ph¸i khëi nguyªn /o1","VŞ trİ ®Şa lı /o2","Giang hå ®Şa vŞ /o3","M«n ph¸i ®Æc s¾c /o4") 
end; 


function member() 
Say("V¨n th­ # muèn biÕt ng­êi nµo ? ", 14,"Bang chñ d­¬ng anh /m1","Thiªn hé ph¸p ®­êng v©n xa /m2","§Şa hé ph¸p h¹ thµnh /m3","Tr­íc khiÕn cho v­¬ng t¸ /m4","Bªn tr¸i khiÕn cho cæ b¸ch /m5","Bªn ph¶i khiÕn cho d­¬ng hå /m6","T«n ®¹o dÉn /m7","B¸n binh khİ bang chóng /m8","B¸n trang bŞ ®İch bang chóng /m9","B¸n thuèc ®İch bang chóng /m10","Phİa ®«ng bÕn tµu ®İch thuyÒn phu /m11","Phİa nam bÕn tµu ®İch thuyÒn phu /m12","Phİa t©y bÕn tµu ®İch thuyÒn phu /m13","Phİa b¾c bÕn tµu ®İch thuyÒn phu /m14") 
end; 


function config() 
Say("V¨n th­ # muèn biÕt ph­¬ng diÖn nµo ? ", 6,"§i th«ng chç nµo /c1","§¶o trung ­¬ng /c2","§¶o ®«ng /c3","§¶o nam /c4","§¶o t©y /c5","§¶o b¾c /c6") 
end; 


function task1() 
Say("V¨n th­ # bæn m«n chØ lÊy kim hÖ nam ®Ö tö . muèn nhËp m«n häc nghÖ , cã thÓ th«ng qua cïng ba l¨ng huyÒn ®İch Thiªn v­¬ng t­íng l·nh ®èi tho¹i hoµn thµnh nhËp m«n . ") 
end; 


function task2() 
Say("V¨n th­ # ng­¬i ®· xuÊt s­ , kh«ng cÇn lµm tiÕp bæn bang nhiÖm vô . ", 0) 
end; 


function task3() 

UTask_tw = GetTask(3) 

if (UTask_tw < 10*256) then 
Say("V¨n th­ # muèn nhËp m«n häc nghÖ , cã thÓ th«ng qua hoµn thµnh nhËp m«n nhiÖm vô thùc hiÖn . sau khi nhËp m«n , theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô , cã thÓ häc ®­îc vâ c«ng , ®¹t ®­îc ®Çu hµm . hoµn thµnh xuÊt s­ nhiÖm vô sau , liÒn cã thÓ thµnh tµi xuÊt s­ . ng­¬i tr­íc m¾t ®ang tiÕn hµnh trung ®İch nhiÖm vô lµ #", 1,"NhËp m«n nhiÖm vô /v1") 
end; 

if (UTask_tw == 10*256) then 
Say("V¨n th­ # muèn nhËp m«n häc nghÖ , cã thÓ th«ng qua hoµn thµnh nhËp m«n nhiÖm vô thùc hiÖn . sau khi nhËp m«n , theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô , cã thÓ häc ®­îc vâ c«ng , ®¹t ®­îc ®Çu hµm . hoµn thµnh xuÊt s­ nhiÖm vô sau , liÒn cã thÓ thµnh tµi xuÊt s­ . ng­¬i tr­íc m¾t ®· nhËp m«n , kÕ tiÕp cã thÓ lµm lµ #", 1,"M¸u gµ th¹ch nhiÖm vô /v2") 
end; 

if (UTask_tw > 10*256) and (UTask_tw < 20*256) then 
Say("V¨n th­ # muèn nhËp m«n häc nghÖ , cã thÓ th«ng qua hoµn thµnh nhËp m«n nhiÖm vô thùc hiÖn . sau khi nhËp m«n , theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô , cã thÓ häc ®­îc vâ c«ng , ®¹t ®­îc ®Çu hµm . hoµn thµnh xuÊt s­ nhiÖm vô sau , liÒn cã thÓ thµnh tµi xuÊt s­ . ng­¬i tr­íc m¾t ®ang tiÕn hµnh trung ®İch nhiÖm vô lµ #", 1,"M¸u gµ th¹ch nhiÖm vô /v2") 
end; 

if (UTask_tw == 20*256) then 
Say("V¨n th­ # muèn nhËp m«n häc nghÖ , cã thÓ th«ng qua hoµn thµnh nhËp m«n nhiÖm vô thùc hiÖn . sau khi nhËp m«n , theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô , cã thÓ häc ®­îc vâ c«ng , ®¹t ®­îc ®Çu hµm . hoµn thµnh xuÊt s­ nhiÖm vô sau , liÒn cã thÓ thµnh tµi xuÊt s­ . ng­¬i kÕ tiÕp cã thÓ lµm lµ #", 1,"B¹ch n­íc ®éng nhiÖm vô /v3") 
end; 

if (UTask_tw > 20*256) and (UTask_tw < 30*256) then 
Say("V¨n th­ # muèn nhËp m«n häc nghÖ , cã thÓ th«ng qua hoµn thµnh nhËp m«n nhiÖm vô thùc hiÖn . sau khi nhËp m«n , theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô , cã thÓ häc ®­îc vâ c«ng , ®¹t ®­îc ®Çu hµm . hoµn thµnh xuÊt s­ nhiÖm vô sau , liÒn cã thÓ thµnh tµi xuÊt s­ . ng­¬i tr­íc m¾t ®ang tiÕn hµnh trung ®İch nhiÖm vô lµ #", 1,"B¹ch n­íc ®éng nhiÖm vô /v3") 
end; 

if (UTask_tw == 30*256) then 
Say("V¨n th­ # muèn nhËp m«n häc nghÖ , cã thÓ th«ng qua hoµn thµnh nhËp m«n nhiÖm vô thùc hiÖn . sau khi nhËp m«n , theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô , cã thÓ häc ®­îc vâ c«ng , ®¹t ®­îc ®Çu hµm . hoµn thµnh xuÊt s­ nhiÖm vô sau , liÒn cã thÓ thµnh tµi xuÊt s­ . ng­¬i kÕ tiÕp cã thÓ lµm lµ #", 1,"Thiªn v­¬ng lµm nhiÖm vô /v4") 
end; 

if (UTask_tw > 30*256) and (UTask_tw < 40*256) then 
Say("V¨n th­ # muèn nhËp m«n häc nghÖ , cã thÓ th«ng qua hoµn thµnh nhËp m«n nhiÖm vô thùc hiÖn . sau khi nhËp m«n , theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô , cã thÓ häc ®­îc vâ c«ng , ®¹t ®­îc ®Çu hµm . hoµn thµnh xuÊt s­ nhiÖm vô sau , liÒn cã thÓ thµnh tµi xuÊt s­ . ng­¬i tr­íc m¾t ®ang tiÕn hµnh trung ®İch nhiÖm vô lµ #", 1,"Thiªn v­¬ng lµm nhiÖm vô /v4") 
end; 

if (UTask_tw == 40*256) then 
Say("V¨n th­ # muèn nhËp m«n häc nghÖ , cã thÓ th«ng qua hoµn thµnh nhËp m«n nhiÖm vô thùc hiÖn . sau khi nhËp m«n , theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô , cã thÓ häc ®­îc vâ c«ng , ®¹t ®­îc ®Çu hµm . hoµn thµnh xuÊt s­ nhiÖm vô sau , liÒn cã thÓ thµnh tµi xuÊt s­ . ng­¬i kÕ tiÕp cã thÓ lµm lµ #", 1,"Thuèc gi¶i ®éc nhiÖm vô /v5") 
end; 

if (UTask_tw > 40*256) and (UTask_tw < 50*256) then 
Say("V¨n th­ # muèn nhËp m«n häc nghÖ , cã thÓ th«ng qua hoµn thµnh nhËp m«n nhiÖm vô thùc hiÖn . sau khi nhËp m«n , theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô , cã thÓ häc ®­îc vâ c«ng , ®¹t ®­îc ®Çu hµm . hoµn thµnh xuÊt s­ nhiÖm vô sau , liÒn cã thÓ thµnh tµi xuÊt s­ . ng­¬i tr­íc m¾t ®ang tiÕn hµnh trung ®İch nhiÖm vô lµ #", 1,"Thuèc gi¶i ®éc nhiÖm vô /v5") 
end; 

if (UTask_tw == 50*256) then 
Say("V¨n th­ # muèn nhËp m«n häc nghÖ , cã thÓ th«ng qua hoµn thµnh nhËp m«n nhiÖm vô thùc hiÖn . sau khi nhËp m«n , theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô , cã thÓ häc ®­îc vâ c«ng , ®¹t ®­îc ®Çu hµm . hoµn thµnh xuÊt s­ nhiÖm vô sau , liÒn cã thÓ thµnh tµi xuÊt s­ . ng­¬i kÕ tiÕp cã thÓ lµm lµ #", 1,"N­íc tr¸ch nhiÖm vô /v6") 
end; 

if (UTask_tw > 50*256) and (UTask_tw < 60*256) then 
Say("V¨n th­ # muèn nhËp m«n häc nghÖ , cã thÓ th«ng qua hoµn thµnh nhËp m«n nhiÖm vô thùc hiÖn . sau khi nhËp m«n , theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô , cã thÓ häc ®­îc vâ c«ng , ®¹t ®­îc ®Çu hµm . hoµn thµnh xuÊt s­ nhiÖm vô sau , liÒn cã thÓ thµnh tµi xuÊt s­ . ng­¬i tr­íc m¾t ®ang tiÕn hµnh trung ®İch nhiÖm vô lµ #", 1,"N­íc tr¸ch nhiÖm vô /v6") 
end; 

if (UTask_tw == 60*256) then 
Say("V¨n th­ # muèn nhËp m«n häc nghÖ , cã thÓ th«ng qua hoµn thµnh nhËp m«n nhiÖm vô thùc hiÖn . sau khi nhËp m«n , theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô , cã thÓ häc ®­îc vâ c«ng , ®¹t ®­îc ®Çu hµm . hoµn thµnh xuÊt s­ nhiÖm vô sau , liÒn cã thÓ thµnh tµi xuÊt s­ . ng­¬i kÕ tiÕp cã thÓ lµm lµ #", 1,"XuÊt s­ nhiÖm vô /v7") 
end; 

if (UTask_tw > 60*256) and (UTask_tw < 70*256) then 
Say("V¨n th­ # muèn nhËp m«n häc nghÖ , cã thÓ th«ng qua hoµn thµnh nhËp m«n nhiÖm vô thùc hiÖn . sau khi nhËp m«n , theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô , cã thÓ häc ®­îc vâ c«ng , ®¹t ®­îc ®Çu hµm . hoµn thµnh xuÊt s­ nhiÖm vô sau , liÒn cã thÓ thµnh tµi xuÊt s­ . ng­¬i tr­íc m¾t ®ang tiÕn hµnh trung ®İch nhiÖm vô lµ #", 1,"XuÊt s­ nhiÖm vô /v7") 
end; 

if (UTask_tw >= 70*256) and (UTask_tw < 80*256) then 
Say("<#> muèn nhËp m«n häc nghÖ , cã thÓ th«ng qua hoµn thµnh nhËp m«n nhiÖm vô thùc hiÖn . sau khi nhËp m«n , theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô , cã thÓ häc ®­îc vâ c«ng , ®¹t ®­îc ®Çu hµm . hoµn thµnh xuÊt s­ nhiÖm vô sau , liÒn cã thÓ thµnh tµi xuÊt s­ . ng­¬i tr­íc m¾t ®ang tiÕn hµnh trung ®İch nhiÖm vô lµ trë l¹i s­ m«n , hiÖn ®· "..UTask_tw.."<#>.", 1,"Trë l¹i s­ m«n v8") 
end; 

end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function o1() 
Say("V¨n th­ # ngµy x­a Së v­¬ng chu«ng / ®ång hå t­¬ng ë §éng ®×nh hå khëi binh , nam kh¸ng triÖu tèng , b¾c ®Ó qu©n Kim . sau ®ã Së v­¬ng bŞ giÕt , nghÜa qu©n ®Ò cö d­¬ng yªu v× l·nh tô , tøc ®¹i th¸nh thiªn v­¬ng . nghÜa qu©n ph¸t triÓn tÊn m·nh , triÒu ®×nh ph¸i binh trÊn ¸p , nghÜa qu©n héi b¹i , Thiªn v­¬ng bŞ b¾t sau th¶m tao s¸t h¹i . Thiªn v­¬ng chi n÷ d­¬ng anh trë l¹i §éng ®×nh hå sau , lÇn n÷a tô tËp t¸n l¹c chung quanh ®İch huynh ®Ö , tæ chøc Thiªn v­¬ng gióp . ", 4,"BiÕt /ok","VŞ trİ ®Şa lı /o2","Giang hå ®Şa vŞ /o3","M«n ph¸i ®Æc s¾c /o4") 
end; 

function o2() 
Say("V¨n th­ # Thiªn v­¬ng ®¶o chİnh lµ ë vµo §éng ®×nh hå t©m ®İch mét c« ®¶o , võa lµ n¨m ®ã nghÜa qu©n ®İch c¨n cø , còng lµ h«m nay bæn bang ®İch tæng ®µn chç ë . ", 4,"BiÕt /ok","M«n ph¸i khëi nguyªn /o1","Giang hå ®Şa vŞ /o3","M«n ph¸i ®Æc s¾c /o4") 
end; 

function o3() 
Say("V¨n th­ # bæn bang ë hai hå mét d·y uy danh cùc thŞnh , ng­êi ®«ng thÕ m¹nh , ch¸nh tµ hai ph¸i còng kh«ng d¸m ®èi víi bæn bang khinh th­êng , bëi v× bæn bang võa ph¶n qu©n Kim # l¹i ph¶n tèng ®×nh , cho nªn tèng kim hai ®×nh ®èi víi bæn bang lµ l¹i sî võa hËn . ", 4,"BiÕt /ok","M«n ph¸i khëi nguyªn /o1","VŞ trİ ®Şa lı /o2","M«n ph¸i ®Æc s¾c /o4") 
end; 

function o4() 
Say("V¨n th­ # bæn bang lµ mét hÕt søc ®oµn kÕt ®İch giang hå ®¹i bang , huynh ®Ö trong bang hµo khİ ngÊt trêi , rÊt nÆng nghÜa khİ , ng­êi ng­êi ®Òu lµ h¶o h¸n . ", 4,"BiÕt /ok","M«n ph¸i khëi nguyªn /o1","VŞ trİ ®Şa lı /o2","Giang hå ®Şa vŞ /o3") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function m1() 
Say("VŞ trİ #<color=blue> tÈm cung <color> täa ®é #<color=blue>201,199<color> t¸c dông #<color=blue> nhiÖm vô <color><enter> mÆc dï th©n lµ c« g¸i , nh­ng lµ tİnh c¸ch hµo s¶ng , vâ nghÖ cao c­êng , qu¶ c¶m kiªn nghŞ , ®¶m thøc h¬n ng­êi , c©n qu¾c kh«ng ®Ó cho bùc mµy r©u , Thiªn v­¬ng gióp ë nµng d­íi sù h­íng dÉn cña , ngµy cµng h­ng thŞnh . ", 14,"BiÕt /ok","Thiªn hé ph¸p ®­êng v©n xa /m2","§Şa hé ph¸p h¹ thµnh /m3","Tr­íc khiÕn cho v­¬ng t¸ /m4","Bªn tr¸i khiÕn cho cæ b¸ch /m5","Bªn ph¶i khiÕn cho d­¬ng hå /m6","T«n ®¹o dÉn /m7","B¸n binh khİ bang chóng /m8","B¸n trang bŞ ®İch bang chóng /m9","B¸n thuèc ®İch bang chóng /m10","Phİa ®«ng bÕn tµu ®İch thuyÒn phu /m11","Phİa nam bÕn tµu ®İch thuyÒn phu /m12","Phİa t©y bÕn tµu ®İch thuyÒn phu /m13","Phİa b¾c bÕn tµu ®İch thuyÒn phu /m14") 
end; 

function m2() 
Say("VŞ trİ #<color=blue> Thiªn v­¬ng ®¹i ®iÖn <color> täa ®é #<color=blue>200,199<color> t¸c dông #<color=blue> nhiÖm vô <color><enter> mét vŞ hiÒn lµnh dÔ th©n cËn ®İch tr­ëng gi¶ , ®èi víi bang chñ d­¬ng anh tùa nh­ ®èi víi n÷ nhi ruét thŞt mét d¹ng ®au / th­¬ng yªu tİch , ®èi víi huynh ®Ö trong bang còng hÕt søc yªu mÕn , ë nghÜa trong qu©n ph¶i cao ng¾m nÆng . ", 14,"BiÕt /ok","Bang chñ d­¬ng anh /m1","§Şa hé ph¸p h¹ thµnh /m3","Tr­íc khiÕn cho v­¬ng t¸ /m4","Bªn tr¸i khiÕn cho cæ b¸ch /m5","Bªn ph¶i khiÕn cho d­¬ng hå /m6","T«n ®¹o dÉn /m7","B¸n binh khİ bang chóng /m8","B¸n trang bŞ ®İch bang chóng /m9","B¸n thuèc ®İch bang chóng /m10","Phİa ®«ng bÕn tµu ®İch thuyÒn phu /m11","Phİa nam bÕn tµu ®İch thuyÒn phu /m12","Phİa t©y bÕn tµu ®İch thuyÒn phu /m13","Phİa b¾c bÕn tµu ®İch thuyÒn phu /m14") 
end; 

function m3() 
Say("VŞ trİ #<color=blue> hiÖu lÖnh thai c¸nh ®«ng <color> täa ®é #<color=blue>209,196<color> t¸c dông #<color=blue> nhiÖm vô <color><enter> l·o thµnh cÇm nÆng , lµm ng­êi cÈn thËn , trung hËu İt nãi . ", 14,"BiÕt /ok","Bang chñ d­¬ng anh /m1","Thiªn hé ph¸p ®­êng v©n xa /m2","Tr­íc khiÕn cho v­¬ng t¸ /m4","Bªn tr¸i khiÕn cho cæ b¸ch /m5","Bªn ph¶i khiÕn cho d­¬ng hå /m6","T«n ®¹o dÉn /m7","B¸n binh khİ bang chóng /m8","B¸n trang bŞ ®İch bang chóng /m9","B¸n thuèc ®İch bang chóng /m10","Phİa ®«ng bÕn tµu ®İch thuyÒn phu /m11","Phİa nam bÕn tµu ®İch thuyÒn phu /m12","Phİa t©y bÕn tµu ®İch thuyÒn phu /m13","Phİa b¾c bÕn tµu ®İch thuyÒn phu /m14") 
end; 

function m4() 
Say("VŞ trİ #<color=blue> tiÒn ®iÖn <color> täa ®é #<color=blue>200,199<color> t¸c dông #<color=blue> nhiÖm vô <color><enter> ng­êi ta gäi lµ “ nghÜa c«ng minh ” , lµm ng­êi tİnh t×nh ngay th¼ng , ghĞt ¸c nh­ thï , rÊt nÆng nghÜa khİ , quang minh lçi l¹c , yªu t¨ng râ rµng , ®èi víi d­¬ng anh trung thµnh c¶nh c¶nh . ", 14,"BiÕt /ok","Bang chñ d­¬ng anh /m1","Thiªn hé ph¸p ®­êng v©n xa /m2","§Şa hé ph¸p h¹ thµnh /m3","Bªn tr¸i khiÕn cho cæ b¸ch /m5","Bªn ph¶i khiÕn cho d­¬ng hå /m6","T«n ®¹o dÉn /m7","B¸n binh khİ bang chóng /m8","B¸n trang bŞ ®İch bang chóng /m9","B¸n thuèc ®İch bang chóng /m10","Phİa ®«ng bÕn tµu ®İch thuyÒn phu /m11","Phİa nam bÕn tµu ®İch thuyÒn phu /m12","Phİa t©y bÕn tµu ®İch thuyÒn phu /m13","Phİa b¾c bÕn tµu ®İch thuyÒn phu /m14") 
end; 

function m5() 
Say("VŞ trİ #<color=blue> t©y thiªn cöa ®iÖn <color> täa ®é #<color=blue>202,193<color> t¸c dông #<color=blue> nhiÖm vô <color><enter> ng­êi ta gäi lµ “ t¸m mÆt thÇn ” , lµm ng­êi tranh c­êng h¸o th¾ng , xö sù t¸m mÆt l¶ l­ít . ", 14,"BiÕt /ok","Bang chñ d­¬ng anh /m1","Thiªn hé ph¸p ®­êng v©n xa /m2","§Şa hé ph¸p h¹ thµnh /m3","Tr­íc khiÕn cho v­¬ng t¸ /m4","Bªn ph¶i khiÕn cho d­¬ng hå /m6","T«n ®¹o dÉn /m7","B¸n binh khİ bang chóng /m8","B¸n trang bŞ ®İch bang chóng /m9","B¸n thuèc ®İch bang chóng /m10","Phİa ®«ng bÕn tµu ®İch thuyÒn phu /m11","Phİa nam bÕn tµu ®İch thuyÒn phu /m12","Phİa t©y bÕn tµu ®İch thuyÒn phu /m13","Phİa b¾c bÕn tµu ®İch thuyÒn phu /m14") 
end; 

function m6() 
Say("VŞ trİ #<color=blue> ®«ng thiªn cöa ®iÖn <color> täa ®é #<color=blue>218,198<color> t¸c dông #<color=blue> nhiÖm vô <color><enter> ng­êi ta gäi lµ “ cöu khiÕu linh hå ” , nh©n phÈm tiªu s¸i tuÊn dËt , m­u trİ h¬n ng­êi , th©m minh ®¹i nghÜa . ", 14,"BiÕt /ok","Bang chñ d­¬ng anh /m1","Thiªn hé ph¸p ®­êng v©n xa /m2","§Şa hé ph¸p h¹ thµnh /m3","Tr­íc khiÕn cho v­¬ng t¸ /m4","Bªn tr¸i khiÕn cho cæ b¸ch /m5","T«n ®¹o dÉn /m7","B¸n binh khİ bang chóng /m8","B¸n trang bŞ ®İch bang chóng /m9","B¸n thuèc ®İch bang chóng /m10","Phİa ®«ng bÕn tµu ®İch thuyÒn phu /m11","Phİa nam bÕn tµu ®İch thuyÒn phu /m12","Phİa t©y bÕn tµu ®İch thuyÒn phu /m13","Phİa b¾c bÕn tµu ®İch thuyÒn phu /m14") 
end; 

function m7() 
Say("VŞ trİ #<color=blue> n­íc tr¹i nhËp khÈu <color> täa ®é #<color=blue>191,210<color> t¸c dông #<color=blue> nhiÖm vô <color><enter> th« hµo h¸n tö , tİnh t×nh ng­êi trong . ", 14,"BiÕt /ok","Bang chñ d­¬ng anh /m1","Thiªn hé ph¸p ®­êng v©n xa /m2","§Şa hé ph¸p h¹ thµnh /m3","Tr­íc khiÕn cho v­¬ng t¸ /m4","Bªn tr¸i khiÕn cho cæ b¸ch /m5","Bªn ph¶i khiÕn cho d­¬ng hå /m6","B¸n binh khİ bang chóng /m8","B¸n trang bŞ ®İch bang chóng /m9","B¸n thuèc ®İch bang chóng /m10","Phİa ®«ng bÕn tµu ®İch thuyÒn phu /m11","Phİa nam bÕn tµu ®İch thuyÒn phu /m12","Phİa t©y bÕn tµu ®İch thuyÒn phu /m13","Phİa b¾c bÕn tµu ®İch thuyÒn phu /m14") 
end; 

function m8() 
Say("VŞ trİ #<color=blue> hiÖu lÖnh thai qu¶ng tr­êng <color> täa ®é #<color=blue>207,193<color> t¸c dông #<color=blue> binh khİ giao dŞch <color>", 14,"BiÕt /ok","Bang chñ d­¬ng anh /m1","Thiªn hé ph¸p ®­êng v©n xa /m2","§Şa hé ph¸p h¹ thµnh /m3","Tr­íc khiÕn cho v­¬ng t¸ /m4","Bªn tr¸i khiÕn cho cæ b¸ch /m5","Bªn ph¶i khiÕn cho d­¬ng hå /m6","T«n ®¹o dÉn /m7","B¸n trang bŞ ®İch bang chóng /m9","B¸n thuèc ®İch bang chóng /m10","Phİa ®«ng bÕn tµu ®İch thuyÒn phu /m11","Phİa nam bÕn tµu ®İch thuyÒn phu /m12","Phİa t©y bÕn tµu ®İch thuyÒn phu /m13","Phİa b¾c bÕn tµu ®İch thuyÒn phu /m14") 
end; 

function m9() 
Say("VŞ trİ #<color=blue> hiÖu lÖnh thai qu¶ng tr­êng <color> täa ®é #<color=blue>205,194<color> t¸c dông #<color=blue> trang bŞ giao dŞch <color>", 14,"BiÕt /ok","Bang chñ d­¬ng anh /m1","Thiªn hé ph¸p ®­êng v©n xa /m2","§Şa hé ph¸p h¹ thµnh /m3","Tr­íc khiÕn cho v­¬ng t¸ /m4","Bªn tr¸i khiÕn cho cæ b¸ch /m5","Bªn ph¶i khiÕn cho d­¬ng hå /m6","T«n ®¹o dÉn /m7","B¸n binh khİ bang chóng /m8","B¸n thuèc ®İch bang chóng /m10","Phİa ®«ng bÕn tµu ®İch thuyÒn phu /m11","Phİa nam bÕn tµu ®İch thuyÒn phu /m12","Phİa t©y bÕn tµu ®İch thuyÒn phu /m13","Phİa b¾c bÕn tµu ®İch thuyÒn phu /m14") 
end; 

function m10() 
Say("VŞ trİ #<color=blue> hiÖu lÖnh thai qu¶ng tr­êng <color> täa ®é #<color=blue>212,195<color> t¸c dông #<color=blue> thuèc men giao dŞch <color>", 14,"BiÕt /ok","Bang chñ d­¬ng anh /m1","Thiªn hé ph¸p ®­êng v©n xa /m2","§Şa hé ph¸p h¹ thµnh /m3","Tr­íc khiÕn cho v­¬ng t¸ /m4","Bªn tr¸i khiÕn cho cæ b¸ch /m5","Bªn ph¶i khiÕn cho d­¬ng hå /m6","T«n ®¹o dÉn /m7","B¸n binh khİ bang chóng /m8","B¸n trang bŞ ®İch bang chóng /m9","Phİa ®«ng bÕn tµu ®İch thuyÒn phu /m11","Phİa nam bÕn tµu ®İch thuyÒn phu /m12","Phİa t©y bÕn tµu ®İch thuyÒn phu /m13","Phİa b¾c bÕn tµu ®İch thuyÒn phu /m14") 
end; 

function m11() 
Say("VŞ trİ #<color=blue> phİa ®«ng bÕn tµu <color> täa ®é #<color=blue>218,210<color> t¸c dông #<color=blue> giao th«ng <color>", 14,"BiÕt /ok","Bang chñ d­¬ng anh /m1","Thiªn hé ph¸p ®­êng v©n xa /m2","§Şa hé ph¸p h¹ thµnh /m3","Tr­íc khiÕn cho v­¬ng t¸ /m4","Bªn tr¸i khiÕn cho cæ b¸ch /m5","Bªn ph¶i khiÕn cho d­¬ng hå /m6","T«n ®¹o dÉn /m7","B¸n binh khİ bang chóng /m8","B¸n trang bŞ ®İch bang chóng /m9","B¸n thuèc ®İch bang chóng /m10","Phİa nam bÕn tµu ®İch thuyÒn phu /m12","Phİa t©y bÕn tµu ®İch thuyÒn phu /m13","Phİa b¾c bÕn tµu ®İch thuyÒn phu /m14") 
end; 

function m12() 
Say("VŞ trİ #<color=blue> phİa nam bÕn tµu <color> täa ®é #<color=blue>176,216<color> t¸c dông #<color=blue> giao th«ng <color>", 14,"BiÕt /ok","Bang chñ d­¬ng anh /m1","Thiªn hé ph¸p ®­êng v©n xa /m2","§Şa hé ph¸p h¹ thµnh /m3","Tr­íc khiÕn cho v­¬ng t¸ /m4","Bªn tr¸i khiÕn cho cæ b¸ch /m5","Bªn ph¶i khiÕn cho d­¬ng hå /m6","T«n ®¹o dÉn /m7","B¸n binh khİ bang chóng /m8","B¸n trang bŞ ®İch bang chóng /m9","B¸n thuèc ®İch bang chóng /m10","Phİa ®«ng bÕn tµu ®İch thuyÒn phu /m11","Phİa t©y bÕn tµu ®İch thuyÒn phu /m13","Phİa b¾c bÕn tµu ®İch thuyÒn phu /m14") 
end; 

function m13() 
Say("VŞ trİ #<color=blue> phİa t©y bÕn tµu <color> täa ®é #<color=blue>183,189<color> t¸c dông #<color=blue> giao th«ng <color>", 14,"BiÕt /ok","Bang chñ d­¬ng anh /m1","Thiªn hé ph¸p ®­êng v©n xa /m2","§Şa hé ph¸p h¹ thµnh /m3","Tr­íc khiÕn cho v­¬ng t¸ /m4","Bªn tr¸i khiÕn cho cæ b¸ch /m5","Bªn ph¶i khiÕn cho d­¬ng hå /m6","T«n ®¹o dÉn /m7","B¸n binh khİ bang chóng /m8","B¸n trang bŞ ®İch bang chóng /m9","B¸n thuèc ®İch bang chóng /m10","Phİa ®«ng bÕn tµu ®İch thuyÒn phu /m11","Phİa nam bÕn tµu ®İch thuyÒn phu /m12","Phİa b¾c bÕn tµu ®İch thuyÒn phu /m14") 
end; 

function m14() 
Say("VŞ trİ #<color=blue> phİa b¾c bÕn tµu <color> täa ®é #<color=blue>241,181<color> t¸c dông #<color=blue> giao th«ng <color>", 14,"BiÕt /ok","Bang chñ d­¬ng anh /m1","Thiªn hé ph¸p ®­êng v©n xa /m2","§Şa hé ph¸p h¹ thµnh /m3","Tr­íc khiÕn cho v­¬ng t¸ /m4","Bªn tr¸i khiÕn cho cæ b¸ch /m5","Bªn ph¶i khiÕn cho d­¬ng hå /m6","T«n ®¹o dÉn /m7","B¸n binh khİ bang chóng /m8","B¸n trang bŞ ®İch bang chóng /m9","B¸n thuèc ®İch bang chóng /m10","Phİa ®«ng bÕn tµu ®İch thuyÒn phu /m11","Phİa nam bÕn tµu ®İch thuyÒn phu /m12","Phİa t©y bÕn tµu ®İch thuyÒn phu /m13") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function c1() 
Say("V¨n th­ # kh«ng cã ®­êng bé xuÊt khÈu , ë bÕn tµu ngåi thuyÒn cã thÓ tíi ba l¨ng huyÒn . ", 6,"BiÕt /ok","§¶o trung ­¬ng /c2","§¶o ®«ng /c3","§¶o nam /c4","§¶o t©y /c5","§¶o b¾c /c6") 
end; 

function c2() 
Say("V¨n th­ # Thiªn v­¬ng gióp tæng ®µn theo thø tù cã tiÒn ®iÖn # hiÖu lÖnh thai # Thiªn v­¬ng ®¹i ®iÖn # tÈm cung chê kiÕn tróc . ", 6,"BiÕt /ok","§i th«ng chç nµo /c1","§¶o ®«ng /c3","§¶o nam /c4","§¶o t©y /c5","§¶o b¾c /c6") 
end; 

function c3() 
Say("V¨n th­ # cã bÕn tµu cïng §éng ®×nh hå ®Ó s¬n ®éng . ", 6,"BiÕt /ok","§i th«ng chç nµo /c1","§¶o trung ­¬ng /c2","§¶o nam /c4","§¶o t©y /c5","§¶o b¾c /c6") 
end; 

function c4() 
Say("V¨n th­ # cã bÕn tµu cïng n­íc tr¹i . ", 6,"BiÕt /ok","§i th«ng chç nµo /c1","§¶o trung ­¬ng /c2","§¶o ®«ng /c3","§¶o t©y /c5","§¶o b¾c /c6") 
end; 

function c5() 
Say("V¨n th­ # cã bÕn tµu . ", 6,"BiÕt /ok","§i th«ng chç nµo /c1","§¶o trung ­¬ng /c2","§¶o ®«ng /c3","§¶o nam /c4","§¶o b¾c /c6") 
end; 

function c6() 
Say("V¨n th­ # cã bÕn tµu cïng Thiªn v­¬ng ®¶o s¬n ®éng . ", 6,"BiÕt /ok","§i th«ng chç nµo /c1","§¶o trung ­¬ng /c2","§¶o ®«ng /c3","§¶o nam /c4","§¶o t©y /c5") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function v1() 
Talk(6, "","Th«ng qua hoµn thµnh nhiÖm vô nµy , ng­¬i cã thÓ gia nhËp Thiªn v­¬ng gióp , trë thµnh <color=blue> thŞ vÖ <color> , häc ®­îc vâ c«ng <color=blue> chĞm long quyÕt <color> . <enter> b­íc ®Çu tiªn # ë <color=blue> phİa nam n­íc tr¹i nhËp khÈu <color> gÆp ph¶i <color=blue> t«n ®¹o dÉn <color> , nhËn ®­îc nhiÖm vô , ®i <color=blue> ba l¨ng huyÒn <color> mua r­îu ngon <color=red>“ oµnh lai xu©n ”<color> . ","B­íc thø hai # ë <color=blue> ba l¨ng huyÒn töu qu¸n <color> nhËn ®­îc nhiÖm vô , t×m kiÕm ch­ng cÊt r­îu cÇn ®İch ba lo¹i nguyªn liÖu #<color=red> linh chi # huyÒn tè # hµ thñ « <color> . ","B­íc thø ba # ®Õn <color=blue> vò l¨ng s¬n ®İch ®«ng b¾c bé <color> nhÆt thËp <color=red> linh chi # huyÒn tè # hµ thñ « <color> . ","B­íc thø t­ # trë l¹i <color=blue> ba l¨ng huyÒn töu qu¸n <color> , biÕt ®­îc cÇn chê ®îi <color=blue> mét canh giê <color> . mét canh giê sau nµy , trë l¹i töu qu¸n lÊy ®­îc <color=red>“ oµnh lai xu©n ”<color> . ","Thø n¨m b­íc # trë l¹i <color=blue> Thiªn v­¬ng ®¶o <color> , ®em <color=red>“ oµnh lai xu©n ”<color> giao cho <color=blue> t«n ®¹o dÉn <color> , nhiÖm vô hoµn thµnh . nÕu nh­ “ oµnh lai xu©n ” mÊt , cÇn lÇn n÷a lµm nhiÖm vô . ") 
end; 


function v2() 
Talk(4, "","Th«ng qua hoµn thµnh nhiÖm vô nµy , ng­¬i th¨ng lµm <color=blue> thŞ vÖ tr­êng <color> , häc ®­îc vâ c«ng <color=blue> Thiªn v­¬ng th­¬ng ph¸p # Thiªn v­¬ng ®ao ph¸p # Thiªn v­¬ng chïy ph¸p # trë vÒ phong r¬i nh¹n <color> . <enter> b­íc ®Çu tiªn # ë <color=blue> tiÒn ®iÖn <color> gÆp ph¶i <color=blue> v­¬ng t¸ <color> , nhËn ®­îc nhiÖm vô , ®i ®¶o phİa b¾c ®İch <color=blue> Thiªn v­¬ng ®¶o s¬n ®éng <color> lÊy ®­îc <color=red> ba khèi m¸u gµ th¹ch <color> . ","B­íc thø hai # ë phİa b¾c ®İch <color=blue> Thiªn v­¬ng ®¶o s¬n ®éng <color> , ®¸nh b¹i <color=blue> kim Miªu v­¬ng # x¸ lş tinh # ®¹i ho¸n hïng <color> , còng sÏ lÊy ®­îc <color=red> m¸u gµ th¹ch <color> . ","B­íc thø ba # trë l¹i <color=blue> tiÒn ®iÖn <color> , ®em <color=red> ba khèi m¸u gµ th¹ch <color> giao cho <color=blue> v­¬ng t¸ <color> , nhiÖm vô hoµn thµnh . ") 
end; 


function v3() 
Talk(4, "","Th«ng qua hoµn thµnh nhiÖm vô nµy , ng­¬i th¨ng lµm <color=blue> thñ tr¹i h·n ®em <color> , häc ®­îc vâ c«ng <color=blue> ®­îc v©n quyÕt # kh«ng lßng d¹ nµo chĞm # tÜnh t©m quyÕt <color> . <enter> b­íc ®Çu tiªn # ë <color=blue> ®«ng thiªn cöa ®iÖn <color> gÆp ph¶i <color=blue> d­¬ng hå <color> , nhËn ®­îc nhiÖm vô , ®i <color=blue> vò l¨ng s¬n b¹ch n­íc ®éng <color> diÖt phØ . ","B­íc thø hai # ë <color=blue> vò l¨ng s¬n b¹ch n­íc ®éng <color> , theo thø tù ®¸nh b¹i ba ","B­íc thø ba #") 
end; 


function v4() 
Talk(4, "","Th«ng qua hoµn thµnh nhiÖm vô nµy , ng­¬i th¨ng lµm <color=blue> cÊp tr­íc hé vÖ <color> , häc ®­îc vâ c«ng <color=blue> ®uæi t©m tiÕn # thanh méc c«ng <color> . <enter> b­íc ®Çu tiªn # ë <color=blue> giæ tæ thİnh <color> gÆp ph¶i <color=blue> ®­êng bÊt nhiÔm <color> , nhËn ®­îc nhiÖm vô , ®o¹t l¹i <color=red># háa khİ phæ #<color> . ","B­íc thø hai # ë <color=blue> nói Thanh Thµnh ®«ng m©y tr¾ng ®éng <color> , ®¸nh b¹i trãi phØ <color=blue> §¹i ®Çu môc cuång sa <color> , nhËn ®­îc nhiÖm vô , ë trong ®éng t×m ®­îc më ra b¶o r­¬ng ®İch <color=red> c¸i ch×a khãa <color> . ","B­íc thø ba # ®¸nh b¹i trãi phØ trung bèn <color=blue> tiÓu ®Çu môc ®éc nhÜ # c¸nh tay s¾t # quû ¶nh # lÖ quyÒn <color> trung ®İch mét , ph¶i nhËn ®­îc <color=red> c¸i ch×a khãa <color> . ","B­íc thø t­ # më ra <color=blue> b¶o r­¬ng #230,199#<color> , lÊy ®­îc <color=red># háa khİ phæ #<color> . ","Thø n¨m b­íc # trë l¹i <color=blue> háa khİ phßng <color> , ®em <color=red># háa khİ phæ #<color> giao cho <color=blue> ®­êng v©n <color> , nhiÖm vô hoµn thµnh . nÕu nh­ # háa khİ phæ # mÊt , nhÊt ®Şnh ph¶i lÇn n÷a lµm nhiÖm vô . ") 
end; 


function v5() 
Talk(7, "","Th«ng qua hoµn thµnh nhiÖm vô nµy , ng­¬i th¨ng lµm <color=blue> vµo c¸c ®Ö tö <color> , häc ®­îc vâ c«ng <color=blue> ®Çy trêi hoa vò # thèi ®éc thuËt <color> . <enter> b­íc ®Çu tiªn # ë <color=blue> y d­îc phßng <color> gÆp ph¶i <color=blue> ®­êng d· <color> , nhËn ®­îc nhiÖm vô , hãa gi¶i ®­êng d· cïng c¶nh tö kú ®İch ©n o¸n . ","B­íc thø hai # ®Õn <color=blue> nói Thanh Thµnh t©y bé <color> t×m ®­îc <color=blue> c¶nh tö kú #230,245#<color> , tr­íc ®¸nh b¹i h¾n n¨m con nhµ sóc # mét con <color=blue> bôi lang <color># mét con <color=blue> m·nh hæ <color># mét con <color=blue> kim tiÒn b¸o <color># mét con <color=blue> heo rõng <color> cïng mét con <color=blue> t«ng hïng <color> , sau ®ã nhËn ®­îc nhiÖm vô , nghÜ biÖn ph¸p cøu trŞ c¶nh tö kú n÷ mµ ®İch qu¸i bÖnh . ","B­íc thø ba # trë l¹i §­êng m«n <color=blue> y d­îc phßng <color> , tõ <color=blue> ®­êng d· <color> chç lÊy ®­îc trŞ liÖu qu¸i bÖnh ®İch <color=blue> ph­¬ng thuèc <color> . ","B­íc thø t­ # ë <color=blue> nói Thanh Thµnh ®«ng b¾c <color> ®İch <color=blue> thanh d­¬ng ngän nói <color> , ®¸nh b¹i <color=blue> h¾c ­ng # hung thøu # linh ®iªu <color> , ph¶i nhËn ®­îc n¨m lo¹i ph­¬ng thuèc #<color=red> thiÒm thõ ®İch da , r¾n ®éc ®İch ®¶m # anh tóc ®İch x¸c # con bß c¹p ®İch ®u«i # c­¬ng tµm ®İch ®Çu <color> . ","Thø n¨m b­íc # ®em ph­¬ng thuèc giao cho c¶nh tö kú , hãa gi¶i h¾n cïng víi ®­êng d· s­ thóc ®İch ©n o¸n . ","Thø s¸u b­íc # trë l¹i §­êng m«n y d­îc phßng , cïng ®­êng d· ®èi tho¹i , nhiÖm vô hoµn thµnh . ") 
end; 


function v6() 
Talk(4, "","Th«ng qua hoµn thµnh nhiÖm vô nµy , ng­¬i th¨ng lµm <color=blue> Tø l·o m«n nh©n <color> , häc ®­îc vâ c«ng <color=blue> b¨ng ph¸ch hµn quang # thiªn la ®Şa vâng <color> . <enter> b­íc ®Çu tiªn # ë <color=blue> ¸m khİ phßng <color> gÆp ph¶i <color=blue> ®­êng rçi r·nh <color> , nhËn ®­îc nhiÖm vô , t×m kiÕm <color=red># ¸m khİ phæ #<color> . ","B­íc thø hai # ë <color=blue> nghŞ sù ®¹i thİnh <color> , cïng <color=blue> ®­êng mét trÇn <color> ®èi tho¹i , biÕt ®­îc <color=blue> Tam s­ huynh ®­êng hßa <color> cïng <color=blue> Ngò s­ huynh ®­êng nguyªn <color> ®i qua ¸m khİ phßng , hai ng­êi cã hiÒm nghi . ","B­íc thø ba # ë <color=blue> giang t©n th«n <color> t×m ®­îc <color=blue> ®­êng nguyªn <color> , biÕt ®­îc <color=blue> ®­êng hßa <color> ®i <color=blue> nói Thanh Thµnh vang n­íc ®éng <color> . ","B­íc thø t­ # ®Õn <color=blue> nói Thanh Thµnh vang n­íc ®éng <color> , ®¸nh b¹i <color=blue> ®­êng hßa <color> , biÕt ®­îc <color=red># ¸m khİ phæ #<color> liÒn giÊu ë trong s¬n ®éng . ","Thø n¨m b­íc # ®¸nh b¹i trong s¬n ®éng ®İch <color=blue> thiÕt chïy Ma qu©n <color> hoÆc <color=blue> thiÕt quyÒn Diªm La <color> , ph¶i nhËn ®­îc <color=red># ¸m khİ phæ #<color> . ","Thø s¸u b­íc # trë l¹i §­êng m«n <color=blue> ¸m khİ phßng <color> , ®em <color=red># ¸m khİ phæ #<color> giao cho <color=blue> ®­êng rçi r·nh <color> , nhiÖm vô hoµn thµnh . nÕu nh­ # ¸m khİ phæ # mÊt , nhÊt ®Şnh ph¶i lÇn n÷a väng vÒ n­íc ®éng ®¸nh nhau . ") 
end; 


function v7() 
Talk(5, "","Th«ng qua hoµn thµnh nhiÖm vô nµy , ng­¬i th¨ng lµm <color=blue> thiªn thñ thÇn vÖ <color> , thuËn lîi xuÊt s­ . <enter> b­íc ®Çu tiªn # ë <color=blue> tiÕp kh¸ch ®¹i s¶nh <color> gÆp ph¶i <color=blue> ch­ëng m«n ®­êng thï <color> , nhËn ®­îc nhiÖm vô , ®i <color=blue> tróc ti ®éng <color> thu håi <color=red> thÊt tinh tuyÖt mÖnh kiÕm <color> . ","B­íc thø hai # ë <color=blue> tróc ti ®éng tÇng thø nhÊt <color> ®¸nh b¹i <color=blue> tªn lç m·ng ®Çu lÜnh <color> , ph¶i nhËn ®­îc tiÕn vµo tÇng thø hai ®İch <color=red> c¸i ch×a khãa <color> . ","B­íc thø ba # ë <color=blue> tróc ti ®éng tÇng thø hai <color> ®¸nh b¹i <color=blue> tªn lç m·ng ®Çu lÜnh <color> hoÆc <color=blue> ®iÓm t×nh hæ <color> , ph¶i nhËn ®­îc tiÕn vµo tÇng thø ba <color=red> c¸i ch×a khãa <color> . ","B­íc thø t­ # ë <color=blue> tróc ti ®éng tÇng thø ba <color> , cã hai <color=blue> b¶o r­¬ng <color> , mét ng­êi trong ®ã bªn trong cã <color=red> thÊt tinh tuyÖt mÖnh kiÕm <color> . ","Thø n¨m b­íc # trë l¹i §­êng m«n <color=blue> tiÕp kh¸ch ®¹i s¶nh <color> , ®em <color=red> thÊt tinh tuyÖt mÖnh kiÕm <color> giao cho <color=blue> ch­ëng m«n ®­êng thï <color> , nhiÖm vô hoµn thµnh . nÕu nh­ thÊt tinh tuyÖt mÖnh kiÕm mÊt , nhÊt ®Şnh ph¶i lÇn n÷a lµm nhiÖm vô . ") 
end; 

function v8() 
Talk(3,"","Th«ng qua hoµn thµnh nhiÖm vô nµy , ng­¬i th¨ng lµm <color=blue> kinh thiªn Nguyªn so¸i <color>, häc ®­îc trÊn ph¸i tuyÖt häc <color=blue> Thiªn v­¬ng chiÕn ı , vâ c«ng : kh«ng lßng d¹ nµo chĞm , huyÕt chiÕn b¸t ph­¬ng , ngù long quyÕt <color>.","Thø 1 b­íc : ®Õn 60 cÊp sau nµy , ®Õn <color=blue> ®¹i s¶nh <color> thÊy <color=blue>Bang ch? D#ng A bang chñ d­¬ng anh <color>, thØnh cÇu trë l¹i Thiªn v­¬ng gióp .","Thø 2 b­íc : ®­a cho m«n ph¸i <color=red>50000 hai <color> trë l¹i Thiªn v­¬ng gióp .") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function ok() 
end; 
