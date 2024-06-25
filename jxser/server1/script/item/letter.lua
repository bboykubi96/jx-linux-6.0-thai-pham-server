-- script viet hoa By http://tranhba.com  bäc quÇn ¸o bªn trong ®İch phong th¬ # nhiÖm vô míi hÖ thèng long n¨m ®İch bäc quÇn ¸o # chİnh ph¸i 
-- script viet hoa By http://tranhba.com by xiaoyang(2004\12\25) 

Include("\\script\\task\\newtask\\newtask_head.lua")

function main(sel) 
local curCamp = nt_getCamp() 
Uworld1001 = nt_getTask(1001) -- script viet hoa By http://tranhba.com  chİnh ph¸i 
Uworld1002 = nt_getTask(1002) 
Uworld1003 = nt_getTask(1003) 
Uworld183 = nt_getTask(183) 
Uworld186 = nt_getTask(186) 
Uworld189 = nt_getTask(189) 
local name = GetName() 
if ( Uworld183 == 20 ) then 
Describe("<link=image:\\spr\\item\\questkey\\taskobj075.spr> long n¨m ®İch tin/th¬ <link><enter> long n¨m #"..name.." , nhµ n­íc ®¹i n¹n , giang hå lo¹n khëi . sanh ë c¸i thêi ®¹i nµy , rÊt nhiÒu thêi ®iÓm còng sÏ th©n bÊt do kû . ta thËt cao høng ng­¬i vÉn muèn lµm ng­êi ch¸nh trùc , cho nªn nãi cho ng­¬i biÕt mét bİ mËt , cã lÏ nã cã thÓ gióp ®Õn ng­¬i . kh«ng biÕt tõ ®©u lóc khëi , giang hå ®İch bÊt ®ång trËn doanh ®ang lóc chît truyÒn ra tin tøc nh­ thÕ , ë quÇn hïng tranh b¸ ®İch sau l­ng , cã h¬n khæng lå tæ chøc ©m thÇm ®iÒu khiÓn . ta kh«ng biÕt tin ®ån cã hay kh«ng cã thÓ tin , nh­ng ch¸nh ®¹o vâ l©m cã c¸ Èn vµo thŞ tËp , thùc lùc khæng lå tæ chøc còng lµ ta cã thÓ kh¼ng ®Şnh . nghe nãi c¸i tæ chøc nµy ®İch tªn gäi vâ l©m kh¸ch s¹n . ta muèn , s¬ xuÊt ®¹o lóc cã thÓ ®i vµo nh­ vËy mét tæ chøc , ®èi víi ng­¬i ®İch tiÒn tr×nh sÏ tèt h¬n , còng cã thÓ miÔn ®i rÊt nhiÒu phiÒn to¸i kh«ng cÇn thiÕt . ng­¬i cã thÓ ®i §¹i Lı t×m mét gäi m¹c sÇu ®İch c« g¸i , nµng sÏ cho ng­¬i cô thÓ chØ thŞ . nh­ng thiÕt thiÕt kh«ng thÓ ë tr­íc mÆt nµng nh¾c tíi ta , nguyªn nh©n sau nµy tù biÕt . véi v· mÊy lêi , lÊy nµy thu bót , diªu chóc t©m nguyÖn sím thµnh . long n¨m . ",1,"Thu håi tİn hµm /no") 
nt_setTask(183,30) 
if ( Uworld1001 < 10 ) then 
nt_setTask(1001,10) -- script viet hoa By http://tranhba.com  chİnh ph¸i nhiÖm vô b¾t ®Çu 
end 
end 
return 0 
end 
