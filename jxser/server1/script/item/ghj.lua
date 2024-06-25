-- script viet hoa By http://tranhba.com Create by mengfan ,2004-9-14 
-- script viet hoa By http://tranhba.com  hoa quÕ r­îu 
-- script viet hoa By http://tranhba.com  t¸c dông # sö dông sau , ng­êi sö dông cËp kú häp thµnh ®éi ®éi viªn may m¾n trŞ gi¸ 30 phót bªn trong gia t¨ng 20 ®iÓm . 
-- script viet hoa By http://tranhba.com  ®¹t ®­îc ®iÒu kiÖn # hÖ thèng ph¸t ra , tËp tÒ ®¹t ®­îc vËt nµy phÈm cÇn thiÕt ®İch tÊt c¶ mét ch÷ ®éc nhÊt . 



function main() 
local nPreservedPlayerIndex = PlayerIndex; 
local nMemCount = GetTeamSize(); 

if (nMemCount == 0 ) then 
AddSkillState(450, 2, 1,32400) 
return 0 
end 


for i = 1, nMemCount do 
PlayerIndex = GetTeamMember( i ); 

AddSkillState(450, 2, 1, 32400) 
end; 

PlayerIndex = nPreservedPlayerIndex; 
return 0 
end; 
