-- script viet hoa By http://tranhba.com Create by mengfan ,2004-9-14 
-- script viet hoa By http://tranhba.com  �o�n vi�n b�nh 
-- script viet hoa By http://tranhba.com  t�c d�ng # s� d�ng sau , ng��i s� d�ng c�p k� h�p th�nh ��i ��i vi�n 30 ph�t b�n trong ��t ���c g�p ��i kinh nghi�m th�i gian . 
-- script viet hoa By http://tranhba.com  ��t ���c �i�u ki�n # h� th�ng ph�t ra , t�p t� ��t ���c v�t n�y ph�m c�n thi�t ��ch t�t c� m�t ch� ��c nh�t . 


IncludeLib("SETTING"); -- script viet hoa By http://tranhba.com  t�i nh�p SETTING ch�n v�n ch� th� kho 
function main() 
local nPreservedPlayerIndex = PlayerIndex; 
local nMemCount = GetTeamSize(); 

if (GetNpcExpRate() > 100) then 
Say("Th�t xin l�i , tr��c m�t t�m th�i kh�ng c�ch n�o s� d�ng �o�n vi�n b�nh Trung thu . ", 0) 
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
