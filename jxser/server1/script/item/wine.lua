-- script viet hoa By http://tranhba.com Create by mengfan ,2004-9-14 
-- script viet hoa By http://tranhba.com  hoa quÕ r­îu 
-- script viet hoa By http://tranhba.com  t¸c dông # sö dông sau , ng­êi sö dông cËp kú häp thµnh ®éi ®éi viªn may m¾n trŞ gi¸ 30 phót bªn trong gia t¨ng 20 ®iÓm . 
-- script viet hoa By http://tranhba.com  ®¹t ®­îc ®iÒu kiÖn # hÖ thèng ph¸t ra , tËp tÒ ®¹t ®­îc vËt nµy phÈm cÇn thiÕt ®İch tÊt c¶ mét ch÷ ®éc nhÊt . 



function main(nItemIndex) 
local G,D,P,nLevel = GetItemProp(nItemIndex);
-- 4369
-- 4370
-- 4371
-- 4372
-- 4373

if P == 4369 then
AddSkillState(410, 1, 1,32400) 
elseif P == 4370 then
AddSkillState(410, 2, 1,32400) 
elseif P == 4371 then
AddSkillState(410, 6, 1,32400) 
elseif P == 4372 then
AddSkillState(410, 8, 1,32400) 
elseif P == 4373 then
AddSkillState(410, 10, 1,32400) 
end

return 0 
-- end 


-- for i = 1, nMemCount do 
-- PlayerIndex = GetTeamMember( i ); 

-- AddSkillState(450, 3, 1, 32400) 
-- end; 

-- PlayerIndex = nPreservedPlayerIndex; 
-- return 0 
end; 
