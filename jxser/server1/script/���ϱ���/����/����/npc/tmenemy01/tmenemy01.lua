-- script viet hoa By http://tranhba.com description: §­êng m«n tróc h¶i cöa thø nhÊt ®Þch nh©n 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/10 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

function OnDeath() 
Uworld37 = GetByte(GetTask(37),1) 
if (Uworld37 >= 20) and (Uworld37 < 127) and (HaveItem(33) == 0) and (random(0,99) < 50) then -- script viet hoa By http://tranhba.com  nhiÖm vô trung , kh«ng cã mµu xanh tróc tr­îng , 50% ky tû sè 
AddEventItem(33) 
Msg2Player(" lÊy ®­îc mµu xanh tróc tr­îng ") 
AddNote(" ë cöa thø nhÊt ®¸nh b¹i m· sau , lÊy ®­îc mµu xanh tróc tr­îng ") 
end 
end; 
