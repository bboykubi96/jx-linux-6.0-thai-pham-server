Include("\\script\\tong\\tong_header.lua");
-- script viet hoa By http://tranhba.com  b�y th�nh ph� c�ng th� ph��ng l�nh b�i EventItemID 
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

-- script viet hoa By http://tranhba.com  l�nh b�i gi� c� 
CardPrice = 200000; 
-- script viet hoa By http://tranhba.com  thu v� l�nh b�i gi� c� 
ReturnCardPrice = 10000; 

TIAOZHANLING_LGTYPE = 538 -- script viet hoa By http://tranhba.com  khi�u chi�n l�nh ��ng ��i lo�i h�nh 
TIAOZHANLING_LGName = "tiaozhanling" -- script viet hoa By http://tranhba.com  khi�u chi�n l�nh ��ng ��i ��i ng� t�n 
LGTSK_TIAOZHANLING_COUNT = 1 -- script viet hoa By http://tranhba.com  khi�u chi�n l�nh ��ng ��i ghi ch�p khi�u chi�n l�nh c� ��m TaskID 

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
LG_SetLeagueInfo(nNewLeagueID, TIAOZHANLING_LGTYPE,TIAOZHANLING_LGName) -- script viet hoa By http://tranhba.com  thi�t tr� x� �o�n tin t�c ( lo�i h�nh # t�n ) 
local ret = LG_ApplyAddLeague(nNewLeagueID, "", "") 
LG_FreeLeagueObj(nNewLeagueID) 
end 
end 

function checkJoinLG(szlgname) 
local roleid = LG_GetLeagueObjByRole(TIAOZHANLING_LGTYPE,szlgname); 
if roleid == 0 or roleid == nil then 
local nMemberID = LGM_CreateMemberObj() -- script viet hoa By http://tranhba.com  sinh th�nh x� �o�n th�nh vi�n s� li�u ��i t��ng ( tr� v� ��i t��ng ID) 
-- script viet hoa By http://tranhba.com  thi�t tr� x� �o�n th�nh vi�n ��ch tin t�c ( vai tr� t�n # ch�c v� # x� �o�n lo�i h�nh # x� �o�n t�n ) 
LGM_SetMemberInfo(nMemberID,szlgname, 0, TIAOZHANLING_LGTYPE, TIAOZHANLING_LGName) 
local ret = LGM_ApplyAddMember(nMemberID, "", "") 
LGM_FreeMemberObj(nMemberID) 
end 
end 
