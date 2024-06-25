-- script viet hoa By http://tranhba.com  Tr­êng giang ngän nguån ng­êi ®i ®­êng _ giíi v« tµ .lua# C¸i Bang 90 cÊp kü n¨ng nhiÖm vô 
-- script viet hoa By http://tranhba.com  By#XiaoYang(2004-04-29) 
-- script viet hoa By http://tranhba.com  Update#dan_deng(2004-05-20) 

Include("\\script\\global\\repute_head.lua")
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main() 
if allbrother_0801_CheckIsDialog(2) == 1 then 
allbrother_0801_FindNpcTaskDialog(2) 
return 0; 
end 

Uworld128 = GetTask(128) 
Uworld30 = GetByte(GetTask(30),2) 
if (Uworld128 < 10) and (GetReputeLevel(GetRepute()) >= 5) and (GetLevel() >= 90) and (GetFaction() ~="gaibang") and (Uworld30 ==127) then 
Talk(8,"Uworld128_get","Tr­êng giang ngän nguån , ng­¬i thÊy mét ng­êi thanh niªn ®ang thæi tiÕu , tiÕng c­êi rÊt bi th­¬ng . ","C¸c h¹ ®İch tiÕng c­êi thÕ nµo nh­ vËy thª l­¬ng , gièng nh­ cã t©m sù g× ? ","Quèc gia gÆp n¹n , thÊt phu h÷u tr¸ch , huynh ®Ö nhµ v­ên ®ang bŞ kim qu©n tµn s¸t , t¹i h¹ lµm sao cã thÓ cao høng ®©y ?","Quan s¬n v¹n dÆm , kh«ng hiÓu cã bao nhiªu cõu hËn , ch¼ng qua lµ thÕ nh©n sai lÇm dïng ph¸o löa ®Ó ®æi lÊy phån vinh ","T¹i h¹ lµ giíi v« tµ , h«m nay thÊy anh hïng , cÇm r­îu ®i ra céng Èm !","Anh hïng thiªn h¹ cã mÊy ng­êi ","C¹n chĞn ","C¹n chĞn ") 
elseif (Uworld128 == 10) and (HaveItem(76) == 1) then 
Talk(11,"Uworld128_envelop","Huynh ®µi thËt lµ nãi tİn dông ","Tri kû gÆp l¹i ngµn chĞn thiÓu , h«m nay nhÊt ®Şnh ph¶i uèng c¸ thèng kho¸i ","Anh hïng thiªn h¹ cã mÊy ng­êi ?","C¸c h¹ kh«ng biÕt , thêi thÕ t¹o anh hïng !","T¹i sao nãi nh­ vËy ?","T¹i h¹ mÆc dï nhËp m«n kh«ng l©u , nh­ng lµ , ®· tr¶i qua rÊt nhiÒu kŞch chiÕn , rÊt nhiÒu ng­êi kh«ng nªn chÕt còng ®· chÕt , t¹i h¹ sèng nh­ cò , bän hä ®Òu cã cha mÑ , vî con , ch¼ng lÏ muèn chÕt ph¶i kh«ng ? ch¼ng qua lµ , lóc chuyÖn nh­ thÕ , kh«ng thÓ kh«ng lµm nh­ vËy ","TiÕc nuèi , ng­êi nh­ vËy thËt lµ thiÓu !","Còng ®­îc ®i , ®Õn ta , kh«ng nãi kh«ng vui chuyÖn cña liÔu , uèng r­îu ®i . !","Giíi mét n¬i nµy cã phong th­ , lµm phiÒn ng­¬i gióp ta ®em phong th­ nµy mang cho C¸i Bang La tr­ëng l·o !","§­îc !") 
elseif (Uworld128 == 40) then 
Talk(7,"Uworld128_kill","Giíi ®¹i ca , ng­¬i kh«ng sao chí ?","Yªn t©m , ta kh«ng cã sao !"," lµm sao ng­¬i biÕt cã ng­êi muèn giÕt ng­¬i !","C¸i nµy cïng bªn trong C¸i Bang bé cã liªn quan , nÕu nh­ ta kh«ng cã n¾m gi÷ thËt t×nh , ta sÏ kh«ng nãi lung tung ","VËy ng­¬i ph¶i cÈn thËn , ta muèn ®i nãi cho La tr­ëng l·o !","B»ng h÷u , giíi mét kh«ng cã g× cã thÓ b¸o ®¸p ng­¬i , sau nµy cã chuyÖn g× , giíi mét ®Şnh t­¬ng trî !","§¹i ca kh«ng muèn nãi nh­ vËy , nÕu kh«ng ta c¶m thÊy thËt kh«ng tèt ı tø ") 
elseif (Uworld128 == 10) then 
Talk(1,"","Tõ n¬i nµy ®i D­¬ng Ch©u ®İch ®­êng rÊt nguy hiÓm , däc theo ®­êng ®i ph¶i cÈn thËn !") 
elseif (Uworld128 == 30) then 
Talk(2,"","Giíi ®¹i ca ph¶i cÈn thËn , nÕu kh«ng sÏ bŞ thÇm h¹i ","Tíi thËt lµ ®óng lóc , cïng ®i giÕt hÕt tÆc nh©n !") 
elseif (Uworld128 == 20) and (HaveItem(390) == 0) then 
AddEventItem(390) 
Msg2Player("NhËn ®­îc giíi v« tµ ®İch tin/th¬ ") 
Talk(1,"","ChuyÖn rÊt nÆng ®¹i , lµm phiÒn ng­¬i cùc nhanh ®em phong th­ nµy mang cho bæn bang La tr­ëng l·o ") 
else 
Talk(1,"","Uèng r­îu ca x­íng , cuéc sèng tri kû cã mÊy ng­êi ?") 
end 
end 

function Uworld128_get() 
if (GetCamp() == 0) and (GetTask(75) < 255) then -- script viet hoa By http://tranhba.com  b¹ch tªn ch­a häc d· cÇu quyÒn ®İch , kh«ng cho phĞp tiÕp nhËn vô 
Talk(1,"","H«m nay ta cïng c¸c h¹ muèn s­íng uèng ®Õn h¾c , s¸ng sím ngµy mai trë/mang lªn ®­êng !") 
else 
Say("TiÕc nuèi lµ , h«m nay t¹i h¹ kh«ng hiÓu sÏ gÆp ph¶i tri kû , cho nªn ch­a kŞp chuÈn bŞ xong r­îu ",2,"T¹i h¹ biÕt ë D­¬ng Ch©u cã mét tßa töu l©u b¸n huÖ tuyÒn r­îu , rÊt tèt uèng , t¹i h¹ sÏ ®i ngay b©y giê mua . /Uworld128_wait","Huynh ®Ö b×nh thñy t­¬ng phïng , t¹i h¹ kh«ng hiÓu ®­êng phİa tr­íc nh­ thÕ nµo /Uworld128_no") 
end 
end 

function Uworld128_wait() 
SetTask(128,10) 
-- script viet hoa By http://tranhba.com  Uworld135 = GetGameTime() 
Msg2Player("Ng­¬i cïng giíi v« tµ ­íc ®Şnh ®i D­¬ng Ch©u th­ëng thøc r­îu ngon ") 
AddNote("Ng­¬i cïng giíi v« tµ ­íc ®Şnh ®i D­¬ng Ch©u th­ëng thøc r­îu ngon ") 
end 

function Uworld128_no() 
end 

function Uworld128_envelop() 
DelItem(76) 
AddEventItem(390) 
Msg2Player("NhËn ®­îc giíi v« tµ ®İch tin/th¬ , ®Õn C¸i Bang t×m La tr­ëng l·o ") 
AddNote("NhËn ®­îc giíi v« tµ ®İch tin/th¬ , ®Õn C¸i Bang t×m La tr­ëng l·o ") 
SetTask(128,20) 
end 

function Uworld128_kill() 
SetTask(128,50) 
Msg2Player("Cøu ra giíi v« tµ , trë vÒ b¸o c¸o La tr­ëng l·o ") 
AddNote("Cøu ra giíi v« tµ , trë vÒ b¸o c¸o La tr­ëng l·o ") 
end 
