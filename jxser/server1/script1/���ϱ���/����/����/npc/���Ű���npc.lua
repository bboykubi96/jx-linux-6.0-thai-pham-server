-- script viet hoa By http://tranhba.com  §­êng m«n trî gióp NPC 

Include("\\script\\global\\map_helper.lua")
Include("\\script\\task\\newtask\\education\\dragonfive.lua")
npc_name = "Qu# Gia" 

function main(sel) 

UTask_tm = GetTask(2) 

if (UTask_tm < 10*256) then -- script viet hoa By http://tranhba.com  kh«ng nhËn §­êng m«n nhËp m«n nhiÖm vô , kh«ng/ch­a vµo §­êng m«n 
if (GetFaction() ~= "") then -- script viet hoa By http://tranhba.com  nÕu nh­ nhµ ch¬i ®· thuéc vÒ kh¸c mét m«n ph¸i 
Say("Qu¶n gia # ta ë §­êng m«n mÊy thËp niªn , kh«ng cã g× lµ ta kh«ng biÕt , ngµi muèn biÕt chót g× ? ", 3,"HiÓu râ quı m«n /org","HiÓu râ c¸c vŞ §­êng m«n cao thñ /member","HiÓu râ n¬i ®©y bè côc /config") 
return 
else 
Say("Qu¶n gia # ta ë §­êng m«n mÊy thËp niªn , kh«ng cã g× lµ ta kh«ng biÕt , ngµi muèn biÕt chót g× ? ", 4,"HiÓu râ quı m«n /org","HiÓu râ c¸c vŞ §­êng m«n cao thñ /member","HiÓu râ n¬i ®©y bè côc /config","Nh­ thÕ nµo nhËp m«n /task1") 
return 
end 
end; 

if (UTask_tm == 70*256) then -- script viet hoa By http://tranhba.com  §­êng m«n ®· xuÊt s­ 
Say("Qu¶n gia # nguyªn lai lµ tr­íc kia ®ång m«n , cã chuyÖn g× kh«ng ? ", 4, " lÇn n÷a hiÓu râ §­êng m«n /org", " lÇn n÷a hiÓu râ tr­íc kia ®ång m«n /member", " lÇn n÷a trë vÒ cè n¬i ®©y bè côc /config","Cßn cã c¸i g× nhiÖm vô cã thÓ lµm /task2") 
return 
end; 

Say("Qu¶n gia # ta ë §­êng m«n mÊy thËp niªn , kh«ng cã g× lµ ta kh«ng biÕt , ng­¬i nghÜ biÕt chót İt c¸i g× ? ", 4,"HiÓu râ bæn m«n /org","HiÓu râ ®ång m«n /member","HiÓu râ n¬i ®©y bè côc /config","HiÓu râ nhiÖm vô /task3") 

end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function org() 
Say("Qu¶n gia # muèn biÕt ph­¬ng diÖn nµo ? ", 4,"M«n ph¸i khëi nguyªn /o1","VŞ trİ ®Şa lı /o2","Giang hå ®Şa vŞ /o3","M«n ph¸i ®Æc s¾c /o4") 
end; 


function member() 
Say("Qu¶n gia # muèn biÕt ng­êi nµo ? ", 10,"Ch­ëng m«n ®­êng thï /m1","Truy hån tÈu ®­êng rçi r·nh /m2","Tiªu nhiªm tÈu ®­êng v©n /m3","TuyÖt xu©n tÈu ®­êng d· /m4", " ¸o bµo tr¾ng tÈu ®­êng h¹c /m5","§­êng mét trÇn /m6","§­êng bÊt nhiÔm /m7","§­êng thiÕu /m8","§­êng nhÑ /m9","§­êng ®éc /m10") 
end; 


function config() 
Say("Qu¶n gia # muèn biÕt ph­¬ng diÖn nµo ? ", 3,"§i th«ng chç nµo /c1","§­êng gia b¶o /c2","§­êng gia b¶o bèn phİa /c3") 
end; 


function task1() 
Say("Qu¶n gia # bæn m«n chØ lÊy méc hÖ ®Ö tö , nam n÷ kh«ng h¹n . muèn nhËp m«n häc nghÖ , cã thÓ th«ng qua cïng ba l¨ng huyÒn ®İch §­êng m«n ®Ö tö ®èi tho¹i hoµn thµnh nhËp m«n . ") 
end; 


function task2() 
Say("Qu¶n gia # ng­¬i ®· xuÊt s­ , kh«ng cÇn lµm tiÕp bæn m«n nhiÖm vô . ", 0) 
end; 


function task3() 

UTask_tm = GetTask(2) 

if (UTask_tm < 10*256) then 
Say("Qu¶n gia # muèn nhËp m«n häc nghÖ , cã thÓ th«ng qua hoµn thµnh nhËp m«n nhiÖm vô thùc hiÖn . sau khi nhËp m«n , theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô , cã thÓ häc ®­îc vâ c«ng , ®¹t ®­îc ®Çu hµm . hoµn thµnh xuÊt s­ nhiÖm vô sau , liÒn cã thÓ thµnh tµi xuÊt s­ . ng­¬i tr­íc m¾t ®ang tiÕn hµnh trung ®İch nhiÖm vô lµ #", 1,"NhËp m«n nhiÖm vô /v1") 
end; 

if (UTask_tm == 10*256) then 
Say("Qu¶n gia # muèn nhËp m«n häc nghÖ , cã thÓ th«ng qua hoµn thµnh nhËp m«n nhiÖm vô thùc hiÖn . sau khi nhËp m«n , theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô , cã thÓ häc ®­îc vâ c«ng , ®¹t ®­îc ®Çu hµm . hoµn thµnh xuÊt s­ nhiÖm vô sau , liÒn cã thÓ thµnh tµi xuÊt s­ . ng­¬i tr­íc m¾t ®· nhËp m«n , kÕ tiÕp cã thÓ lµm lµ #", 1,"Ma m­a ch©m nhiÖm vô /v2") 
end; 

if (UTask_tm > 10*256) and (UTask_tm < 20*256) then 
Say("Qu¶n gia # muèn nhËp m«n häc nghÖ , cã thÓ th«ng qua hoµn thµnh nhËp m«n nhiÖm vô thùc hiÖn . sau khi nhËp m«n , theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô , cã thÓ häc ®­îc vâ c«ng , ®¹t ®­îc ®Çu hµm . hoµn thµnh xuÊt s­ nhiÖm vô sau , liÒn cã thÓ thµnh tµi xuÊt s­ . ng­¬i tr­íc m¾t ®ang tiÕn hµnh trung ®İch nhiÖm vô lµ #", 1,"Ma m­a ch©m nhiÖm vô /v2") 
end; 

if (UTask_tm == 20*256) then 
Say("Qu¶n gia # muèn nhËp m«n häc nghÖ , cã thÓ th«ng qua hoµn thµnh nhËp m«n nhiÖm vô thùc hiÖn . sau khi nhËp m«n , theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô , cã thÓ häc ®­îc vâ c«ng , ®¹t ®­îc ®Çu hµm . hoµn thµnh xuÊt s­ nhiÖm vô sau , liÒn cã thÓ thµnh tµi xuÊt s­ . ng­¬i kÕ tiÕp cã thÓ lµm lµ #", 1,"§­êng u nhiÖm vô /v3") 
end; 

if (UTask_tm > 20*256) and (UTask_tm < 30*256) then 
Say("Qu¶n gia # muèn nhËp m«n häc nghÖ , cã thÓ th«ng qua hoµn thµnh nhËp m«n nhiÖm vô thùc hiÖn . sau khi nhËp m«n , theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô , cã thÓ häc ®­îc vâ c«ng , ®¹t ®­îc ®Çu hµm . hoµn thµnh xuÊt s­ nhiÖm vô sau , liÒn cã thÓ thµnh tµi xuÊt s­ . ng­¬i tr­íc m¾t ®ang tiÕn hµnh trung ®İch nhiÖm vô lµ #", 1,"§­êng u nhiÖm vô /v3") 
end; 

if (UTask_tm == 30*256) then 
Say("Qu¶n gia # muèn nhËp m«n häc nghÖ , cã thÓ th«ng qua hoµn thµnh nhËp m«n nhiÖm vô thùc hiÖn . sau khi nhËp m«n , theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô , cã thÓ häc ®­îc vâ c«ng , ®¹t ®­îc ®Çu hµm . hoµn thµnh xuÊt s­ nhiÖm vô sau , liÒn cã thÓ thµnh tµi xuÊt s­ . ng­¬i kÕ tiÕp cã thÓ lµm lµ #", 1,"Háa khİ phæ nhiÖm vô /v4") 
end; 

if (UTask_tm > 30*256) and (UTask_tm < 40*256) then 
Say("Qu¶n gia # muèn nhËp m«n häc nghÖ , cã thÓ th«ng qua hoµn thµnh nhËp m«n nhiÖm vô thùc hiÖn . sau khi nhËp m«n , theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô , cã thÓ häc ®­îc vâ c«ng , ®¹t ®­îc ®Çu hµm . hoµn thµnh xuÊt s­ nhiÖm vô sau , liÒn cã thÓ thµnh tµi xuÊt s­ . ng­¬i tr­íc m¾t ®ang tiÕn hµnh trung ®İch nhiÖm vô lµ #", 1,"Háa khİ phæ nhiÖm vô /v4") 
end; 

if (UTask_tm == 40*256) then 
Say("Qu¶n gia # muèn nhËp m«n häc nghÖ , cã thÓ th«ng qua hoµn thµnh nhËp m«n nhiÖm vô thùc hiÖn . sau khi nhËp m«n , theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô , cã thÓ häc ®­îc vâ c«ng , ®¹t ®­îc ®Çu hµm . hoµn thµnh xuÊt s­ nhiÖm vô sau , liÒn cã thÓ thµnh tµi xuÊt s­ . ng­¬i kÕ tiÕp cã thÓ lµm lµ #", 1,"C¶nh tö kú nhiÖm vô /v5") 
end; 

if (UTask_tm > 40*256) and (UTask_tm < 50*256) then 
Say("Qu¶n gia # muèn nhËp m«n häc nghÖ , cã thÓ th«ng qua hoµn thµnh nhËp m«n nhiÖm vô thùc hiÖn . sau khi nhËp m«n , theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô , cã thÓ häc ®­îc vâ c«ng , ®¹t ®­îc ®Çu hµm . hoµn thµnh xuÊt s­ nhiÖm vô sau , liÒn cã thÓ thµnh tµi xuÊt s­ . ng­¬i tr­íc m¾t ®ang tiÕn hµnh trung ®İch nhiÖm vô lµ #", 1,"C¶nh tö kú nhiÖm vô /v5") 
end; 

if (UTask_tm == 50*256) then 
Say("Qu¶n gia # muèn nhËp m«n häc nghÖ , cã thÓ th«ng qua hoµn thµnh nhËp m«n nhiÖm vô thùc hiÖn . sau khi nhËp m«n , theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô , cã thÓ häc ®­îc vâ c«ng , ®¹t ®­îc ®Çu hµm . hoµn thµnh xuÊt s­ nhiÖm vô sau , liÒn cã thÓ thµnh tµi xuÊt s­ . ng­¬i kÕ tiÕp cã thÓ lµm lµ #", 1, " ¸m khİ phæ nhiÖm vô /v6") 
end; 

if (UTask_tm > 50*256) and (UTask_tm < 60*256) then 
Say("Qu¶n gia # muèn nhËp m«n häc nghÖ , cã thÓ th«ng qua hoµn thµnh nhËp m«n nhiÖm vô thùc hiÖn . sau khi nhËp m«n , theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô , cã thÓ häc ®­îc vâ c«ng , ®¹t ®­îc ®Çu hµm . hoµn thµnh xuÊt s­ nhiÖm vô sau , liÒn cã thÓ thµnh tµi xuÊt s­ . ng­¬i tr­íc m¾t ®ang tiÕn hµnh trung ®İch nhiÖm vô lµ #", 1, " ¸m khİ phæ nhiÖm vô /v6") 
end; 

if (UTask_tm == 60*256) then 
Say("Qu¶n gia # muèn nhËp m«n häc nghÖ , cã thÓ th«ng qua hoµn thµnh nhËp m«n nhiÖm vô thùc hiÖn . sau khi nhËp m«n , theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô , cã thÓ häc ®­îc vâ c«ng , ®¹t ®­îc ®Çu hµm . hoµn thµnh xuÊt s­ nhiÖm vô sau , liÒn cã thÓ thµnh tµi xuÊt s­ . ng­¬i kÕ tiÕp cã thÓ lµm lµ #", 1,"XuÊt s­ nhiÖm vô /v7") 
end; 

if (UTask_tm > 60*256) and (UTask_tm < 70*256) then 
Say("Qu¶n gia # muèn nhËp m«n häc nghÖ , cã thÓ th«ng qua hoµn thµnh nhËp m«n nhiÖm vô thùc hiÖn . sau khi nhËp m«n , theo thø tù hoµn thµnh n¨m m«n ph¸i nhiÖm vô , cã thÓ häc ®­îc vâ c«ng , ®¹t ®­îc ®Çu hµm . hoµn thµnh xuÊt s­ nhiÖm vô sau , liÒn cã thÓ thµnh tµi xuÊt s­ . ng­¬i tr­íc m¾t ®ang tiÕn hµnh trung ®İch nhiÖm vô lµ #", 1,"XuÊt s­ nhiÖm vô /v7") 
end; 

if (UTask_tm >= 70*256) and (UTask_tm < 80*256) then 
Say("<#> muèn nhËp m«n häc nghÖ , cÇn hoµn thµnh nhËp m«n nhiÖm vô , sau khi nhËp m«n , theo thø tù hoµn thµnh 5 nhiÖm vô , ®em häc ®­îc vâ c«ng , phong danh hiÖu . hoµn thµnh xuÊt s­ nhiÖm vô lµ cã thÓ xuÊt s­ , tr­íc m¾t ®· #"..UTask_tm.."<#>, tiÕn hµnh ®İch nhiÖm vô v× :", 1,"Trë l¹i s­ m«n /v8") 
end; 

end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function o1() 
Say("Qu¶n gia # ë trong m¾t ng­êi ngoµi , bæn m«n lµ mét thÇn bİ vâ l©m gia téc , lÊy ¸m khİ cïng háa khİ uy chÊn thiªn h¹ , hµnh tÈu giang hå ®· ®¹t mÊy tr¨m n¨m l©u . ", 4,"BiÕt /ok","VŞ trİ ®Şa lı /o2","Giang hå ®Şa vŞ /o3","M«n ph¸i ®Æc s¾c /o4") 
end; 

function o2() 
Say("Qu¶n gia # bæn m«n ë vµo thôc nam tróc h¶i trong , mÆt ngoµi mÆc dï thanh u yªn lÆng , nh­ng thùc tÕ l¹i c¬ quan nÆng nÒ , c­ t©m kh«ng thÓ dß ®­îc ng­êi sÏ lµm cho h¾n h÷u khø v« håi #", 4,"BiÕt /ok","M«n ph¸i khëi nguyªn /o1","Giang hå ®Şa vŞ /o3","M«n ph¸i ®Æc s¾c /o4") 
end; 

function o3() 
Say("Qu¶n gia # bæn m«n cïng V©n Nam thóy khãi cöa còng x­ng “ vâ l©m hai cöa ” , lµ mét còng ®ang còng tµ ®İch m«n ph¸i , m«n h¹ ¸m khİ # háa khİ # y d­îc # vâ c«ng bèn ®­êng , ®Ö tö ng­êi ng­êi c«ng phu rÊt cao , ng­êi trong giang hå nãi bæn m«n mµ biÕn s¾c . ", 4,"BiÕt /ok","M«n ph¸i khëi nguyªn /o1","VŞ trİ ®Şa lı /o2","M«n ph¸i ®Æc s¾c /o4") 
end; 

function o4() 
Say("Qu¶n gia # trong bæn m«n ng­êi lµm viÖc quû bİ , gÆp chuyÖn kh«ng theo nh­ lÏ th­êng ra bµi , tæng cho ng­êi ta mét lo¹i còng ®ang còng tµ # suy nghÜ kh«ng ra ®İch c¶m gi¸c . ", 4,"BiÕt /ok","M«n ph¸i khëi nguyªn /o1","VŞ trİ ®Şa lı /o2","Giang hå ®Şa vŞ /o3") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function m1() 
Say("VŞ trİ #<color=blue> tiÕp kh¸ch ®¹i s¶nh <color> täa ®é #<color=blue>202,199<color> t¸c dông #<color=blue> nhiÖm vô <color><enter> t©m cao khİ ng¹o , v× ta ®éc t«n . mÆc dï tİnh t×nh qu¸i phİch , hÕt søc cè chÊp , nh­ng lµ l¹i cô cã th¸i s¬n b¨ng vu tr­íc mµ mÆt kh«ng ®æi s¾c ®İch khİ ®é . ", 10,"BiÕt /ok","Truy hån tÈu ®­êng rçi r·nh /m2","Tiªu nhiªm tÈu ®­êng v©n /m3","TuyÖt xu©n tÈu ®­êng d· /m4", " ¸o bµo tr¾ng tÈu ®­êng h¹c /m5","§­êng mét trÇn /m6","§­êng bÊt nhiÔm /m7","§­êng thiÕu /m8","§­êng nhÑ /m9","§­êng ®éc /m10") 
end; 

function m2() 
Say("VŞ trİ #<color=blue> ¸m khİ phßng <color> täa ®é #<color=blue>199,200<color> t¸c dông #<color=blue> nhiÖm vô <color><enter> ¸m khİ phßng tr­ëng l·o , chÕ luyÖn ¸m khİ kü thuËt cao tuyÖt , kh«ng thÓ t­ëng t­îng næi , v× vËy hÕt søc kiªu ng¹o . tİnh t×nh th©m trÇm # hØ giËn kh«ng h×nh vu s¾c . ", 10,"BiÕt /ok","Ch­ëng m«n ®­êng thï /m1","Tiªu nhiªm tÈu ®­êng v©n /m3","TuyÖt xu©n tÈu ®­êng d· /m4", " ¸o bµo tr¾ng tÈu ®­êng h¹c /m5","§­êng mét trÇn /m6","§­êng bÊt nhiÔm /m7","§­êng thiÕu /m8","§­êng nhÑ /m9","§­êng ®éc /m10") 
end; 

function m3() 
Say("VŞ trİ #<color=blue> háa khİ phßng <color> täa ®é #<color=blue>200,200<color> t¸c dông #<color=blue> nhiÖm vô <color><enter> háa khİ phßng tr­ëng l·o , chÕ t¹o háa khİ uy lùc v« cïng m·nh , lµm ng­êi trong vâ l©m nghe tiÕng t¸ng ®¶m . tİnh t×nh bèc löa , nh­ng lµ l¹i kh«ng mÊt xİch tö lßng , sau bëi v× con trai chÕt th¶m , tİnh t×nh ®¹i biÕn . ", 10,"BiÕt /ok","Ch­ëng m«n ®­êng thï /m1","Truy hån tÈu ®­êng rçi r·nh /m2","TuyÖt xu©n tÈu ®­êng d· /m4", " ¸o bµo tr¾ng tÈu ®­êng h¹c /m5","§­êng mét trÇn /m6","§­êng bÊt nhiÔm /m7","§­êng thiÕu /m8","§­êng nhÑ /m9","§­êng ®éc /m10") 
end; 

function m4() 
Say("VŞ trİ #<color=blue> y d­îc phßng <color> täa ®é #<color=blue>200,200<color> t¸c dông #<color=blue> nhiÖm vô <color><enter> y d­îc phßng tr­ëng l·o , tinh víi y thuËt # ®éc thuËt . lµm ng­êi tİnh t×nh tr¸ch tİch # l¹i rÊt cè chÊp . ", 10,"BiÕt /ok","Ch­ëng m«n ®­êng thï /m1","Truy hån tÈu ®­êng rçi r·nh /m2","Tiªu nhiªm tÈu ®­êng v©n /m3", " ¸o bµo tr¾ng tÈu ®­êng h¹c /m5","§­êng mét trÇn /m6","§­êng bÊt nhiÔm /m7","§­êng thiÕu /m8","§­êng nhÑ /m9","§­êng ®éc /m10") 
end; 

function m5() 
Say("VŞ trİ #<color=blue> vâ c«ng phßng <color> täa ®é #<color=blue>200,200<color> t¸c dông #<color=blue> nhiÖm vô <color><enter> vâ c«ng phßng tr­ëng l·o , mét vŞ nho nh· «n hßa ®İch tr­ëng bèi , mÆc dï xÕp h¹ng §­êng m«n Tø l·o chi m¹t , nh­ng lµ tæng tin t­ëng §­êng m«n ®İch vâ c«ng cã mét ngµy sÏ cïng ¸m khİ mét d¹ng næi tiÕng giang hå . ", 10,"BiÕt /ok","Ch­ëng m«n ®­êng thï /m1","Truy hån tÈu ®­êng rçi r·nh /m2","Tiªu nhiªm tÈu ®­êng v©n /m3","TuyÖt xu©n tÈu ®­êng d· /m4","§­êng mét trÇn /m6","§­êng bÊt nhiÔm /m7","§­êng thiÕu /m8","§­êng nhÑ /m9","§­êng ®éc /m10") 
end; 

function m6() 
Say("VŞ trİ #<color=blue> nghŞ sù ®¹i thİnh <color> täa ®é #<color=blue>199,200<color> t¸c dông #<color=blue> nhiÖm vô <color><enter> ®­êng thï con trai lín , thµnh thôc ch÷ng ch¹c , mÉn häc nhiÒu t­ , ng«n ng÷ kh«ng nhiÒu l¾m , trong ¸nh m¾t tæng hµm h÷u lau mét c¸i thÇn s¾c ­u buån . ", 10,"BiÕt /ok","Ch­ëng m«n ®­êng thï /m1","Truy hån tÈu ®­êng rçi r·nh /m2","Tiªu nhiªm tÈu ®­êng v©n /m3","TuyÖt xu©n tÈu ®­êng d· /m4", " ¸o bµo tr¾ng tÈu ®­êng h¹c /m5","§­êng bÊt nhiÔm /m7","§­êng thiÕu /m8","§­êng nhÑ /m9","§­êng ®éc /m10") 
end; 

function m7() 
Say("VŞ trİ #<color=blue> giæ tæ thİnh <color> täa ®é #<color=blue>199,199<color> t¸c dông #<color=blue> nhiÖm vô <color><enter> ®­êng thï con thø , tİnh t×nh hµo phãng , t©m ®Şa thuÇn l­¬ng . ", 10,"BiÕt /ok","Ch­ëng m«n ®­êng thï /m1","Truy hån tÈu ®­êng rçi r·nh /m2","Tiªu nhiªm tÈu ®­êng v©n /m3","TuyÖt xu©n tÈu ®­êng d· /m4", " ¸o bµo tr¾ng tÈu ®­êng h¹c /m5","§­êng mét trÇn /m6","§­êng thiÕu /m8","§­êng nhÑ /m9","§­êng ®éc /m10") 
end; 

function m8() 
Say("VŞ trİ #<color=blue> qu¶ng tr­êng <color> täa ®é #<color=blue>508,323<color> t¸c dông #<color=blue> binh khİ giao dŞch <color>", 10,"BiÕt /ok","Ch­ëng m«n ®­êng thï /m1","Truy hån tÈu ®­êng rçi r·nh /m2","Tiªu nhiªm tÈu ®­êng v©n /m3","TuyÖt xu©n tÈu ®­êng d· /m4", " ¸o bµo tr¾ng tÈu ®­êng h¹c /m5","§­êng mét trÇn /m6","§­êng bÊt nhiÔm /m7","§­êng nhÑ /m9","§­êng ®éc /m10") 
end; 

function m9() 
Say("VŞ trİ #<color=blue> qu¶ng tr­êng <color> täa ®é #<color=blue>506,322<color> t¸c dông #<color=blue> trang bŞ giao dŞch <color>", 10,"BiÕt /ok","Ch­ëng m«n ®­êng thï /m1","Truy hån tÈu ®­êng rçi r·nh /m2","Tiªu nhiªm tÈu ®­êng v©n /m3","TuyÖt xu©n tÈu ®­êng d· /m4", " ¸o bµo tr¾ng tÈu ®­êng h¹c /m5","§­êng mét trÇn /m6","§­êng bÊt nhiÔm /m7","§­êng thiÕu /m8","§­êng ®éc /m10") 
end; 

function m10() 
Say("VŞ trİ #<color=blue> qu¶ng tr­êng <color> täa ®é #<color=blue>504,322<color> t¸c dông #<color=blue> thuèc men giao dŞch <color>", 10,"BiÕt /ok","Ch­ëng m«n ®­êng thï /m1","Truy hån tÈu ®­êng rçi r·nh /m2","Tiªu nhiªm tÈu ®­êng v©n /m3","TuyÖt xu©n tÈu ®­êng d· /m4", " ¸o bµo tr¾ng tÈu ®­êng h¹c /m5","§­êng mét trÇn /m6","§­êng bÊt nhiÔm /m7","§­êng thiÕu /m8","§­êng nhÑ /m9") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function c1() 
Say("Qu¶n gia # phİa nam cã mét ®Çu ®­êng , ®i th«ng thµnh ®« . ", 3,"BiÕt /ok","§­êng gia b¶o /c2","§­êng gia b¶o bèn phİa /c3") 
end; 

function c2() 
Say("Qu¶n gia # trung trôc tuyÕn # tõ nam tíi b¾c theo thø tù lµ tiÕp kh¸ch ®¹i s¶nh # ch¸nh phßng # giæ tæ thİnh , cã thÓ tiÕn vµo . <enter> phİa ®«ng # tõ nam tíi b¾c theo thø tù lµ háa khİ phßng # y d­îc phßng , cã thÓ tiÕn vµo . <enter> phİa t©y # cã phßng nghŞ sù # ¸m khİ phßng # vâ c«ng phßng chê kiÕn tróc , cã thÓ tiÕn vµo . ", 3,"BiÕt /ok","§i th«ng chç nµo /c1","§­êng gia b¶o bèn phİa /c3") 
end; 

function c3() 
Say("Qu¶n gia # cöa tr­íc # cöa nam # ®i th«ng tróc h¶i ba quan . <enter> ®«ng m«n ®i th«ng tróc ti ®éng . <enter> T©y M«n ®i th«ng phØ thóy hå . <enter> cöa sau # b¾c m«n # ®i th«ng kh«ng lßng d¹ nµo cèc . ", 3,"BiÕt /ok","§i th«ng chç nµo /c1","§­êng gia b¶o /c2") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function v1() 
Talk(6, "","Th«ng qua hoµn thµnh nhiÖm vô nµy , ng­¬i cã thÓ gia nhËp §­êng m«n , trë thµnh <color=blue> t¹p dŞch <color> , häc ®­îc vâ c«ng <color=blue> phİch lŞch ®¹n <color> . <enter> b­íc ®Çu tiªn # ë <color=blue> tróc h¶i ba nhèt vµo miÖng <color> gÆp ph¶i mét <color=blue> §­êng m«n trang ®inh #453,358#<color> , nhËn ®­îc nhiÖm vô , x«ng tróc h¶i ba quan . ","B­íc thø hai # ë cöa thø nhÊt trong ®¸nh b¹i <color=blue> ®¹i m· hÇu <color> , lÊy ®­îc <color=red> mµu xanh tróc tr­îng <color> . ","B­íc thø ba # ë cöa thø hai trong tr¶ lêi <color=blue> §­êng m«n trang ®inh #468,350#<color> liªn quan tíi cöu cung ®å ®İch vÊn ®Ò , lÊy ®­îc <color=red> mµu tr¾ng tróc tr­îng <color> . ®¸nh b¹i cöa thø hai dÆm <color=blue> ®¹i m· hÇu # ®¹i d· hÇu <color> ph¶i nhËn ®­îc c©u tr¶ lêi . ","B­íc thø t­ # ë cöa thø ba trong tr¶ lêi <color=blue> §­êng m«n trang ®inh #473,343#<color> liªn quan tíi b¸t qu¸i ®İch ®¹i vÊn ®Ò , lÊy ®­îc <color=red> mµu tİm tróc tr­îng <color> . ®¸nh b¹i cöa thø ba dÆm <color=blue> ®¹i m· hÇu # ®¹i d· hÇu # ®¹i h¾c l¸ hÇu <color> ph¶i nhËn ®­îc c©u tr¶ lêi . ","Thø n¨m b­íc # ë <color=blue> tróc h¶i ba quan xuÊt khÈu <color> , ®em ba chu«i tróc tr­îng giao cho <color=blue> §­êng m«n trang ®inh #479,339#<color> , nhiÖm vô hoµn thµnh . ") 
end; 


function v2() 
Talk(7, "","Th«ng qua hoµn thµnh nhiÖm vô nµy , ng­¬i th¨ng lµm <color=blue> trang ®inh <color> , häc ®­îc vâ c«ng <color=blue> §­êng m«n ¸m khİ # §­êng m«n ®ao ph¸p <color> . <enter> b­íc ®Çu tiªn # ë <color=blue> vâ c«ng phßng <color> gÆp ph¶i <color=blue> ®­êng h¹c <color> , nhËn ®­îc nhiÖm vô , ®i <color=blue> thµnh ®« <color> t×m kiÕm <color=red> ma m­a ch©m <color> . ","B­íc thø hai # ë <color=blue> thµnh ®« <color> , tõ <color=blue> b¸n thôc tó ®İch Mai n­¬ng #389,315#<color> chç biÕt ®­îc thôc tó danh gia t«n uyÓn ch©m ph¸t tinh x¶o , ®Ò kú nhµ ch¬i ®i t×m <color=blue> t«n uyÓn <color> . ","B­íc thø ba # ë thµnh ®« ®«ng nam phï dung trµ bá phô cËn mét gian d©n c­ trong t×m ®­îc <color=blue> t«n uyÓn #394,323#<color> , nhËn ®­îc nhiÖm vô , dïng <color=red> m· n·o chiÕc nhÉn <color> ®æi ma m­a ch©m . ","B­íc thø t­ # ë thµnh ®« <color=blue> tiÖm t¹p hãa <color> mua ®­îc <color=red> m· n·o chiÕc nhÉn <color> . ","Thø n¨m b­íc # trë l¹i t«n uyÓn nhµ , ®em m· n·o chiÕc nhÉn giao cho nµng , lÊy ®­îc <color=red> ma m­a ch©m <color> . ","Thø s¸u b­íc # trë l¹i §­êng m«n <color=blue> vâ c«ng phßng <color> , ®em <color=red> ma m­a ch©m <color> giao cho <color=blue> ®­êng h¹c <color> , nhiÖm vô hoµn thµnh . nÕu nh­ ma m­a ch©m mÊt , cÇn lÇn n÷a lµm nhiÖm vô . ") 
end; 


function v3() 
Talk(8, "","Th«ng qua hoµn thµnh nhiÖm vô nµy , ng­¬i th¨ng lµm <color=blue> hé viÖn <color> , häc ®­îc vâ c«ng <color=blue> ®o¹t hån phiªu # lßng d¹ <color> . <enter> b­íc ®Çu tiªn # ë <color=blue> nghŞ sù ®¹i thİnh <color> gÆp ph¶i <color=blue> ®­êng mét trÇn <color> , nhËn ®­îc nhiÖm vô , ®i <color=blue> phİa b¾c kh«ng lßng d¹ nµo cèc <color> khuyªn s­ c« <color=blue> ®­êng u <color> . ","B­íc thø hai # ë <color=blue> kh«ng lßng d¹ nµo cèc <color> , ®iÓm kİch ®­êng u phßng nhá <color=blue> tr­íc cöa tÊm b¶ng gç #528,291#<color> , nhËn ®­îc nhiÖm vô , ë kh«ng lßng d¹ nµo trong cèc t×m ®­îc <color=blue> bèn ch÷ khÈu quyÕt <color> . ","B­íc thø ba # ®¸nh b¹i kh«ng lßng d¹ nµo trong cèc ®İch bèn con <color=blue> x¸ lş tinh <color> cïng <color=blue> ho¸n hïng tinh <color> , lÊy ®­îc <color=red> bèn tê ti m¹t <color> th­îng ®İch bèn c©u khÈu quyÕt . ","B­íc thø t­ # lÇn n÷a ®iÓm kİch ®­êng u tr­íc cöa tÊm b¶ng gç , nhËn ®­îc nhiÖm vô , ®i phİa t©y ®İch <color=blue> phØ thóy hå <color> t×m kiÕm <color=red> kim h¹ng vßng <color> . ","Thø n¨m b­íc # ë <color=blue> phØ thóy hå <color> , ®¸nh b¹i <color=blue> xİch diÔm ng¹c <color> , lÊy ®­îc <color=red> kim h¹ng vßng <color>","Thø s¸u b­íc # trë l¹i <color=blue> kh«ng lßng d¹ nµo cèc <color> , ®iÓm kİch phßng nhá tr­íc cöa tÊm b¶ng gç , ®­êng u muèn ng­¬i ®em <color=red> kim h¹ng vßng <color> giao cho <color=blue> ch­ëng m«n ®­êng thï <color> . ","Thø b¶y b­íc # ®Õn <color=blue> tiÕp kh¸ch ®¹i s¶nh <color> , ®em <color=red> kim h¹ng vßng <color> giao cho <color=blue> ch­ëng m«n ®­êng thï <color> , nhiÖm vô hoµn thµnh . nÕu nh­ kim h¹ng vßng mÊt , cÇn lÇn n÷a lµm nhiÖm vô . ") 
end; 


function v4() 
Talk(6, "","Th«ng qua hoµn thµnh nhiÖm vô nµy , ng­¬i th¨ng lµm <color=blue> cÊp tr­íc hé vÖ <color> , häc ®­îc vâ c«ng <color=blue> ®uæi t©m tiÕn # thanh méc c«ng <color> . <enter> b­íc ®Çu tiªn # ë <color=blue> giæ tæ thİnh <color> gÆp ph¶i <color=blue> ®­êng bÊt nhiÔm <color> , nhËn ®­îc nhiÖm vô , ®o¹t l¹i <color=red># háa khİ phæ #<color> . ","B­íc thø hai # ë <color=blue> nói Thanh Thµnh ®«ng m©y tr¾ng ®éng <color> , ®¸nh b¹i trãi phØ <color=blue> §¹i ®Çu môc cuång sa <color> , nhËn ®­îc nhiÖm vô , ë trong ®éng t×m ®­îc më ra b¶o r­¬ng ®İch <color=red> c¸i ch×a khãa <color> . ","B­íc thø ba # ®¸nh b¹i trãi phØ trung bèn <color=blue> tiÓu ®Çu môc ®éc nhÜ # c¸nh tay s¾t # quû ¶nh # lÖ quyÒn <color> trung ®İch mét , ph¶i nhËn ®­îc <color=red> c¸i ch×a khãa <color> . ","B­íc thø t­ # më ra <color=blue> b¶o r­¬ng #230,199#<color> , lÊy ®­îc <color=red># háa khİ phæ #<color> . ","Thø n¨m b­íc # trë l¹i <color=blue> háa khİ phßng <color> , ®em <color=red># háa khİ phæ #<color> giao cho <color=blue> ®­êng v©n <color> , nhiÖm vô hoµn thµnh . nÕu nh­ # háa khİ phæ # mÊt , nhÊt ®Şnh ph¶i lÇn n÷a lµm nhiÖm vô . ") 
end; 


function v5() 
Talk(7, "","Th«ng qua hoµn thµnh nhiÖm vô nµy , ng­¬i th¨ng lµm <color=blue> vµo c¸c ®Ö tö <color> , häc ®­îc vâ c«ng <color=blue> ®Çy trêi hoa vò # thèi ®éc thuËt <color> . <enter> b­íc ®Çu tiªn # ë <color=blue> y d­îc phßng <color> gÆp ph¶i <color=blue> ®­êng d· <color> , nhËn ®­îc nhiÖm vô , hãa gi¶i ®­êng d· cïng c¶nh tö kú ®İch ©n o¸n . ","B­íc thø hai # ®Õn <color=blue> nói Thanh Thµnh t©y bé <color> t×m ®­îc <color=blue> c¶nh tö kú #230,245#<color> , tr­íc ®¸nh b¹i h¾n n¨m con nhµ sóc # mét con <color=blue> bôi lang <color># mét con <color=blue> m·nh hæ <color># mét con <color=blue> kim tiÒn b¸o <color># mét con <color=blue> heo rõng <color> cïng mét con <color=blue> t«ng hïng <color> , sau ®ã nhËn ®­îc nhiÖm vô , nghÜ biÖn ph¸p cøu trŞ c¶nh tö kú n÷ mµ ®İch qu¸i bÖnh . ","B­íc thø ba # trë l¹i §­êng m«n <color=blue> y d­îc phßng <color> , tõ <color=blue> ®­êng d· <color> chç lÊy ®­îc trŞ liÖu qu¸i bÖnh ®İch <color=blue> ph­¬ng thuèc <color> . ","B­íc thø t­ # ë <color=blue> nói Thanh Thµnh ®«ng b¾c <color> ®İch <color=blue> thanh d­¬ng ngän nói <color> , ®¸nh b¹i <color=blue> h¾c ­ng # hung thøu # linh ®iªu <color> , ph¶i nhËn ®­îc n¨m lo¹i ph­¬ng thuèc #<color=red> thiÒm thõ ®İch da , r¾n ®éc ®İch ®¶m # anh tóc ®İch x¸c # con bß c¹p ®İch ®u«i # c­¬ng tµm ®İch ®Çu <color> . ","Thø n¨m b­íc # ®em ph­¬ng thuèc giao cho c¶nh tö kú , hãa gi¶i h¾n cïng víi ®­êng d· s­ thóc ®İch ©n o¸n . ","Thø s¸u b­íc # trë l¹i §­êng m«n y d­îc phßng , cïng ®­êng d· ®èi tho¹i , nhiÖm vô hoµn thµnh . ") 
end; 


function v6() 
Talk(7, "","Th«ng qua hoµn thµnh nhiÖm vô nµy , ng­¬i th¨ng lµm <color=blue> Tø l·o m«n nh©n <color> , häc ®­îc vâ c«ng <color=blue> b¨ng ph¸ch hµn quang # thiªn la ®Şa vâng <color> . <enter> b­íc ®Çu tiªn # ë <color=blue> ¸m khİ phßng <color> gÆp ph¶i <color=blue> ®­êng rçi r·nh <color> , nhËn ®­îc nhiÖm vô , t×m kiÕm <color=red># ¸m khİ phæ #<color> . ","B­íc thø hai # ë <color=blue> nghŞ sù ®¹i thİnh <color> , cïng <color=blue> ®­êng mét trÇn <color> ®èi tho¹i , biÕt ®­îc <color=blue> Tam s­ huynh ®­êng hßa <color> cïng <color=blue> Ngò s­ huynh ®­êng nguyªn <color> ®i qua ¸m khİ phßng , hai ng­êi cã hiÒm nghi . ","B­íc thø ba # ë <color=blue> giang t©n th«n <color> t×m ®­îc <color=blue> ®­êng nguyªn <color> , biÕt ®­îc <color=blue> ®­êng hßa <color> ®i <color=blue> nói Thanh Thµnh vang n­íc ®éng <color> . ","B­íc thø t­ # ®Õn <color=blue> nói Thanh Thµnh vang n­íc ®éng <color> , ®¸nh b¹i <color=blue> ®­êng hßa <color> , biÕt ®­îc <color=red># ¸m khİ phæ #<color> liÒn giÊu ë trong s¬n ®éng . ","Thø n¨m b­íc # ®¸nh b¹i trong s¬n ®éng ®İch <color=blue> thiÕt chïy Ma qu©n <color> hoÆc <color=blue> thiÕt quyÒn Diªm La <color> , ph¶i nhËn ®­îc <color=red># ¸m khİ phæ #<color> . ","Thø s¸u b­íc # trë l¹i §­êng m«n <color=blue> ¸m khİ phßng <color> , ®em <color=red># ¸m khİ phæ #<color> giao cho <color=blue> ®­êng rçi r·nh <color> , nhiÖm vô hoµn thµnh . nÕu nh­ # ¸m khİ phæ # mÊt , nhÊt ®Şnh ph¶i lÇn n÷a väng vÒ n­íc ®éng ®¸nh nhau . ") 
end; 


function v7() 
Talk(6, "","Th«ng qua hoµn thµnh nhiÖm vô nµy , ng­¬i th¨ng lµm <color=blue> thiªn thñ thÇn vÖ <color> , thuËn lîi xuÊt s­ . <enter> b­íc ®Çu tiªn # ë <color=blue> tiÕp kh¸ch ®¹i s¶nh <color> gÆp ph¶i <color=blue> ch­ëng m«n ®­êng thï <color> , nhËn ®­îc nhiÖm vô , ®i <color=blue> tróc ti ®éng <color> thu håi <color=red> thÊt tinh tuyÖt mÖnh kiÕm <color> . ","B­íc thø hai # ë <color=blue> tróc ti ®éng tÇng thø nhÊt <color> ®¸nh b¹i <color=blue> tªn lç m·ng ®Çu lÜnh <color> , ph¶i nhËn ®­îc tiÕn vµo tÇng thø hai ®İch <color=red> c¸i ch×a khãa <color> . ","B­íc thø ba # ë <color=blue> tróc ti ®éng tÇng thø hai <color> ®¸nh b¹i <color=blue> tªn lç m·ng ®Çu lÜnh <color> hoÆc <color=blue> ®iÓm t×nh hæ <color> , ph¶i nhËn ®­îc tiÕn vµo tÇng thø ba <color=red> c¸i ch×a khãa <color> . ","B­íc thø t­ # ë <color=blue> tróc ti ®éng tÇng thø ba <color> , cã hai <color=blue> b¶o r­¬ng <color> , mét ng­êi trong ®ã bªn trong cã <color=red> thÊt tinh tuyÖt mÖnh kiÕm <color> . ","Thø n¨m b­íc # trë l¹i §­êng m«n <color=blue> tiÕp kh¸ch ®¹i s¶nh <color> , ®em <color=red> thÊt tinh tuyÖt mÖnh kiÕm <color> giao cho <color=blue> ch­ëng m«n ®­êng thï <color> , nhiÖm vô hoµn thµnh . nÕu nh­ thÊt tinh tuyÖt mÖnh kiÕm mÊt , nhÊt ®Şnh ph¶i lÇn n÷a lµm nhiÖm vô . ") 
end; 

function v8() 
Talk(3,"","Trë l¹i s­ m«n sau , ng­¬i bŞ ®ãng cöa v× <color=blue> xanh biÕc c¸ch tr­ëng l·o <color>, häc ®­îc tuyÖt häc <color=blue> TiÓu lı phi ®ao , thiªn la ®Şa vâng , khen hoa tó <color>.","B­íc ®Çu tiªn # cÊp bËc ®¹t tíi 60 , ®Õn <color=blue> phßng kh¸ch <color> thÊy <color=blue> ®­êng thï ch­ëng m«n <color>, th©n thØnh trë l¹i §­êng m«n .","B­íc thø hai # th«ng qua ®ãng <color=red>50000 hai <color>, trë l¹i §­êng m«n .") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function ok() 
end; 
