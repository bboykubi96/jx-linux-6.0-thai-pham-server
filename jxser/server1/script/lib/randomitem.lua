
-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n online ng�u nhi�n ch�n l�y m�t v�t ph�m ��ch lo�i 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2006/08/01 AM 09:52 

-- script viet hoa By http://tranhba.com  I hope you still feel small when you stand beside the ocean, 
-- script viet hoa By http://tranhba.com  Whenever one door closes I hope one more opens, 
-- script viet hoa By http://tranhba.com  Promise me that youll give faith a fighting chance, 
-- script viet hoa By http://tranhba.com  And when you get the choice to sit it out or dance. 

-- script viet hoa By http://tranhba.com  ====================================================== 

IL("ITEM"); 

-- script viet hoa By http://tranhba.com  ph�t tri�n bi�u c�ch v�n ki�n lo�i ��ch �ng h� 
Include("\\script\\class\\ktabex.lua");

-- script viet hoa By http://tranhba.com  m� ra m�t ng�u nhi�n v�t ph�m ��ch ch� h�m s� 
function openRandomItem(tabItem, szBoxName) 

local nRow = tabItem:countArrayRate("ItemRate"); 
local szName,nQuality,nGenre,nDetail,nParticular,nLevel,nGoodsFive = "", 0, 0, 0, 0, 0, 0; 
local nIndex, nLimitTime = 0; 
local nIsPublic = 0; 

szName = tabItem:getCell("Name", nRow); 
nQuality = tonumber(tabItem:getCell("Quality", nRow)); 
nGenre = tonumber(tabItem:getCell("Genre", nRow)); 
nDetail = tonumber(tabItem:getCell("Detail", nRow)); 
nParticular = tonumber(tabItem:getCell("Particular", nRow)); 
nLevel = tonumber(tabItem:getCell("Level", nRow)); 
nGoodsFive = tonumber(tabItem:getCell("GoodsFive", nRow)); 

nLimitTime = tonumber(tabItem:getCell("LimitTime", nRow)); 

-- script viet hoa By http://tranhba.com  c� hay kh�ng th�ng b�o 
nIsPublic = tonumber(tabItem:getCell("IsPublic", nRow)); 

if nQuality==1 then 
nIndex = AddGoldItem(0, nGenre); 
if nLimitTime~=nil and nLimitTime>0 then 
ITEM_SetLeftUsageTime(nIndex, nLimitTime * 60); 
SyncItem(nIndex); 
end; 
else 
AddItem(nGenre, nDetail, nParticular, nLevel, nGoodsFive, 0, 0); 
end; 

Msg2Player("Ng�i m� ra "..szBoxName.." l�y ���c <color=green>"..szName.."<color>"); 

if nIsPublic==1 then 
AddGlobalCountNews("Th�ng b�o # nh� ch�i "..GetName().." m� ra "..szBoxName.." l�y ���c "..szName.."#", 1); 
end; 

WriteTaskLog("M� ra "..szBoxName.." l�y ���c "..szName); 

end; 

-- script viet hoa By http://tranhba.com  nhi�m v� h� th�ng vi�t v�o LOG qu� tr�nh 
function WriteTaskLog(strMain) 

-- script viet hoa By http://tranhba.com  n�u nh� l� v� �ch tr� gi� l� kh�ng vi�t v�o 
if strMain==nil then return end; 

WriteLog("[ nhi�m v� h� th�ng ghi ch�p ]"..date("[%y n�m %m th�ng %d ng�y %H l�c %M ph�n ]").."[ tr��ng m�c #"..GetAccount().."][ vai tr� #"..GetName().."]"..strMain); 
end; 
