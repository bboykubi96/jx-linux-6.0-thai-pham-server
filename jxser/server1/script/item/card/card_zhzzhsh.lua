-- script viet hoa By http://tranhba.com  chÊp tö tay t¹p 

-- script viet hoa By http://tranhba.com by yfeng 
Include ("\\script\\event\\chinesenewyear\\eventhead.lua")

NUMPERMIN = 0 -- script viet hoa By http://tranhba.com  phót bªn trong thËp lÊy t¹p sè l­îng 
LASTTIME = 0 -- script viet hoa By http://tranhba.com  lÇn tr­íc thËp lÊy lóc ®Ých thêi gian 

TID_VALIDATION = 501 
TID_CARDNUMBER = 502 
GETBYTE = 2 

function ComputeTime() 
	 return tonumber((((date("%m")-1)*30+date("%d")-1)*24+date("%H"))*60+date("%M"))
end 

function main(idx) 
return 1 
end 

function IsPickable( nItemIndex, nPlayerIndex ) 
return 1 
end 

function PickUp( nItemIndex, nPlayerIndex ) 
if(not CHINESENEWYEAR) then 
return 0 
end 
local oldPlyIdx = PlayerIndex 
PlayerIndex = nPlayerIndex 
local size = GetTeamSize() 
local myName = GetName() 
local mySex = GetSex() 
local myCode = GetTask(TID_VALIDATION) 
local myNum = GetByte(GetTask(TID_CARDNUMBER),GETBYTE) 
local myLevel = GetLevel() 
if(size < 2) then -- script viet hoa By http://tranhba.com  
Msg2Player("Ng­¬i lÊy ®­îc mét tê chÊp tö tay t¹p , nh­ng lµ kiÕt nhiªn mét th©n ng­¬i kh«ng c¸ch nµo më ra thÎ nµy ®Ých n¨ng lùc . ") 
PlayerIndex = oldPlyIdx 
return 0 
end 
if(size > 2) then 
Msg2Player("Ng­¬i lÊy ®­îc mét tê chÊp tö tay t¹p , nh­ng lµ nhiÒu ng­êi nh­ vËy , ng­¬i kh«ng biÕt cïng ai míi cã thÓ më ra thÎ nµy ®Ých n¨ng lùc . ") 
PlayerIndex = oldPlyIdx 
return 0 
end 
local otherIndex = GetTeamMember(1) 
if( otherIndex == nPlayerIndex) then 
otherIndex = GetTeamMember(2) 
end 
PlayerIndex = otherIndex 
otherName = GetName() 
otherSex = GetSex() 
otherCode = GetTask(TID_VALIDATION) 
otherNum = GetByte(GetTask(TID_CARDNUMBER),GETBYTE) 
otherLevel = GetLevel() 
PlayerIndex = nPlayerIndex 
if(otherSex == mySex) then 
Msg2Player("Ng­¬i lÊy ®­îc mét tê chÊp tö tay t¹p , nh­ng lµ kh«ng c¸ch nµo cïng ®ång tÝnh nhµ ch¬i më ra thÎ nµy ®Ých n¨ng lùc . ") 
PlayerIndex = oldPlyIdx 
return 0 
end 
if(myCode == otherCode and myCode ~=0) then -- script viet hoa By http://tranhba.com  nghiÖm chøng con ngùa gièng nhau 
if(myNum == otherNum) then -- script viet hoa By http://tranhba.com  h÷u t×nh ng­êi , t¹p ®Ých sè l­îng mét d¹ng . 
			myNum = myNum + 1  -- script viet hoa By http://tranhba.com ¿¨Æ¬ÊýÁ¿ÀÛ¼Ó
otherNum = myNum 
Msg2Player("Ng­¬i lÊy ®­îc mét tê chÊp tö tay t¹p , ®em ng­¬i cïng "..otherName.." ®Ých duyªn phËn kÐo ph¶i cµng gÇn , ®Õn tr­íc m¾t th× ng­ng , ng­¬i tÝch lòy "..myNum.." tê chÊp tö tay t¹p . ") 
			AddOwnExp(myLevel * (20+0.1*myLevel)-10)
SetTask(TID_CARDNUMBER,SetByte(GetTask(TID_CARDNUMBER),GETBYTE,myNum)) -- script viet hoa By http://tranhba.com  trë vÒ viÕt th¬ h¬i thë 
PlayerIndex = otherIndex 
Msg2Player(myName.." lÊy ®­îc mét tê chÊp tö tay t¹p , ®em c¸c ng­¬i duyªn phËn kÐo ph¶i cµng gÇn , ®Õn tr­íc m¾t th× ng­ng , ng­¬i tÝch lòy "..otherNum.." tê chÊp tö tay t¹p . ") 
			AddOwnExp(otherLevel * (10+0.07*otherLevel))
SetTask(TID_CARDNUMBER,SetByte(GetTask(TID_CARDNUMBER),GETBYTE,myNum)) -- script viet hoa By http://tranhba.com  trë vÒ viÕt th¬ h¬i thë 
if(myNum > 98) then -- script viet hoa By http://tranhba.com  ®¹t tíi 99 c¸ , cïng tö giai l·o n÷a/råi 
myNum = 0 
PlayerIndex = nPlayerIndex 
AddSkillState(530,15,1,2*60*60*18) 
AddSkillState(533,1,1,2*60*60*18) 
Msg2Player("Ng­¬i chÊp tö tay t¹p ®· tÝch lòy 99 c¸ , ng­¬i cïng "..otherName.." cïng chung më ra thÎ nµy ®Ých n¨ng lùc . ng­¬i thu ®­îc 2 canh giê ®Ých may m¾n gia t¨ng 30 ®iÓm . ") 
SetTask(TID_CARDNUMBER,SetByte(GetTask(TID_CARDNUMBER),GETBYTE,myNum)) -- script viet hoa By http://tranhba.com  trë vÒ viÕt th¬ h¬i thë 
PlayerIndex = otherIndex 
AddSkillState(530,15,1,2*60*60*18) 
AddSkillState(533,1,1,2*60*60*18) 
Msg2Player("Ng­¬i chÊp tö tay t¹p ®· tÝch lòy 99 c¸ , ng­¬i cïng "..myName.." cïng chung më ra thÎ nµy ®Ých n¨ng lùc . ng­¬i thu ®­îc 2 canh giê ®Ých may m¾n gia t¨ng 30 ®iÓm . ") 
SetTask(TID_CARDNUMBER,SetByte(GetTask(TID_CARDNUMBER),GETBYTE,myNum)) -- script viet hoa By http://tranhba.com  trë vÒ viÕt th¬ h¬i thë 
end 
PlayerIndex = oldPlyIdx 
return 0 
end 
-- script viet hoa By http://tranhba.com  dêi t×nh chí yªu ®Ých mét ®«i 
if(myNum > otherNum) then -- script viet hoa By http://tranhba.com  ta so nµng t¹p nhiÒu 
myNum = myNum - 1 
if(myNum ~= otherNum) then -- script viet hoa By http://tranhba.com  tæn thÊt , cßn kh«ng chê , kh«ng cã duyªn phËn a 
				otherNum = otherNum + 1  -- script viet hoa By http://tranhba.com ÄãÃÇµÄÔµ·ÖÔÙ½üÒ»µã¡£ :)
end 
else -- script viet hoa By http://tranhba.com  nµng so víi ta t¹p nhiÒu 
			myNum = myNum + 1  -- script viet hoa By http://tranhba.com ¼ÓÒ»¸ö
if(myNum ~=otherNum) then 
otherNum = otherNum - 1 
end 
end 
PlayerIndex = nPlayerIndex 
Msg2Player("Ng­¬i lÊy ®­îc mét tê chÊp tö tay t¹p , cïng "..otherName.." ®Ých duyªn phËn cµng gÇn , ng­¬i b©y giê tÝch lòy "..myNum.." tê chÊp tö tay thÎ . ") 
SetTask(TID_CARDNUMBER,SetByte(GetTask(TID_CARDNUMBER),GETBYTE,myNum)) -- script viet hoa By http://tranhba.com  trë vÒ viÕt th¬ h¬i thë 
PlayerIndex = otherIndex 
Msg2Player(myName.." lÊy ®­îc mét tê chÊp tö tay t¹p , cïng ng­¬i ®Ých duyªn phËn cµng gÇn , ng­¬i b©y giê tÝch lòy "..otherNum.." tê chÊp tö tay thÎ . ") 
SetTask(TID_CARDNUMBER,SetByte(GetTask(TID_CARDNUMBER),GETBYTE,otherNum)) -- script viet hoa By http://tranhba.com  trë vÒ viÕt th¬ h¬i thë 
PlayerIndex = oldPlyIdx 
return 0 
end 
-- script viet hoa By http://tranhba.com  nghiÖm chøng con ngùa bÊt ®ång , hoÆc lµ ®Òu lµ 0 
local code = GetValidateCode(nPlayerIndex) 
Msg2Player("Ng­¬i lÊy ®­îc mét tê chÊp tö tay t¹p , h¬n n÷a cïng "..otherName.." b¾t ®Çu t×nh duyªn . ") 
SetTask(TID_VALIDATION,code) 
PlayerIndex = otherIndex 
Msg2Player(myName.." lÊy ®­îc mét tê chÊp tö tay t¹p , h¬n n÷a cïng ng­¬i b¾t ®Çu t×nh duyªn . ") 
SetTask(TID_VALIDATION,code) 
PlayerIndex = oldPlyIdx 
return 0 
end 

function GetValidateCode(plyIdx) 
local oPID = PlayerIndex 
PlayerIndex = plyIdx 
local mid = GetWorldPos() 
PlayerIndex = oPID 
	local time = ComputeTime() -- script viet hoa By http://tranhba.com (((date("%m")-1)*30+date("%d")-1)*24+date("%H"))*60+date("%M")

if(time == LASTTIME) then 
		NUMPERMIN = NUMPERMIN + 1
	-- script viet hoa By http://tranhba.com -+-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com +-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -+-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -+
-- script viet hoa By http://tranhba.com -| LASTTIME | MAPID |NUM/MIN| 
	-- script viet hoa By http://tranhba.com -+-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com +-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -+-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -+
-- script viet hoa By http://tranhba.com -| 16 BIT | 9 BIT | 7BIT | 
	-- script viet hoa By http://tranhba.com -+-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com +-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -+-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -+
-- script viet hoa By http://tranhba.com -| 65535 | 511 | 127 | 
	-- script viet hoa By http://tranhba.com -+-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com +-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -+-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -+
		return LASTTIME * 65536 + mid*128 + NUMPERMIN
end 
LASTTIME = time 
NUMPERMIN = 0 
	return LASTTIME * 65536 + mid*128 + NUMPERMIN
end 
