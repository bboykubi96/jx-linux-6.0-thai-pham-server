function main() 
local nPreservedPlayerIndex = PlayerIndex; 
local nMemCount = GetTeamSize();-- script viet hoa By http://tranhba.com  ®éi ngò nh©n sè 
if nMemCount == 0 then 
Msg2Player("Ngµi ë 30 phót bªn trong ®¹t ®­îc gÊp ®«i kinh nghiÖm trÞ gi¸ t­ëng th­ëng .") 
AddSkillState(440, 1, 1, 32400); 
else 
for i = 1, nMemCount do 
PlayerIndex = GetTeamMember( i );-- script viet hoa By http://tranhba.com  trong ®éi ngò thø i ng­êi PlayerIndex 
Msg2Player("Ngµi ë 30 phót bªn trong ®¹t ®­îc gÊp ®«i kinh nghiÖm trÞ gi¸ t­ëng th­ëng .") 
AddSkillState(440, 1, 1, 32400); 
end 
PlayerIndex = nPreservedPlayerIndex; 
end 
end
