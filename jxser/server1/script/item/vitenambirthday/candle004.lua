function main() 
local nPreservedPlayerIndex = PlayerIndex; 
local nMemCount = GetTeamSize();-- script viet hoa By http://tranhba.com  ��i ng� nh�n s� 
if nMemCount == 0 then 
Msg2Player("Ng�i � 30 ph�t b�n trong ��t ���c g�p ��i kinh nghi�m tr� gi� t��ng th��ng .") 
AddSkillState(440, 1, 1, 32400); 
else 
for i = 1, nMemCount do 
PlayerIndex = GetTeamMember( i );-- script viet hoa By http://tranhba.com  trong ��i ng� th� i ng��i PlayerIndex 
Msg2Player("Ng�i � 30 ph�t b�n trong ��t ���c g�p ��i kinh nghi�m tr� gi� t��ng th��ng .") 
AddSkillState(440, 1, 1, 32400); 
end 
PlayerIndex = nPreservedPlayerIndex; 
end 
end
