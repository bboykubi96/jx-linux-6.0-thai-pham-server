-- script viet hoa By http://tranhba.com  Trung Nguyªn b¾c khu phôc bß s¬n phôc bß S¬n T©y ng­êi ®i ®­êng _ l¹c cöu thiªn .lua## quyÒn nghiªng thiªn h¹ nhiÖm vô ( d· cÇu quyÒn nhiÖm vô )# 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2004-05-24) 

Include("\\script\\global\\repute_head.lua")

function main(sel) 
Uworld75 = GetTask(75) 
U75_sub1 = GetTask(52) 
U75_sub2 = GetTask(53) 
U75_sub3 = GetTask(54) 
U75_sub4 = GetTask(55) 
U75_sub5 = GetTask(56) 
-- script viet hoa By http://tranhba.com  if (Uworld75 < 10) and (GetLevel() >= 30) and (GetCamp() == 0) and (GetReputeLevel(GetRepute()) >= 3) then -- script viet hoa By http://tranhba.com  nhiÖm vô khëi ®éng 
-- script viet hoa By http://tranhba.com  Talk(10,"U75_get"," l¹c cöu thiªn # quyÒn ph¸p ngµy , ch­ëng ph¸p ®Şa , chØ ph¸p t©m . tŞch nhËt long chiÕn víi d· , VÖ l·o mét quyÒn ph¶i thiªn ®Şa linh khİ , kİnh tõ sinh lßng , nhÊt thêi v­¬ng ph¸ch khİ b«n dòng , r¸ch cù long víi v« h×nh , quyÒn thö thiªn h¹ # thóy ®æi tªn vÖ thiªn h¹ , quyÒn tªn d· cÇu . ","Nhµ ch¬i # xin hái t«n gi¸ míi võa ®äc lµ c¸i g× ? t¹i h¹ v× sao ë tø th­ ngò kinh trung tõ kh«ng thÊy thøc . "," l¹c cöu thiªn # a , tiÓu hiÖp kh«ng biÕt , cßn ®©y lµ ®êi tr­íc vâ l©m thÇn tho¹i “ quyÒn hµo ” vÖ thiªn h¹ ®İch tù truyÖn . ","Nhµ ch¬i # t¹i h¹ tõng nghe nãi ®êi tr­íc vâ l©m bèn kú trung ®İch “ mét sóng ®å long ” long ®uæi vò thiÖn khiÕn cho giÕt long th­¬ng ph¸p , kh«ng biÕt tiªn sinh theo nh­ lêi ®¹i hiÖp cã thÓ cïng c«ng ph¸p t­íng tùa nh­ ? "," l¹c cöu thiªn # c¸p c¸p c¸p c¸p …… Long thŞ tiÓu nhi , khëi cã thÓ cïng khèc th¸ng tranh huy . VÖ l·o n¨m ®ã biÓn chu ®é h¶i , víi oµnh lai ®¹i chiÕn thÇn long , ë mªnh m«ng tù nhiªn trung lÜnh ngé d· cÇu quyÒn ph¸p , ba chiªu tuyÖt s¸t ¸c long . thËt lµ cæ kim ng­êi thø nhÊt , ®ã lµ bùc nµo ®İch hµo dòng # Long tiÓu tö sóng tªn ®å long , sî r»ng ngay c¶ long ®İch c¸i bãng còng kh«ng ra m¾t . ","Nhµ ch¬i # kh«ng nghÜ tíi trong chèn giang hå cßn cã nh©n vËt lîi h¹i nh­ thÕ , v× sao ch­a tõng nghe nãi ? "," l¹c cöu thiªn # VÖ l·o lÊy thiªn h¹ lµm träng , l¹i nh­ thÕ nµo ë n¬i nµy lo¹i nh¶y l­¬ng tiÓu söu ®İch vâ ®µi/sµn nh¶y trung xuÊt hiÖn . huèng chi n¨m ®ã quyÒn thö thiªn h¹ sau , giang hå h¾c ®¹o t©m ®¶m c©u liÖt , hoµng hoµng kh«ng thÓ c¶ ngµy . mÊy thËp niªn th¸i b×nh thŞnh thÕ , l¹i sao ®¸ng gi¸ VÖ tiªn sinh ra l¹i quyÒn . ","Nhµ ch¬i # l¹i cã nh­ thÕ kú chiªu ? kh«ng biÕt ®¹i hiÖp nh­ng hiÓu ®­îc nµy bé/vá quyÒn phæ tung tİch . "," l¹c cöu thiªn # bÊt tµi L¹c mç , chİnh lµ tiªn s­ ®Ö tö , còng tõng tËp ®­îc da l«ng . ","Nhµ ch¬i # a # ng¾m tiªn sinh d¹y ta #") 
if (Uworld75 == 10) and (U75_sub1 == 20) and (U75_sub2 == 20) and (U75_sub3 == 20) and (U75_sub4 == 20) and (U75_sub5 == 20) and (HaveItem(384) == 1) then -- script viet hoa By http://tranhba.com  nhiÖm vô hoµn thµnh 
DelItem(384) 
Talk(2,"U75_prise","H¶o tiÓu tö , ta qu¶ nhiªn kh«ng cã nh×n lÇm ng­êi , tíi n¬i nµy , häc nhanh lªn mét chót .","Vâ häc mét ®¹o , thiªn ngo¹i h÷u thiªn . ng­¬i nÕu kh«ng ®o¹n luyÖn tËp , n¬i nµy cã c¸ thö c«ng phu : thêi gian ®İch bia , chØ cÇn mét quyÒn lµ cã thÓ ®¸nh n¸t , khi ®ã ng­¬i quyÒn liÒn trë thµnh thiªn h¹ thÇn tiªn cÊp bËc . ") 
elseif (Uworld75 == 10) and (HaveItem(384) == 0) then -- script viet hoa By http://tranhba.com  nhiÖm vô trung , tin/th¬ mÊt 
AddEventItem(384) 
Msg2Player(" l¹i nhËn ®­îc l¹c cöu thiªn ®İch th¬ giíi thiÖu liÔu . ") 
Talk(1,""," l·o thŞ nh­ vËy nĞm , t¹i sao cã thÓ lµm ®¹i sù ? tİnh / chän , sÏ cho ng­¬i cã c¸i c¬ héi , ta n÷a viÕt mét phong th¬ cho ng­¬i , nhí kh«ng muèn vøt bá ") 
elseif (Uworld75 == 10) then 
Talk(1,"","§Çu tiªn ng­¬i muèn v­ît qua b¶y ngµy n¨m s­ ®Ö , ta míi cã thÓ d¹y ng­¬i !") 
elseif (Uworld75 == 255) then 
Talk(1,"","D· cÇu quyÒn muèn mçi ngµy luyÖn tËp míi cã thÓ luyÖn thµnh , ng­¬i cÇn ph¶i cã nhÉn n¹i .") 
else 
Talk(1,"","QuyÒn ph¸p ngµy , ch­ëng m«n ®Şa , chØ ph¸p t©m . quyÒn ph¸p .... rÊt khã nhí ") 
end 
end; 

function U75_get() 
Say("Nªn quyÒn ph¸p kh«ng thÓ uèng nh÷ng kh¸c néi c«ng cïng nhau luyÖn tËp , nÕu nh­ ng­¬i nghÜ gia nhËp nh÷ng m«n ph¸i kh¸c , th× kh«ng thÓ häc . ng­¬i nghÜ xong ch­a ?",2,"Ta muèn cÈn thËn , xin cho ta häc d· cÇu quyÒn . /U75_get_yes","§Ó cho ta muèn muèn !/no") 
end 

function U75_get_yes() 
Talk(5,"U75_go","Bëi v× muèn häc d· cÇu quyÒn , kh«ng muèn gia nhËp nh÷ng m«n ph¸i kh¸c .","Ha ha , thËt lµ trêi ban kú tµi , ta xem ng­¬i g©n cèt rÊt m¹nh tr¸ng , trªn giang hå rÊt İt . nh­ng lµ muèn phiÒn to¸i nh÷ng huynh ®Ö kh¸c míi cã thÓ d¹y ng­¬i .","§a t¹ s­ phô ? ","N¬i nµy cã mét phong th¬ , ng­¬i mang ®i thµnh ®« , §¹i Lı , ph­îng t­êng , biÖn kinh t×m ph­¬ng thİch , hoa n«ng , Th¸i ®¹i thóc , phã nam b¨ng cïng tê tuÊn . n¨m ng­êi nµy ®Òu ®ång ı ng­¬i luyÖn tËp kü n¨ng . ","Tèt , s­ b¸ ") 
end 

function U75_go() 
Talk(1,"","§­êng rÊt nguy hiÓm , ng­¬i cÇn chuÈn bŞ xong . tõ cæ chİ kim , lµm ®¹i sù nghiÖp ng­êi cña , mçi ng­êi kh«ng tr¶i qua khæ n¹n ") 
AddEventItem(384) -- script viet hoa By http://tranhba.com  l¹c cöu thiªn th¬ giíi thiÖu 
SetTask(75,10) 
SetTask(52,0) -- script viet hoa By http://tranhba.com  tö thay ®æi l­îng míi b¾t ®Çu hãa 
SetTask(53,0) 
SetTask(54,0) 
SetTask(55,0) 
SetTask(56,0) 
AddNote("NhËn quyÒn nghiªng thiªn h¹ nhiÖm vô # cÇm l¹c cöu thiªn ®İch th¬ giíi thiÖu ®i thµnh ®« t×m ph­¬ng thİch , §¹i Lı t×m hoa n«ng , ph­îng t­êng t×m Th¸i ®¹i thóc , biÖn kinh t×m phã nam b¨ng , tr­íc khi an t×m tê tuÊn , cÇu häc d· cÇu quyÒn . ") 
Msg2Player("NhËn quyÒn nghiªng thiªn h¹ nhiÖm vô # cÇm l¹c cöu thiªn ®İch th¬ giíi thiÖu ®i thµnh ®« t×m ph­¬ng thİch , §¹i Lı t×m hoa n«ng , ph­îng t­êng t×m Th¸i ®¹i thóc , biÖn kinh t×m phã nam b¨ng , tr­íc khi an t×m tê tuÊn , cÇu häc d· cÇu quyÒn . ") 
end 

function U75_prise() 
Talk(1,"","§Ö tö tiÕp nhËn chØ gi¸o .") 
DelItem(384) 
SetTask(75,255) 
AddRepute(30) 
if (HaveMagic(395) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(395) 
end 
AddNote("QuyÒn nghiªng thiªn h¹ nhiÖm vô # nhiÖm vô hoµn thµnh , häc ®­îc d· cÇu quyÒn kü n¨ng , ng­¬i danh väng gia t¨ng 30 ®iÓm . ") 
Msg2Player("QuyÒn nghiªng thiªn h¹ nhiÖm vô # nhiÖm vô hoµn thµnh , häc ®­îc d· cÇu quyÒn kü n¨ng , ng­¬i danh väng gia t¨ng 30 ®iÓm . ") 
end 

function no() 
end 
