-- script viet hoa By http://tranhba.com description: §­êng m«n b×nh th­êng ®Ö tö tróc h¶i ba quan xuÊt khÈu 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/10 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

Include("\\script\\global\\repute_head.lua")
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main() 
if allbrother_0801_CheckIsDialog(11) == 1 then 
allbrother_0801_FindNpcTaskDialog(11) 
return 0; 
end 
UTask_tm = GetTask(2); 
Uworld37 = GetByte(GetTask(37),1) 
if (Uworld37 == 80) then -- script viet hoa By http://tranhba.com  nhËp m«n nhiÖm vô 
if (HaveItem(33) == 1) and (HaveItem(34) == 1) and (HaveItem(35) == 1) then 
Uworld37_prise() 
else 
Talk(1,"","Ng­¬i ph¶i lÊy ®­îc thanh b¹ch tö ba chu«i tróc tr­îng míi ®­îc !") 
end 
elseif (Uworld37 < 80) then -- script viet hoa By http://tranhba.com  ch­a nhËp m«n 
Talk(1,"","NghÜ th«ng suèt qu¸ tróc h¶i ba quan , ph¶i ®Õn thanh b¹ch tö ba chu«i tróc tr­îng .") 
-- script viet hoa By http://tranhba.com  elseif (GetFaction() == "tangmen") then -- script viet hoa By http://tranhba.com  ®· nhËp m«n , ch­a xuÊt s­ 
-- script viet hoa By http://tranhba.com  Talk(1,"","§­êng m«n trang ®inh # mäi ng­êi ®Òu lµ ®ång m«n huynh ®Ö , ng­¬i kh«ng cÇn n÷a x«ng trong nµy ®İch tróc h¶i ba ®ãng #") 
elseif (UTask_tm >= 70*256) and (GetFaction() ~= "tangmen") then -- script viet hoa By http://tranhba.com  ®· xuÊt s­ 
Talk(1,"","Bæn m«n lÊy ¸m khİ cïng bÉy rËp ®éc bé thiªn h¹ , ng­êi giang hå ai còng kh«ng d¸m khinh th­êng liÔu chóng ta # ngµy sau hµnh tÈu giang hå , còng kh«ng nªn ®äa liÔu bæn m«n ®İch uy phong . ") 
else 
Talk(1,"","Tróc h¶i nguy hiÓm , muèn cùc kú cÈn thËn !") 
end 
end; 

function Uworld37_prise() 
Talk(1,"","Ng­¬i ®· thuËn lîi v­ît qua kiÓm tra , trë thµnh bæn m«n ®Ö tö kı danh ! ") 
DelItem(33) 
DelItem(34) 
DelItem(35) 
UTask_world37 = SetByte(GetTask(37),1,127) 
i = ReturnRepute(25,19,4) -- script viet hoa By http://tranhba.com  thiÕu tØnh danh väng , lín nhÊt kh«ng tæn hao g× hao tæn cÊp bËc , mçi cÊp ®Ö gi¶m tû sè 
SetTask(37,UTask_world37) 
AddRepute(i) -- script viet hoa By http://tranhba.com  thªm danh väng 
Msg2Player("§em ba c©y tróc tr­îng mang tíi tróc h¶i ba quan xuÊt khÈu , giao cho §­êng m«n phßng nghŞ s­ , hoµn thµnh nhiÖm vô , trë thµnh §­êng m«n ®Ö tö kı danh , danh väng gia t¨ng "..i.." ®iÓm .") 
AddNote(" ë tróc h¶i ba quan xuÊt khÈu , ®em 3 c©y tróc tr­îng giao cho §­êng m«n tr¸ng ®inh , hoµn thµnh ®Ö tö kı danh nhiÖm vô ") 
end; 
