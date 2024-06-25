-- script viet hoa By http://tranhba.com  ThiÕu L©m ng­êi ®i ®­êng NPC biÕt kh¸ch t¨ng nhËp m«n nhiÖm vô 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-01) 

Include("\\script\\global\\repute_head.lua")

function main() 
UTask_sl = GetTask(7) 
Uworld38 = GetByte(GetTask(38),2) 
if (Uworld38 == 20) and (HaveItem(219) == 1) then -- script viet hoa By http://tranhba.com  nhiÖm vô hoµn thµnh ( chøng minh th­ tin/th¬ ) 
Talk(1,"enroll_prise","Nguyªn lai lµ h¾n tïy th©n tê giÊy , còng ®­îc .") 
elseif (Uworld38 == 0) and (GetLevel() >=10) and (GetFaction() ~= "shaolin") then -- script viet hoa By http://tranhba.com  nhËp m«n nhiÖm vô 
Say("§Ö tö bæn m«n cÇn tháa m·n bèn ®iÒu kiÖn , theo thø tù lµ # anh dòng lín mËt , H¹o Nhiªn Chİnh Khİ , bÒn bØ kh«ng rót ra cïng v« t­ v« ng· . ng­¬i nghÜ lµm bæn ph¸i ®Ö tö kı danh , cÇn ph¶i cã nh÷ng ®iÒu kiÖn nµy , ng­¬i tiÕp nhËn kh¶o nghiÖm sao ?",2,"Tu©n lÖnh !/enroll_get_yes","Kh«ng , ta chØ tíi ch¬i . /enroll_get_no") 
elseif (GetFaction() == "shaolin") then 
Talk(1,"","S­ ®Ö ph¶i b¶o vÖ h¶o vèn tù ®İch trang nghiªm , kh«ng nªn ch¹y lo¹n , lín tiÕng huyªn ån µo .") 
else -- script viet hoa By http://tranhba.com  th­êng quy ®èi tho¹i 
if (GetSex() == 0) then 
Talk(1,"","Thİ chñ kh«ng muèn mang binh khİ ®i vµo ") 
else 
Talk(1,"","N÷ kh¸ch kh«ng thÓ vµo tù bªn trong ") 
end 
end 
end; 

function enroll_get_yes() 
Talk(1, "","Kh¶o nghiÖm , ng­¬i xuèng nói du ngo¹n , tháa m·n 4 c¸ ®iÒu kiÖn trë vÒ n÷a ta chç nµy nãi tiÕp .") 
Uworld38 = SetByte(GetTask(38),2,10) 
SetTask(38,Uworld38) 
AddNote("Chøng minh cho biÕt kh¸ch t¨ng cã c¸c h¹ng phÈm chÊt # xİch ®¶m trung thµnh , H¹o Nhiªn Chİnh Khİ , bÒn bØ kh«ng rót ra cïng v« t­ v« ng· ") 
Msg2Player("Chøng minh cho biÕt kh¸ch t¨ng cã c¸c h¹ng phÈm chÊt # xİch ®¶m trung thµnh , H¹o Nhiªn Chİnh Khİ , bÒn bØ kh«ng rót ra cïng v« t­ v« ng· ") 
end; 

function enroll_get_no() 
end; 

function enroll_prise() 
Talk(1,"","Tho¹t nh×n ng­¬i ®· ®ñ råi c¸i nµy bèn phÈm chÊt , chóc mõng ng­¬i , tõ nay vÒ sau , ng­¬i trë thµnh bæn m«n ®Ö tö kı danh liÔu !") 
DelItem(219) 
i = ReturnRepute(12,29,2) -- script viet hoa By http://tranhba.com  thiÕu tØnh danh väng , lín nhÊt kh«ng tæn hao g× hao tæn cÊp bËc , mçi cÊp ®Ö gi¶m 
AddRepute(i) 
Uworld38 = SetByte(GetTask(38),2,127) 
SetTask(38,Uworld38) 
Msg2Player("Hoµn thµnh ph¸i ThiÕu l©m ®Ö tö kı danh nhiÖm vô , trë thµnh ThiÕu L©m ®Ö tö , danh väng gia t¨ng . "..i.." ®iÓm .") 
AddNote("Hoµn thµnh ph¸i ThiÕu l©m ®Ö tö kı danh nhiÖm vô , trë thµnh ThiÕu L©m ®Ö tö . ") 
end; 
