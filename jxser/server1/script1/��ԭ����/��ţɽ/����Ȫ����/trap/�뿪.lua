-- script viet hoa By http://tranhba.com  chu v©n tuyÒn chç ë truyÒn tèng ®iÓm rêi ®i .lua 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2004-04-08) 
-- script viet hoa By http://tranhba.com  trë l¹i phôc bß S¬n T©y # thiªn t©m ®éng nhËp khÈu # 

function main() 
if (GetSex() == 0) then 
Talk(1,"","Ng­¬i mau mau xuèng nói , phİa sau vÉn lµ l«i quyÕt ®İch tiÕng m¾ng # tiÓu tö thói , ng­¬i ®õng ch¹y '! ") 
else 
Talk(1,"","Ng­¬i mau mau xuèng nói , phİa sau vÉn lµ l«i quyÕt ®İch tiÕng m¾ng # tiÓu tö thói , ng­¬i ®õng ch¹y '! ") 
end 
i = random(0,99) 
if (i < 33) then 
NewWorld(41, 1951, 2989) 
elseif (i < 67) then 
NewWorld(41, 1685, 3268) 
else 
NewWorld(41, 1788, 3085) 
end 
end 
