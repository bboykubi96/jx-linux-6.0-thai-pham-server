-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n in t� n�t b�n Vi�t Nam b�n - ng�n n�m h� th� � 
-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##qiannian_heshouwu.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ## t� kh�ng ph�i l� ng� 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2009-05-21 12:17:35 
-- script viet hoa By http://tranhba.com  chuy�n sinh sau vai tr� s� d�ng , th�ng qua v�t n�y ph�m nhi�u nh�t ��t ���c 25 �i�m ti�m n�ng �i�m 

-- script viet hoa By http://tranhba.com  ====================================================== 

IncludeLib("SETTING"); 

TSK_QIANNIAN_HESHOUWU_PROP = 2597; 

function main() 
if (GetTask(TSK_QIANNIAN_HESHOUWU_PROP) >= 25) then 
Msg2Player("N�n v�t ph�m kh�ng th� th�ng c�p ��i hi�p ��ch c�ng l�c ."); 
return 1; 
end 

if (ST_IsTransLife() ~= 1) then 
Msg2Player("��i hi�p kh�ng th� ��t ���c b�t k� hi�u qu� n�o ."); 
return 1; 
end 

local tb_prop = { 
{pot=3,msg=" m�t ch�t "}, 
{pot=4,msg=" kh�ng cam k�t "}, 
{pot=5,msg=" m�t �t "}, 
{pot=6,msg=" kh�ng �t "}, 
{pot=7,msg=" h�i nhi�u "}, 
}; 

local n_rand = random(1,5); 
local n_prop = tb_prop[n_rand].pot 
	if (n_prop + GetTask(TSK_QIANNIAN_HESHOUWU_PROP) > 25) then
n_prop = 25 - GetTask(TSK_QIANNIAN_HESHOUWU_PROP); 
end 

AddProp(n_prop); 

	SetTask(TSK_QIANNIAN_HESHOUWU_PROP,GetTask(TSK_QIANNIAN_HESHOUWU_PROP)+ n_prop);

Msg2Player(format("S� d�ng sau c� th� ��t ���c %s hi�u qu� ",tostring(n_prop))); 
end 
