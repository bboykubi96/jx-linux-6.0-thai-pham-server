IL("SETTING") 
IL("LEAGUE") 
Include("\\script\\lib\\gb_modulefuncs.lua")

TSK_VALENTINE = 1553 
function main(nItemIdx) 
if (gb_GetModule(" l� t�nh nh�n h�p qu� ") == 1) then 
if (GetSex() == 0) then 
if (GetTask(TSK_VALENTINE) >= 99) then 
Say("<#> ng�i �� �n h�t <color=yellow>99 kh�i t�m � X�o Kh�c L�c <color> , ti�p t�c �n v�o c�n th�n s� ch� nha #", 0) 
return 1 
end 
AddOwnExp(1000000) 
AddSkillState(440, 20, 1,32400)-- script viet hoa By http://tranhba.com 30 ph�t b�n trong ��t ���c g�p ��i kinh nghi�m th�i gian . 
AddSkillState(450, 20, 1,32400)-- script viet hoa By http://tranhba.com  may m�n tr� gi� 30 ph�t b�n trong gia t�ng 20 �i�m . 
		SetTask(TSK_VALENTINE, GetTask(TSK_VALENTINE) + 1)
if (GetTask(TSK_VALENTINE) == 99) then 
Msg2Player("<#> ng�i s� d�ng m�t ��a t�nh n�ng hoa h�ng ��t ���c 100W ch�t kinh nghi�m tr� gi� , kinh nghi�m g�p ��i c�ng may m�n gia t�ng 20 gi� r��i gi� . ") 
else 
Msg2Player("<#> ng�i s� d�ng m�t kh�i t�m � X�o Kh�c L�c ��t ���c 100W ch�t kinh nghi�m tr� gi� , kinh nghi�m g�p ��i c�ng may m�n gia t�ng 20 gi� r��i gi� . ng�i c�n c� th� s� d�ng "..(99 - GetTask(TSK_VALENTINE)).." kh�i t�m � X�o Kh�c L�c . ") 
end 
return 
else 
Msg2Player("<#> t�m � X�o Kh�c L�c ch� c� th� hi�p s� s� d�ng y�u #") 
return 1 
end 
end 
end
