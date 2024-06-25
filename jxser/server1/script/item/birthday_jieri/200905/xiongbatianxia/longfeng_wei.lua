-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn in tê nÕt b¶n ViÖt Nam b¶n - long ph­îng ®u«i 
-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn ##longfeng_wei.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ## tö kh«ng ph¶i lµ ng­ 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2009-05-21 12:05:35 

-- script viet hoa By http://tranhba.com  ====================================================== 

Include("\\script\\event\\birthday_jieri\\200905\\class.lua");

function main() 
local nCurDate = tonumber(GetLocalDate("%Y%m%d")) 
if 20090619 > nCurDate or nCurDate > 20090727 then 
Talk(1, "","Ho¹t ®éng ®· kÕt thóc ."); 
return 0; 
end 

if tbBirthday0905.tbTask:get_task(tbBirthday0905.tbTask.tsk_zhuhe_maxexp) == 0 or tbBirthday0905.tbTask:get_task(tbBirthday0905.tbTask.tsk_zhuhe_maxexp) == nil then 
tbBirthday0905.tbTask:add_zhuhe_maxexp(); 
end 

if (tbBirthday0905.tbTask:get_task(tbBirthday0905.tbTask.tsk_zhuhe_maxexp) == tbBirthday0905.tbTask.nmaxexpfromzhuhe) then 
tbBirthday0905.tbTask:add_zhuhe_maxexp(); 
Msg2Player("Th¨ng cÊp ®¹t ®­îc [ míi Bµn Cæ ] cïng [ míi m©m kú ] h¹n chÕ kinh nghiÖm v× 3000000000 Exp") 
else 

Talk(1, "","Kh«ng thÓ sö dông nªn vËt phÈm ."); 
return 1; 

end 
end 
