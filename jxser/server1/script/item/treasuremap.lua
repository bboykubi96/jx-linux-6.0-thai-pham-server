
-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn online ngÉu nhiªn nhiÖm vô tµng b¶o ®å vËt phÈm sö dông xö lý v¨n kiÖn 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2005/10/19 PM 14:22 

-- script viet hoa By http://tranhba.com  chØ cã buæi tèi bän hä lµ chung mét chç ®Ých 
-- script viet hoa By http://tranhba.com  h¾n ®Õn gÇn nµng , «m nµng 
-- script viet hoa By http://tranhba.com  ngãn tay cña h¾n cïng da 
-- script viet hoa By http://tranhba.com  nµng nh×n h¾n , trong lßng mÒm m¹i mµ ®au ®ín 
-- script viet hoa By http://tranhba.com  nµng muèn , nµng cßn lµ th­¬ng h¾n 
-- script viet hoa By http://tranhba.com  nµng kh«ng muèn o¸n tr¸ch c¸i g× 
-- script viet hoa By http://tranhba.com  mçi ngµy buæi tèi bän hä ®Òu ë ®©y ©n ¸i 
-- script viet hoa By http://tranhba.com  nµng kh«ng biÕt , trõ lo¹i nµy tiÕp xóc , an toµn cña nµng c¶m cïng Êm ¸p , cßn cã thÓ tõ n¬i nµo lÊy ®­îc 
-- script viet hoa By http://tranhba.com  nµng thÝch trong nh¸y m¾t ®ã . ph¶ng phÊt ë bãng tèi ®Ých biÓn réng th­îng , tr«i h­íng thÕ giíi cuèi 

-- script viet hoa By http://tranhba.com  ====================================================== 

Include("\\script\\task\\random\\treasure_head.lua");  -- script viet hoa By http://tranhba.com  ²Ø±¦Í¼¼øÉÍ¹¦ÄÜ
Include("\\script\\activitysys\\g_activity.lua")			-- script viet hoa By http://tranhba.com »î¶¯±à¼­Æ÷
Include("\\script\\activitysys\\playerfunlib.lua")		-- script viet hoa By http://tranhba.com »î¶¯±à¼­Æ÷

function main(nIndex) 

local nRow = GetItemMagicLevel(nIndex, 1); 

if nRow==0 or nRow==nil then 
Msg2Player("<color=Orange> tê nµy tµng b¶o ®å ®· cò r¸ch kh«ng chÞu næi , kh«ng cã bÊt kú c¸ch dïng liÔu . <color>"); 
return 1; 
end; 

local strInfo = tabTreaPos:getCell("Text", nRow); 
local picPath = tabTreaPos:getCell("Pic", nRow); 

local nMapState = GetItemMagicLevel(nIndex, 2); 

local nResult = 0; 
local picLink = ""; 

if nMapState==0 then 
Msg2Player("<color=Orange> ng­¬i h­íng vÒ phÝa tµng b¶o ®å ë chç nµy ®«ng ®µo t©y t¹c , kh«ng thu ho¹ch ®­îc g× …… hay lµ ®i long tuyÒn th«n t×m phã l«i s¸ch chØ gi¸o mét chót ®i #<color>"); 
return 1; 
else 
picLink = "<link=image:"..picPath.."> tµng b¶o ®å ®Ých tin tøc #<link> tèn bã lín bã lín b¹c ®¸nh ®iÓm sau , ng­¬i rèt côc ë phã l«i s¸ch ®Ých d­íi sù chØ ®iÓm lo¸ng tho¸ng ë n¬i nµy tê kh«ng trän vÑn kh«ng hoµn toµn tµng b¶o ®å trung ph©n biÖt ra khái b¶o tµng ®Ých ®¹i kh¸i vÞ trÝ . dùa vµo ng­¬i tr­íc kia phong phó lÞch duyÖt cïng bÐn nh¹y ®Ých quan s¸t lùc , ng­¬i ph¸t hiÖn c¸i nµy tùa hå lµ <color=yellow>"..strInfo.."<color> . "; 
Describe(picLink, 2, 
" b¾t ®Çu ®µo mãc /#useTreasureMap("..nIndex..")", 
" t¾t /OnExit"); 
return 1; 
end; 

end; 

function useTreasureMap(nIndex) 

local nResult = MapCheckTreasurePos(nIndex); 
local nDelResult = 0; 

if nResult==1 then 

-- script viet hoa By http://tranhba.com  nÕu nh­ thµnh c«ng ®µo ra ®å , lµ ®em nªn vËt phÈm thñ tiªu 
nDelResult = RemoveItemByIndex(nIndex); 

if nDelResult==1 then 
UseTreasurePos(); 

G_ACTIVITY:OnMessage("FinishCangBaoTu"); 

return 1; 
else 
Msg2Player("<color=Orange> Ng­¬i ®µo bíi c¶ nöa ngµy mµ kh«ng thu ho¹ch ®­îc g×, ch¼ng lÏ ta ®· t×m sai. Th«i xem l¹i thËt kÜ b¶n ®å vËy. Phï.<color>"); 
return 1; 
end; 

elseif nResult==0 then 
Msg2Player("<color=Orange> Ng­¬i ®µo bíi c¶ nöa ngµy mµ kh«ng thu ho¹ch ®­îc g×, ch¼ng lÏ ta ®· t×m sai. Th«i xem l¹i thËt kÜ b¶n ®å vËy. Phï.<color>"); 
return 1; 
elseif nResult==2 then 
Msg2Player("<color=yellow> ng­¬i ®èi víi tµng b¶o ®å së miªu héi ®Ých ®å ®Çu ãc m¬ hå , c¸i nµy ®å lµ thËt hay gi¶ hay lµ ®i <color><color=green> long tuyÒn th«n <color><color=yellow> t×m <color><color=green> phã l«i s¸ch <color><color=yellow> gi¸m ®Þnh mét chót ®i #<color>"); 
return 1; 
end; 

end; 


function OnExit() 

end;
