-- script viet hoa By http://tranhba.com  ThiÕu L©m ng­êi ®i ®­êng NPC rõng t©m #50 cÊp nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-04) 

function main() 
UTask_sl = GetTask(7) 
	if (UTask_sl == 50*256+10)then		-- script viet hoa By http://tranhba.com  50¼¶ÈÎÎñ½øĞĞÖĞ
Talk(1,"","Ta biÕt mét liªn quan tíi rõng xa s­ huynh ®İch bİ mËt nhá , nÕu nh­ ng­¬i nghÜ biÕt , ®i ngay len lĞn cho ta lÊy con gµ quay tíi , ngµy ngµy ¨n chay , ta thËt sù lµ kh«ng chŞu ®ùng ®­îc liÔu !") 
		SetTask(7,50*256+20)
AddNote("Rõng trong lßng biÕt ®¹o rõng xa ®İch bİ mËt , nh­ng lµ cÇn hèi lé gµ n­íng míi cã thÓ nãi . ") 
Msg2Player("Rõng trong lßng biÕt ®¹o rõng xa ®İch bİ mËt , nh­ng lµ cÇn hèi lé gµ n­íng míi cã thÓ nãi . ") 
	elseif (UTask_sl == 50*256+20) then
if (HaveItem(123) == 1) then 
Talk(1,"","Nga , gµ n­íng ¨n qu¸ ngon liÔu , tíi ®©y , ta cho ng­¬i biÕt bİ mËt # rõng xa s­ huynh tr­íc khi chÕt trªn ®Êt viÕt 3 c¸ sè lµ #4, 5, 3. nh­ng lµ , mçi ng­êi biÕt lµ cã ı g× ") 
Msg2Player("Mang gµ n­íng cho rõng t©m , biÕt # rõng xa trªn ®Êt viÕt xuèng 3 c¸ sè 4, 5, 3. ") 
AddNote("Mang gµ n­íng cho rõng t©m , biÕt # rõng xa trªn ®Êt viÕt xuèng 3 c¸ sè 4, 5, 3. ") 
DelItem(123) 
			SetTask(7,50*256+30)
else 
Talk(1,"","Ta biÕt rõng xa s­ huynh mét bİ mËt nhá , nÕu nh­ muèn biÕt , nhanh ®i mang c¸ gµ n­íng cho ta , mçi ngµy ®Òu ¨n chay , thËt lµ kh«ng chŞu ®ùng ®­îc liÔu !") 
end 
else -- script viet hoa By http://tranhba.com  th­êng quy ®èi tho¹i 
Talk(1,"","Ph­¬ng tr­îng qu¸ hÌn yÕu liÔu , nÕu nh­ tiÕp tôc nh­ vËy , ng­êi Kim ®em khi dÔ ®Õn trªn ®Çu chóng ta .") 
end 
end; 
