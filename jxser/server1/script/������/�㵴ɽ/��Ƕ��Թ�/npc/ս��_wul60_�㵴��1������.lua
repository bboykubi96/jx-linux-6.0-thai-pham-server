-- script viet hoa By http://tranhba.com  Nh¹n §·ng s¬n dª gi¸c ®éng mª cung chiÕn ®Êu NPC 1 §¹i ®Ö tö # n¨m ®éc xuÊt s­ nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 

function OnDeath() 
UTask_wu = GetTask(10) 
	if ((UTask_wu == 60*256+10) and (HaveItem(222) == 0)) then		-- script viet hoa By http://tranhba.com  ÔÚÈÎÎñÖĞ£¬ÉĞÎ´µÃµ½ÈÎÎñÎïÆ·
		i = GetTaskTemp(48) + random(0,2)			-- script viet hoa By http://tranhba.com  ¼ÆÊıÆ÷Ëæ»ú¼Ó0µ½2£¬¼Óµ½5¼´¿É´ò´óBOSS
if (i >= 5) then 
			SetTask(10,60*256+20)
SetTaskTemp(48,0) 
AddNote("Nh¹n ®·ng ph¸i ch­ëng m«n ®· xuÊt hiÖn ") 
Msg2Player("Ng­¬i giÕt v« sè ng­êi sau , nh¹n ®·ng ph¸i ch­ëng m«n cuèi cïng xuÊt hiÖn ") 
else 
SetTaskTemp(48,i) 
Msg2Player("Ng­¬i giÕt mét tªn nh¹n ®·ng ph¸i ®İch ®Ö tö ") 
end 
end 
end; 
