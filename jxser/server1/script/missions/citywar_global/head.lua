Include("\\script\\tong\\tong_header.lua");
-- script viet hoa By http://tranhba.com  b¶y thµnh phè c«ng thñ ph­¬ng lÖnh bµi EventItemID 
CardTab = {}; 
CardTab[1]= 363 
CardTab[2]= 362 
CardTab[3]= 355 
CardTab[4]= 354 
CardTab[5]= 367 
CardTab[6]= 366 
CardTab[7]= 359 
CardTab[8]= 358 
CardTab[9]= 357 
CardTab[10]= 356 
CardTab[11]= 365 
CardTab[12]= 364 
CardTab[13]= 361 
CardTab[14]= 360 

-- script viet hoa By http://tranhba.com  lÖnh bµi gi¸ c¶ 
CardPrice = 200000; 
-- script viet hoa By http://tranhba.com  thu vÒ lÖnh bµi gi¸ c¶ 
ReturnCardPrice = 10000; 

TIAOZHANLING_LGTYPE = 538 -- script viet hoa By http://tranhba.com  khiªu chiÕn lÖnh ®øng ®éi lo¹i h×nh 
TIAOZHANLING_LGName = "tiaozhanling" -- script viet hoa By http://tranhba.com  khiªu chiÕn lÖnh ®øng ®éi ®éi ngò tªn 
LGTSK_TIAOZHANLING_COUNT = 1 -- script viet hoa By http://tranhba.com  khiªu chiÕn lÖnh ®øng ®éi ghi chÐp khiªu chiÕn lÖnh c¸ ®Õm TaskID 

function checkBangHuiLimit() 
local TongName,TongID = GetTongName(); 
if TongName == "" or TongName == nil then 
return 0; 
else 
return 1; 
end 
end 

function checkCreatLG(szlgname) 
local nlid = LG_GetLeagueObj(TIAOZHANLING_LGTYPE,TIAOZHANLING_LGName) 
if nlid == 0 or nlid == nil then 
local nNewLeagueID = LG_CreateLeagueObj() 
LG_SetLeagueInfo(nNewLeagueID, TIAOZHANLING_LGTYPE,TIAOZHANLING_LGName) -- script viet hoa By http://tranhba.com  thiÕt trÝ x· ®oµn tin tøc ( lo¹i h×nh # tªn ) 
local ret = LG_ApplyAddLeague(nNewLeagueID, "", "") 
LG_FreeLeagueObj(nNewLeagueID) 
end 
end 

function checkJoinLG(szlgname) 
local roleid = LG_GetLeagueObjByRole(TIAOZHANLING_LGTYPE,szlgname); 
if roleid == 0 or roleid == nil then 
local nMemberID = LGM_CreateMemberObj() -- script viet hoa By http://tranhba.com  sinh thµnh x· ®oµn thµnh viªn sè liÖu ®èi t­îng ( trë vÒ ®èi t­îng ID) 
-- script viet hoa By http://tranhba.com  thiÕt trÝ x· ®oµn thµnh viªn ®Ých tin tøc ( vai trß tªn # chøc vÞ # x· ®oµn lo¹i h×nh # x· ®oµn tªn ) 
LGM_SetMemberInfo(nMemberID,szlgname, 0, TIAOZHANLING_LGTYPE, TIAOZHANLING_LGName) 
local ret = LGM_ApplyAddMember(nMemberID, "", "") 
LGM_FreeMemberObj(nMemberID) 
end 
end 
