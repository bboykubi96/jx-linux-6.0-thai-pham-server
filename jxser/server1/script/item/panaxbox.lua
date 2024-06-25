-- script viet hoa By http://tranhba.com  nhËn lÊy ®Æc kü lóc , më ra tè lon , thªm kü n¨ng , 
-- script viet hoa By http://tranhba.com  ®Ò kú cho cïng tè lon , còng më ra tè lon , t¾t tè lon lµ ®­îc khiÕn cho linh sam lùc b¶o tån xuèng . 
TASKID_PANAXBOX_OPEND = 1577 
TASKID_PANAXBOX_LASTIME = 1578 
LINGSHENLI_TIME = 7 * 60 * 60 

function main(nItemIndex) 
local nParam1 = GetItemParam(nItemIndex, 1) 
if (nParam1 == 0 and GetTask(TASKID_PANAXBOX_OPEND) == 0) then 
Say("Muèn më ra tè lon , sö dông linh sam lùc sao ? ", 2,"Më ra /#lingshenli_want2open("..nItemIndex..")","Hñy bá /OnCancel") 
elseif (nParam1 == 1 and GetTask(TASKID_PANAXBOX_OPEND) == 1) then 
Say("Muèn khÐp l¹i tè lon sao ? ", 2,"T¾t /#lingshenli_want2close("..nItemIndex..")","Hñy bá /OnCancel") 
elseif (nParam1 == 1 and GetTask(TASKID_PANAXBOX_OPEND) == 0) then 
SetTask(TASKID_PANAXBOX_OPEND, 1) 
else 
Say("§· cã mét lon tr¨m niªn nh©n tè ë ph¸t huy hiÖu dông ", 0) 
end 
return 1 
end 

function lingshenli_confirm(nItemIndex) 
if (RemoveItemByIndex(nItemIndex) == 1) then 
AddSkillState(735, 5, 1, LINGSHENLI_TIME * 18, 1); 
Msg2Player("Ngµi thu ®­îc tr¨m niªn nh©n tè ®Ých linh lùc , ®Ò cao m¸u bªn trong 20%# toµn kh¸ng 10 ®iÓm hiÖu qu¶ kÐo dµi 7 giê . "); 
else 
print("ERROR!! ADD LINGSHENLI FAILED! NO ITEMINDEX"); 
end; 
end; 

function OnCancel() 
end 

function lingshenli_want2open(nItemIndex) 
local nParam2 = GetItemParam(nItemIndex, 2) 
local nParam3 = GetItemParam(nItemIndex, 3) 

if (nParam2 == 0) then 
SetSpecItemParam(nItemIndex, 2, LINGSHENLI_TIME) 
nParam2 = LINGSHENLI_TIME 
elseif (nParam2 == -1) then 
RemoveItemByIndex(nItemIndex) 
SetTask(TASKID_PANAXBOX_OPEND, 0) 
Msg2Player("Nµy lon trung ng­êi cña tè ®· hao hÕt tr¨m n¨m linh lùc #") 
end 
SetSpecItemParam(nItemIndex, 3, GetGameTime()) 
SetSpecItemParam(nItemIndex, 1, 1) 
SyncItem(nItemIndex) 
SetTask(TASKID_PANAXBOX_OPEND, 1) 
AddSkillState(735, 5, 1, nParam2 * 18, 1) 
local nMin, nSec = GetTimeSec2Min(nParam2) 
if (nMin <= 0) then 
Msg2Player("Nµy lon nh©n s©m cßn cã thÓ phãng liªn tôc linh lùc "..nSec.." gi©y ") 
else 
Msg2Player("Nµy lon nh©n s©m cßn cã thÓ phãng liªn tôc linh lùc "..nMin.." phót ") 
end 
end 

function lingshenli_want2close(nItemIndex) 
local nParam2 = GetItemParam(nItemIndex, 2) 
local nParam3 = GetItemParam(nItemIndex, 3) 
local nGameTime = GetGameTime() 
local nlast = nParam2 - (nGameTime - nParam3) 
if (nlast <= 0) then 
SetSpecItemParam(nItemIndex, 2, -1) 
RemoveItemByIndex(nItemIndex) 
Msg2Player("Nµy lon nh©n s©m ®· hao hÕt tr¨m n¨m linh lùc #") 
AddSkillState(735, 5, 0, 0) 
else 
SetSpecItemParam(nItemIndex, 3, GetGameTime()) 
SetSpecItemParam(nItemIndex, 2, nlast) 
SetSpecItemParam(nItemIndex, 1, 0) 
SyncItem(nItemIndex) 
local nMin, nSec = GetTimeSec2Min(nlast) 
if (nMin <= 0) then 
Msg2Player("Nµy lon nh©n s©m cßn b¶o cã linh lùc "..nSec.." gi©y ") 
else 
Msg2Player("Nµy lon nh©n s©m cßn b¶o cã linh lùc "..nMin.." phót ") 
end 
AddSkillState(735, 5, 0, 0) 
end 
SetTask(TASKID_PANAXBOX_OPEND, 0) 
end 

function GetTimeSec2Min(nlast) 
return floor(nlast / 60), mod(nlast, 60) 
end 

function GetDesc(nItem) 
local nParam1 = GetItemParam(nItem, 1) 
if (nParam1 <= 0) then 
return "<color=blue> t¾t tr¹ng th¸i <color>" 
else 
return "<color=blue> më ra tr¹ng th¸i <color>" 
end 
end
