-- script viet hoa By http://tranhba.com description: thÇn n«ng chiÕc ®Şa biÓu h¾c l¸ hÇu thÕ giíi nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/30 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-16) t¹m thêi che giÊu nhiÖm vô , sau nµy nÆng viÕt 

function OnDeath() 
UTask_world03 = GetTask(15); 
if (1 == 0) and (UTask_world03 == 1) and (GetTaskTemp(13) < 10) then -- script viet hoa By http://tranhba.com  tíi m­êi con sau kh«ng hÒ n÷a ®Õm hÕt 
		UTask_world03 = UTask_world03 + 1	
SetTaskTemp(13, UTask_world03) 
end 
end 
