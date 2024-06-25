-- script viet hoa By http://tranhba.com  Created by tsh 2004-12-09 
-- script viet hoa By http://tranhba.com  hoa hång t¹p 
-- script viet hoa By http://tranhba.com  ®¹t ®­îc ngÉu nhiªn s¸u tê t¹p 

szTitle="<#> xin/mêi lùa chän chóc phóc ng÷ #" 
Bless= 
{ 
"<#> thËt hy väng phông båi ng­¬i m·i cho ®Õn l·o , ®Ó cho ng­¬i lµm tay ta trong lßng ®Ých b¶o . b¶o bèi , ta sÏ vÜnh viÔn yªu ng­¬i . ", 
-- script viet hoa By http://tranhba.com  "<#> con m¾t cña ng­¬i nh¸y m¾t mét c¸i , ta sÏ chÕt ®i , con m¾t cña ng­¬i n÷a nh¸y m¾t mét c¸i , ta liÒn sèng l¹i , con m¾t cña ng­¬i kh«ng ngõng nh¸y m¾t tíi nh¸y m¾t ®i , v× vËy ta liÒn chÕt ®i sèng l¹i !", 
"<#> gÆp ng­¬i lµ cña ta may m¾n , yªu ng­¬i lµ trêi cao ®Ých an bµi , cïng ng­¬i ®i hÕt c¶ ®êi , ®óng lµ h¹nh phóc cña ta #", 
"<#> c¶m t¹ nguyÖt l·o ®em ta ng­¬i ngay c¶ ë cïng nhau , bëi v× ta biÕt : ng­¬i lµ cña ta thÝch nhÊt mµ ta lµ ng­¬i duy nhÊt #", 
"<#> ta yªu ng­¬i , ta th­¬ng ng­¬i , nh­ng ta kh«ng thÓ c­ng ch×u ng­¬i , b¶o bèi ta sÏ yªu ng­¬i c¶ ®êi . ", 
} 

ITEM_TASK_TEMP=26 
UNIQUE_USE_TASK_TEMP=20 
-- script viet hoa By http://tranhba.com  b¶o ®¶m mét chóc phóc kh«ng cã ®i ra tr­íc kh«ng thÓ sö dông thø hai . 

ITEM_GENRE=6 
ITEM_DETAIL=1 
ITEM_PARTI=138 

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
FuncBless[nSelectCount] = "H# b? /QueryWiseManCancel" 

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
