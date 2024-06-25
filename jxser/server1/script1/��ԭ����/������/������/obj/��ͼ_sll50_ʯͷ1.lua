-- script viet hoa By http://tranhba.com  b¶n ®å vËt phÈm ThiÕu l©m tù sau tïng l©m ®¸ 1 ThiÕu L©m 50 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-04) 

function main() 
UTask_sl = GetTask(7) 
	if (UTask_sl == 50*256+30) and (HaveItem(28) == 0) then		-- script viet hoa By http://tranhba.com ÉÙÁÖ50¼¶ÈÎÎñÖĞ
i = GetTaskTemp(47) 
if (i == 2) then 
Talk(1,"","§¸ tõ tõ bŞ na ®éng , thÊy phİa d­íi gièng nh­ cã quyÓn s¸ch ") 
AddEventItem(28) 
AddNote("B¾t ®­îc DŞch c©n kinh . ") 
Msg2Player("B¾t ®­îc DŞch c©n kinh . ") 
SetTaskTemp(47,0) -- script viet hoa By http://tranhba.com  phôc vŞ t¹m thêi thay ®æi l­îng , v¹n nhÊt trë l¹i ®¸nh ... 
elseif (i == 1) then 
Talk(1,"","Ng­¬i dïng søc ®Èy ®¸ #, gièng nh­ cã chót chuyÓn ®éng ") 
SetTaskTemp(47,2) 
else 
Talk(1,"","Ng­¬i dïng søc ®Èy ®¸ #, nh­ng lµ , nã nh­ cò bÊt ®éng ") 
SetTaskTemp(47,1) 
end 
else 
Talk(1,"","Ng­¬i dïng søc ®Èy ®¸ #, nh­ng lµ , nã nh­ cò bÊt ®éng ") 
end 
end; 
