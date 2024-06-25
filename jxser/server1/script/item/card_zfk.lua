-- script viet hoa By http://tranhba.com  Created by tsh 2004-12-09 
-- script viet hoa By http://tranhba.com  chóc phóc t¹p 
-- script viet hoa By http://tranhba.com  ®¹t ®­îc ngÉu nhiªn s¸u tê t¹p 

szTitle="<#> xin/mêi lùa chän chóc phóc ng÷ #" 
Bless= 
{ 
"<#> nÕu cã mét ngµy ng­¬i nghÜ khãc , xin mêi gäi ®iÖn tho¹i cho ta . ta kh«ng thÓ b¶o ®¶m cã thÓ khiÕn cho ng­¬i c­êi , nh­ng ta cã thÓ cïng ng­¬i cïng nhau khãc .", 
"<#> chØ mong giã xu©n ®Çy ng­¬i , ng­êi nhµ quan t©m ng­¬i , t×nh yªu lµm dÞu ng­¬i , may m¾n chi tinh vÜnh viÔn dùa theo ng­¬i .", 
"<#> c¸m ¬n ng­¬i lu«n lµ ë ta mÊt m¸c nhÊt ®Ých thêi ®iÓm xuÊt hiÖn , cã ng­¬i ë ®©y bªn c¹nh ta ta rÊt h¹nh phóc . ", 
"<#> lµ cña ng­¬i xuÊt hiÖn mang cho ta v« h¹n vui vÎ , nguyÖn ng­¬i mçi mét thiªn ®« vui vÎ .", 
} 

ITEM_TASK_TEMP=24 
UNIQUE_USE_TASK_TEMP=20 
-- script viet hoa By http://tranhba.com  b¶o ®¶m mét chóc phóc kh«ng cã ®i ra tr­íc kh«ng thÓ sö dông thø hai . 

ITEM_GENRE=6 
ITEM_DETAIL=1 
ITEM_PARTI=135 

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

Say(szTitle, nSelectCount, FuncBless); 

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
