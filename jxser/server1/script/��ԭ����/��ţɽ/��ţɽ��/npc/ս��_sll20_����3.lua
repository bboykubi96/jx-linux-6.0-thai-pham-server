-- script viet hoa By http://tranhba.com  kiÕm c¸c thôc ®¹o chiÕn ®Êu NPC rÊt ng­êi 3 ThiÕu L©m 20 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-01) 
-- script viet hoa By http://tranhba.com  ®¸nh rÊt ng­êi trong qu¸ tr×nh kh«ng thÓ thèi lui ra , nÕu kh«ng muèn lÇn n÷a ®¸nh nhau . 

function OnDeath() 
UTask_sl = GetTask(7); 
	if (UTask_sl >= 20*256+64) and (UTask_sl < 20*256+128) and (GetBit(UTask_sl,3) == 0) then			-- script viet hoa By http://tranhba.com  ÈÎÎñÖĞÇÒÕâÒ»Ö»Î´´ò¹ı
UTask_sl = SetBit(UTask_sl,3,1) 
		if (UTask_sl == 20*256+64+31) then		-- script viet hoa By http://tranhba.com Èç¹û¹»(bin(10000 + 01000 + 00100 + 00010 + 00001))
			SetTask(7,20*256+128)
AddNote("N¨m rÊt ng­êi bŞ ng­¬i d¹y ph¶i t©m phôc khÈu phôc , cam kÕt sau nµy tu t©m d­ìng tİnh , kh«ng cã ë ®©y hå t¸c phi vi liÔu . ") 
Msg2Player("N¨m rÊt ng­êi bŞ ng­¬i d¹y ph¶i t©m phôc khÈu phôc , cam kÕt sau nµy tu t©m d­ìng tİnh , kh«ng cã ë ®©y hå t¸c phi vi liÔu . ") 
else 
Msg2Player("Ng­¬i ®¸nh ®i mét rÊt ng­êi . ") 
SetTask(7,UTask_sl) 
end 
end 
end; 
