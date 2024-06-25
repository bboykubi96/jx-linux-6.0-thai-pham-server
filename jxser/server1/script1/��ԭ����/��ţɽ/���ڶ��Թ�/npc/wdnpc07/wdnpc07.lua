-- script viet hoa By http://tranhba.com description: ph¸i Vâ §­¬ng nhuËn mÑ # Vâ §­¬ng 40 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/15 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-17) 
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main() 
if allbrother_0801_CheckIsDialog(13) == 1 then 
allbrother_0801_FindNpcTaskDialog(13) 
return 0; 
end 
UTask_wd = GetTask(5); 
	if (UTask_wd == 40*256+40) and (HaveItem(163) == 1) then		-- script viet hoa By http://tranhba.com  ÒÑ¾­´ò°ÜÀÏ»¢
Talk(2, "L40_step","Ph¸i Vâ §­¬ng ®İch vâ c«ng qu¶ nhiªn bÊt phµm , ta cao thñ ®Ö tö còng bŞ h¾n ®¸nh b¹i , ®¹o mét l·o nhi ?","§¹o mét ch©n nh©n lµ cña ta t«ng s­ , h¾n ®Ó cho ta mang tin/th¬ cho ng­¬i !") 
	elseif (UTask_wd == 40*256+20) then
Talk(1,"","ThÊy kia 5 chØ b¹ch hæ sao ? cã b¶n l·nh tr­íc ®¸nh b¹i bän hä , tíi t×m ta n÷a ! ") 
AddNote(" ë phôc bß gµ nói quan ®éng , t×m nhuËn mÑ , cÇn ®¸nh b¹i n¨m con b¹ch ngäc hæ ") 
Msg2Player(" ë phôc bß gµ nói quan ®éng , t×m nhuËn mÑ , cÇn ®¸nh b¹i n¨m con b¹ch ngäc hæ ") 
	elseif (UTask_wd == 40*256+60) and (HaveItem(164) == 0) then						-- script viet hoa By http://tranhba.com ÒÑ¾­´ò°ÜÎå»¢£¬ÉĞÎ´ÄÃµ½»ØĞÅ
Talk(1,"","Ta th¬ håi ©m ®Æt ë trong ®éng , ng­¬i cã b¶n l·nh liÒn ®i vµo cÇm ®i !") 
	elseif (UTask_wd >= 40*256+60) then						-- script viet hoa By http://tranhba.com ÄÃµ½»ØĞÅºó
Talk(1,"","Nguyªn liÖu h¾n còng biÕt sai lÇm råi , sím mét chót kh«ng ph¶i lµ tèt h¬n !") 
else 
Talk(1,"","Ng­¬i lµ ai ? d¸m vµo ®éng , thËt lµ kh«ng muèn sèng ?") 
end 
end; 

function L40_step() 
Talk(1,"","§¹o mét ch©n nh©n hiÓu d¹y ®Ö tö , tin/th¬ ®©y , ta xem mét chót . nguyªn lai lµ h¾n muèn ta nãi xin lçi , sím biÕt nh­ thÕ , cÇn g× ban ®Çu . ng­¬i lµ ®Ö tö cña h¾n , ta còng kh«ng lµm khã dÔ ng­¬i . ta còng cã mét phong th¬ ®Ó cho ng­¬i mang cho h¾n . tin/th¬ ") 
DelItem(163) 
	SetTask(5, 40*256+60)
AddNote("§¸nh b¹i n¨m con b¹ch hæ sau , míi biÕt tin/th¬ bŞ nhuËn mÑ nÊp trong bªn trong ®éng ") 
Msg2Player("Tin/th¬ bŞ nhuËn mÑ nÊp trong bªn trong ®éng , t×m ®­îc nã giao cho ch­ëng m«n ") 
end; 
