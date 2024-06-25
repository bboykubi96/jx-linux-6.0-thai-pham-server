-- script viet hoa By http://tranhba.com  hoa hång mÇm mãng sö dông sau cã thÓ call ra mét hoa hång c©y gi¸ng sinh 
-- script viet hoa By http://tranhba.com renbin 


IncludeLib("SETTING"); -- script viet hoa By http://tranhba.com  t¸i nhËp SETTING ch©n vèn chØ thÞ kho 
Include("\\script\\global\\forbidmap.lua")

function main() 

if ( GetFightState() == 1 ) then 
local w,x,y = GetWorldPos() 
local mapindex = SubWorldID2Idx(w) 
if ( mapindex < 0 ) then 
Msg2Player("Get MapIndex Error.") 
return 1 
end 
if ( CheckAllMaps(w) == 1 ) then 
Msg2Player("N¬i nµy ®Êt nh­ìng kh«ng thÝch hîp båi dôc mÇm mãng , cßn lµ mang nã ®i d· ngo¹i ®i #") 
return 1 
end 
local posx = x*32 
local posy = y*32 
bossid = 608 
bosslvl = 1 
i = random (1,5) - 1 
AddNpc(bossid,bosslvl,mapindex,posx,posy,1,GetName().." ®Ých hoa hång c©y gi¸ng sinh ",1) 
-- script viet hoa By http://tranhba.com 		CallNpc(i,608 + i,10,GetName().."µÄÃµ¹åÊ¥µ®Ê÷",0,1)
Msg2Player("Ng­¬i trång mét gèc c©y hoa hång c©y gi¸ng sinh , nhanh lªn diªu b¶o bèi ®i ") 
return 0 
else 
Msg2Player("C¸m ¬n ng­¬i båi dôc ta , bÊt qu¸ ta chØ cã thÓ ë d· ngo¹i sinh tr­ëng nga , mau dÉn ta ®i cho #") 
return 1 
end 

end
