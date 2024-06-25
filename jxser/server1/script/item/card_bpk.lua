-- script viet hoa By http://tranhba.com  Created by tsh 2004-12-09 
-- script viet hoa By http://tranhba.com  bang ph¸i t¹p 
-- script viet hoa By http://tranhba.com  ®¹t ®­îc ngÉu nhiªn s¸u tê t¹p 

szTitle="<#> xin/mêi lùa chän chóc phóc ng÷ #" 
Bless= 
{ 
"<#> ngµy ngµy kinh nghiÖm ngµn ngµn v¹n , vµng nguyªn b¶o ®á th¾m th¹ch , ®Ó m·n mét r­¬ng l¹i mét r­¬ng . ", 
"<#> kh«ng cã g× so bang ph¸i h÷u t×nh h¬n Êm ¸p # trong bang ®Ých ®Ñp trai mü n÷ ®Ó cho ta quý träng . ", 
"<#> huynh ®Ö tû muéi chÝnh lµ ë th­¬ng thÕ cña ng­¬i t©m lóc an ñi ng­¬i # ë ng­¬i vui vÎ lóc cïng nhau chia xÎ ng­êi cña . ", 
"<#> chóc bang ph¸i ®Ých c¸c vÞ huynh ®Ö tû muéi mét n¨m thËt vui vÎ , c¶ ®êi mau mau thËt vui vÎ , mét ®êi b×nh an ", 
"<#> chóc bang ph¸i ®Ých c¸c vÞ huynh ®Ö tû muéi ngµy ngµy long m· tinh thÇn , hµng th¸ng th©n thÓ kháe m¹nh , hµng n¨m tµi nguyªn nghiÔm vµo . ", 
"<#> bang héi lµ tr¸nh giã ®Ých c¶ng loan # c¸c ng­¬i lµ cæ phong ®Ých bê biÓn , ®i tíi n¬i nµy c¸ bang ph¸i lµ ta h¹nh phóc lín nhÊt . ", 
} 

ITEM_TASK_TEMP=25 
UNIQUE_USE_TASK_TEMP=20 
-- script viet hoa By http://tranhba.com  b¶o ®¶m mét chóc phóc kh«ng cã ®i ra tr­íc kh«ng thÓ sö dông thø hai . 

ITEM_GENRE=6 
ITEM_DETAIL=1 
ITEM_PARTI=136 

FuncBless={} 

function main(sel) 
if (GetTaskTemp(UNIQUE_USE_TASK_TEMP) > 0) then 
Msg2Player("Ng­¬i b©y giê ®ang tiÕn hµnh nh÷ng kh¸c chóc phóc , xin hËu thö l¹i . "); 
return 1 
end 

local TongName 
local Result 
TongName, Result = GetTong(); 
if (TongName == "") then 
Msg2Player("Ng­¬i kh«ng cã gia nhËp bang ph¸i , kh«ng c¸ch nµo sö dông bang ph¸i t¹p . ") 
SetTaskTemp(ITEM_TASK_TEMP,0); 
SetTaskTemp(UNIQUE_USE_TASK_TEMP, 0); 
return 1; 
end 

SetTaskTemp(UNIQUE_USE_TASK_TEMP, 1); 

local nSelectCount = getn(Bless); 
for i=1, nSelectCount do 
FuncBless[i] = Bless[i].."/PlayerSelect" 
end 

	nSelectCount = nSelectCount + 1;
FuncBless[nSelectCount] = " hñy bá /QueryWiseManCancel" 

	Say(szTitle, getn(Bless) + 1, FuncBless);
SetTaskTemp(ITEM_TASK_TEMP,sel); 
-- script viet hoa By http://tranhba.com  tr­íc kh«ng thñ tiªu nhµ ch¬i ®Ých thÎ , ë thùc tÕ gëi liÔu chóc phóc lóc n÷a san # t¹m thêi ghi chÐp xuèng trang bÞ biªn sè # 
return 1; 
end 

function PlayerSelect(nSelect) 
local TongName 
local Result 
TongName, Result = GetTong(); 
if (TongName == "") then 
Msg2Player("Ng­¬i kh«ng cã gia nhËp bang ph¸i , kh«ng c¸ch nµo sö dông bang ph¸i t¹p . ") 
SetTaskTemp(ITEM_TASK_TEMP,0); 
SetTaskTemp(UNIQUE_USE_TASK_TEMP, 0); 
return 
end 
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
			szMsg = GetName().."<#>¶Ô"..TongName.."<#>°ïÅÉËµ£º"..Bless[nSelect + 1]
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

function QueryWiseManCancel() 
SetTaskTemp(ITEM_TASK_TEMP,0); 
SetTaskTemp(UNIQUE_USE_TASK_TEMP, 0); 
end
