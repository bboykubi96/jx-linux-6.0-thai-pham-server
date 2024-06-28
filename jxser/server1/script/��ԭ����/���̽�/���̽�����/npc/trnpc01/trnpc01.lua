-- script viet hoa By http://tranhba.com description: ngµy nhÉn d¹y ®Ö tö # vò v­¬ng kiÕm nhiÖm vô # ngµy nhÉn ®Ö tö kı danh nhiÖm vô # 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/17 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nhËp m«n ph¸i nhiÖm vô cÊp bËc yªu cÇu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

Include("\\script\\global\\repute_head.lua")

function main() 
UTask_tr = GetTask(4) 
UTask_gb = GetTask(8) 
UTask_world30 = GetByte(GetTask(30),1) 
if (UTask_world30 == 0) and (GetLevel() >= 10) and (GetFaction() ~= "tianren") then -- script viet hoa By http://tranhba.com  nhiÖm vô khëi ®éng # yªu cÇu 10 cÊp trë lªn # 
-- script viet hoa By http://tranhba.com  DelItem(50) -- script viet hoa By http://tranhba.com  phßng ngõa nÆng tiÕp nhËn vô sau , nhµ ch¬i nhÆt lªn nhiÖm vô ®¹o cô 
Say(" ë <color=Red> Hoa S¬n th­îng <color> cã dÊu mét thanh <color=Red> vò v­¬ng kiÕm <color>, ng­êi nµo b¾t ®­îc thanh kiÕm nÇy ®em cã träng th­ëng !", 2, "# ®i lÊy kiÕm /get_yes","Kh«ng thİch !/get_no") 
elseif ((UTask_world30 == 5) and (HaveItem(50) == 1)) then -- script viet hoa By http://tranhba.com  cã vò v­¬ng kiÕm 
world30_prise() 
elseif ((UTask_world30 > 0) and (UTask_world30 < 10)) then 
Talk(1,"","<color=Red> vò v­¬ng kiÕm <color> # giÊu ë <color=Red> Hoa S¬n <color>, lÇn ®i Hoa S¬n ®­êng x¸ xa x«i , trªn ®­êng hung hiÓm nÆng nÒ ng­¬i ph¶i cÈn thËn !") 
elseif (UTask_world30 == 10) then -- script viet hoa By http://tranhba.com  tr­íc kia hoµn thµnh nhiÖm vô ng­êi chuyÓn ®æi thay ®æi l­îng trŞ gi¸ 
Utask_world30 = SetByte(GetTask(30),1,127) 
SetTask(30,Uworld30) 
if (GetFaction() == "tianren") then 
Talk(1,"","Ng­¬i t×m ®­îc vò v­¬ng kiÕm c«ng lao , bæn gi¸o sÏ nhí , sÏ kh«ng b¹c ®·i ng­¬i !") 
else 
Talk(1,"","Nh×n ë ng­¬i thay bæn gi¸o ®o¹t ®­îc b¶o kiÕm ®İch ph©n th­îng , h·y thu ng­¬i vµo d¹y ") 
end 
elseif (UTask_tr == 70*256) and (GetFaction() ~= "tianren") then -- script viet hoa By http://tranhba.com  ®· xuÊt s­ 
Talk(1,"","Ng­¬i nghÜ ®i nam ph­¬ng sao ? trong chèn vâ l©m nguyªn v« sè cao thñ , suy nghÜ kü cµng liÔu l¹i ®i .") 
else 
Talk(1,"","Ng­¬i biÕt kh«ng ? phong ®­êng ®­êng chİnh lµ ®­¬ng kim ®¹i kim hoµng ®Õ ®İch ThÊt c«ng chóa , kh«ng chØ cã ®Ñp , vâ c«ng cßn rÊt cao .") 
end 
end; 

function get_yes() 
Talk(1,""," lÇn ®i Hoa S¬n ®­êng x¸ xa x«i , trªn ®­êng hung hiÓm nÆng nÒ , ng­¬i cã thÓ ®Õn <color=Red> biÖn kinh <color> ngåi xe ngùa ®i Hoa S¬n phô cËn <color=Red> ph­îng t­êng <color> còng cã thÓ xin/mêi bæn gi¸o ®İch <color=Red> nhËt nguyÖt ®µn chñ « hîp t¸t <color> hé tèng ng­¬i ®i tr­íc .") 
SetTask(30, SetByte(GetTask(30),1,5)) 
AddNote("TiÕp nhËn vô # ®i Hoa S¬n t×m vò v­¬ng kiÕm . ") 
Msg2Player("TiÕp nhËn vô # ®i Hoa S¬n t×m vò v­¬ng kiÕm . ") 
end; 

function get_no() 
Talk(1,""," lóc nµo còng cã ng­êi muèn cÇm vò v­¬ng kiÕm tíi ®¹t ®­îc träng th­ëng .") 
end; 

function world30_prise() 
DelItem(50) 
i = ReturnRepute(15,19,6) -- script viet hoa By http://tranhba.com  thiÕu tØnh danh väng 15 , lín nhÊt kh«ng tæn hao g× hao tæn cÊp bËc 19 cÊp , mçi cÊp ®Ö gi¶m 6% 
Uworld30 = SetByte(GetTask(30),1,127) 
AddRepute(i) 
SetTask(30,Uworld30) 
Earn(500) 
Talk(1,"","Nh×n ë ng­¬i thay bæn gi¸o ®o¹t ®­îc b¶o kiÕm ®İch ph©n th­îng , h·y thu ng­¬i vµo d¹y ") 
AddNote("Trë vÒ ngµy nhÉn d¹y , ®em vò v­¬ng kiÕm mang cho ngµy nhÉn sÜ tö , trë thµnh ®Ö tö , ®¹t ®­îc 500 hai t­ëng th­ëng . ") 
Msg2Player("Trë vÒ ngµy nhÉn d¹y , ®em vò v­¬ng kiÕm mang cho ngµy nhÉn sÜ tö , hoµn thµnh nhiÖm vô . trë thµnh ngµy nhÉn d¹y ®Ö tö , ®¹t ®­îc 500 t­ëng th­ëng , danh väng gia t¨ng . "..i.." ®iÓm .") 
end; 

function enroll_prise() 
SetFaction("tianren") -- script viet hoa By http://tranhba.com  nhµ ch¬i gia nhËp ngµy nhÉn d¹y 
SetCamp(2) 
SetCurCamp(2) 
AddMagic(135) 
SetRank(55) -- script viet hoa By http://tranhba.com  thiÕt trİ danh hiÖu 
SetRevPos(49, 28) -- script viet hoa By http://tranhba.com  thiÕt trİ sèng l¹i ®iÓm 
SetTask(4, 10*256) 
Msg2Player("Hoan nghªnh gia nhËp ngµy nhÉn d¹y , trë thµnh s¸t thñ , häc ®­îc tµn d­¬ng nh­ m¸u . ") 
AddNote("Gia nhËp ngµy nhÉn d¹y , trë thµnh s¸t thñ , häc ®­îc tµn d­¬ng nh­ m¸u . ") 
end; 

function enroll_no() 
end; 
