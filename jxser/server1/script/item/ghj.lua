-- script viet hoa By http://tranhba.com Create by mengfan ,2004-9-14 
-- script viet hoa By http://tranhba.com  hoa qu� r��u 
-- script viet hoa By http://tranhba.com  t�c d�ng # s� d�ng sau , ng��i s� d�ng c�p k� h�p th�nh ��i ��i vi�n may m�n tr� gi� 30 ph�t b�n trong gia t�ng 20 �i�m . 
-- script viet hoa By http://tranhba.com  ��t ���c �i�u ki�n # h� th�ng ph�t ra , t�p t� ��t ���c v�t n�y ph�m c�n thi�t ��ch t�t c� m�t ch� ��c nh�t . 



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
