-- script viet hoa By http://tranhba.com zhongchaolong 
-- script viet hoa By http://tranhba.com  cho to�n h�p th�nh ��i th�nh vi�n � 30 ph�t b�n trong g�p b�i kinh nghi�m . 
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\event\\zhongqiu_jieri\\200808\\taskctrl.lua")

function main() 
zhongqiu0808_ResetTask() 
-- script viet hoa By http://tranhba.com  local nDate = tonumber(GetLocalDate("%y%m%d")) 
-- script viet hoa By http://tranhba.com  if nDate > zhongqiu0808_ItemEndTime then 
-- script viet hoa By http://tranhba.com  Say("N�n v�t ph�m �� qua k� . ",0) 
-- script viet hoa By http://tranhba.com  return 0; 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com  if zhongqiu0808_PlayerLimit() ~= 1 then 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  Say("Ph�i l� 50 c�p tr� l�n sung tr� gi� nh� ch�i . ", 0) 
-- script viet hoa By http://tranhba.com  return 1 
-- script viet hoa By http://tranhba.com  end 


local nPreservedPlayerIndex = PlayerIndex; 
local nMemCount = GetTeamSize(); 


if (nMemCount == 0 ) then 
AddSkillState(892, 1, 1,18*60*30) 
return 0 
end 

for i = 1, nMemCount do 
PlayerIndex = GetTeamMember( i ); 
AddSkillState(892, 1, 1, 18*60*30) 
end; 

PlayerIndex = nPreservedPlayerIndex; 
return 0 
end
