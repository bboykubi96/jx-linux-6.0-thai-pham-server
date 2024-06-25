-- script viet hoa By http://tranhba.com  Created by tsh 2004-12-09 
-- script viet hoa By http://tranhba.com  n¨m míi t¹p 
-- script viet hoa By http://tranhba.com  ®¹t ®­îc ngÉu nhiªn s¸u tê t¹p 

szTitle="<#> xin/mêi lùa chän chóc phóc ng÷ #" 
Bless= 
{ 
"<#> nguyÖn tõng m·nh tr¾ng no·n xinh ®Ñp b«ng tuyÕt mang theo ta chóc nguyÖn bay ®Õn bªn c¹nh ngµi , chóc ngµi n¨m míi nh­ ý !", 
"<#> h¹ n¨m míi , kh¸nh giai tiÕt , chóc mõng ph¸t tµi # n¨m míi h¶o , mäi sù thuËn , mäi chuyÖn nh­ ý . ", 
"<#> chóc n¨m míi vui vÎ , tiÒn tr×nh tùa nh­ cÈm , c¸t tinh cao chiÕu , tµi vËn hanh th«ng , hîp nhµ sung s­íng . ", 
"<#> ®Ó cho v©n sao ®i lßng trµn ®Çy chóc phóc , ®iÓm chuÕ ng­¬i ngät ngµo méng , nguyÖn ng­¬i cã mét h¹nh phóc vui vÎ ®Ých n¨m míi #", 
"<#> chóc phóc lµ ph©n thËt lßng ý , kh«ng ph¶i lµ thiªn ng«n v¹n ng÷ ®Ých thó téi . chóc phóc ng­¬i n¨m míi vui vÎ . ", 
"<#> lßng trµn ®Çy t×nh yªu hãa thµnh ch©n chÝ ®Ých chóc phóc , chóc ng­¬i n¨m míi vui vÎ !", 
} 

ITEM_TASK_TEMP=23 
UNIQUE_USE_TASK_TEMP=20 
-- script viet hoa By http://tranhba.com  b¶o ®¶m mét chóc phóc kh«ng cã ®i ra tr­íc kh«ng thÓ sö dông thø hai . 

ITEM_GENRE=6 
ITEM_DETAIL=1 
ITEM_PARTI=140 

FuncBless={} 

function main(sel) 
if (GetTaskTemp(UNIQUE_USE_TASK_TEMP) > 0) then 
Msg2Player("Ng­¬i b©y giê ®ang tiÕn hµnh nh÷ng kh¸c chóc phóc , xin hËu thö l¹i . "); 
return 1 
end 
SetTaskTemp(UNIQUE_USE_TASK_TEMP, 1); 

local nSelectCount = getn(Bless); 
for i=1, nSelectCount do 
FuncBless[i] = Bless[i].."/PlayerSelect" 
end 

	nSelectCount = nSelectCount + 1;
FuncBless[nSelectCount] = " hñy bá /QueryWiseManCancel" 

Say(szTitle, getn(Bless), FuncBless); 
SetTaskTemp(ITEM_TASK_TEMP,sel); 
-- script viet hoa By http://tranhba.com  tr­íc kh«ng thñ tiªu nhµ ch¬i ®Ých thÎ , ë thùc tÕ gëi liÔu chóc phóc lóc n÷a san # t¹m thêi ghi chÐp xuèng trang bÞ biªn sè # 
return 1; 

end 

function PlayerSelect(nSelect) 
QueryWiseMan("BlessPlayerOnline", "BlessPlayerOffline", nSelect); 
end 

function BlessPlayerOnline(TargetName, nSelect, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank) 
local ItemIdx 
ItemIdx = GetTaskTemp(ITEM_TASK_TEMP); 
local ItemGenre 
local DetailType 
local ParticularType 
local Level 
local Series 
local Luck 
ItemGenre,DetailType,ParticularType,Level,Series,Luck = GetItemProp(ItemIdx) 
if (ItemIdx > 0 and ItemGenre == ITEM_GENRE and DetailType == ITEM_DETAIL and ParticularType == ITEM_PARTI) then 
if (RemoveItemByIndex(ItemIdx) == 1) then 
local szMsg 
			szMsg = GetName().."<#>¶Ô"..TargetName.."<#>Ëµ£º"..Bless[nSelect + 1]
AddGlobalCountNews(szMsg,1); 
else 
Msg2Player("Kh«ng t×m ®­îc thÎ , xin/mêi thö l¹i mét lÇn . ") 
end 
else 
Msg2Player("ThÎ sö dông thÊt b¹i , xin/mêi thö l¹i mét lÇn . ") 
end 
SetTaskTemp(ITEM_TASK_TEMP,0) 
SetTaskTemp(UNIQUE_USE_TASK_TEMP, 0); 
end 

function BlessPlayerOffline(TargetName, nSelect) 
Msg2Player("Ng­¬i nghÜ chóc phóc ®Ých nhµ ch¬i b©y giê kh«ng cã ë ®©y tuyÕn , xin hËu thö l¹i . "); 
SetTaskTemp(UNIQUE_USE_TASK_TEMP, 0); 
end 

function QueryWiseManCancel() 
SetTaskTemp(ITEM_TASK_TEMP,0); 
SetTaskTemp(UNIQUE_USE_TASK_TEMP, 0); 
end
