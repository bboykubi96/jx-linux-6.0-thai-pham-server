-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn ##xmas2007_giftbox.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ##zhongchaolong 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2007-11-26 14:42:26 

-- script viet hoa By http://tranhba.com  thêi gian #2008 n¨m 01 th¸ng 13 ngµy 24#00 
-- script viet hoa By http://tranhba.com  thêi h¹n #2008 n¨m 01 th¸ng 31 ngµy 24#00 
-- script viet hoa By http://tranhba.com  cã thÓ # giao dÞch , vøt bá , bµy s¹p , b¸n ®iÕm = 0 hai , ®iÖp gia 50 c¸ / vÞ 
-- script viet hoa By http://tranhba.com  sö dông : bªn ph¶i kiÖn ®iÓm kÝch sö dông ®¹t ®­îc c¸c lo¹i b¨ng tinh 

Include("\\script\\event\\xmas07_makesnowman\\head.lua")
xmas2007_GiftBox_tbItemList = 
{ 
--   tªn ,{ vËt phÈm Prop}, x¸c suÊt %, 
{"Kim b¨ng tinh ",{6,1,1628,1,0,0},10}, 
{"Méc b¨ng tinh ",{6,1,1629,1,0,0},15}, 
{"Thñy B¨ng Tinh ",{6,1,1630,1,0,0},20}, 
{"Háa B¨ng Tinh",{6,1,1631,1,0,0},25}, 
{"Thæ B¨ng Tinh",{6,1,1632,1,0,0},25}, 
{"Ngò S¾c B¨ng Tinh",{6,1,1633,1,0,0},5},
} 

function main() 
if xmas07_makeSnowMan_isActPeriod() == 0 then 
Msg2Player("VËt phÈm ®· qua sö dông kú , ®em biÕn mÊt .") 
return 0; 
end 
xmas2007_SnowManItem_GiveRandomItem(xmas2007_GiftBox_tbItemList); 
end 
