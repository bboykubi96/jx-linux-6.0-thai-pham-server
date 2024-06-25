-- script viet hoa By http://tranhba.com  tèng kim chiÕn chiÕu s¸ch dïng ®Ó ®em nhµ ch¬i truyÒn tèng ®Õn tèng kim chiÕn ghi danh ®iÓm cÇn thªm h¹n chÕ # tèng kim chiÕn tr­êng bªn trong # bao gåm ®an con b¶n ®å # kh«ng thÓ sö dông 
-- script viet hoa By http://tranhba.com  Liu Kuo 
-- script viet hoa By http://tranhba.com  2004.12.13 
Include("\\script\\battles\\battlehead.lua");
Include("\\script\\battles\\battleinfo.lua");


function main() 
W,X,Y = GetWorldPos(); 

local nSongNumber = 60; -- script viet hoa By http://tranhba.com  tèng ph­¬ng nh©n sè 
local nJinNumber = 70; -- script viet hoa By http://tranhba.com  kim ph­¬ng nh©n sè 
local nMapId = W; 
tbFORBIDDEN_MAP = { 197, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 334, 335, 356, 337, 338,339,387,388,389,390,391,392,393,394,395,396,397,398,399,400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426,427,428,429,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,825,826}; -- script viet hoa By http://tranhba.com  cÊm dïng ®Æc thï b¶n ®å 
tbCD_MAP = {516, 517, 580, 581} -- script viet hoa By http://tranhba.com  giã löa liªn thµnh thñ thµnh b¶n ®å 
for j = 1, getn(tbFORBIDDEN_MAP) do 
if ( nMapId == tbFORBIDDEN_MAP[j] ) then 
Msg2Player(" ë chç nµy ng­¬i kh«ng thÓ sö dông ®¹o nµy cô "); 
return 1; 
end 
end 
for i = 1, getn(tbBATTLEMAP) do 
if ( nMapId == tbBATTLEMAP[i] ) then 
Msg2Player(" ë chç nµy ng­¬i kh«ng thÓ sö dông ®¹o nµy cô "); 
return 1; 
end 
end 
if (nMapId >= 464 and nMapId <= 511) then 
Msg2Player(" ë chç nµy ng­¬i kh«ng thÓ sö dông ®¹o nµy cô "); 
return 1 
end 
-- script viet hoa By http://tranhba.com [DinhHQ] 
-- script viet hoa By http://tranhba.com 20110407: khi x«ng quan 30 , kh«ng thÓ sö dông tèng kim chiÕu s¸ch 
if (nMapId == 957) then 
Msg2Player(" ë chç nµy ng­¬i kh«ng thÓ sö dông ®¹o nµy cô "); 
return 1 
end 
if ( nMapId >= 235 and nMapId <= 318 ) then 
Msg2Player(" ë chç nµy ng­¬i kh«ng thÓ sö dông ®¹o nµy cô "); 
return 1; 
end 
for j = 1, getn(tbCD_MAP) do 
if ( nMapId == tbCD_MAP[j] ) then 
Msg2Player(" ë chç nµy ng­¬i kh«ng thÓ sö dông ®¹o nµy cô "); 
return 1; 
end 
end 
if ( nMapId >= 540 and nMapId <= 583 ) then 
Msg2Player(" ë chç nµy ng­¬i kh«ng thÓ sö dông ®¹o nµy cô "); 
return 1; 
end 
if (nMapId >= 605 and nMapId <= 613) then -- script viet hoa By http://tranhba.com  vâ l©m ®Ö nhÊt bang b¶n ®å 
Msg2Player(" ë chç nµy ng­¬i kh«ng thÓ sö dông ®¹o nµy cô "); 
return 1; 
end 

if (nMapId == 162) then -- script viet hoa By http://tranhba.com  vâ l©m ®Ö nhÊt bang b¶n ®å 
Msg2Player(" ë chç nµy ng­¬i kh«ng thÓ sö dông ®¹o nµy cô "); 
return 1; 
end 

Say ( "<#> <color=red> tèng kim chiÕn chiÕu s¸ch <color><enter><enter><color><enter><enter> nh©n sè chiÕm ­u ph­¬ng tuy ë chiÕn tr­êng cã mét İt ­u thÕ , nh­ng ®¹t ®­îc <enter> ®İch tİch ph©n sÏ İt , ng­¬i muèn ®i ®©u nhÊt ph­¬ng ghi danh ®iÓm ®©y ? ", 
4, "\ tiÕn vµo tèng qu©n ghi danh ®iÓm /ToSong", 
"\ tiÕn vµo kim qu©n ghi danh ®iÓm /ToJin", 
" h­ .... ta lµ ®µo binh /Cancel" ); 
-- script viet hoa By http://tranhba.com  v« İch c¸ch kh«ng muèn söa l¹i , v× c­ trung biÓu hiÖn 
return 1; 

end 

function ToSong() -- script viet hoa By http://tranhba.com  tiÕn vµo tèng ph­¬ng ghi danh ®iÓm 
if ( GetLevel() < 80 ) then 
Talk( 1, "","Tèng kim chiÕn tr­êng b©y giê tµn khèc , ng­¬i cßn ch­a ®Çy 80 cÊp , hay lµ tr­íc lŞch l·m mét phen ®i . " ); 
elseif ( GetLevel() >= 40 and GetLevel() < 80 ) then 
if (DelCommonItem( 6, 1, 155, 1, 0, 0) == 1) then 
NewWorld( 325, 1541, 3178); 
SetFightState(0); 
DisabledUseTownP(0); -- script viet hoa By http://tranhba.com  kh«ng h¹n chÕ kú sö dông trë vÒ thµnh phï 
Msg2Player("Tíi cao cÊp tèng kim chiÕn tr­êng tèng ph­¬ng ghi danh ®iÓm " ); 
end 
elseif ( GetLevel() >= 80 and GetLevel() < 120 ) then 
if (DelCommonItem( 6, 1, 155, 1, 0, 0) == 1) then 
NewWorld( 325, 1541, 3178); 
SetFightState(0); 
DisabledUseTownP(0); -- script viet hoa By http://tranhba.com  kh«ng h¹n chÕ kú sö dông trë vÒ thµnh phï 
Msg2Player("Tíi cao cÊp tèng kim chiÕn tr­êng tèng ph­¬ng ghi danh ®iÓm " ); 
end 
else 
if (DelCommonItem( 6, 1, 155, 1, 0, 0) == 1) then 
NewWorld( 325, 1541, 3178); 
SetFightState(0); 
DisabledUseTownP(0); -- script viet hoa By http://tranhba.com  kh«ng h¹n chÕ kú sö dông trë vÒ thµnh phï 
Msg2Player("Tíi cao cÊp tèng kim chiÕn tr­êng tèng ph­¬ng ghi danh ®iÓm " ); 
end 
end 
end 

function ToJin() -- script viet hoa By http://tranhba.com  tiÕn vµo kim ph­¬ng ghi danh ®iÓm 
if ( GetLevel() < 80 ) then 
Talk( 1, "","Tèng kim chiÕn tr­êng b©y giê tµn khèc , ng­¬i cßn ch­a ®Çy 80 cÊp , hay lµ tr­íc lŞch l·m mét phen ®i . " ); 
elseif ( GetLevel() >= 40 and GetLevel() < 80 ) then 
if (DelCommonItem( 6, 1, 155, 1, 0, 0) == 1) then 
NewWorld( 325, 1570, 3085); 
SetFightState(0); 
DisabledUseTownP(0); -- script viet hoa By http://tranhba.com  kh«ng h¹n chÕ kú sö dông trë vÒ thµnh phï 
Msg2Player("Tíi cao cÊp tèng kim chiÕn tr­êng kim ph­¬ng ghi danh ®iÓm " ); 
end 
elseif ( GetLevel() >= 80 and GetLevel() < 120 ) then 
if (DelCommonItem( 6, 1, 155, 1, 0, 0) == 1) then 
NewWorld( 325, 1570, 3085); 
SetFightState(0); 
DisabledUseTownP(0); -- script viet hoa By http://tranhba.com  kh«ng h¹n chÕ kú sö dông trë vÒ thµnh phï 
Msg2Player("Tíi cao cÊp tèng kim chiÕn tr­êng kim ph­¬ng ghi danh ®iÓm " ); 
end 
else 
if (DelCommonItem( 6, 1, 155, 1, 0, 0) == 1) then 
NewWorld( 325, 1570, 3085); 
SetFightState(0); 
DisabledUseTownP(0); -- script viet hoa By http://tranhba.com  kh«ng h¹n chÕ kú sö dông trë vÒ thµnh phï 
Msg2Player("Tíi cao cÊp tèng kim chiÕn tr­êng kim ph­¬ng ghi danh ®iÓm " ); 
end 
end 
end 


function Cancel() 
end
