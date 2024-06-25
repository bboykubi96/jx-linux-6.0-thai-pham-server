-- script viet hoa By http://tranhba.com description: tay míi th«n _ c¸t gia 
-- script viet hoa By http://tranhba.com author: wangzg 
-- script viet hoa By http://tranhba.com date: 2003/7/21 
-- script viet hoa By http://tranhba.com update 2003/7/24 yuanlan 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-07) 

function main() 
UTask_world42=GetTask(70) 
if (UTask_world42==2) then 
Talk(2, "step1","Ta cã thÓ h­íng ng­¬i m­în s¸ch nh×n sao ?","Hõ , ta xem ng­¬i lµ th«n b¾c ®Ých Lç l·o ®Çu ph¸i tíi ®Ých ®i . ®· sím ®· nãi víi h¾n , muèn m­în s¸ch th× ph¶i cïng ta ®æi , ®Ó cho h¾n dïng # di kiªn chÝ # ®Ó ®æi ta # kª thÇn lôc #.") 
elseif ((UTask_world42==6) and (HaveItem(189) == 1)) then -- script viet hoa By http://tranhba.com  ®æi s¸ch 
Talk(2, "step3","§©y lµ ng­¬i muèn s¸ch .","ThËt tèt qu¸ , ®©y chÝnh lµ h¾n muèn s¸ch .") 
elseif ((UTask_world == 8) and (HaveItem(188) == 0)) then -- script viet hoa By http://tranhba.com  s¸ch mÊt 
Talk(1,"","TiÓu tö , còng biÕt lµ nh­ vËy , lµm g× cÇm s¸ch cña ta bá ch¹y ") 
AddEventItem(188) 
Msg2Player(" lÊy ®­îc kª thÇn lôc ") 
else 
Talk(1,"","TiÓu tö , lµm ng­êi kh«ng nhÊt ®Þnh ph¶i coi träng t×nh c¶m , cã thø nãi ra còng kh«ng cÇn t×nh c¶m !") 
end 
end; 

function step1() 
SetTask(70,4) 
AddNote("T×m ®­îc trÊn nam c¸t nhµ , h¾n muèn Lç gia dïng di kiªn chÝ ®æi kª thÇn lôc . ") 
end; 

function step3() 
DelItem(189) 
AddEventItem(188) 
SetTask(70,8) 
AddNote(" ë c¸t nhµ , dïng di kiªn chÝ ®æi kª thÇn lôc ") 
Msg2Player("Dïng di kiªn chÝ ®æi kª thÇn lôc ") 
end; 
