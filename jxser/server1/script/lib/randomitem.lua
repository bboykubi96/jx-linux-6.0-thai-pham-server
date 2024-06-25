
-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn online ngÉu nhiªn chän lÊy mét vËt phÈm ®Ých lo¹i 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2006/08/01 AM 09:52 

-- script viet hoa By http://tranhba.com  I hope you still feel small when you stand beside the ocean, 
-- script viet hoa By http://tranhba.com  Whenever one door closes I hope one more opens, 
-- script viet hoa By http://tranhba.com  Promise me that youll give faith a fighting chance, 
-- script viet hoa By http://tranhba.com  And when you get the choice to sit it out or dance. 

-- script viet hoa By http://tranhba.com  ====================================================== 

IL("ITEM"); 

-- script viet hoa By http://tranhba.com  ph¸t triÓn biÓu c¸ch v¨n kiÖn lo¹i ®Ých ñng hé 
Include("\\script\\class\\ktabex.lua");

-- script viet hoa By http://tranhba.com  më ra mét ngÉu nhiªn vËt phÈm ®Ých chñ hµm sè 
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

-- script viet hoa By http://tranhba.com  cã hay kh«ng th«ng b¸o 
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

Msg2Player("Ngµi më ra "..szBoxName.." lÊy ®­îc <color=green>"..szName.."<color>"); 

if nIsPublic==1 then 
AddGlobalCountNews("Th«ng b¸o # nhµ ch¬i "..GetName().." më ra "..szBoxName.." lÊy ®­îc "..szName.."#", 1); 
end; 

WriteTaskLog("Më ra "..szBoxName.." lÊy ®­îc "..szName); 

end; 

-- script viet hoa By http://tranhba.com  nhiÖm vô hÖ thèng viÕt vµo LOG qu¸ tr×nh 
function WriteTaskLog(strMain) 

-- script viet hoa By http://tranhba.com  nÕu nh­ lµ v« Ých trÞ gi¸ lµ kh«ng viÕt vµo 
if strMain==nil then return end; 

WriteLog("[ nhiÖm vô hÖ thèng ghi chÐp ]"..date("[%y n¨m %m th¸ng %d ngµy %H lóc %M ph©n ]").."[ tr­¬ng môc #"..GetAccount().."][ vai trß #"..GetName().."]"..strMain); 
end; 
