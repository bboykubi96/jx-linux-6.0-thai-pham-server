-- script viet hoa By http://tranhba.com  t©y nam b¾c khu giang t©n th«n ng­êi ®i ®­êng 3 hæ tö ®èi tho¹i 
-- script viet hoa By http://tranhba.com  giang t©n th«n tay míi nhiÖm vô # hæ tö ®İch ®¹n cung 
-- script viet hoa By http://tranhba.com suyu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-11) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-09) söa ®æi trang bŞ thuéc tİnh sinh thµnh ph­¬ng thøc 

Include("\\script\\global\\itemhead.lua")

function main(sel) 
-- script viet hoa By http://tranhba.com  UTask_world18 = GetTask(46); 
UTask_world45 = GetTask(45) 
if ((UTask_world45 == 0) and (GetLevel() >= 5)) then -- script viet hoa By http://tranhba.com  nhiÖm vô khëi ®éng , cÇn 5 cÊp trë lªn 
if(GetSex() == 0)then 
Say("Hæ tö # §¹i ca ca , thî rÌn ®¹i thóc ®¸p øng ®­a cho ta mét thanh ®¹n cung , kh«ng biÕt lµm xong kh«ng cã , ng­¬i cã thÓ gióp ta ®i hái mét chót h¾n sao ? ", 2 ,"Gióp mét tay /yes","Kh«ng gióp /no") 
else 
Say("Hæ tö # §¹i tû tû , thî rÌn ®¹i thóc ®¸p øng ®­a cho ta mét thanh ®¹n cung , kh«ng biÕt lµm xong kh«ng cã , ng­¬i cã thÓ gióp ta ®i hái mét chót h¾n sao ? ", 2 ,"Gióp mét tay /yes","Kh«ng gióp /no") 
end 
elseif(UTask_world45 == 10) then 
Talk(1,"","Nhanh ®i gióp ta hái mét chót nha , ®¹i thóc lµm xong kh«ng cã nha ?") 
elseif(UTask_world45 == 20) then 
if(HaveItem(176) == 1) then 
Talk(1,"","ThËt tèt qu¸ , thËt tèt qu¸ , mét håi ta ®i ngay t×m ngµy ngµy ®i ra ngoµi ch¬i mµ . c¸i thanh nµy vò khİ lµ ta ë th«n bªn ngoµi t×m ®­îc , ta gi÷ l¹i kh«ng cã g× dïng sÏ ®­a cho ng­¬i ®i !") 
DelItem(176) 
p1,p2,p3,p4,p5,p6 = RndItemProp(6,15) 
AddItem(0,0,random(0,5),2,random(0,4),GetLucky(), p1,p2,p3,p4,p5,p6) -- script viet hoa By http://tranhba.com  mét thanh ngÉu nhiªn cÊp hai vò khİ 
SetTask(45, 100) 
AddRepute(8) 
AddNote("Hoµn thµnh nhiÖm vô , mang ®¹n cung trë vÒ cho hæ tö ") 
Msg2Player("Mang ®¹n cung trë vÒ cho hæ tö ") 
Msg2Player("§¹t ®­îc mét binh khİ ") 
Msg2Player("Ng­¬i danh väng gia t¨ng 8 ®iÓm ") 
else 
Talk(1,"","Chê ®¹i thóc gióp ta lµm xong ®¹n cung , ta muèn ®i th«n bªn ngoµi ®¸nh ®iÓu , bÊt qu¸ còng kh«ng nªn nãi cho ta biÕt mÑ , nµng nhÊt ®Şnh sÏ kh«ng ®Ó cho ta ®i ®İch !") 
end 
else 
if (random(0,1) == 0) then 
Talk(1,"","ThÕ nµo cßn kh«ng tuyÕt r¬i nha ? xuèng tuyÕt ta liÒn cã thÓ ®èng ng­êi tuyÕt # ®¸nh gËy trît tuyÕt , mang nhiÒu kİnh nhi a !") 
else 
Talk(1,"","Ai , kh«ng biÕt thî rÌn ®¹i thóc ®¸p øng ®­a ta ®¹n cung ®¸nh xong ch­a , ®¹i thóc tay cña nghÖ thËt rÊt tèt a , h¾n danh kiÕm thiÕt cöa hµng xa gÇn næi tiÕng , ®¸nh ra tíi vò khİ ®Æc biÖt h¶o ®©y !") 
end 
end 
end; 

function yes() 
Talk(1,"","Thî rÌn ®¹i thóc gi­êng cña ®ang ë cöa th«n , rÊt dÔ dµng t×m ®­îc !") 
SetTask(45, 10) 
AddNote("TiÕp nhËn vô , gióp hæ tö ®i hái thî rÌn lµm xong ®¹n cung liÔu kh«ng cã ") 
Msg2Player("TiÕp nhËn vô , gióp hæ tö ®i hái thî rÌn lµm xong ®¹n cung liÔu kh«ng cã ") 
end; 

function no() 
Talk(1,"","Ta ®i gióp ng­¬i hái mét chót ng­êi kh¸c !") 
end; 
