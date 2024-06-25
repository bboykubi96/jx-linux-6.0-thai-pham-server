-- script viet hoa By http://tranhba.com description: tay míi th«n _ tiÖm thuèc l·o b¶n 
-- script viet hoa By http://tranhba.com author: wangzg 
-- script viet hoa By http://tranhba.com date: 2003/7/18 
-- script viet hoa By http://tranhba.com modify wangzg 2003/7/21 17:00 
-- script viet hoa By http://tranhba.com update 2003/7/28 yuanlan 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-07) 

Include("\\script\\global\\timerhead.lua")
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")

function main() 
UTask_world38 = GetTask(66) 
if (UTask_world38 == 1) then -- script viet hoa By http://tranhba.com  ®· tiÕp nhËn vô 
Say("TiÓu lan ®İch gia gia lµ kh¸ch quen , h¾n cÇn x¹ h­¬ng hæ cèt cao , 750 hai mét chai , nÕu nh­ cã x¹ h­¬ng cïng hæ cèt , ta ®em miÔn phİ lµm .", 4,"Trùc tiÕp mua /buy","T×m nguyªn liÖu /source","Mua nh÷ng kh¸c thuèc /yes","§Ó cho ta muèn muèn !/no") 
elseif (UTask_world38==2) then 
if (HaveItem(185) == 1) and (HaveItem(142) == 1) then 
if (GetTimerId() > 0) then -- script viet hoa By http://tranhba.com  kh¸c cã tİnh giê khİ ë vËn hµnh trung 
Talk(1,"","Ng­¬i nhiÖm vô khÈn cÊp , cßn ch¹y lo¹n ?") 
return 
end 
SetTimer(0.5 * CTime * FramePerSec, 6) -- script viet hoa By http://tranhba.com  më ra tİnh giê khİ # nöa canh giê * canh giê tr­êng * tr¸nh ®Õm 
Talk(2, "", " l·o b¶n , ta ®· t×m ®­îc hæ cèt cïng x¹ th¬m .","Hai lo¹i thuèc ®Òu cã , nöa giê sau trë l¹i lÊy !") 
SetTask(66,3) 
DelItem(185) 
DelItem(142) 
AddNote("T×m ®ñ nguyªn liÖu sau , chê nöa giê míi cã thÓ lµm xong .") 
Msg2Player("T×m ®ñ nguyªn liÖu sau , chê nöa giê míi cã thÓ lµm xong .") 
else 
Say("NÕu nh­ cã x¹ h­¬ng cïng hæ cèt , ta ®em miÔn phİ lµm .", 3,"Trùc tiÕp b¸n x¹ h­¬ng hæ cèt cao !/buy","Giao dŞch /yes","Kh«ng giao dŞch /no") 
end 
elseif (UTask_world38 == 3) then -- script viet hoa By http://tranhba.com  v× tİnh giê khİ cho lçi gia nhËp thñ ®éng cùc kú lóc xö lı 
i = GetRestSec(6) 
if (i > 0) then 
Say("<#> thêi gian kh«ng ®ñ , thuèc kh«ng lµm xong , ng­¬i ph¶i nhiÒu chê ."..i.."<#> gi©y .", 3,"Ta kh«ng muèn ®îi , trùc tiÕp mua !/buy","Ta muèn giao dŞch /yes","VËy coi nh­ liÔu #/no") 
else 
StopTimer() -- script viet hoa By http://tranhba.com  kÕt thóc tİnh giê 
W66_getitem() 
end 
elseif (UTask_world38 == 4) then -- script viet hoa By http://tranhba.com  tİnh giê khİ ®· ®Õn lóc 
W66_getitem() 
else 
Say("Ng­¬i ®· ¨n råi ngò cèc t¹p l­¬ng , kh«ng nhøc ®Çu míi lµ l¹ , ta chç nµy mÆc dï nhá , nh­ng lµ , kh«ng thiÕu c¸i g× , ng­¬i muèn mua thuèc sao ?", 3,"Giao dŞch /yes","Ta tíi ®ãn míi vµo nhiÖm vô /yboss","Kh«ng giao dŞch /no") 
end 
end; 

function buy() 
if (GetCash() < 750) then 
Talk(1,"","Kh«ng cã tiÒn th× kh«ng thÓ mua thuèc .") 
else 
Pay(750) 
AddEventItem(186) 
Msg2Player("§¹t ®­îc x¹ h­¬ng hæ cèt cao .") 
SetTask(66,5) 
AddNote("Mua ®­îc x¹ h­¬ng hæ cèt cao .") 
Msg2Player("Mua ®­îc x¹ h­¬ng hæ cèt cao .") 
if (GetTimerId() == 6) then -- script viet hoa By http://tranhba.com  ®ang hîp thuèc tİnh giê trung 
StopTimer() 
end 
end 
end 

function source() 
-- script viet hoa By http://tranhba.com  Say("HiÖu Thuèc: nÕu nh­ ng­¬i cã thÓ lÊy ®­îc x¹ h­¬ng cïng hæ cèt hai lo¹i nguyªn liÖu , ta còng cã thÓ miÔn phİ gióp ng­¬i hîp thuèc . ", 0) -- script viet hoa By http://tranhba.com  d­êng nh­ lµ lËp l¹i . 
SetTask(66,2) 
AddNote("CÇn hai lo¹i nguyªn liÖu , x¹ h­¬ng cïng hæ cèt ®Ó lµm thuèc .") 
end 

function W66_getitem() 
AddEventItem(186) 
Msg2Player("§¹t ®­îc x¹ h­¬ng hæ cèt cao .") 
SetTask(66,5) 
-- script viet hoa By http://tranhba.com  StopTimer() 
AddNote("§¹t ®­îc x¹ h­¬ng hæ cèt cao .") 
end 

function yes() 
Sale(91); -- script viet hoa By http://tranhba.com  b¾n ra giao dŞch khu«ng 
end; 

function no() 
end; 
