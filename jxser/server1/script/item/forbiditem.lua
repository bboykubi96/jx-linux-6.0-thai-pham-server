IncludeLib("FILESYS") 
IncludeLib("ITEM") 
Include("\\script\\lib\\common.lua");

-- script viet hoa By http://tranhba.com  v�t ph�m lo�i h�nh ��i �ng ch� c� th� s� d�ng b�n �� 
tb_ItemType = {} 
-- script viet hoa By http://tranhba.com  v�t ph�m ��i �ng k� lo�i h�nh 
tb_ItemDetail = {} 
-- script viet hoa By http://tranhba.com  b�n �� ID ��i �ng k� lo�i h�nh 
tb_MapDetail = {} 
-- script viet hoa By http://tranhba.com  b�n �� lo�i h�nh ��i �ng kh�ng th� s� d�ng v�t ph�m 
tb_MapType = {} 




-- script viet hoa By http://tranhba.com // ��t ���c tr��c m�t b�n �� ID ��ch lo�i h�nh , tr� v� lo�i h�nh string , n�u kh�ng nil 
function get_MapType(nMapID) 
return tb_MapDetail[nMapID] 
end 

function set_MapType(nMapID, szType) 
tb_MapDetail[nMapID] = szType 
end 

function del_MapType(nMapID) 
tb_MapDetail[nMapID] = nil 
end 

function add_Item2Map(szMapType, szItemType) 
tb_MapType[szMapType] = tb_MapType[szMapType] or {} 
tinsert(tb_MapType[szMapType], szItemType) 
end 


-- script viet hoa By http://tranhba.com // ��t ���c tr��c m�t c�n k� lo�i kh�c v�t ph�m lo�i h�nh , tr� v� lo�i h�nh string , n�u kh�ng nil 
function get_ItemType(g, d, p) 
local str = pack_ItemDetail(g, d, p); 
if (str ~= nil and tb_ItemDetail[str]) then 
return tb_ItemDetail[str].itemtype; 
end; 
return nil; 
end; 


-- script viet hoa By http://tranhba.com // v�t ph�m lo�i h�nh -> ch� c� th� s� d�ng b�n �� 
function LoadItemType() 
	local b1 = TabFile_Load("\\settings\\item_type.txt", "ItemType");
if (b1 ~= 1) then 
print("M�i b�t ��u h�a v�t ph�m lo�i h�nh v�n ki�n th�t b�i #"); 
return 
end; 
local nRowCount = TabFile_GetRowCount("ItemType"); 
for i = 3, nRowCount do 
local sType = TabFile_GetCell("ItemType", i, "ITEM_TYPE"); 
local sMap = TabFile_GetCell("ItemType", i, "ONLY_IN_MAP_TYPE"); 
if (sMap == "" or sMap == nil) then 
tb_ItemType[sType] = nil; -- script viet hoa By http://tranhba.com ?? nh� th� n�o x� l� t�t ��y ? 
else 
tb_ItemType[sType] = split(sMap); 
end; 
end; 
end; 
LoadItemType() 


-- script viet hoa By http://tranhba.com // v�t ph�m lo�i h�nh -> c� th� v�t ph�m tham s� 
function LoadItemDetail() 
	local b1 = TabFile_Load("\\settings\\item_detail.txt", "ItemDetail");
if b1~=1 then 
print("M�i b�t ��u h�a v�t ph�m ph�n lo�i v�n ki�n th�t b�i #"); 
return 
end; 
local nRowCount = TabFile_GetRowCount("ItemDetail"); 
for i = 3, nRowCount do 
local sType = TabFile_GetCell("ItemDetail", i, "ITEM_TYPE"); 
if (sType ~= "" and sType ~= nil) then 
local nG = tonumber(TabFile_GetCell("ItemDetail", i, "GENRE")); 
local nD = tonumber(TabFile_GetCell("ItemDetail", i, "DETAIL")); 
local nP = tonumber(TabFile_GetCell("ItemDetail", i, "PARTICULAR")); 
local szKey = pack_ItemDetail(nG, nD, nP); 
tb_ItemDetail[szKey] = {}; 
tb_ItemDetail[szKey].itemtype = sType; 
end; 
end; 
end; 

function pack_ItemDetail(g, d, p) 
if (g ~= nil and d ~= nil and p ~= nil) then 
return g..","..d..","..p; 
end; 
return nil; 
end; 
LoadItemDetail() 


-- script viet hoa By http://tranhba.com // b�n �� lo�i h�nh -> c� th� b�n �� ID 
function LoadMapDetail() 
	local b1 = TabFile_Load("\\settings\\map_type.txt", "MapDetail");
if (b1 ~= 1) then 
print("M�i b�t ��u h�a b�n �� ph�n lo�i v�n ki�n th�t b�i #"); 
return 
end; 
local nRowCount = TabFile_GetRowCount("MapDetail"); 
for i = 3, nRowCount do 
local szMapType = TabFile_GetCell("MapDetail", i, "MAP_TYPE"); 
local str = TabFile_GetCell("MapDetail", i, "MAP_ID"); 
str = replace(str, "\"", [[]]); 
local tbStr = split(str); 
for j = 1,getn(tbStr) do 
tbmap = split(tbStr[j], [[|]]); 
if (getn(tbmap) == 1) then 
local nmap = tonumber(tbmap[1]); 
tb_MapDetail[nmap] = szMapType; 
else 
nMap1 = tonumber(tbmap[1]); 
nMap2 = tonumber(tbmap[2]); 
for k = nMap1, nMap2 do 
tb_MapDetail[k] = szMapType 
end; 
end; 
end; 

-- script viet hoa By http://tranhba.com // b�n �� lo�i h�nh -> c�m ch� s� d�ng v�t ph�m 
-- script viet hoa By http://tranhba.com tb_MapType = {} 
local szForbidType = TabFile_GetCell("MapDetail", i, "FORBIT_ITEM_TYPE"); 
if (szForbidType ~= "" and szForbidType ~= nil) then 
tb_MapType[szMapType] = split(szForbidType); 
end; 
end; 
end; 
LoadMapDetail() 

-- script viet hoa By http://tranhba.com // ki�m tra v�t ph�m quy�n s� d�ng h�n 
-- script viet hoa By http://tranhba.com // tr� v� 1 c� th� d�ng , -1 kh�ng th� d�ng 
function Check_ItemUsable(nSubWorldID, nItemGenre, nItemDetailType, nItemParticular) 
local szItemType = get_ItemType(nItemGenre, nItemDetailType, nItemParticular); 
if (szItemType == nil) then 
return 1; 
end; 
local szMapType = get_MapType(nSubWorldID); 
if (szMapType == nil) then 
szMapType = ""; 
end; 
if (tb_ItemType[szItemType] ~= nil) then 
-- script viet hoa By http://tranhba.com  ch� c� th� s� d�ng b�n �� 
for i = 1, getn(tb_ItemType[szItemType]) do 
if (tb_ItemType[szItemType][i] == szMapType) then 
return 1; 
end; 
end; 
return 0; 
-- script viet hoa By http://tranhba.com  b�n �� c�m ch� s� d�ng v�t ph�m 
elseif (tb_MapType[szMapType] ~= nil) then 
for i = 1, getn(tb_MapType[szMapType]) do 
if (tb_MapType[szMapType][i] == szItemType) then 
return 0; 
end; 
end; 
end; 
return 1; 
end; 
