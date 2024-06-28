-- script viet hoa By http://tranhba.com  t©y nam b¾c khu giang t©n th«n ng­êi ®i ®­êng 1 Ng« l·o cha ®èi tho¹i 
-- script viet hoa By http://tranhba.com  giang t©n th«n tay míi nhiÖm vô # Ng« l·o cha ®Ých thuèc 
-- script viet hoa By http://tranhba.com suyu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-11) 

function main(sel) 
UTask_world21 = GetTask(49); 
if ((UTask_world21 == 0) and (GetLevel() >= 3)) then -- script viet hoa By http://tranhba.com  nhiÖm vô khëi ®éng 
Say("Ho khan , ho khan , ta ®©y ho khan chÝnh lµ kh«ng ngõng ®­îc , ai , còng kh«ng biÕt hång mai lóc nµo trë l¹i , lµ thêi ®iÓm nªn ®i d­îc phßng hèt thuèc liÔu , ho khan mét c¸i ho khan ", 2,"Gióp mét tay /yes","Kh«ng gióp mét tay /no") 
elseif (UTask_world21 == 1) then 
if (HaveItem(179) == 1) then -- script viet hoa By http://tranhba.com  ph¸n ®o¸n nhµ ch¬i cã hay kh«ng b¾t ®­îc thuèc 
Talk(1,"","# c¸m ¬n , ®uæi Minh nhi , ta tªn lµ hång mai lµm cho ng­¬i ®«i giµy !") 
DelItem(179) -- script viet hoa By http://tranhba.com  b«i bá nhµ ch¬i trªn ng­êi thuèc 
SetTask(49, 3) 
AddNote("Gióp l·o Ng« cÇm trë vÒ 10 c¸ xuyªn bèi hoµn , ng« hång mai ®­a mét ®«i giµy t¹ ¬n ") 
Msg2Player("Gióp l·o Ng« cÇm trë vÒ 10 c¸ xuyªn bèi hoµn , ng« hång mai ®­a mét ®«i giµy t¹ ¬n ") 
else 
Talk(1,"","Ng­¬i cã thÓ ®i tiÖm thuèc lang trung n¬i ®ã hái mét chót , liÒn tõ n¬i nµy ®i t©y ®i , kh«ng cã mÊy b­íc ®· ®Õn , ho khan mét c¸i …… nhí kü liÔu lµ m­êi viªn xuyªn bèi hoµn , lµm phiÒn ng­¬i !") 
end 
else -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ nhiÖm vô ®èi tho¹i 
Talk(1,"","Ng« l·o cha # ta cïng l·o th¸i bµ ®Ých th©n thÓ còng kh«ng tèt , khuª n÷ v× chiÕu cè chóng ta , ®Õn b©y giê cßn kh«ng cã t×m nhµ chång , chóng ta lµm cha mÑ ®Ých thËt lµ xin lçi nµng nha #") 
end 
end; 

function yes() 
Talk(1,"","Ng« l·o cha # ng­¬i cã thÓ ®i tiÖm thuèc lang trung n¬i ®ã hái mét chót , liÒn tõ n¬i nµy ®i t©y ®i , kh«ng cã mÊy b­íc ®· ®Õn , ho khan mét c¸i …… nhí kü liÔu lµ m­êi viªn xuyªn bèi hoµn , lµm phiÒn ng­¬i . ") 
SetTask(49, 1) 
AddNote("TiÕp nhËn vô , gióp Ng« l·o gia ®i tiÖm thuèc lÊy thuèc ") 
Msg2Player("TiÕp nhËn vô , gióp Ng« l·o gia ®i tiÖm thuèc lÊy thuèc ") 
end; 

function no() 
end; 
