-- script viet hoa By http://tranhba.com  n¨m ®éc ng­êi ®i ®­êng NPC n¨m ®éc ®Ö tö 1 nhËp m«n nhiÖm vô 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 

function main() 
Uworld37 = GetByte(GetTask(37),2) 
if (Uworld37 == 10) then -- script viet hoa By http://tranhba.com  nhËp m«n nhiÖm vô trung 
if ((HaveItem(227) == 1) and (HaveItem(223) == 1) and (HaveItem(225) == 1) and (HaveItem(226) == 1) and (HaveItem(227) == 1)) then 
Talk(1,"","A ! thÕ nµo ®em khæng t­íc vò mao tÆng cho ta . h¼n muèn dÉn ®i ®­a cho trong ®éng ®İch s­ huynh míi ®óng . ") 
else 
Talk(1,""," luyÖn c«ng thêi gian kh«ng ®ñ , ng­¬i t¹i sao l¹i ®Õn n¬i nµy ? xem ng­¬i nh­ vËy uÓ o¶i kh«ng chÊn ®İch d¸ng vÎ lµm sao cã thÓ trë thµnh ®Ö tö bæn m«n ®©y ? c¶ ngµy h·y n»m m¬ ®i . ") 
end 
elseif (Uworld37 == 0) and (GetLevel() >= 10) and (GetFaction ~= "wudu") then -- script viet hoa By http://tranhba.com  nhËp m«n nhiÖm vô 
Say("NÕu muèn trë thµnh ®Ö tö bæn m«n , ph¶i ®­îc qu¸ n¨m ®éc ®éng ®İch thö luyÖn . ng­¬i nghÜ thö mét chót sao ? ",2," lµ # ta muèn thö nh×n mét chót ! /enroll_get_yes","Kh«ng , ta ch¼ng qua lµ tíi xem mét chót . /no") 
else -- script viet hoa By http://tranhba.com  th­êng quy ®èi tho¹i 
Talk(1,"","Kh«ng nªn ch¹y lo¹n . bŞ trong ®éng ®İch trïng yªu ®Õn liÒn v« thuèc nh­ng y liÔu . ") 
end 
end; 

function enroll_get_yes() 
Uworld37 = SetByte(GetTask(37),2,10) 
SetTask(37,Uworld37) 
AddNote("NhËn ®­îc n¨m ®éc ®éng ®İch nhiÖm vô luyÖn c«ng , ®i tíi trong ®éng , ng­¬i sÏ thÊy 5 cïng d¸ng dÊp khæng t­íc mao . ") 
Msg2Player("NhËn ®­îc n¨m ®éc ®éng ®İch nhiÖm vô luyÖn c«ng , ®i tíi trong ®éng , ng­¬i sÏ thÊy 5 cïng d¸ng dÊp khæng t­íc mao . ") 
end; 

function no() 
end; 
