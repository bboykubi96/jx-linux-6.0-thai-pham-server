-- script viet hoa By http://tranhba.com  v�ng ki�m ba chu ni�n ho�t ��ng 
-- script viet hoa By http://tranhba.com  ��u sa th� ��o 
-- script viet hoa By http://tranhba.com  s� d�ng sau ��t ���c 300w kinh nghi�m 
-- script viet hoa By http://tranhba.com  nhi�u nh�t nh�ng ��t ���c 1 �c 
-- script viet hoa By http://tranhba.com  h�n 80 c�p tr� l�n c�ng h��ng tr� gi� nh� ch�i s� d�ng 

Include("\\script\\event\\jxanniversary3\\head.lua");

function main(nItemIndex) 
str= 
{ "<#> �n v�o m�t ��u sa th� ��o , nh�ng ��t ���c <color=red>"..tostring(JXANNIVERSARY3_ONCEEXP).."<color> ��ch kinh nghi�m , nh�ng l� th�ng qua �n v�o ��u sa th� ��o l�y ���c kinh nghi�m th��ng h�n l� <color=red>"..tostring(JXANNIVERSARY3_MAXOWNEXP).."<color> , nhi�u th�c ng��i kh�ng c� hi�u qu� . ", 
"<#> s� d�ng ��u sa th� ��o /#_UseDoushaShoutao("..nItemIndex..")", 
"<#> ta suy ngh� m�t ch�t n�a /OnCancel", 
}; 
Say(str[1], 2, str[2], str[3]); 
return 1; 
end 

function _UseDoushaShoutao(nItemIndex) 
if (JxAn_cloud_join() ~= 1) then 
return 
end; 

if (GetTask(TASKID_DOUSHASHOUTAO_EXP) >= JXANNIVERSARY3_MAXOWNEXP) then 
Msg2Player("Ng��i �� s� d�ng qu� nhi�u ��u sa th� ��o , kh�ng th� th�ng qua n�a s� d�ng ��u sa th� ��o t�ng l�n kinh nghi�m . "); 
return 
end 

if (RemoveItemByIndex(nItemIndex) == 1 ) then 
local nAddExp = 0; 
		if ( (GetTask(TASKID_DOUSHASHOUTAO_EXP) + JXANNIVERSARY3_ONCEEXP) > JXANNIVERSARY3_MAXOWNEXP) then
nAddExp = JXANNIVERSARY3_MAXOWNEXP - GetTask(TASKID_DOUSHASHOUTAO_EXP); 
else 
nAddExp = JXANNIVERSARY3_ONCEEXP; 
end 

-- script viet hoa By http://tranhba.com  gia t�ng kinh nghi�m 
		SetTask(TASKID_DOUSHASHOUTAO_EXP, GetTask(TASKID_DOUSHASHOUTAO_EXP) + nAddExp);
AddOwnExp(nAddExp); 
Msg2Player("Ng��i th�c d�ng m�t ��u sa th� ��o , thu ���c "..JXANNIVERSARY3_ONCEEXP.." kinh nghi�m "); 
else 
Msg2Player("Kh�ng c� ��u sa th� ��o c� th� s� d�ng #"); 
end 
end 

function OnCancel() 
return 0; 
end 
