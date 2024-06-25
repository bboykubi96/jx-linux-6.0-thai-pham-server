-- script viet hoa By http://tranhba.com  t©y b¾c nam khu ph­îng t­êng phñ ng­êi ®i ®­êng 6 Th¸i ®¹i thóc ®èi tho¹i ## quyÒn nghiªng thiªn h¹ nhiÖm vô # 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2004-05-24) 

function main(sel) 
Uworld75 = GetTask(75) 
U75_sub3 = GetTask(54) 
if (Uworld75 == 10) and (U75_sub3 < 10) then -- script viet hoa By http://tranhba.com  nhiÖm vô trung , nhËn lÊy tö nhiÖm vô 
if (HaveItem(384) == 1) then 
SetTask(54,10) 
AddNote("§Õn ThiÕu L©m ®Ých méc nh©n h¹ng trî gióp Th¸i ®¹i thóc t×m kim liªn hoa . ") 
Msg2Player("§Õn ThiÕu L©m ®Ých méc nh©n h¹ng trî gióp Th¸i ®¹i thóc t×m kim liªn hoa . ") 
Talk(1,"","TiÕc nuèi lµ ta c¶ ®êi nghiªn cøu häc tËp nh­ng lµ còng kh«ng cã hµi tö . nghe nãi ë ThiÕu L©m ®Ých méc nh©n h¹ng cã kim liªn hoa , cã thÓ gióp ta cã hµi tö ") 
else 
Talk(1,"","B©y giê ngay c¶ c¸i bãng ®Òu kh«ng thÊy , ch¼ng qua lµ truyÒn vµo ng­¬i lç tai lêi cña lµm sao cã thÓ tin/th¬ ®©y ? ") 
end 
elseif (Uworld75 == 10) and (U75_sub3 == 10) then -- script viet hoa By http://tranhba.com  tö nhiÖm vô hoµn thµnh ph¸n ®o¸n 
if (HaveItem(26) == 1) then 
DelItem(26) 
SetTask(54,20) 
AddNote("T×m ®­îc kim liªn hoa , hoµn thµnh nhiÖm vô . ") 
Msg2Player("T×m ®­îc kim liªn hoa , hoµn thµnh nhiÖm vô . ") 
Talk(1,"","Ha ha # ®©y chÝnh lµ trong truyÒn thuyÕt ®Ých ngäc béi ®i ? h¶o tiÓu tö , c¸m ¬n ng­¬i .") 
else 
Talk(1,"","Cßn kh«ng cã t×m ®­îc kim liªn hoa sao ? ") 
end 
else 
i = random(0,1) 
if (i == 0) then 
Talk(1,"","Th¸i ®¹i thóc # bän ta l·o Th¸i nhµ mÊy ®êi ®an truyÖn , nh­ng ta ®©y ®Õn b©y giê cßn kh«ng cã c¸ nam tÓ , ng­êi ®èi víi ®­îc liÖt tæ liÖt t«ng ? ") 
else 
Talk(1,"","Th¸i ®¹i thóc # bÊt hiÕu cã ba , v« sau v× ®¹i nha #") 
end 
end 
end; 
