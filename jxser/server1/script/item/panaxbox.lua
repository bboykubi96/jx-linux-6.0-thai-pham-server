-- script viet hoa By http://tranhba.com  nh�n l�y ��c k� l�c , m� ra t� lon , th�m k� n�ng , 
-- script viet hoa By http://tranhba.com  �� k� cho c�ng t� lon , c�ng m� ra t� lon , t�t t� lon l� ���c khi�n cho linh sam l�c b�o t�n xu�ng . 
TASKID_PANAXBOX_OPEND = 1577 
TASKID_PANAXBOX_LASTIME = 1578 
LINGSHENLI_TIME = 7 * 60 * 60 

function main(nItemIndex) 
local nParam1 = GetItemParam(nItemIndex, 1) 
if (nParam1 == 0 and GetTask(TASKID_PANAXBOX_OPEND) == 0) then 
Say("Mu�n m� ra t� lon , s� d�ng linh sam l�c sao ? ", 2,"M� ra /#lingshenli_want2open("..nItemIndex..")","H�y b� /OnCancel") 
elseif (nParam1 == 1 and GetTask(TASKID_PANAXBOX_OPEND) == 1) then 
Say("Mu�n kh�p l�i t� lon sao ? ", 2,"T�t /#lingshenli_want2close("..nItemIndex..")","H�y b� /OnCancel") 
elseif (nParam1 == 1 and GetTask(TASKID_PANAXBOX_OPEND) == 0) then 
SetTask(TASKID_PANAXBOX_OPEND, 1) 
else 
Say("�� c� m�t lon tr�m ni�n nh�n t� � ph�t huy hi�u d�ng ", 0) 
end 
return 1 
end 

function lingshenli_confirm(nItemIndex) 
if (RemoveItemByIndex(nItemIndex) == 1) then 
AddSkillState(735, 5, 1, LINGSHENLI_TIME * 18, 1); 
Msg2Player("Ng�i thu ���c tr�m ni�n nh�n t� ��ch linh l�c , �� cao m�u b�n trong 20%# to�n kh�ng 10 �i�m hi�u qu� k�o d�i 7 gi� . "); 
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
Msg2Player("N�y lon trung ng��i c�a t� �� hao h�t tr�m n�m linh l�c #") 
end 
SetSpecItemParam(nItemIndex, 3, GetGameTime()) 
SetSpecItemParam(nItemIndex, 1, 1) 
SyncItem(nItemIndex) 
SetTask(TASKID_PANAXBOX_OPEND, 1) 
AddSkillState(735, 5, 1, nParam2 * 18, 1) 
local nMin, nSec = GetTimeSec2Min(nParam2) 
if (nMin <= 0) then 
Msg2Player("N�y lon nh�n s�m c�n c� th� ph�ng li�n t�c linh l�c "..nSec.." gi�y ") 
else 
Msg2Player("N�y lon nh�n s�m c�n c� th� ph�ng li�n t�c linh l�c "..nMin.." ph�t ") 
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
Msg2Player("N�y lon nh�n s�m �� hao h�t tr�m n�m linh l�c #") 
AddSkillState(735, 5, 0, 0) 
else 
SetSpecItemParam(nItemIndex, 3, GetGameTime()) 
SetSpecItemParam(nItemIndex, 2, nlast) 
SetSpecItemParam(nItemIndex, 1, 0) 
SyncItem(nItemIndex) 
local nMin, nSec = GetTimeSec2Min(nlast) 
if (nMin <= 0) then 
Msg2Player("N�y lon nh�n s�m c�n b�o c� linh l�c "..nSec.." gi�y ") 
else 
Msg2Player("N�y lon nh�n s�m c�n b�o c� linh l�c "..nMin.." ph�t ") 
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
return "<color=blue> t�t tr�ng th�i <color>" 
else 
return "<color=blue> m� ra tr�ng th�i <color>" 
end 
end
