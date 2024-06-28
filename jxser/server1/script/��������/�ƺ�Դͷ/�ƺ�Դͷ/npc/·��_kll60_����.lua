-- script viet hoa By http://tranhba.com  Hoµng Hµ ngän nguån ng­êi ®i ®­êng NPC l·o gi¶ # C«n L«n ph¸i ra s­ nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-31) 

function main() 
UTask_kl = GetTask(9); 
	if (UTask_kl == 60*256+10) then		-- script viet hoa By http://tranhba.com ³öÊ¦ÈÎÎñÖĞ
Talk(1,"","Ng­êi tuæi trÎ , ng­¬i còng lµ tíi t×m kiÕm n¨m mµu th¹ch sao ? nghe nãi cã dÊu n¨m mµu th¹ch ®İch l­u tiªn ®éng ®· bŞ th­îng cæ ®İch n¨m vŞ thiªn ®Õ dïng ngµy khãa khãa l¹i , ph¶i lÊy ®­îc n¨m mµu th¹ch , ph¶i ®Õn c¸i nµy n¨m ®em ngµy khãa '") 
		SetTask(9,60*256+20)
AddNote("Dùa theo chØ dÉn muèn ®i vµo s¬n ®éng t×m ®­îc 5 c¸i ch×a khãa míi cã thÓ lÊy ®­îc n¨m mµu th¹ch ") 
Msg2Player("Dùa theo chØ dÉn muèn ®i vµo s¬n ®éng t×m ®­îc 5 c¸i ch×a khãa míi cã thÓ lÊy ®­îc n¨m mµu th¹ch ") 
else 
Talk(1,"","Ngò th¶i th¹ch t¸n l¹c nh©n gian ®· ®­a tíi kh«ng biÕt bao nhiªu huyÕt chiÕn liÔu , kh«ng biÕt nã cuèi cïng mang tíi lµ häa hay lµ phóc ") 
end 
end; 
