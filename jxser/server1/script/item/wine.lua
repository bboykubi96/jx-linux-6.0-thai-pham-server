-- script viet hoa By http://tranhba.com Create by mengfan ,2004-9-14 
-- script viet hoa By http://tranhba.com  hoa qu� r��u 
-- script viet hoa By http://tranhba.com  t�c d�ng # s� d�ng sau , ng��i s� d�ng c�p k� h�p th�nh ��i ��i vi�n may m�n tr� gi� 30 ph�t b�n trong gia t�ng 20 �i�m . 
-- script viet hoa By http://tranhba.com  ��t ���c �i�u ki�n # h� th�ng ph�t ra , t�p t� ��t ���c v�t n�y ph�m c�n thi�t ��ch t�t c� m�t ch� ��c nh�t . 



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
