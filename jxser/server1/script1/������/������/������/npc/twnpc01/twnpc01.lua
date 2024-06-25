-- script viet hoa By http://tranhba.com description: Thiªn v­¬ng gióp t«n ®¹o dÉn # Thiªn v­¬ng nhËp m«n nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/24 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nhËp m«n ph¸i nhiÖm vô cÊp bËc yªu cÇu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 

Include("\\script\\global\\repute_head.lua")

function main() 
UTask_tw = GetTask(3) 
Uworld38 = GetByte(GetTask(38),1) 
if (Uworld38 == 0) and (GetFaction() ~= "tianwang") and (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com  ®Ö tö kı danh nhiÖm vô khëi ®éng 
Say("Muèn trë thµnh bæn bang ®İch ®Ö tö ch¸nh thøc muèn cïng nhau ®Ó tèng kh¸ng kim , bæn täa dÜ nhiªn v« ®iÒu kiÖn hoan nghªnh , chØ cÇn ng­¬i mang ®Õn mét bÇu r­îu cho chóng huynh ®Ö uèng cïng chung ¨n mõng liÒn cã thÓ nh×n thµnh ng­¬i ®· nhËp m«n ", 2,"TiÕp nhËn nhiÖm vô /Uworld38_get_yes","Tİnh / chän /no") 
elseif (Uworld38 == 80) and (HaveItem(90) == 1) then -- script viet hoa By http://tranhba.com  cã oµnh lai xu©n , nhiÖm vô hoµn thµnh 
Uworld38_prise() 
-- script viet hoa By http://tranhba.com 	elseif (UTask_tw == 5*256+80) then		-- script viet hoa By http://tranhba.com  ÎªÌìÍõÈÎÎñ±äÁ¿±»ÒâÍâ¸Ä±äÈİ´í
-- script viet hoa By http://tranhba.com  if (GetSeries() == 0) and (GetFaction() == "tianwang") then -- script viet hoa By http://tranhba.com  nÕu nh­ lµ Thiªn v­¬ng gióp ng­êi , lµ ®­a v× míi võa vµo gióp , nÕu kh«ng thanh linh 
-- script viet hoa By http://tranhba.com  SetTask(3,10*256) 
-- script viet hoa By http://tranhba.com  else 
-- script viet hoa By http://tranhba.com  SetTask(3,0) 
-- script viet hoa By http://tranhba.com  end 
elseif (Uworld38 >= 20) and (Uworld38 < 127) then -- script viet hoa By http://tranhba.com  nhËp m«n nhiÖm vô tiÕn hµnh trung 
Talk(1,"","Mçi lÇn chØ cÇn nghÜ ®Õn muèn ®em oµnh lai xu©n r­îu cho ®¸m nµy töu quû ta liÒn ®au lßng ") 
elseif (GetFaction() == "tianwang") then -- script viet hoa By http://tranhba.com  ®· nhËp m«n , ch­a xuÊt s­ 
Talk(1,"","H¶o huynh ®Ö # cã r·nh rçi chóng ta cïng uèng mét chĞn !") 
elseif (UTask_tw ==70*256) then -- script viet hoa By http://tranhba.com  bæn m«n xuÊt s­ , kh«ng ph¶i lµ bªn trong m«n ph¸i tr¹ng th¸i 
Talk(2,"","Kh«ng quan hÖ , mçi ng­êi còng uèng ","Ca ca ta ,,, ng­¬i cuèi cïng lµ uèng say cßn lµ lÇn tr­íc ®İch r­îu cßn kh«ng cã tØnh a ? ") 
else 
Talk(1,"","Nghe nãi töu qu¸n ë <color=Red> ba l¨ng huyÒn <color> b¸n trø mét lo¹i gäi <color=Red> oµnh lai xu©n <color>, tr¸i c©y kia thËt lµ r­îu ngon , chØ muèn b©y giê liÒn uèng !") 
end 
end 

function Uworld38_get_yes() 
Talk(1,"","Nghe nãi töu qu¸n ë <color=Red> ba l¨ng huyÒn <color> b¸n trø mét lo¹i gäi <color=Red> oµnh lai xu©n <color>, tr¸i c©y kia thËt lµ r­îu ngon , chØ muèn b©y giê liÒn uèng !") 
Uworld38 = SetByte(GetTask(38),1,20) 
SetTask(38,Uworld38) 
AddNote(" ë phİa nam ®İch n­íc cöa tr¹i miÖng thÊy T«n T­ M¹c <color=red> nhËn ®Ö tö kı danh nhiÖm vô <color>, ®Õn ba l¨ng huyÒn mua oµnh lai xu©n r­îu '. ") 
Msg2Player(" ë phİa nam ®İch n­íc cöa tr¹i miÖng thÊy T«n T­ M¹c nhËn ®Ö tö kı danh nhiÖm vô ®Õn ba l¨ng huyÒn mua oµnh lai xu©n r­îu '. ") 
end; 

function Uworld38_prise() 
Talk(1,"","Oµnh lai xu©n # qu¶ thËt lµ r­îu ngon # míi më ra ®· nghe ®Õn lo¹i nµy mïi th¬m # xem ng­¬i còng lµ cã khİ ph¸ch ng­êi cña , mçi ng­êi còng l­u l¹c giang hå !") 
DelItem(90) 
Uworld38 = SetByte(GetTask(38),1,127) 
SetTask(38,Uworld38) 
i = ReturnRepute(15,19,2) -- script viet hoa By http://tranhba.com  thiÕu tØnh danh väng , lín nhÊt kh«ng tæn hao g× hao tæn cÊp bËc , mçi cÊp ®Ö gi¶m 
AddRepute(i) 
AddNote("Trë l¹i Thiªn v­¬ng ®¶o , mang theo oµnh lai xu©n giao cho t«n ®¹o dÉn hoµn thµnh ®Ö tö kı danh nhiÖm vô ") 
Msg2Player("Trë l¹i Thiªn v­¬ng ®¶o , mang theo oµnh lai xu©n giao cho t«n ®¹o dÉn hoµn thµnh ®Ö tö kı danh nhiÖm vô , ng­¬i danh väng gia t¨ng . "..i.." ®iÓm .") 
end; 

function no() 
end; 
