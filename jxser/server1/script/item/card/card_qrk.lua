-- script viet hoa By http://tranhba.com  Created by tsh 2004-12-09 
-- script viet hoa By http://tranhba.com  hoa hång t¹p 
-- script viet hoa By http://tranhba.com  ®¹t ®­îc ngÉu nhiªn s¸u tê t¹p 

szTitle="<#> xin/mêi lùa chän chóc phóc ng÷ #" 
Message= 
{ 
{"<#> ng­¬i cã hay kh«ng nh­ ta mét d¹ng nhí ng­¬i ","<#> hoa r¬i ®Çy câi lßng thÇm h­¬ng doanh tô , chØ muèn biÕt ng­¬i cã hay kh«ng nh­ ta muèn ng­¬i mét d¹ng ®ang suy nghÜ ta . "}, 
{"<#> ng­¬i lµ cña ta sinh m¹ng ","<#> lµm ta nãi ng­¬i lµ linh hån cña ta cïng sinh m¹ng , kh«ng muèn kinh ng¹c , bëi v× ng­¬i lµ t¸nh m¹ng cña ta . "}, 
{"<#> ®ªm tuyÕt trong ®èt ®Ìn ®İch ng­¬i ","<#> nh×n thÊy ng­¬i lóc , c¶m gi¸c Êm ¸p gièng nh­ ë ®ªm tuyÕt trong chît thÊy lªn ®Ìn ng­¬i chİnh lµ kia ®èt ®Ìn ng­êi cña . "}, 
{"<#> kiÕp nÇy cïng ng­¬i kh«ng khİ kh«ng rêi ","<#> ta ë phËt tr­íc cÇu xin n¨m tr¨m n¨m , nguyÖn cã thÓ kÕt nµy trÇn duyªn , cïng ng­¬i kiÕp nÇy t­¬ng thñ kh«ng khİ kh«ng rêi . "}, 
{"<#> nguyÖn cã thÓ cïng ng­¬i khuynh t©m gÆp nhau ","<#> chí bëi v× cã lÏ sÏ söa ®æi , kh«ng nãi c©u kia xinh ®Ñp lêi thÒ , nguyÖn cã thÓ cïng ng­¬i kho¶nh t©m t­¬ng gÆp . "}, 
{"<#> ta ng­¬i «n nhu t­¬ng ®·i , kh«ng chŞu l­¬ng duyÕn ","<#> bÊt kÓ yªu nhau thêi gian sÏ cã bao l©u , tr«ng ng­¬i ta ®Òu cã thÓ «n nhu t­¬ng ®·i , kh«ng chŞu l­¬ng duyÕn . "}, 
{"<#> lín lªn t­ ","<#> ngµy dµi ®­êng xa hån bay khæ , méng hån kh«ng tíi quan s¬n khã kh¨n , lín lªn t­ , tåi t©m can . "}, 
{"<#> ta tö thanh b¶o kiÕm ","<#> ta tö thanh b¶o kiÕm ph¸t ra ®« ~ ®« ®İch tÇn sè , th× ra lµ ı cña ta ng­êi trong lµ ng­¬i , cßn ch¹y . "}, 
{"<#> ng­¬i ®em lßng cña ta trém ®i ","<#> quû linh tinh qu¸i ®İch ng­¬i , ®em lßng cña ta trém ®i , ®Ó cho ®Çu ãc ta trong ®Òu lµ ng­¬i th©n ¶nh cña . "}, 
} 

ITEM_TASK_TEMP=26 
UNIQUE_USE_TASK_TEMP=20 
-- script viet hoa By http://tranhba.com  b¶o ®¶m mét chóc phóc kh«ng cã ®i ra tr­íc kh«ng thÓ sö dông thø hai . 

ITEM_GENRE=6 
ITEM_DETAIL=1 
ITEM_PARTI=236 

FuncBless={} 

function main(sel) 
if (GetTaskTemp(UNIQUE_USE_TASK_TEMP) > 0) then 
Msg2Player("Ng­¬i b©y giê ®ang tiÕn hµnh nh÷ng kh¸c chóc phóc , xin hËu thö l¹i . "); 
return 1 
end 
SetTaskTemp(UNIQUE_USE_TASK_TEMP, 1); 

local nSelectCount = getn(Message); 
for i=1, nSelectCount do 
FuncBless[i] = Message[i][1].."/PlayerSelect" 
end 

	nSelectCount = nSelectCount + 1;
FuncBless[nSelectCount] = " hñy bá /QueryWiseManCancel" 

Say(szTitle, getn(FuncBless), FuncBless); 
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
			szMsg = GetName().."<#>¶Ô"..TargetName.."<#>Ëµ£º"..Message[nSelect + 1][2]
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
