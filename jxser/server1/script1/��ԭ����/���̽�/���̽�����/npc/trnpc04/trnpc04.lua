-- script viet hoa By http://tranhba.com description: ngµy nhÉn d¹y th»ng bĞ trai 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/18 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

function main() 
UTask_tr = GetTask(4); 
	if (UTask_tr == 20*256+30) then
AddNote(" ë qu¶ng tr­êng phİa ®«ng trong rõng c©y t×m ®­îc th»ng bĞ trai , tr¶ lêi h¾n mª ng÷ ") 
Msg2Player(" ë qu¶ng tr­êng phİa ®«ng trong rõng c©y t×m ®­îc th»ng bĞ trai , tr¶ lêi h¾n mª ng÷ ") 
Talk(3, "L20_Q1","Ng­êi b¹n nhá , ®em nhËt nguyÖt song ®æi phiªn tr¶ l¹i cho míi võa råi c¸i ®ã §¹i ca ca , cã ®­îc hay kh«ng ?","Muèn ta cßn nhËt nguyÖt song ®æi phiªn còng ®­îc , bÊt qu¸ muèn xem ng­¬i cã ph¶i hay kh«ng so míi võa råi c¸i ®ã ngu ngèc th«ng minh mét chót ?"," lÇn nµy vÊn ®Ò cïng nh÷ng kh¸c bÊt ®ång , ng­¬i h·y nghe cho kü ") 
	elseif (UTask_tr == 20*256+40) then 
L20_Q1() 
	elseif (UTask_tr == 20*256+50) then
if (HaveItem(125) == 1) and (HaveItem(126) == 1) then 
Talk(1,"","A , tiÓu Hoµng # tiÓu bôi # c¸c ng­¬i qu¸ kh«ng ngoan , lÇn sau kh«ng cho ch¹y lo¹n liÔu # hai ng­êi nµy r¸ch b¸nh xe còng kh«ng cã thÓ ¨n l¹i kh«ng thÓ xuyªn , trõ ®Ñp m¾t ra mét chót dïng còng kh«ng cã , chØ cã c¸c ng­¬i nh÷ng thø nµy ®øa ngèc míi ®em nã lµm thµnh b¶o bèi , tr¶ l¹i cho ng­¬i ®i .") 
DelItem(125) 
DelItem(126) 
AddEventItem(58) 
Msg2Player("§em tiÓu Hoµng cïng tiÓu bôi tr¶ l¹i cho th»ng bĞ trai , ®æi lÊy nhËt nguyÖt song ®æi phiªn . ") 
			SetTask(4, 20*256+80)
AddNote("§em tiÓu Hoµng cïng tiÓu bôi tr¶ l¹i cho th»ng bĞ trai , ®æi lÊy nhËt nguyÖt song ®æi phiªn . ") 
else -- script viet hoa By http://tranhba.com  ®· tr¶ lêi vÊn ®Ò , ch­a t×m ®­îc tiÓu Hoµng chã cïng tiÓu bôi l­ 
Talk(1,"","NÕu nh­ ng­¬i cã thÓ gióp ta t×m vÒ mÊt ®İch <color=Red> tiÓu Hoµng chã <color> cïng <color=Red> tiÓu bôi l­ <color> , ta liÒn ®em nhËt nguyÖt song ®æi phiªn tr¶ l¹i cho ng­¬i .") 
end 
	elseif (UTask_tr == 20*256+80) and (HaveItem(58) == 0) then
AddEventItem(58) 
Talk(1,"","NhËt nguyÖt song ®æi phiªn cÇm ®i ®i .") 
else -- script viet hoa By http://tranhba.com  thiÕu tØnh ®èi tho¹i 
if (random(0,1) == 0) then 
Talk(1,"","Ta tiÓu Hoµng chã cïng tiÓu bôi l­ võa cã thÓ lµm l¹i trung thµnh , h¬n n÷a cho tíi b©y giê kh«ng nãi nãi nh¶m , trªn ®êi nµy kh«ng cã so bän hä tèt h¬n n÷a/råi !") 
else 
Talk(1,"","Ta cã mét c¸i nhá chã vµng cïng mét con tiÓu bôi l­ , bän hä nh­ng ngoan n÷a/råi , lµ ta tèt nhÊt ®ång b¹n .") 
end 
end 
end; 

function L20_Q1() 
Say("Mét nhµ cã huynh ®Ö ba , trong ®ã chØ cã mét thİch nãi lêi thËt , ®¹i ca nãi nhŞ ca kho¸c l¸c , nhŞ ca nãi tiÓu ®Ö kho¸c l¸c , mµ tiÓu ®Ö sau khi nghe nãi ®¹i ca cïng nhŞ ca còng kho¸c l¸c , ng­¬i biÕt ba ng­êi nµy trung , ®Õn tét cïng ai nãi chİnh lµ lêi thËt sao ?", 3,"§¹i ca /no","NhŞ ca /L20_Q1_true","TiÓu ®Ö /no") 
end; 

function L20_Q1_true() 
Talk(1,"","D¹/õ .... mÆc dï ng­¬i so víi h¾n th«ng minh mét chót , nh­ng lµ trõ phi ng­¬i gióp ta t×m vÒ mÊt ®İch <color=Red> tiÓu Hoµng chã <color> cïng <color=Red> tiÓu bôi l­ <color> , ta míi cã thÓ ®em nhËt nguyÖt song ®æi phiªn tr¶ l¹i cho ng­¬i .") 
	SetTask(4, 20*256+50)
AddNote("Tr¶ lêi chİnh x¸c , th»ng bĞ trai yªu cÇu ng­¬i gióp h¾n t×m tiÓu Hoµng chã cïng tiÓu bôi . ") 
Msg2Player("Tr¶ lêi ®èi víi th»ng bĞ trai ®İch vÊn ®Ò sau , h¾n yªu cÇu ng­¬i gióp h¾n t×m tiÓu Hoµng chã cïng tiÓu bôi . ") 
end; 

function no() 
Talk(1,"","Ng­¬i tùa nh­ ng­êi kia mét d¹ng , ®Òu lµ ng­êi ngu xuÈn ") 
	SetTask(4, 20*256+40)
end; 
