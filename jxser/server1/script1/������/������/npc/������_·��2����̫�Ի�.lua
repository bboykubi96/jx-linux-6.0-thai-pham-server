-- script viet hoa By http://tranhba.com  hai hå khu ba l¨ng huyÒn ng­êi ®i ®­êng 2 cæ x­a qu¸ ®óng tho¹i 
-- script viet hoa By http://tranhba.com  ba l¨ng huyÒn tay míi nhiÖm vô # cæ x­a qu¸ ®Ých b¶o bèi 
-- script viet hoa By http://tranhba.com suyu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-09) 

function main(sel) 
UTask_world19 = GetTask(47); 
if ((UTask_world19 == 0) and (GetLevel() >= 6)) then -- script viet hoa By http://tranhba.com  nhiÖm vô khëi ®éng 
Say("Cæ x­a qu¸ # ta tiÓu nhi tö ba ngµy tr­íc ®i ra ngoµi ®¸nh c¸ , ®Õn b©y giê vÉn ch­a vÒ , ta giµ råi , ®i kh«ng ®Æng . ng­¬i gióp ta ®Õn bªn hå ®i xem h¾n mét chót cã ph¶i lµ ®· trë l¹i hay kh«ng ®­îc chø ? ",2,"Gióp mét tay /yes","Kh«ng gióp /no") 
elseif(UTask_world19 == 1) then 
if(HaveItem(182) == 1) then 
Talk(2, "","Cæ x­a qu¸ # ®©y kh«ng ph¶i lµ ta tiÓu nhi tö ®Ých ngäc béi sao , ch¼ng lÏ …… ch¼ng lÏ …… « « « , con trai cña ta cöa bèn ®Ých thËt thª th¶m nha , ®Ó cho ta ®©y c¸ l·o bµ tö sau nöa ®êi sèng thÕ nµo nha ……","Cæ x­a qu¸ # c¸m ¬n ng­¬i gióp mét tay t×m ®­îc khèi ngäc béi nµy , nh×n nã ta c¶m gi¸c ®­îc con trai ®ang ë bªn c¹nh ta …… , tê nµy ch÷ vÏ lµ gia truyÒn b¶o bèi , ta ®©y c¸ l·o th¸i bµ mét ch÷ còng kh«ng biÕt , sÏ ®­a cho ng­¬i ®i . « « « ……") 
DelItem(182) 
AddEventItem(183) 
SetTask(47, 2) 
AddNote("§em ngäc béi ®­a vÒ cho cæ x­a qu¸ . ") 
Msg2Player("§em ngäc béi ®­a vÒ cho cæ x­a qu¸ . ") 
AddRepute(4) -- script viet hoa By http://tranhba.com  thªm danh väng 6 ®iÓm 
Msg2Player("Ng­¬i giang hå danh väng t¨ng lªn 4 ®iÓm ") 
else 
Talk(1,"","Cæ x­a qu¸ # bÕn tµu ®ang ë huyÖn thµnh ®Ých phÝa ®«ng , ®¸nh c¸ ng­êi cña nhµ còng tõ n¬i ®ã lªn bê , ng­¬i thÊy h¾n h·y cïng h¾n nãi mÑ nã ë chç nµy chê h¾n liÖt , ho khan mét c¸i ……") 
end 
else -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ nhiÖm vô ®èi tho¹i 
if (random(0,1) == 0) then 
Talk(1,"","Cæ x­a qu¸ # c¸ d©n khæ a # ta cã hai ®øa con trai ®Òu lµ ë hå th­îng ®¸nh c¸ ®Ých thêi ®iÓm gÆp gì sãng giã chÕt ch×m . ") 
else 
Talk(1,"","Cæ x­a qu¸ # ®¸nh c¸ ng­êi cña nhµ kh«ng cã c¸ ¨n , kh«ng ®¸nh c¸ lêi cña ngay c¶ c¬m còng kh«ng cã ¨n #z") 
end 
end 
end; 

function yes() 
Talk(1,"","Cæ x­a qu¸ # ng­¬i xem ta còng l·o hå ®å , quªn nãi cho ng­¬i biÕt h¾n h×nh d¸ng g× , ho khan mét c¸i …… trªn cæ h¾n mang theo mét khèi ngäc béi , rÊt tèt nhËn ®Ých . ") 
SetTask(47, 1) 
AddNote("NhËn ®­îc nhiÖm vô # cæ x­a qu¸ ®Ých tiÓu nhi tö ®¸nh c¸ ba ngµy kh«ng trë vÒ , gióp nµng ®i huyÖn thµnh bÕn tµu phô cËn t×m mét chót . ") 
Msg2Player("NhËn ®­îc nhiÖm vô # cæ x­a qu¸ ®Ých tiÓu nhi tö ®¸nh c¸ ba ngµy kh«ng trë vÒ , gióp nµng ®i huyÖn thµnh bÕn tµu phô cËn t×m mét chót . ") 
end; 

function no() 
Talk(1,"","Cæ x­a qu¸ # ng­¬i cã chuyÖn lêi cña còng kh«ng lµm phiÒn ng­¬i . ") 
end; 
