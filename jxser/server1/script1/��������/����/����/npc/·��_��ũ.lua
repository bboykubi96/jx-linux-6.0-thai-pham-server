-- script viet hoa By http://tranhba.com  §¹i Lı # ng­êi ®i ®­êng # hoa n«ng 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-09-16) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-05-24) quyÒn nghiªng thiªn h¹ nhiÖm vô 

function main(sel) 
Uworld75 = GetTask(75) 
U75_sub2 = GetTask(53) 
if (Uworld75 == 10) and (U75_sub2 < 10) then -- script viet hoa By http://tranhba.com  nhiÖm vô trung , nhËn lÊy tö nhiÖm vô 
if (HaveItem(384) == 1) then 
SetTask(53,10) 
AddNote("QuyÒn nghiªng thiªn h¹ nhiÖm vô # ®i d­îc v­¬ng cèc gióp hoa n«ng h¸i 3 ®ãa cÈm môc tóc . ") 
Msg2Player("QuyÒn nghiªng thiªn h¹ nhiÖm vô # ®i d­îc v­¬ng cèc gióp hoa n«ng h¸i 3 ®ãa cÈm môc tóc . ") 
Talk(1,"","R¬i s­ huynh l¹i tíi kh¶o nghiÖm ng­¬i ? thËt tèt qu¸ , §¹i Lı bèn mïa mïi hoa , cßn thiÕu d­îc v­¬ng cèc ®İch cùc phÈm tö môc tóc , ng­¬i ®i gióp ta h¸i 3 ®ãa trë l¹i ") 
else 
Talk(1,"","Mét phong th¬ còng kh«ng cã , V« b»ng v« cí , b¶o ta lµm sao tin t­ëng ng­¬i ?") 
end 
elseif (Uworld75 == 10) and (U75_sub2 == 10) then -- script viet hoa By http://tranhba.com  tö nhiÖm vô hoµn thµnh ph¸n ®o¸n 
if (GetItemCount(112) >= 3) then 
DelItem(112) 
DelItem(112) 
DelItem(112) 
SetTask(53,20) 
AddNote("QuyÒn nghiªng thiªn h¹ nhiÖm vô # hoµn thµnh h¸i cÈm môc tóc . ") 
Msg2Player("QuyÒn nghiªng thiªn h¹ nhiÖm vô # hoµn thµnh h¸i cÈm môc tóc . ") 
Talk(1,"","ThËt lµ h¶o , thËt lµ nhÊt phÈm , ta sÏ ph¸i ng­êi ®i th«ng b¸o r¬i s­ huynh , nãi ta ®ång ı .") 
else 
Talk(1,"","Cßn kh«ng cã t×m ®­îc a ?") 
end 
else 
i = random(0,99) 
if (i < 25) then 
Talk(1,"","V©n Nam trµ hoa ®Ö nhÊt thiªn h¹ , §¹i Lı trµ hoa V©n Nam thø nhÊt , chóng ta §¹i Lı m¾t ng­êi trung ®İch trµ hoa ®Ö nhÊt thiªn h¹ , mÉu ®¬n còng kh«ng cã thÓ so .") 
elseif (i < 50) then 
Talk(1,"","§¹i Lı gia gia hé hé còng lo¹i trµ hoa , hµng n¨m còng tæ chøc hoa hñy triÓn l·m .") 
elseif (i < 75) then 
Talk(1,"","Toµn §¹i Lı ®Ñp nhÊt ®İch hoa trµ tõ hä §oµn ®İch l·o «ng trång trät , h¾n cuéc sèng ë nhŞ bê biÓn ®İch mét tßa bªn trong c¸i phßng nhá . hoa cña h¾n hµng n¨m còng tham gia triÓn sÏ , còng bŞ chän v× ®Ñp nhÊt ®İch hoa .") 
else 
Talk(1,"","§oµn l·o «ng c¶ ®êi yªu hoa , h¾n chØ b¸n hoa cho cïng h¾n h÷u duyªn ng­êi cña , nh÷ng ng­êi kh¸c cho dï cã nói vµng nói b¹c , h¾n ®Òu kh«ng b¸n .") 
end 
end 
end; 
