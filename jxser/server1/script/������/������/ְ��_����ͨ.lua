--Van su thong nam nhac tran
-- script viet hoa By http://tranhba.com  v¹n sù th«ng d¹ng lÖ ch©n vèn (BlackBay.03.12.30) 
-- van su thong nam nhac tran --vansuthong
Include([[\script\event\mid_autumn06\fairy_of_midautumn06.lua]]); 

function main(sel) 

--dofile("script/Á½ºşÇø/ÄÏÔÀÕò/npc/Ö°ÄÜ_ÍòÊÂÍ¨.lua")
do Say("Ta chİnh lµ v¹n sù th«ng , kh«ng cã g× kh«ng biÕt . ng­¬i muèn hái c¸i g× ?") return 1 end

local tab_Content = { 
"Dïng 100000 l­îng b¹c ®æi mét ng­êi tin tøc /Query1", 
"Dïng 20000 l­îng b¹c ®æi mét ng­êi tin tøc /Query2", 
"Dïng 3000 l­îng b¹c ®æi mét ng­êi tin tøc /Query3", 
" kh«ng hái /Nothing" 
}; 

if (au06_is_inperiod() == 1) then 
tinsert(tab_Content,"Trung thu ho¹t ®éng /au06_entrance_fairy"); 
end; 
Say("Ta chİnh lµ v¹n sù th«ng , kh«ng cã g× kh«ng biÕt . ng­¬i muèn hái c¸i g× ?", getn(tab_Content), tab_Content); 
end; 

-- script viet hoa By http://tranhba.com  phİa d­íi ba hµm sè còng ®iÒu dông QueryWiseMan ®İch hµm sè , nµy hµm sè th«ng b¸o kh¸ch hµng b­ng ®­a vµo mét c¸i tªn còng ®Ò giao mét lÇn tuÇn tra 
-- script viet hoa By http://tranhba.com  tuÇn tra thµnh c«ng , hÖ thèng trë vÒ ®iÒu thø nhÊt tham sæ chØ ®Şnh trë vÒ ®iÒu hµm sè tªn # tuÇn tra thÊt b¹i , hÖ thèng trë vÒ ®iÒu thø nhÊt tham sæ chØ ®Şnh trë vÒ ®iÒu hµm sè tªn 
-- script viet hoa By http://tranhba.com  trë vÒ ®iÒu hµm sè nguyªn h×nh xin/mêi tham kh¶o phİa d­íi ®Şnh nghÜa ®İch hai d¹ng lÖ hµm sè WisemanCallBack cïng AbsentCallBack 
function Query1() 
if (GetCash() >= 100000) then 
QueryWiseMan("WisemanCallBack", "AbsentCallBack", 100000) 
else 
Nothing() 
end 
end; 

function Query2() 
if (GetCash() >= 20000) then 
QueryWiseMan("WisemanCallBack", "AbsentCallBack", 20000) 
else 
Nothing() 
end 
end; 

function Query3() 
if (GetCash() >= 3000) then 
QueryWiseMan("WisemanCallBack", "AbsentCallBack", 3000) 
else 
Nothing() 
end 
end; 

function Nothing() 
Talk(1, "","Ng­¬i kh«ng ph¶i lµ cÇm ta nãi ®ïa sao ?") 
end; 

-- script viet hoa By http://tranhba.com  nµy hµm sè v× trë thµnh c«ng tuÇn tra tin tøc trë vÒ ®iÒu hµm sè , tham sæ c¸ ®Õm cïng tham sæ thø tù kh«ng cho phĞp söa ®æi 
function WisemanCallBack(TargetName, MoneyToPay, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank) 
if MapName == "" then 
Say("ThËt xin lçi , "..TargetName.." b©y giê ë khu vùc ®Æc biÖt <color=red> ®éc lËp bang héi khu vùc <color>, nh­ng lµ kh«ng biÕt thÇy thuèc vŞ trİ cô thÓ , nh­ vËy ta còng chØ coi lµ nöa gi¸ ®i .",0) 
Pay(MoneyToPay / 2) 
return 
elseif (MoneyToPay == 3000) then 
Say("Ng­êi nµy "..TargetName.." b©y giê ë <color=red> "..MapName.."<color> ng­¬i ®i nhanh ®iÓm , nÕu nh­ h¾n ®Õn chç kh¸c ta còng kh«ng xİa vµo . ",1,"§a t¹ /no") 
elseif (MoneyToPay == 20000) then 
Say("Ng­êi nµy "..TargetName.." b©y giê ë <color=red> "..MapName.."<color>, vŞ trİ cô thÓ cã thÓ lµ <color=red> ( "..nPosX..", "..nPosY..")<color>, ng­¬i nÕu nh­ muèn t×m lêi cña h¾n còng nhanh chót . ",1,"§a t¹ /no") 
elseif (MoneyToPay == 100000) then 
SexString = "Nam" 
if (nSex ~= 0) then 
SexString = "N?" 
end 
Say("Ng­êi nµy "..TargetName.."  ®¼ng cÊp "..PlayerLevel.." giíi tİnh "..SexString..", vŞ trİ hiÖn t¹i lµ <color=red>"..MapName.."("..nPosX..", "..nPosY..")<color> ®İch h×nh d¸ng, xÕp h¹ng thÕ giíi "..nWorldRank.." tªn ., PK trŞ gi¸ "..PKValue..". ng­¬i muèn t×m lêi cña h¾n còng nhanh chót . ",1,"§a t¹/no") 
end 
Pay(MoneyToPay) 
end; 

-- script viet hoa By http://tranhba.com  nµy hµm sè v× thÊt b¹i tuÇn tra ( còng chİnh lµ kh«ng cã ë ®©y tuyÕn ) tin tøc trë vÒ ®iÒu hµm sè , tham sæ c¸ ®Õm cïng tham sæ thø tù kh«ng cho phĞp söa ®æi 
function AbsentCallBack(TargetName, MoneyToPay) 
Say("Ng­êi nµy , "..TargetName.." h¾n b©y giê kh«ng cã ë ®©y c¸i nµy , kh«ng biÕt h¾n ë ®©u , t­ tu©n phİ ta chØ lÊy mét nöa , a a . ",0) 
Pay(MoneyToPay / 2) 
end; 

function no() 
end 
