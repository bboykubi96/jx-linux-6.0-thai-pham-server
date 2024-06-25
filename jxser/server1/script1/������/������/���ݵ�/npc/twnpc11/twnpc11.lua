-- script viet hoa By http://tranhba.com description: thanh loa ®¶o bÕn tµu thuyÒn phu 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/28 


function main() 

if (GetFaction() == "tianwang") then -- script viet hoa By http://tranhba.com  nÕu nh­ nhµ ch¬i lµ Thiªn v­¬ng gióp ®Ö tö , ngåi thuyÒn kh«ng thu tiÒn 
Say("Ng­¬i lµ Thiªn v­¬ng gióp ®Ých ®Ö tö ngåi thuyÒn miÔn phÝ ", 2,"T«n lµm !/yes","Kh«ng /no") 
else 
Say("N¬i ®ã hÕt søc nguy hiÓm # nÕu nh­ kh¸ch quan muèn ®i lêi cña muèn thªm mét chót tiÒn !", 2,"Ngåi /yes1","Kh«ng ngåi /no") 
-- script viet hoa By http://tranhba.com  Talk(1,"","Thiªn v­¬ng bang chóng # ng­¬i kh«ng ph¶i lµ bæn bang ®Ö tö , thÕ nµo lÉn vµo ®Õn bæn bang cÊm ®Þa tíi ? #") 
end; 

end; 


function yes() 
NewWorld(59, 1425, 3472) -- script viet hoa By http://tranhba.com  håi thiªn v­¬ng ®¶o 
SetFightState(0) -- script viet hoa By http://tranhba.com  chuyÓn ®æi v× kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu 
end; 


function yes1() 
if (GetCash() >= 500) then -- script viet hoa By http://tranhba.com  tham kh¶o trÞ gi¸ 
Pay(500) 
NewWorld(59, 1425, 3472) -- script viet hoa By http://tranhba.com  håi thiªn v­¬ng ®¶o 
SetFightState(0) -- script viet hoa By http://tranhba.com  chuyÓn ®æi v× kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu 
else 
Say("Kh«ng cã tiÒn h·y mau ®i !", 0) 
end; 
end; 


function no() 
end; 
