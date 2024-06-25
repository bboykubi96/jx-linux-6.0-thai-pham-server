-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn in tê nÕt b¶n ViÖt Nam b¶n - b¶n míi cæ 
-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn ##xinban_gu.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ## tö kh«ng ph¶i lµ ng­ 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2009-05-21 15:19:32 

-- script viet hoa By http://tranhba.com  ====================================================== 

Include("\\script\\event\\birthday_jieri\\200905\\class.lua");
Include("\\script\\lib\\awardtemplet.lua")

function main(nItemIdx) 
local n_item_date = tonumber(FormatTime2String("%Y%m%d%H%M",ITEM_GetExpiredTime(nItemIdx))); 
local n_cur_date = tonumber(GetLocalDate("%Y%m%d%H%M")); 
if n_cur_date > n_item_date then 
Msg2Player("VËt phÈm sö dông qu¸ h¹n , tù ®éng biÕn mÊt .") 
return 0; 
end 

local bRet, szFailMsg = tbBirthday0905:IsPlayerEligible(); 

if bRet ~= 1 then 
Talk(2, "", szFailMsg,"Ngµi v× ®ñ ®iÒu kiÖn nhËn lÊy nªn vËt phÈm "); 
return 1; 
end 

if CalcFreeItemCellCount() < 10 then 
Talk(1,"", format("Trang bŞ chç trèng ch­a ®ñ %d chç trèng , xin/mêi n÷a an bµi mét c¸i .", 10)); 
return 1; 
end 

if tbBirthday0905.tbTask:get_task(tbBirthday0905.tbTask.tsk_zhuhe_maxexp) == 0 or tbBirthday0905.tbTask:get_task(tbBirthday0905.tbTask.tsk_zhuhe_maxexp) == nil then 
tbBirthday0905.tbTask:add_zhuhe_maxexp(); 
end 

if (tbBirthday0905.tbTask:get_task(tbBirthday0905.tbTask.tsk_zhuhe_curexp) >= tbBirthday0905.tbTask:get_task(tbBirthday0905.tbTask.tsk_zhuhe_maxexp)) then 
Msg2Player("§· nhËn lÊy cao nhÊt kinh nghiÖm th­îng h¹n ."); 
return 1; 
end 

local n_exp = tbBirthday0905.nxinbangu_addexp 
AddOwnExp(n_exp); 
tbBirthday0905.tbTask:add_task(tbBirthday0905.tbTask.tsk_zhuhe_curexp, floor(n_exp / tbBirthday0905.expbase)); 
Msg2Player(format("§¹t ®­îc kh«ng nÆng ®iÖp kinh nghiÖm %d.", n_exp )); 

end 
