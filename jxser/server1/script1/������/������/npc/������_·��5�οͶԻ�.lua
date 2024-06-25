-- script viet hoa By http://tranhba.com  hai hå khu ba l¨ng huyÒn ng­êi ®i ®­êng 5 du kh¸ch ®èi tho¹i 
-- script viet hoa By http://tranhba.com  ba l¨ng huyÒn tay míi nhiÖm vô # cæ x­a qu¸ ®Ých b¶o bèi 
-- script viet hoa By http://tranhba.com suyu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-10) 

function main(sel) 
UTask_world19 = GetTask(47); 
if (UTask_world19 == 2) then 
if HaveItem(183) == 1 then 
Say("Du kh¸ch # oa a a , ®©y lµ c¸i g× # ng­êi tuæi trÎ trªn tay ng­¬i cÇm ch÷ vÏ cã thÓ hay kh«ng b¸n cho ta nha , gi¸ c¶ h¶o th­¬ng l­îng , ®©y lµ ph¹m v¨n ®ang c«ng ®Ých mÆc b¶o nha #",2,"B¸n /yes","Kh«ng b¸n /no") 
else 
Talk(1,"","Du kh¸ch # ai …… ta khi nµo míi cã thÓ t×m ®­îc ph¹m v¨n ®ang c«ng ®Ých mÆc b¶o ®©y ? ") 
end 
else 
i = random(0,3) 
if (i == 0) then 
Talk(1,"","Du kh¸ch # ®éng nµy ®×nh hå l¹i gäi “ v©n méng tr¹ch ” , b¾c §¹i ®éi tr­ëng giang , nam nhËn t­¬ng # t­ # nguyªn # phong bèn n­íc , ®­îc x­ng “ t¸m tr¨m dÆm §éng ®×nh hå ” . ") 
elseif (i == 1) then 
Talk(1,"","Du kh¸ch # §éng ®×nh hå mªnh m«ng vu håi , s¬n loan ®ét ngét , ®Æc ®iÓm lín nhÊt lµ hå bªn ngoµi cã hå , trong hå cã nói , c¸ phµm ®iÓm mét c¸i , l« l¸ thanh thanh , trêi n­íc mét mµu , ©u lé t­êng bay . xu©n thu bèn lóc chi c¶nh bÊt ®ång , trong mét ngµy biÕn hãa v¹n thiªn . ") 
elseif (i == 2) then 
Talk(1,"","Du kh¸ch # ph¹m v¨n ®ang c«ng tõng ë # Nh¹c D­¬ng lÇu nhí # trung viÕt #“ d­ xem phu ba l¨ng th¾ng tr¹ng , ë §éng §×nh mét hå . hµm nói xa , nuèt Tr­êng giang , h¹o h¹o thang thang , hoµnh v« tËn nhai # h­íng huy tÞch ©m , khÝ t­îng v¹n thiªn ” , c¸i nµy sãng biÕc v¹n kho¶nh ®Ých §éng ®×nh hå thËt kh«ng hæ lµ “ ®Ö nhÊt thiªn h¹ hå ” a #") 
else 
Talk(1,"","Du kh¸ch # ai …… ta khi nµo míi cã thÓ t×m ®­îc ph¹m v¨n ®ang c«ng ®Ých mÆc b¶o ®©y ? ") 
end 
end 
end; 

function yes() 
	i = 100 * (random(0,5)+10)
Talk(2,"","Du kh¸ch # ng­¬i ®¸p øng b¸n cho ta , kh«ng muèn ®æi ý nga # ®Ó cho ta xem mét chót trªn ng­êi ta cßn cã bao nhiªu tiÒn , nhÊt ngò nhÊt thËp m­êi l¨m hai m­¬i ……","Tèt l¾m cho ng­¬i "..i.." l­îng b¹c tèt l¾m . ") 
DelItem(183) 
Earn(i) 
SetTask(47, 3) 
Msg2Player("§em ch÷ vÏ b¸n cho du kh¸ch , lÊy ®­îc "..i.." l­îng b¹c . ") 
AddNote("§em ch÷ vÏ b¸n cho du kh¸ch , lÊy ®­îc "..i.." l­îng b¹c . ") 
end; 

function no() 
Talk(1,"","Du kh¸ch # van cÇu ng­¬i suy nghÜ mét chót n÷a , suy nghÜ thËt kü mét c¸i , ta thËt rÊt muèn bøc ch÷ nµy vÏ . ") 
end; 
