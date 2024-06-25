-- script viet hoa By http://tranhba.com description: §­êng m«n tróc h¶i cöa thø hai ®Þch nh©n 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/10 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function OnDeath() 
Uworld37 = GetByte(GetTask(37),1) 
UTask_tmtmp = GetTaskTemp(48) 
if (Uworld37 == 20) and (random(0,99) < 50) then -- script viet hoa By http://tranhba.com  mang nhiÖm vô lóc , 50% ky tû sè xuÊt hiÖn h¹ mét c©u khÈu quyÕt # céng n¨m c©u # 
if (UTask_tmtmp == 0) then 
Talk(1,"","2 4 v× vai ") 
Msg2Player(" lÊy ®­îc khÈu quyÕt “ hai bèn v× vai ") 
SetTaskTemp(48,1) 
elseif (UTask_tmtmp == 1) then 
Talk(1,"","68 v× ch©n ") 
Msg2Player(" lÊy ®­îc khÈu quyÕt “ s¸u t¸m v× ch©n ") 
SetTaskTemp(48,2) 
elseif (UTask_tmtmp == 2) then 
Talk(1,"","Bªn tr¸i ba bªn ph¶i b¶y ") 
Msg2Player(" lÊy ®­îc khÈu quyÕt “ bªn tr¸i ba bªn ph¶i b¶y ") 
SetTaskTemp(48,3) 
elseif (UTask_tmtmp == 3) then 
Talk(1,"","§¸i chÝn lý mét ") 
Msg2Player(" lÊy ®­îc khÈu quyÕt “ ®¸i chÝn lý mét ") 
SetTaskTemp(48,4) 
elseif (UTask_tmtmp == 4) then 
Talk(1,"","N¨m ë trung ­¬ng ") 
Msg2Player(" lÊy ®­îc khÈu quyÕt “ n¨m ë trung ­¬ng ") 
SetTaskTemp(48,5) 
else 
if (random(1,99) < 40) then -- script viet hoa By http://tranhba.com  ®Çy ®ñ biÓu hiÖn mét lÇn khÈu quyÕt , sau ®ã liÒn phôc vÞ t¹m thêi thay ®æi l­îng # nh×n l¹i muèn lÇn n÷a ®· tíi # 
SetTaskTemp(48,0) 
Msg2Player("Hoµn chØnh khÈu quyÕt v× # hai bèn v× vai , s¸u t¸m v× ch©n , bªn tr¸i ba bªn ph¶i b¶y , ®¸i chÝn lý mét , n¨m ë trung ­¬ng ") 
end 
end 
end 
end 
