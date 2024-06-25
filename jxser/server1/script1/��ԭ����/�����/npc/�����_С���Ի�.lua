-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com description: tay míi th«n _ tiÓu lan 
-- script viet hoa By http://tranhba.com author: wangzg 
-- script viet hoa By http://tranhba.com date: 2003/7/18 
-- script viet hoa By http://tranhba.com Modify:2003/7/21 wangzg 
-- script viet hoa By http://tranhba.com update 2003/7/28 yuanlan 
-- script viet hoa By http://tranhba.com Update: 2003-08-07 Dan_Deng 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-09) söa ®æi trang bŞ thuéc tİnh sinh thµnh ph­¬ng thøc 

Include("\\script\\global\\itemhead.lua")

function main(sel) 
UTask_world38=GetTask(66) 
if ((UTask_world38 == 0) and (GetLevel() >= 6)) then -- script viet hoa By http://tranhba.com  cÇn 6 cÊp trë lªn míi cã thÓ lµm nhiÖm vô 
Talk(3, "select","TiÓu c« n­¬ng thÕ nµo khãc th­¬ng t©m nh­ vËy nha ?","Gia gia bŞ bÖnh , nh­ng lµ trong nhµ kh«ng cã tiÒn mua thuèc .","Muèn mua g× ? ") 
elseif (UTask_world38 == 1) then 
Talk(1,"","C¸m ¬n huynh tr­ëng , tr­íc gia gia thuèc lµ tiÖm thuèc l·o b¶n cÇm .") 
elseif (UTask_world38 == 5) then 
if (HaveItem(186) == 1) then 
DelItem(186) 
Talk(1,"","ThËt lµ c¸m ¬n ng­¬i , ta cã mét chiÕc nhÉn , mêi/xin ng­¬i nhËn lÊy !") 
SetTask(66,10) 
i = random(0,3) 
if (i < 3) then 
i = 8 
else 
i = 9 
end 
AddRepute(i) 
AddNote("§ãng x¹ h­¬ng hæ cèt cho tiÓu lan , hoµn thµnh nhiÖm vô ") 
Msg2Player("§ãng x¹ h­¬ng hæ cèt cho tiÓu lan , hoµn thµnh nhiÖm vô ") 
if (random(0,3) == 0) then -- script viet hoa By http://tranhba.com  25% ®İch ky tû sè ph¶i cÊp hai chiÕc nhÉn 
p1,p2,p3,p4,p5,p6 = RndItemProp(6,15) 
AddItem(0,3,0,2,random(0,4),GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player("§¹t ®­îc chiÕc nhÉn . ") 
else 
p1,p2,p3,p4,p5,p6 = RndItemProp(6,10) 
AddItem(0,3,0,1,random(0,4),GetLucky(), p1,p2,p3,p4,p5,p6) 
Msg2Player("§¹t ®­îc hoµng ngäc chiÕc nhÉn ") 
end 
Msg2Player("Ng­¬i danh väng gia t¨ng "..i.." ®iÓm .") 
else 
Say("Ng­¬i kh«ng cÈn thËn lÊy nĞm x¹ h­¬ng hæ cèt cao liÔu , nÕu nh­ muèn hoµn thµnh nhiÖm vô , cÇn ph¶i cã x¹ h­¬ng hæ cèt cao .", 2,"Ta ®i t×m tiÒn /find","T×m tiÖm thuèc l·o b¶n lµm míi thuèc /redo") 
end 
elseif ((UTask_world38 > 1) and (UTask_world38 < 10)) then -- script viet hoa By http://tranhba.com  nhiÖm vô trung ®İch b×nh th­êng ®èi tho¹i 
Talk(1,"","C¸m ¬n ng­¬i . tr­íc , gia gia thuèc lµ tiÖm thuèc l·o b¶n lµm .") 
elseif (UTask_world38 >= 10) then -- script viet hoa By http://tranhba.com  hoµn thµnh nhiÖm vô sau ®İch ®èi tho¹i 
Talk(1,"","C¸m ¬n ng­¬i , cã thuèc , bÖnh cña gia gia nhÊt ®Şnh sÏ h¶o .") 
else -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ nhiÖm vô ®èi tho¹i 
Talk(1,"","Gia gia sè tuæi ®· cao , th©n thÓ kh«ng tèt . ta chØ hy väng m×nh hiÓu y thuËt cã thÓ gióp h¾n ch÷a bÖnh .") 
end 
end; 

function select() 
Say("Ta còng kh«ng hiÓu lµ c¸i g× thuèc , lµ tr­íc tiÖm thuèc l·o b¶n cho h¾n ®İch .", 2,"Trî gióp lµm thuèc /yes","Cïng ta kh«ng cã quan hÖ /no") 
end; 

function yes() 
Talk(1,"","C¸m ¬n ng­¬i , c¸i nµy lµ tiÖm thuèc l·o b¶n cho lµm thuèc .") 
SetTask(66,1) 
AddNote("TiÕp nhËn vô # gióp tiÓu lan t×m thuèc . ") 
Msg2Player("TiÕp nhËn vô # gióp tiÓu lan t×m thuèc . ") 
end; 

function no() 
end; 

function find() 
end; 

function redo() 
Talk(1,"","§Õn tiÖm thuèc lÊy thuèc !") 
SetTask(66, 2) 
SetTask(67, 0) 
AddNote("<color=red> bëi v× x¹ h­¬ng hæ cèt cao mÊt , xin/mêi ®i t×m tiÖm thuèc l·o b¶n lµm thuèc . <color> ") 
Msg2Player("Bëi v× x¹ h­¬ng hæ cèt cao mÊt , xin/mêi ®i t×m tiÖm thuèc l·o b¶n lµm thuèc . ") 
end; 
