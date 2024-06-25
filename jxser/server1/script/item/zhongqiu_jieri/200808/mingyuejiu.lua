-- script viet hoa By http://tranhba.com zhongchaolong 
-- script viet hoa By http://tranhba.com  tr¨ng s¸ng r­îu 
-- script viet hoa By http://tranhba.com  vai trß sö dông tr¨ng s¸ng say r­îu sÏ gÊp hai ph¸t triÓn th«ng qua 2 trung b¸nh Trung thu # thÊy hµng th¸ng bİnh # cïng # ng¾m tr¨ng b¸nh Trung thu # ®İch kinh nghiÖm h¹n chÕ # tõ 15 øc ®Õn 30 øc kinh nghiÖm . 
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\event\\zhongqiu_jieri\\200808\\taskctrl.lua")
function main() 
zhongqiu0808_ResetTask() 
local nDate = tonumber(GetLocalDate("%y%m%d")) 
if nDate > zhongqiu0808_ItemEndTime then 
Say("Nªn vËt phÈm ®· qua sö dông kú .",0) 
return 0; 
end 
if zhongqiu0808_PlayerLimit() ~= 1 then 

Say("Yªu cÇu 50 cÊp trë lªn th¶ ®· sung trŞ gi¸ ", 0) 
return 1 
end 
if GetTask(zhongqiu0808_TSK_mingyuejiu) == 1 then 
Say("Ngµi ®· sö dông nªn ®¹o cô liÔu .") 
return 1 
end 

SetTask(zhongqiu0808_TSK_mingyuejiu, 1) 
Msg2Player("Sö dông tr¨ng s¸ng say r­îu , x©y th¸ng trung thu b¸nh Trung thu cïng ng¾m tr¨ng trung thu b¸nh Trung thu ®İch kinh nghiÖm th­îng h¹n ®em t¨ng ®Õn 30 øc .") 
end
