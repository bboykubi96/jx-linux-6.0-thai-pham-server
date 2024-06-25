-- script viet hoa By http://tranhba.com  t©y nam b¾c khu giang t©n th«n ng­êi ®i ®­êng 5 hæ tö cha ®èi tho¹i 
-- script viet hoa By http://tranhba.com  giang t©n th«n tay míi nhiÖm vô # hæ tö b¸i s­ 
-- script viet hoa By http://tranhba.com suyu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-11) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-09) söa ®æi trang bÞ thuéc tÝnh sinh thµnh ph­¬ng thøc 

Include("\\script\\global\\itemhead.lua")

function main(sel) 
-- script viet hoa By http://tranhba.com  UTask_world20 = GetTask(48); 
UTask_world44 = GetTask(44) 
if (UTask_world44 == 0) then -- script viet hoa By http://tranhba.com  nhiÖm vô khëi ®éng #1 cÊp lµ ®­îc tiÕp nhËn vô ) 
Say("Th«n bªn ngoµi c¸i ®ã vò s­ tho¹t nh×n rÊt cã b¶n l·nh a . nhµ chóng ta hæ tö tõ nhá h¶o vò , nÕu cã thÓ l¹y vÞ kia vò s­ vi s­ lµ tèt . chóng ta nh­ng lµ ng­êi b×nh th­êng nhµ , kh«ng biÕt häc vâ cã ph¶i hay kh«ng rÊt hoa b¹c a , ng­¬i cã thÓ gióp ta ®i hái mét chót vÞ kia vò s­ sao !?", 2,"Trî gióp /yes","Kh«ng gióp /no") 
elseif(UTask_world44 == 10) then 
Talk(1,"","VÞ kia vò s­ ®ang ë th«n phÝa ®«ng ®Ých nhµ l¸ c¹nh .") 
elseif(UTask_world44 == 20) then 
Talk(1,"","C¸i g× , h¾n ®· ®¸p øng ? ai nha , vËy th× thËt lµ thËt tèt qu¸ , c¸i nµy ®Ýnh c¸i mò lµ tù ta lµm , mÆc dï kh«ng ®¸ng gi¸ bao nhiªu tiÒn , trß chuyÖn biÓu t¹ ý ®i !") 
SetTask(44, 100) 
AddRepute(5) 
AddNote("Nãi cho hæ tö cha , ng­êi s­ phô kia ®ång ý thu hæ tö lµm ®å ®Ö liÔu , nhiÖm vô hoµn thµnh ") 
Msg2Player("Nãi cho hæ tö cha , ng­êi s­ phô kia ®ång ý thu hæ tö lµm ®å ®Ö liÔu , nhiÖm vô hoµn thµnh ") 
p1,p2,p3,p4,p5,p6 = RndItemProp(6,10) 
if(GetSex() == 0) then 
AddItem(0,7,6,1,random(0,4),GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player("§¹t ®­îc mét khèi bè c©n ") 
else 
AddItem(0,7,8,1,random(0,4),GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player("§¹t ®­îc mét ng©n xoa ") 
end 
Msg2Player("Ng­¬i danh väng gia t¨ng 5 ®iÓm ") 
else -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ nhiÖm vô ®èi tho¹i 
Talk(1,"","Nhµ ta kia lç c¸i g× còng tèt , chÝnh lµ thÝch cho ng­êi ta lµm mai !") 
end 
end; 

function yes() 
Talk(1,"","VÞ kia vò s­ ®ang ë th«n phÝa ®«ng ®Ých nhµ l¸ c¹nh .") 
SetTask(44, 10) 
AddNote("TiÕp nhËn vô # ®i gióp hæ tö cÇu häc vâ c«ng ") 
Msg2Player("TiÕp nhËn vô # ®i gióp hæ tö cÇu häc vâ c«ng ") 
end; 

function no() 
end; 
