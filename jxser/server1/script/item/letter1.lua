-- script viet hoa By http://tranhba.com  bäc quÇn ¸o bªn trong ®İch phong th¬ # nhiÖm vô míi hÖ thèng long n¨m ®İch bäc quÇn ¸o # trung lËp 
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
if ( Uworld186 == 20 ) then 
Describe("<link=image:\\spr\\item\\questkey\\taskobj090.spr> long n¨m ®İch tin/th¬ <link><enter> long n¨m #"..name.." , ng­¬i tuy cßn trÎ tuæi , víi giang hå nhÊt m¹ch l¹i nh×n thÊu qua . thÕ giíi nµy vèn lµ ch¸nh tµ ch¼ng ph©n biÖt ®­îc , thiÖn ¸c sê/chí biÖn . rêi ®i n¬i nµy sau , lµm ng­êi xö sù còng dùa vµo ng­¬i thÈm lóc ®é thÕ , sÏ rÊt khæ , ®­êng sÏ rÊt khã kh¨n , ng­¬i cÇn lµm rÊt nhiÒu , l¹i kh«ng nhiÒu l¾m . Long mç còng kh«ng biÕt nªn nh­ thÕ nµo gióp ng­¬i mét c¸nh tay lùc , chØ cã thÓ ®em giang hå trong trung lËp mét trËn ®İch mét bİ mËt tiÕt lé cho ng­¬i , ë trung lËp trËn doanh ®İch sau l­ng cã mét c­êng ®¹i tæ chøc s¸t thñ , c¸i tæ chøc nµy cã bao nhiªu cao thñ , thùc lùc bao lín cho tíi b©y giê kh«ng ai biÕt ®­îc . chØ biÕt lµ c¸i nµy h¬n m­êi n¨m qua Tèng triÒu t­ th«ng víi ®Şch ®İch §¹i t­íng , kim quèc chinh ph¹t ®İch n¨ng thñ , vâ l©m thµnh danh ®İch ®¹i hiÖp lò lò bŞ giÕt , ®Òu cïng c¸i tæ chøc nµy t­¬ng quan . c¸i tæ chøc nµy ®İch tªn gäi —— l©m uyªn nhai . ng­¬i ®i biÖn kinh cÇm ta tin/th¬ t×m mét gäi phã nam b¨ng ®İch nam nh©n , h¾n tù sÏ an bµi . nãi dõng l¹i ë nµy , hy väng ng­¬i m¹nh kháe tù trë nªn , tr©n träng . long n¨m . ",1,"Thu håi tİn hµm /no") 
nt_setTask(186,30) 
if ( Uworld1002 < 10 ) then 
nt_setTask(1002,10) -- script viet hoa By http://tranhba.com  trung lËp nhiÖm vô b¾t ®Çu 
end 
end 
return 0 
end 
