-- script viet hoa By http://tranhba.com  ngÉu nhiªn b¶o r­¬ng vËt phÈm # ngÉu nhiªn ®¹t ®­îc mét d¹ng vËt phÈm # 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2004-06-01) 

function main(sel) 
p=random(0,99) 
if (p < 5) then 
p = random(238,240) 
AddEventItem(p) -- script viet hoa By http://tranhba.com  thñy tinh 
Msg2Player("Ng­¬i lÊy ®­îc mét viªn thñy tinh #") 
elseif (p < 10) then 
AddEventItem(353) -- script viet hoa By http://tranhba.com  ®á th¾m 
Msg2Player("Ng­¬i lÊy ®­îc mét viªn ®á th¾m b¶o th¹ch #") 
elseif (p < 20) then 
AddItem(6,1,15,1,0,0,0) -- script viet hoa By http://tranhba.com  phi phong 
Msg2Player("Ng­¬i lÊy ®­îc mét mãn phi phong #") 
elseif(p < 40) then 
AddItem(6,1,18,1,0,0,0) -- script viet hoa By http://tranhba.com  t©m t©m t­¬ng Ên 
Msg2Player("Ng­¬i lÊy ®­îc mét con t©m t©m t­¬ng Ên phï #") 
elseif (p < 65) then 
AddItem(6,1,19,1,0,0,0) -- script viet hoa By http://tranhba.com  c¸t t­êng tói 
Msg2Player("Ng­¬i lÊy ®­îc mét hÇu n¨m c¸t t­êng tói #") 
else 
AddItem(6,0,20,1,0,0,0) -- script viet hoa By http://tranhba.com  hoa hång m­a 
Msg2Player("Ng­¬i lÊy ®­îc mét ®ãa hoa hång #") 
end 
return 0 
end 
