-- script viet hoa By http://tranhba.com zhongchaolong 
-- script viet hoa By http://tranhba.com  d¹o ch¬i c©y nÕn 
-- script viet hoa By http://tranhba.com 1 canh giê bªn trong ®¸nh tr¸ch sÏ ®¹t ®­îc kinh nghiÖm gÊp béi 
-- script viet hoa By http://tranhba.com 100% x¸c suÊt ®Ó cho 4 lo¹i ®Ìn lång # con b­ím ®Ìn lång # , # n¨m gi¸c tinh ®Ìn lång # , # viªn ®Ìn lång # , # tr­êng ®Ìn lång # ®ång thêi xuÊt hiÖn , tån t¹i thêi gian lµ 5 phót . 
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\event\\zhongqiu_jieri\\200808\\taskctrl.lua")
Include("\\script\\event\\zhongqiu_jieri\\200808\\lib\\common.lua")

local tbNpcList = 
{ 
	{szName = "ºûµûµÆÁý", nLevel = 1, nNpcId = 1215, nTime = 60*5, szScriptPath = "\\script\\event\\zhongqiu_jieri\\200808\\sanyue\\denglong.lua"},
	{szName = "ÐÇÐÇµÆÁý", nLevel = 1, nNpcId = 1216,nTime = 60*5, szScriptPath = "\\script\\event\\zhongqiu_jieri\\200808\\sanyue\\denglong.lua"},
	{szName = "Ô²µÆÁý", nLevel = 1, nNpcId = 1218, nTime = 60*5, szScriptPath = "\\script\\event\\zhongqiu_jieri\\200808\\sanyue\\denglong.lua"},
	{szName = "³¤¹ÜµÆÁý", nLevel = 1, nNpcId = 1217, nTime = 60*5, szScriptPath = "\\script\\event\\zhongqiu_jieri\\200808\\sanyue\\denglong.lua"},

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
AddSkillState(892, 1, 1, 18*60*60); 


local nMapId,nPosX,nPosY = GetWorldPos() 
	zhongqiu0808_CallNpc(%tbNpcList[random(1,getn(%tbNpcList))], nMapId, (nPosX + random(-5,5))*32, (nPosY + random(-5,5))*32 )


end
