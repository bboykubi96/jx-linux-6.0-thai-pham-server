-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn in tê nÕt b¶n ViÖt Nam b¶n - trêi ban b¶o r­¬ng 
-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn ##tianci_baoxiang.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ## tö kh«ng ph¶i lµ ng­ 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2009-05-21 14:38:37 

-- script viet hoa By http://tranhba.com  ====================================================== 

Include("\\script\\event\\birthday_jieri\\200905\\class.lua");
Include("\\script\\lib\\awardtemplet.lua")

local tbItem = 
{ 
{szName=" hïng ", tbProp={6, 1, 2062, 1, 0, 0}, nRate = 25, nExpiredTime = tbBirthday0905.tbTask.item_expiredtime1}, 
{szName=" ph¸ch ", tbProp={6, 1, 2063, 1, 0, 0}, nRate = 25, nExpiredTime = tbBirthday0905.tbTask.item_expiredtime1}, 
{szName=" ngµy ", tbProp={6, 1, 2064, 1, 0, 0}, nRate = 25, nExpiredTime = tbBirthday0905.tbTask.item_expiredtime1}, 
{szName=" h¹ ", tbProp={6, 1, 2065, 1, 0, 0}, nRate = 25, nExpiredTime = tbBirthday0905.tbTask.item_expiredtime1}, 
} 

function main(nItemIndex) 

if GetItemParam(nItemIndex, 1) == 0 or GetItemParam(nItemIndex, 1) <= tonumber(GetLocalDate("%Y%m%d")) then 
Talk(1,"","Nªn vËt phÈm ®· qua kú ") 
return 0 
end 
if CalcFreeItemCellCount() < 1 then 
Talk(1,"", format("Trang bÞ chç trèng ch­a ®ñ %d chç trèng , xin/mêi lÇn n÷a an bµi mét c¸i .", 1)) 
return 1 
end 
tbAwardTemplet:GiveAwardByList(%tbItem, "use "..GetItemName(nItemIndex)); 

end 

function IsPickable(nItemIndex) 

local nExpiredTime = tbBirthday0905.tbTask.item_expiredtime1; 
if tonumber(GetLocalDate("%Y%m%d")) >= nExpiredTime then 
Msg2Player("Nªn vËt phÈm ®· qua kú "); 
return 0 
end 

if ITEM_GetExpiredTime(nItemIndex) == 0 then 
tbAwardTemplet:ITEM_SetExpiredTime(nItemIndex, nExpiredTime); 
end 

return 1 
end
