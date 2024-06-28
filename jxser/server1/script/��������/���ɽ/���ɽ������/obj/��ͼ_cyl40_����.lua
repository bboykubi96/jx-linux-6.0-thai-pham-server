-- script viet hoa By http://tranhba.com  §iÓm th­¬ng s¬n ¸c ph¸ch ®éng ng­êi ®i ®­êng NPC c¬ quan # thóy khãi cöa 40 cÊp nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-26) 

function main() 
UTask_cy = GetTask(6) 
	if (UTask_cy == 40*256+20) then
if (HaveItem(197) == 1) and (HaveItem(196) == 1) and (HaveItem(198) == 1) then -- script viet hoa By http://tranhba.com  mang theo 40 cÊp nhiÖm vô h¬n n÷a c¸i ch×a khãa ®Çy ®ñ hÕt 
DelItem(197) 
DelItem(196) 
DelItem(198) 
			SetTask(6,40*256+30)
AddNote("§¸nh b¹i ¸c ph¸ch ®İch trî thñ , cÇm 3 c¸i ch×a khãa më ra 3 c¸ h¾c c¨n phßng , cøu ra bŞ v©y ®İch thiÕu n÷ . ") 
Msg2Player("§¸nh b¹i ¸c ph¸ch ®İch trî thñ , cÇm 3 c¸i ch×a khãa më ra 3 c¸ h¾c c¨n phßng , cøu ra bŞ v©y ®İch thiÕu n÷ . ") 
else 
Msg2Player("Ng­¬i t×m ra kÑt thiÕu n÷ bãng tèi c¨n phßng c¬ quan , nh­ng lµ chØ cÇn 3 c¸i ch×a khãa míi cã thÓ më ra c¸i nµy c¬ quan . ") 
end 
else 
Msg2Player("N¬i nµy cã mét c¬ quan , nh­ng lµ kh«ng hiÓu dïng ®Ó lµm c¸i g× ®İch ") 
end 
end; 
