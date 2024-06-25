-- script viet hoa By http://tranhba.com zhongchaolong 
-- script viet hoa By http://tranhba.com  tiªn vò c©y nÕn 
-- script viet hoa By http://tranhba.com 8 canh giê bªn trong ®¸nh tr¸ch sÏ ®¹t ®­îc kinh nghiÖm gÊp béi 
-- script viet hoa By http://tranhba.com 100% x¸c suÊt ®Ó cho 1 c¸ # c­ìi ngùa ®Ìn # ®ång thêi xuÊt hiÖn . c­ìi ngùa ®Ìn ®Ých tån t¹i thêi gian lµ 5 phót . 
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\event\\zhongqiu_jieri\\200808\\taskctrl.lua")

Include("\\script\\event\\zhongqiu_jieri\\200808\\lib\\common.lua")

local tbNpcList = 
{ 
	{szName = "Ôî¾ýµÆÁý", nLevel = 1, nNpcId = 1220, nTime = 60*5, szScriptPath = "\\script\\event\\zhongqiu_jieri\\200808\\sanyue\\denglong.lua"},

} 
function main() 
zhongqiu0808_ResetTask() 
local nDate = tonumber(GetLocalDate("%y%m%d")) 
if nDate > zhongqiu0808_ItemEndTime then 
Say("Nªn vËt phÈm ®· qua kú .",0) 
return 0; 
end 
-- script viet hoa By http://tranhba.com  if zhongqiu0808_PlayerLimit() ~= 1 then 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  Say("Ph¶i lµ 50 cÊp trë lªn sung trÞ gi¸ nhµ ch¬i . ", 0) 
-- script viet hoa By http://tranhba.com  return 1 
-- script viet hoa By http://tranhba.com  end 
AddSkillState(892, 1, 1, 18*60*60*8); 
local nMapId,nPosX,nPosY = GetWorldPos() 
	zhongqiu0808_CallNpc(%tbNpcList[1], nMapId, (nPosX + random(-2,2))*32, (nPosY + random(-2,2))*32 )
end
