-- script viet hoa By http://tranhba.com  v�ng ki�m ba chu ni�n ho�t ��ng 
-- script viet hoa By http://tranhba.com  t�o n� th� ��o 
-- script viet hoa By http://tranhba.com  s� d�ng sau ��t ���c 8 gi� ��nh tr�ch kinh nghi�m g�p ��i , kh�ng th� c�ng ti�n th�o l� �i�p gia 
-- script viet hoa By http://tranhba.com  h�n 80 c�p tr� l�n c�ng h��ng tr� gi� nh� ch�i s� d�ng 

Include("\\script\\event\\jxanniversary3\\head.lua");

function main(nItemIndex) 
str= 
{ "<#> �n v�o t�o n� th� ��o , nh�ng ��t ���c <color=red>8<color> gi� kinh nghi�m g�p ��i , nh�ng l� kh�ng th� c�ng ti�n th�o l� �i�p gia . ", 
"<#> �n v�o t�o n� th� ��o /#_UseZaoNiShoutao("..nItemIndex..")", 
"<#> ta suy ngh� m�t ch�t n�a /OnCancel", 
}; 
Say(str[1], 2, str[2], str[3]); 
return 1; 
end 

function _UseZaoNiShoutao(nItemIndex) 
if (JxAn_cloud_join() ~= 1) then 
return 
end; 

if RemoveItemByIndex(nItemIndex) == 1 then 
AddSkillState(440, 1, 1, 64800 * 8); 
Msg2Player("Ng��i th�c d�ng m�t t�o n� th� ��o , ��t ���c 8 gi� ��nh tr�ch kinh nghi�m g�p ��i hi�u qu� . ") 
end; 
end; 

function OnCancel() 
end;
