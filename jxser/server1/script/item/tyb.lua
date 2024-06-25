-- script viet hoa By http://tranhba.com Create by mengfan ,2004-9-14 
-- script viet hoa By http://tranhba.com  ®oµn viªn bÝnh 
-- script viet hoa By http://tranhba.com  t¸c dông # sö dông sau , ng­êi sö dông cËp kú häp thµnh ®éi ®éi viªn 30 phót bªn trong ®¹t ®­îc gÊp ®«i kinh nghiÖm thêi gian . 
-- script viet hoa By http://tranhba.com  ®¹t ®­îc ®iÒu kiÖn # hÖ thèng ph¸t ra , tËp tÒ ®¹t ®­îc vËt nµy phÈm cÇn thiÕt ®Ých tÊt c¶ mét ch÷ ®éc nhÊt . 


IncludeLib("SETTING"); -- script viet hoa By http://tranhba.com  t¸i nhËp SETTING ch©n vèn chØ thÞ kho 
function main() 
local nPreservedPlayerIndex = PlayerIndex; 
local nMemCount = GetTeamSize(); 

if (GetNpcExpRate() > 100) then 
Say("ThËt xin lçi , tr­íc m¾t t¹m thêi kh«ng c¸ch nµo sö dông ®oµn viªn b¸nh Trung thu . ", 0) 
return 1 
end 


if (nMemCount == 0 ) then 
AddSkillState(451, 20, 1,32400) 
return 0 
end 

for i = 1, nMemCount do 
PlayerIndex = GetTeamMember( i ); 

AddSkillState(451, 20, 1, 32400) 
end; 

PlayerIndex = nPreservedPlayerIndex; 
return 0 
end;
