-- script viet hoa By http://tranhba.com  v�ng ki�m ba chu ni�n ho�t ��ng 
-- script viet hoa By http://tranhba.com  ph�c l�c l� t�i 
-- script viet hoa By http://tranhba.com  th�p l�y l�c ng�u nhi�n ��t ���c b�ch b�t g�o # b�ch sa ���ng # ��u sa # h�ng t�o 4 lo�i t�i li�u trung ��ch m�t lo�i 
-- script viet hoa By http://tranhba.com  h�n ch� 80 c�p tr� l�n nh� ch�i , h��ng tr� gi� d�ng h� 

Include("\\script\\event\\jxanniversary3\\head.lua");

function PickUp(nItemIndex, nPlayerIndex) 
if (JxAn_cloud_join() ~= 1) then 
return 0; 
end; 

local nrand = random(100); 
local naddrate = 0; 
for i = 1, getn(tb_JXAN_RESOURCERATE) do 
		naddrate = naddrate + tb_JXAN_RESOURCERATE[i][3];
if (naddrate >= nrand) then 
AddItem(tb_JXAN_RESOURCERATE[i][1][1],tb_JXAN_RESOURCERATE[i][1][2],tb_JXAN_RESOURCERATE[i][1][3],1,1,1); 
Msg2Player("Ng��i thu ���c m�t "..tb_JXAN_RESOURCERATE[i][2]); 
break 
end; 
end; 
end 

function IsPickable(nItemIndex, nPlayerIndex) 
-- script viet hoa By http://tranhba.com  ho�t ��ng k� k�t th�c th�p l�y v�t ph�m kh�ng h� n�a h�u hi�u 
local nCurDate = tonumber(GetLocalDate("%Y%m%d")); 
if (nCurDate > JXANNIVERSARY3_ENDDATE) then 
Say(" l�n n�y ho�t ��ng �� k�t th�c , c�m �n s� tham d� c�a ng�i #", 0); 
return 1; 
end; 

if (JxAn_cloud_join() ~= 1) then 
return 0; 
end; 

return 1; 
end;
