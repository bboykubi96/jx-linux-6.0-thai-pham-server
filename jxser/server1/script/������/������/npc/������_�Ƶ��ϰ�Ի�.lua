-- script viet hoa By http://tranhba.com description: hai hå khu ba l¨ng huyÒn qu¸n r­îu l·o b¶n ®èi tho¹i Thiªn v­¬ng nhËp m«n nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/24 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 

Include("\\script\\global\\timerhead.lua")

function main(sel) 
Uworld38 = GetByte(GetTask(38),1) 
if (Uworld38 == 20) then -- script viet hoa By http://tranhba.com  Thiªn v­¬ng gióp nhËp m«n nhiÖm vô 
Talk(4, "","Nhµ ch¬i # l·o b¶n , ng­¬i n¬i nµy r­îu g× tèt nhÊt ? ","Qu¸n r­îu l·o b¶n # bæn ®Şa tèt nhÊt r­îu kh«ng ph¶i lµ <color=Red>“ oµnh lai xu©n ”<color> m¹c chóc , ch¼ng qua lµ cÊt t¹o lo¹i nµy r­îu rÊt phİ c«ng phu , h¬n n÷a nguyªn liÖu còng rÊt khã t×m , cho nªn gi¸ tiÒn kh«ng tiÖn nghi . ","Nhµ ch¬i # chØ cÇn r­îu h¶o lµ ®­îc , ta muèn mua mét vß , ph¶i nhiÒu thiÓu b¹c ? ","Qu¸n r­îu l·o b¶n # b¹c nhiÒu h¬n n÷a còng v« İch , bæn ®iÕm ®· rÊt l©u kh«ng cã cÊt t¹o lo¹i nµy r­îu , bëi v× thiÕu hôt nguyªn liÖu <color=Red> linh chi <color>#<color=Red> huyÒn tè <color> cïng <color=Red> hµ thñ « <color> . nÕu nh­ ng­¬i cã thÓ lÊy ®­îc c¸i nµy ba lo¹i nguyªn liÖu , ta ®· gióp ng­¬i chÕ riªng cho mét vß . nghe nãi c¸i nµy ba lo¹i d­îc liÖu sinh tr­ëng ë <color=Red> vò l¨ng s¬n ®İch ®«ng b¾c bé <color> , chØ bÊt qu¸ n¬i ®ã cã rÊt nhiÒu ¨n thŞt ng­êi ®İch qu¸i thó , cho nªn kh«ng ai d¸m ®i chŞu chÕt . ") 
SetTask(38,SetByte(GetTask(38),1,40)) 
AddNote("Cïng ba l¨ng huyÒn töu qu¸n l·o b¶n ®èi tho¹i , biÕt muèn t×m 3 lo¹i nguyªn liÖu ch­ng cÊt r­îu # linh chi , huyÒn tè , hµ thñ « .") 
Msg2Player("BiÕt muèn t×m 3 lo¹i nguyªn liÖu ch­ng cÊt r­îu # linh chi , huyÒn tè , hµ thñ « . ") 
elseif (Uworld38 == 40) then 
if (HaveItem(116) == 1) and (HaveItem(135) == 1) and (HaveItem(144) == 1) then 
if (GetTimerId() > 0) then -- script viet hoa By http://tranhba.com  kh¸c cã tİnh giê khİ ë vËn hµnh trung 
Talk(1,"","Trªn ng­êi ng­¬i cã khÈn cÊp ®İch nhiÖm vô , cßn ph¶i ch¹y lo¹n ") 
return 
end 
Talk(2,""," l·o b¶n ! chóng ta ®· t×m ®ñ 3 lo¹i nguyªn liÖu , ng­¬i gióp ta cÊt oµnh lai xu©n ®i !","Tèt , nh­ng lµ muèn 1 canh giê míi cã thÓ . ") 
DelItem(116) 
DelItem(135) 
DelItem(144) 
SetTask(38,SetByte(GetTask(38),1,60)) 
SetTimer(1 * CTime * FramePerSec, 1) -- script viet hoa By http://tranhba.com  më ra tİnh giê khİ 
AddNote("Trë l¹i ba l¨ng huyÒn töu qu¸n , mang theo nguyªn liÖu , biÕt ph¶i ®îi mét giê . ") 
Msg2Player("Mang theo nguyªn liÖu , biÕt ph¶i ®îi mét giê . ") 
else 
Talk(1,"","Nghe nãi c¸i nµy ba lo¹i d­îc liÖu sinh tr­ëng ë <color=Red> vò l¨ng s¬n ®İch ®«ng b¾c bé <color> , chØ bÊt qu¸ n¬i ®ã cã rÊt nhiÒu ¨n thŞt ng­êi ®İch qu¸i thó , cho nªn kh«ng ai d¸m ®i chŞu chÕt . ") 
end 
elseif (Uworld38 == 60) then -- script viet hoa By http://tranhba.com  v× tİnh giê khİ cho lçi gia nhËp thñ ®éng cùc kú lóc xö lı 
i = GetRestSec(1) 
if (i > 0) then 
Talk(1,"","Thêi gian cßn ch­a tíi , r­îu cßn kh«ng cã cÊt h¶o , ng­¬i cßn ph¶i chê : "..i.." gi©y , ") 
else 
StopTimer() -- script viet hoa By http://tranhba.com  kÕt thóc tİnh giê 
SetTask(38,SetByte(GetTask(38),1,80)) 
TWenroll_getitem() 
end 
elseif (Uworld38 == 80) and (HaveItem(90) == 0) then 
TWenroll_getitem() 
elseif (Uworld38 >= 80) then -- script viet hoa By http://tranhba.com  hoµn thµnh nµy nhiÖm vô sau 
Talk(1,"","Bæn ®iÕm oµnh lai xu©n kh«ng ph¶i lµ ®å cã h­ danh ®İch ") 
else 
Talk(1,"","Qu¸n r­îu l·o b¶n # chóng ta n¬i nµy lµ næi tiÕng ®İch c¸ th­íc chi h­¬ng , s«ng sinh phong phó , kh¸ch quan muèn ¨n chót g× tiªn hµng ? uèng chót g× kh«ng r­îu ? ") 
end 
end; 

function TWenroll_getitem() 
AddEventItem(90) 
Msg2Player("B¾t ®­îc mét bÇu oµnh lai xu©n . ") 
-- script viet hoa By http://tranhba.com  SetTask(3, 8) 
AddNote("Mét giê sau , trë l¹i töu qu¸n cÇm oµnh lai xu©n . ") 
end 
