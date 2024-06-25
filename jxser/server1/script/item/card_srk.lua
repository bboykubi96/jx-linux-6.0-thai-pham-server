-- script viet hoa By http://tranhba.com  Created by tsh 2004-12-09 
-- script viet hoa By http://tranhba.com  sinh nhËt t¹p 
-- script viet hoa By http://tranhba.com  ®¹t ®­îc ngÉu nhiªn s¸u tê t¹p 

szTitle="<#> xin/mêi lùa chän chóc phóc ng÷ #" 
Bless= 
{ 
"<#> l¹i mét c¸ tèt ®Ñp b¾t ®Çu , nguyÖn ta chóc phóc mang cho ng­¬i thµnh c«ng mét n¨m , sinh nhËt vui vÎ . ", 
"<#> ba sinh nhËt chóc nguyÖn # mét nguyÖn th©n thÓ kháe m¹nh hai nguyÖn h¹nh phóc vui vÎ ba nguyÖn mäi sù nh­ ı . ", 
"<#> h¸i mét m¶nh b«ng tuyÕt chuçi thµnh tr¾ng no·n ®İch c©y treo , v× ng­¬i sinh nhËt d©ng hiÕn mét ®ãa xinh ®Ñp t©m hoa . ", 
"<#> ®­a mét phÇn lÔ vËt biÓu mét khóc tiÕng lßng # hµng n¨m tr­êng míi biÕt hµng th¸ng tiÕn thªm b­íc sinh nhËt vui vÎ . ", 
"<#> nguyÖn tÊt c¶ vui vÎ # h¹nh phóc # may m¾n vÜnh viÔn v©y l­în ë bªn c¹nh ng­¬i , sinh nhËt vui vÎ . ", 
"<#> t­ niÖm trung ta muèn khëi sinh nhËt cña ng­¬i , thËt lßng chóc phóc ng­¬i cã mét vui vÎ ®İch sinh nhËt . ", 
} 

ITEM_TASK_TEMP=27 
UNIQUE_USE_TASK_TEMP=20 
-- script viet hoa By http://tranhba.com  b¶o ®¶m mét chóc phóc kh«ng cã ®i ra tr­íc kh«ng thÓ sö dông thø hai . 

ITEM_GENRE=6 
ITEM_DETAIL=1 
ITEM_PARTI=137 

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
-- script viet hoa By http://tranhba.com  tr­íc kh«ng thñ tiªu nhµ ch¬i ®İch thÎ , ë thùc tÕ gëi liÔu chóc phóc lóc n÷a san # t¹m thêi ghi chĞp xuèng trang bŞ biªn sè # 
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
Msg2Player("Ng­¬i nghÜ chóc phóc ®İch nhµ ch¬i b©y giê kh«ng cã ë ®©y tuyÕn , xin hËu thö l¹i . "); 
SetTaskTemp(UNIQUE_USE_TASK_TEMP, 0); 
end 

function QueryWiseManCancel() 
SetTaskTemp(ITEM_TASK_TEMP,0); 
SetTaskTemp(UNIQUE_USE_TASK_TEMP, 0); 
end
