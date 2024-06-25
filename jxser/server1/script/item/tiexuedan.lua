IncludeLib("ITEM"); 
IncludeLib("FILESYS") 
Include("\\script\\task\\system\\task_string.lua")

function main() 
GiveItemUI("S�a b�ch kim trang b� ","�� c�n s�a b�ch kim trang b� �i v�o ", "repair_platina", "OnCancel", 1); 
return 1; 
end 

function repair_platina(nCount) 

if nCount ~= 1 then 
CreateTaskSay({"B� v�o v�t ph�m ��ch s� l��ng b�t h�a y�u c�u ","Th�t l� th�t xin l�i , ta �em l�n n�a an b�i /main","Th�t l� ng��ng ng�ng , ta sau n�y tr� l�i ./onCancel"}); 
return 
end 

local nItemIndex = GetGiveItemUnit(1) 
local nQuality = GetItemQuality(nItemIndex); -- script viet hoa By http://tranhba.com  ph�m ch�t 

if (nQuality ~= 4) then 
CreateTaskSay({"Xin/m�i �� c�n s�a b�ch kim trang b� .","Th�t l� th�t xin l�i , ta �em l�n n�a an b�i /main","Th�t l� ng��ng ng�ng , ta ch� m�t ch�t tr� l�i ./onCancel"}); 
return 
end 


if (GetPlatinaLevel(nItemIndex) < 6) then 
		CreateTaskSay({"ֻ����+6���ϵİ׽�װ��.", "���ǶԲ����ҽ����°���/main", "���ǲ�����˼�����Ժ����./onCancel"});
return 
end 

if (GetCurDurability(nItemIndex) == GetMaxDurability(nItemIndex)) then 
CreateTaskSay({"N�n trang b� �� c� l�n nh�t b�n ch�c �� li�u , kh�ng c�n n�a s�a ","Th�t l� th�t xin l�i , ta �em l�n n�a an b�i /main","Th�t l� ng��ng ng�ng , ta ch� m�t ch�t tr� l�i ./onCancel"}); 
return 
end 

if (ConsumeItem(3, 1, 6, 1, 2163, 1) ~= 1) then -- script viet hoa By http://tranhba.com  th� ti�u trong t�i �eo l�ng ��ch thi�t huy�t �an 
WriteLog("[ thi�t huy�t �an s�a ��i tr��c m�t ��ch b�n ch�c �� ]"..GetLocalDate("%Y-%m-%d %H:%M:%S").."\t"..GetAccount().."\t"..GetName().."\ th� ti�u thi�t huy�t �an th�t b�i "); 
return 
end 

Msg2Player("S�a ��i th�nh c�ng !"); 

SetCurDurability(nItemIndex, GetMaxDurability(nItemIndex)); 
end
