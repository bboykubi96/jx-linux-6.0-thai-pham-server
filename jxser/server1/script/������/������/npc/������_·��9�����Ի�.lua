-- script viet hoa By http://tranhba.com  hai hå khu ba l¨ng huyÒn ng­êi ®i ®­êng 9 a ph­¬ng ®èi tho¹i 
-- script viet hoa By http://tranhba.com  ba l¨ng huyÒn tay míi nhiÖm vô # a ph­¬ng ®İch g¶ trang 
-- script viet hoa By http://tranhba.com suyu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-09) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-09) söa ®æi trang bŞ thuéc tİnh sinh thµnh ph­¬ng thøc 

Include("\\script\\global\\itemhead.lua")

function main() 
UTask_world20 = GetTask(48); 
if ((UTask_world20 == 0) and (GetLevel() >= 2)) then -- script viet hoa By http://tranhba.com  nhiÖm vô khëi ®éng 
Say("A ph­¬ng # cha mÑ ®· an bµi cho ta h¶o h«n sù liÔu , nh­ng lµ nhµ chóng ta nghÌo ph¶i ngay c¶ mét gièng d¹ng ®İch g¶ trang còng cÇm kh«ng ra ®­îc , ai , v« luËn nh­ thÕ nµo , mét gièng d¹ng ®İch ®å trang søc ®eo tay tæng ®¾c cã a . gÇn nhÊt huyÖn lı tíi mét nhãm ngo¹i ®Şa th­¬ng nh©n , ng­¬i cã thÓ gióp ta ®i xem mét chót cã hay kh«ng tiÖn nghi ®å trang søc ®eo tay sao ? ", 2,"Gióp mét tay /yes","Kh«ng gióp /no") 
elseif(UTask_world20 == 1) then 
if(HaveItem(181) == 1) then 
DelItem(181) 
SetTask(48, 3) -- script viet hoa By http://tranhba.com  nhiÖm vô t¹m thêi ®æi thµnh kh«ng thÓ t¸i diÔn hoµn thµnh 
Talk(1,"","A ph­¬ng # a # ®©y ®èi víi vßng tai thËt lµ qu¸ ®Ñp , nh­ng còng kh«ng thÓ ®Ó cho ng­¬i b¹ch tiªu tiÒn nha , c¸i nµy ®İnh c¸i mò lµ tù ta lµm , ng­¬i h·y thu ®i . ") 
AddNote("§em vßng tai ®­a cho a ph­¬ng , hoµn thµnh nhiÖm vô ") 
Msg2Player("§em vßng tai ®­a cho a ph­¬ng , hoµn thµnh nhiÖm vô ") 
p1,p2,p3,p4,p5,p6 = RndItemProp(6,10) 
if(GetSex() == 0) then 
AddItem(0, 7, 6, 1, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player(" lÊy ®­îc bè c©n . ") 
else 
AddItem(0, 7, 8, 1, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player(" lÊy ®­îc hoµng bè d©y cét tãc ") 
end 
AddRepute(6) -- script viet hoa By http://tranhba.com  thªm danh väng 6 ®iÓm 
Msg2Player("Ng­¬i giang hå danh väng t¨ng lªn 6 ®iÓm . ") 
else 
Talk(1,"","A ph­¬ng # nh÷ng th­¬ng nh©n kia ®ang ë huyÖn lı , lµm phiÒn ng­¬i gióp ta hái mét chót . ") 
end 
else -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ nhiÖm vô ®èi tho¹i 
if (random(0,1) == 0) then 
Talk(1,"","A ph­¬ng # c¸ d©n ®İch n÷ nhi , cuèi cïng chØ cã thÓ g¶ cho c¸ d©n , lµm mét c¸ d©n ®İch thª tö . ") 
else 
Talk(1,"","A ph­¬ng # cha mÑ ®· an bµi cho ta liÔu h«n sù , mÆc dï ta kh«ng muèn lµm mét c¸ phô , nh­ng lµ còng kh«ng cã biÖn ph¸p , cha mÑ chi mÖnh kh«ng thÓ vi a . ") 
end 
end 
end; 

function yes() 
Talk(1,"","A ph­¬ng # nh÷ng th­¬ng nh©n kia ®ang ë huyÖn lı , lµm phiÒn ng­¬i gióp ta hái mét chót . ") 
SetTask(48, 1) 
Msg2Player("NhËn ®­îc nhiÖm vô # a ph­¬ng thØnh cÇu ng­¬i ®i xem mét chót , cã hay kh«ng tiÖn nghi ®å trang søc ®eo tay cã thÓ sung lµm g¶ trang ") 
AddNote("NhËn ®­îc nhiÖm vô # a ph­¬ng thØnh cÇu ng­¬i ®i xem mét chót , cã hay kh«ng tiÖn nghi ®å trang søc ®eo tay cã thÓ sung lµm g¶ trang ") 
end; 

function no() 
end; 
