-- script viet hoa By http://tranhba.com  hai hå khu ba l¨ng huyÒn ng­êi ®i ®­êng 4 tiÓu c¸ ®èi tho¹i 
-- script viet hoa By http://tranhba.com  ba l¨ng huyÒn tay míi nhiÖm vô # tiÓu c¸ ®İch phô th©n 
-- script viet hoa By http://tranhba.com suyu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-09) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-09) söa ®æi trang bŞ thuéc tİnh sinh thµnh ph­¬ng thøc 

Include("\\script\\global\\itemhead.lua")

function main() 
UTask_world18 = GetTask(46); 
if (UTask_world18 == 0) then -- script viet hoa By http://tranhba.com  nhiÖm vô khëi ®éng 
Say("TiÓu c¸ # « « …… cha ta ngµy h«m qua ®¸nh c¸ gÆp gì giã lín m­a , bŞ l©m bÖnh , b©y giê cßn nãng rÇn lªn ®©y . cha ®İch bÖnh cßn ch­a hÕt , l¹i kh«ng thÓ ®¸nh c¸ , chóng ta ¨n c¸i g× a . ng­¬i cã thÓ gióp ta ®i cÇu cÇu xin Ng« thÇn y sao ? Ng« thÇn y lµ mét thËt tèt ng­êi , h¾n nhÊt ®Şnh sÏ gióp chóng ta ®İch . ",2,"Gióp mét tay /yes","Kh«ng gióp /no") 
elseif(UTask_world18 == 1) then -- script viet hoa By http://tranhba.com  nhiÖm vô hoµn thµnh 
if(HaveItem(180) == 1) then 
Talk(1,"","TiÓu c¸ # a # ®©y chİnh lµ tú ba hoµn ? gi¸ h¹ tö phô th©n ®İch bÖnh rÊt nhanh sÏ kh¸ h¬n . ng­¬i thËt lµ mét thËt tèt ng­êi , c¸i nµy ®«i giµy lµ mÑ ta lµm , ng­¬i nhÊt ®Şnh ph¶i nhËn lÊy nha . ") 
DelItem(180) 
SetTask(46, 2) 
AddNote("§em tú ba hoµn giao cho tiÓu c¸ , hoµn thµnh nhiÖm vô . ") 
Msg2Player("§em tú ba hoµn giao cho tiÓu c¸ , hoµn thµnh nhiÖm vô . ") 
p1,p2,p3,p4,p5,p6 = RndItemProp(6,10) 
if(GetSex() == 0) then 
AddItem(0, 5, 0, 1, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player(" lÊy ®­îc giµy cá . ") 
else 
AddItem(0, 5, 2, 1, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player(" lÊy ®­îc tó giµy . ") 
end 
AddRepute(5) -- script viet hoa By http://tranhba.com  thªm danh väng 6 ®iÓm 
Msg2Player("Ng­¬i giang hå danh väng t¨ng lªn 5 ®iÓm ") 
else 
SetTask(46, 1) 
Talk(1,"","TiÓu c¸ # cßn kh«ng cã t×m ®­îc tú ba hoµn sao ? phô th©n ®İch bÖnh nh­ng lµm sao b©y giê nha , « « « ……") 
end 
else -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ nhiÖm vô tr¹ng th¸i 
if (random(0,1) == 0) then 
Talk(1,"","TiÓu c¸ # cha ta cha lµ §éng ®×nh hå ®İch c¸ d©n , mçi ngµy ®Òu ph¶i hå ®i lªn t¸t vâng bé c¸ , nÕu nh­ gÆp ph¶i liÔu qu¸t phong trêi m­a , cã lóc sÏ chõng mÊy ngµy còng kh«ng vÒ nhµ ®­îc ®©y . ") 
else 
Talk(1,"","TiÓu c¸ # cha rÊt ®au ta , nh­ng lµ h¾n l·o nãi nÕu nh­ ta lµ con trai lµ tèt , nh­ vËy ta sÏ cã thÓ gióp h¾n bé c¸ . ") 
end 
end 
end; 

function yes() 
Talk(1,"","Ta nhí tr­íc kia nghe ®¹i phu nãi ph¶i h¬n tú ba hoµn míi cã thÓ ch÷a khái sèt cao , nh­ng lµ chóng ta ng­êi nghÌo n¬i ®ã mua ®­îc a . ") 
SetTask(46, 1) 
Msg2Player("NhËn ®­îc nhiÖm vô # tiÓu c¸ ®İch phô th©n bŞ bÖnh , gióp h¾n ®i mua tú ba hoµn trë l¹i ch÷a bÖnh ") 
AddNote("NhËn ®­îc nhiÖm vô # tiÓu c¸ ®İch phô th©n bŞ bÖnh , gióp h¾n ®i mua tú ba hoµn trë l¹i ch÷a bÖnh ") 
end; 

function no() 
Talk(1,"","TiÓu c¸ # ta ph¶i ë chç nµy tiÕp tôc chê ng­êi h¶o t©m . ") 
end; 
