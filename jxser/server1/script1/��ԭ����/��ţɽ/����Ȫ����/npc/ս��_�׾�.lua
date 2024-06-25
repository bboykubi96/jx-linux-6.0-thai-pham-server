-- script viet hoa By http://tranhba.com  Trung Nguyªn nam khu \ phôc bß s¬n \ chu v©n tuyÒn chç ë \ chiÕn ®Êu _ l«i quyÕt .lua 
-- script viet hoa By http://tranhba.com by xiaoyang (2004\4\20) 

function OnDeath() 
Uworld129 = GetTask(129) 
if (Uworld129 == 55) then 
SetTask(129,60) 
Talk(1,"","..... ch­a tõng nhí ng­¬i lîi h¹i nh­ vËy , l«i quyÕt ch¼ng qua lµ ngµy nhÉn d¹y kĞm câi ®İch ®Ö tö , sÏ cã ng­êi b¸o thï cho ta . ng­êi trong vâ l©m ®em bŞ biÕn mÊt ....") 
Msg2Player("§¸nh b¹i l«i quyÕt , cøu ra bŞ th­¬ng chu v©n tuyÒn . ") 
i = random(0,99) 
if (i < 33) then 
NewWorld(41, 1951, 2989) 
elseif (i < 67) then 
NewWorld(41, 1685, 3268) 
else 
NewWorld(41, 1788, 3085) 
end 
end 
end 
