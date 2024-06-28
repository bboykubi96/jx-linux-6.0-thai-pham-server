-- script viet hoa By http://tranhba.com  n¨m ®éc ng­êi ®i ®­êng NPC n¨m ®éc ®Ö tö 2 nhËp m«n nhiÖm vô # hoµn thµnh # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 

Include("\\script\\global\\repute_head.lua")

function main() 
Uworld37 = GetByte(GetTask(37),2) 
if (Uworld37 == 10) then -- script viet hoa By http://tranhba.com  nhËp m«n nhiÖm vô hoµn thµnh 
if (HaveItem(227) == 1) and (HaveItem(223) == 1) and (HaveItem(224) == 1) and (HaveItem(225) == 1) and (HaveItem(226) == 1) then 
enroll_prise() 
else 
Talk(1,""," luyÖn c«ng thêi gian kh«ng ®ñ , ng­¬i t¹i sao l¹i tíi ®©y ?") 
end 
else -- script viet hoa By http://tranhba.com  th­êng quy ®èi tho¹i 
Talk(1,"","N¨m ®éc trong ®éng rÊt nguy hiÓm , ng­¬i kh«ng cÇn lo¹n ®i ") 
end 
end; 

function enroll_prise() 
Talk(1,"","N¨m c©y khæng t­íc mao ®· ®ñ råi . thËt tèt qu¸ ! ng­¬i ®· chİnh thøc trë thµnh bæn m«n ®Ö tö kı danh ") 
DelItem(227) 
DelItem(223) 
DelItem(224) 
DelItem(225) 
DelItem(226) 
i = ReturnRepute(25,29,5) -- script viet hoa By http://tranhba.com  thiÕu tØnh danh väng , lín nhÊt kh«ng tæn hao g× hao tæn cÊp bËc , mçi cÊp ®Ö gi¶m 
AddRepute(i) 
Uworld37 = SetByte(GetTask(37),2,127) 
SetTask(37,Uworld37) 
AddNote("Hoµn thµnh n¨m ®éc ®éng luyÖn c«ng nhiÖm vô . chİnh thøc trë thµnh <color=red> ®Ö tö kı danh <color> bæn m«n . ") 
Msg2Player("Hoµn thµnh n¨m ®éc ®éng luyÖn c«ng nhiÖm vô , chİnh thøc trë thµnh bæn m«n ®Ö tö kı danh . ") 
end; 
