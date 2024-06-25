
-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn online ngÉu nhiªn nhiÖm vô tµng b¶o ®å vËt phÈm sö dông xö lı v¨n kiÖn 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2005/10/19 PM 14:22 

-- script viet hoa By http://tranhba.com  chØ cã buæi tèi bän hä lµ chung mét chç ®İch 
-- script viet hoa By http://tranhba.com  h¾n ®Õn gÇn nµng , «m nµng 
-- script viet hoa By http://tranhba.com  ngãn tay cña h¾n cïng da 
-- script viet hoa By http://tranhba.com  nµng nh×n h¾n , trong lßng mÒm m¹i mµ ®au ®ín 
-- script viet hoa By http://tranhba.com  nµng muèn , nµng cßn lµ th­¬ng h¾n 
-- script viet hoa By http://tranhba.com  nµng kh«ng muèn o¸n tr¸ch c¸i g× 
-- script viet hoa By http://tranhba.com  mçi ngµy buæi tèi bän hä ®Òu ë ®©y ©n ¸i 
-- script viet hoa By http://tranhba.com  nµng kh«ng biÕt , trõ lo¹i nµy tiÕp xóc , an toµn cña nµng c¶m cïng Êm ¸p , cßn cã thÓ tõ n¬i nµo lÊy ®­îc 
-- script viet hoa By http://tranhba.com  nµng thİch trong nh¸y m¾t ®ã . ph¶ng phÊt ë bãng tèi ®İch biÓn réng th­îng , tr«i h­íng thÕ giíi cuèi 

-- script viet hoa By http://tranhba.com  ====================================================== 

Include("\\script\\task\\random\\treasure_head.lua");  -- script viet hoa By http://tranhba.com  ²Ø±¦Í¼¼øÉÍ¹¦ÄÜ


function GetItemDescription(name, magiclevel1, magiclevel2, magiclevel3, magiclevel4, magiclevel5, magiclevel6) 

local nRow = magiclevel1; 

if magiclevel2==0 then 
return "<enter> mét tê vÏ cã nói n­íc ®Şa m¹ch chê vŞ trİ ®İch b¶n ch÷ h×nh , tin ®ån nµy ®å tiªu thøc liÔu thÇn bİ b¶o tµng ®İch së t¹i . <enter> vËy mµ nh×n qua ®· cò r¸ch kh«ng chŞu næi , tùa hå chØ cã <color=green> long tuyÒn th«n <color> ®İch l·o nh©n <color=green> phã l«i s¸ch <color> míi cã thÓ gi¶i ®éc nµy ®å . <enter>"; 
else 
return showTreasureText(nRow) 
end; 

end; 

-- script viet hoa By http://tranhba.com  biÓu hiÖn tµng b¶o ®å vŞ trİ cô thÓ tin tøc 
function showTreasureText(nRow) 

local strInfo = tabTreaPos:getCell("Text", nRow); 
local picPath = tabTreaPos:getCell("Pic", nRow); 

return "<enter> mét tê vÏ cã nói n­íc ®Şa m¹ch chê vŞ trİ ®İch b¶n ch÷ h×nh , tin ®ån nµy ®å tiªu thøc liÔu thÇn bİ b¶o tµng ®İch së t¹i . <enter><enter>".. 
" ®å th­îng lo¸ng tho¸ng cho thÊy n¬i nµy lµ <color=green>"..strInfo.."<color><enter><enter>".. 
"<color=yellow> ®an kİch bªn ph¶i kiÖn lµ ®­îc b¾t ®Çu ®µo mãc <color><enter>"; 

end;
