-- script viet hoa By http://tranhba.com  \script\ t©y b¾c nam khu \ Hoa S¬n \npc\ ng­êi ®i ®­êng _uworld122_ quı ®Şch phong .lua 
-- script viet hoa By http://tranhba.com  by xiaoyang(2004\4\15) ThiÕu L©m 90 cÊp nhiÖm vô 

Include("\\script\\global\\repute_head.lua")

function main() 
Uworld122 = GetTask(122) 
Uworld38 = GetByte(GetTask(38),2) 
if(Uworld122 < 10) and (GetLevel() >= 90) and (Uworld38 == 127) and (GetReputeLevel(GetRepute()) >= 5) and (GetFaction() ~="shaolin" ) then 
Talk(8,"U122_get","Quı huynh , luËn v¨n ta so ra kĞm ng­¬i , nh­ng lµ tËp vâ kh«ng gièng ®i häc , cßn ph¶i cã c«ng phu ","Th­êng huynh , trong tµng kinh c¸c cã ngµn v¹n quyÓn s¸ch , nÕu lµ ai còng gièng nh­ ng­¬i mét d¹ng kh«ng ®i häc İt nh­ vËy l©m phËt ph¸p ®· sím kh«ng tån t¹i .","PhËt ®¹o ph¶i lµ tù nhiªn , tu hµnh kh«ng nhÊt ®Şnh ph¶i dùa theo quyÓn s¸ch tíi . huèng chi Th­êng mç tuy ch­a tõng ®i häc nh­ng còng kh«ng ph¶i kh«ng biÕt ch÷ . vâ c«ng cña ng­¬i kh«ng gièng ta mét d¹ng , cßn muèn häc th­îng ngåi ®İch vâ c«ng "," lêi nh­ vËy kh«ng hîp lı . nh­ vËy kh«ng hîp lı . chóng ta tù ë häc vâ tr­íc ®Òu ph¶i nghiªn cøu phËt ®iÓn cïng röa s¹ch téi nghiÖt , nÕu kh«ng sÏ chÕt ph¶i sím , ta ch¼ng qua lµ v× muèn tèt cho ng­¬i .","NÕu nh­ vËy chóng ta liÒn tû thİ mét trËn ®i , ThiÕu L©m nghiªm cÊm ®ång m«n t­¬ng tµn , chóng ta ®Õn Hoa S¬n l«i ®µi c«ng b×nh tû thİ , sinh tö c¸c an thiªn mÖnh .","So liÒn so , ta khuyªn ng­¬i kh«ng cã nghÜa lµ ta sî ng­¬i !","Ha ha ha # hai vŞ # t¹i h¹ ë bªn ngoµi ®Òu nghe ®­îc . ThiÕu L©m lµ b¾c ®Èu vâ l©m . hai vŞ kh«ng muèn ®¶ th­¬ng víi nhau ®İch t¸nh m¹ng ","VŞ nµy ... t¹i h¹ còng ph¶i kh«ng ph¶i ®· !") 
elseif(Uworld122 > 10) and (Uworld122 < 50) then 
Talk(2,"","Quı huynh kh«ng khiªm nh­îng vËy t¹i h¹ kh«ng thÓ lµm g× kh¸c h¬n lµ kh«ng kh¸ch khİ .","T¹i h¹ ­u thÕ râ rµng , Th­êng huynh kh«ng nªn lµm khã #") 
elseif (Uworld122 == 60) then 
Talk(4,"Uworld122_ashamed","Th­êng huynh # quı huynh # hai vŞ kh«ng nªn nh­ vËy !","C¶m t¹ c¸c h¹ ©n cøu m¹ng ","§ång m«n tranh nhau , hËu qu¶ khã liÖu , hèi hËn còng tíi kh«ng kŞp !","ThiÕu L©m lµ vâ l©m ®İch ®èng l­¬ng , t¹i h¹ cã thÓ gióp hai vŞ , thËt lµ vinh h¹nh . chuyÖn còng xö lı tèt # ta ph¶i vÒ ThiÕu L©m phôc mÖnh . ") 
elseif (Uworld122 == 50) and (HaveItem(392) == 1) then 
Talk(4,"U122_step","ThiÕu L©m t¨ng chóng lµm ë chç nµy ! ThiÕu L©m ®Ö tö lËp tøc nghe lÖnh !","Chøng thËt lµ ThiÕu L©m chóng t¨ng lµm ! ta cÈn tu©n hiÖu lµm ","C¸c h¹ xin cø viÖc ph©n phã !","B©y giê qu©n Kim che giÊu ë Hoa S¬n ®· ®em chóng ta bao v©y . thõa dŞp bän hä bè trİ , chóng ta tr­íc sau khi t¸ch ra n÷a tËp häp .") 
elseif (Uworld122 == 50) then -- script viet hoa By http://tranhba.com  tr¹ng th¸i chİnh x¸c , nh­ng kh«ng cã lÖnh bµi 
Talk(1,"","Ng­¬i lµ ai ? dùa vµo c¸i g× tíi can thiÖp chóng ta ?") 
elseif (Uworld122 == 55) then -- script viet hoa By http://tranhba.com  nhiÖm vô trung ®İch thiÕu tØnh ®èi tho¹i 
Talk(2,"","NhiÖm vô cña ta hoµn thµnh , ng­¬i bªn kia nh­ thÕ nµo ?","Ta thËt kh«ng yªn t©m , c¸c vŞ s­ huynh trë l¹i xem mét chót , chê ta mét chót !.") 
elseif (Uworld122 == 65) and (HaveItem(392) == 0) then -- script viet hoa By http://tranhba.com  lÇn n÷a thu håi lÖnh bµi 
Talk(1,"","§a t¹ c¸c h¹ ®İch ©n cøu m¹ng , ®©y lµ lÖnh bµi xin/mêi nhËn lÊy !") 
AddEventItem(389) 
Msg2Player("CÇm ThiÕu L©m kim bµi trë vÒ ") 
elseif (Uworld122 >= 240) then -- script viet hoa By http://tranhba.com  nhiÖm vô ®· hoµn thµnh 
Talk(1,"","Tr­íc ta nhÊt thêi hå ®å , nÕu nh­ kh«ng cã c¸c h¹ t­¬ng trî tho¹i hËu qu¶ thiÕt t­ëng kh«ng chŞu næi !") 
else 
Talk(1,"","Th­êng huynh , lÇn nµy c¸ nh©n ta tû vâ nÕu lµ s­ phã biÕt nhÊt ®Şnh sÏ tr¸ch m¾ng ®İch ®óng kh«ng ?") 
end 
end 

function U122_get() 
if (GetCamp() == 0) and (GetTask(75) < 255) then -- script viet hoa By http://tranhba.com  b¹ch tªn ch­a häc d· cÇu quyÒn ®İch , kh«ng cho phĞp tiÕp nhËn vô 
Talk(1,"","Xem ng­¬i d¸ng vÎ kh«ng tho¶i m¸i , cßn lµ c¸ch xa chiÕn tr­êng tr¸nh cho bŞ giÕt th­¬ng .") 
else 
Say("Nãi nh­ vËy ®i , nÕu nh­ s­ huynh muèn cho danh hiÖu , t¹i h¹ quyÕt kh«ng ng¨n trë !",2,"Xem ra hai ng­êi cßn kh«ng cã thuyÕt phôc , ta kh«ng thÓ lµm g× kh¸c h¬n lµ th­îng ThiÕu L©m mét chuyÕn , hái thanh c¨n nguyªn . /Uworld122_yes","C¸c ng­¬i muèn ®¸nh liÒn ®¸nh nh­ng lµ kh«ng muèn dİnh lİu ®Õn ta , khuyªn ng­¬i cöa nh­ng lµ kh«ng nghe , tæn thÊt chİnh lµ c¸c ng­¬i . /Uworld122_no") 
end 
end 

function Uworld122_yes() 
Msg2Player("ThiÕu L©m ®Ö tö th­êng tr¨m dÆm cïng quı ®Şch phong v× nÆng tËp vâ cßn lµ häc l¹i s¸ch mµ tranh chÊp , cuèi cïng quyÕt ®Şnh quyÕt c¶ ®êi chÕt . ng­¬i quyÕt ®Şnh th­îng ThiÕu L©m t×m s­ phô cña bän hä tíi khuyªn nãi . ") 
AddNote("ThiÕu L©m ®Ö tö th­êng tr¨m dÆm cïng quı ®Şch phong v× nÆng tËp vâ cßn lµ häc l¹i s¸ch mµ tranh chÊp , cuèi cïng quyÕt ®Şnh quyÕt c¶ ®êi chÕt . ng­¬i quyÕt ®Şnh th­îng ThiÕu L©m t×m s­ phô cña bän hä tíi khuyªn nãi . ") 
SetTask(122,10) -- script viet hoa By http://tranhba.com  ThiÕu L©m nhiÖm vô khëi ®éng 
end 

function Uworld122_no() 
end 

function U122_step() 
DelItem(392) 
SetTask(122,55) -- script viet hoa By http://tranhba.com  c¾m vµo thay ®æi l­îng trung 
Msg2Player("ThiÕu L©m ®Ö tö th­êng tr¨m dÆm cïng quı ®Şch phong v× nÆng tËp vâ cßn lµ häc l¹i s¸ch mµ tranh chÊp , cuèi cïng quyÕt ®Şnh quyÕt c¶ ®êi chÕt . ng­¬i quyÕt ®Şnh th­îng ThiÕu L©m t×m s­ phô cña bän hä tíi khuyªn nãi . ") 
end 

function Uworld122_ashamed() 
SetTask(122,65) -- script viet hoa By http://tranhba.com  thiÕt trİ nhiÖm vô thay ®æi l­îng v× 60 
AddEventItem(392) -- script viet hoa By http://tranhba.com  n¬i nµy n÷a thu håi lÖnh bµi 
Msg2Player("Cøu th­êng tr¨m dÆm cïng quı ®Şch phong , mang ThiÕu L©m lÖnh bµi ®i ThiÕu L©m b¸o tin . ") 
AddNote("Cøu th­êng tr¨m dÆm cïng quı ®Şch phong , mang ThiÕu L©m lÖnh bµi ®i ThiÕu L©m b¸o tin . ") 
end 
