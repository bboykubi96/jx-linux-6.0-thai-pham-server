-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n in t� n�t b�n Vi�t Nam - b�c ��u ti�n �an 
-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##item_beidouxiandan.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ## t� kh�ng ph�i l� ng� 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2009-02-26 13:30:12 

-- script viet hoa By http://tranhba.com  ====================================================== 

Include("\\script\\task\\metempsychosis\\task_func.lua");	-- script viet hoa By http://tranhba.com  ת��ͷ�ļ�
Include("\\script\\task\\task_addplayerexp.lua");			-- script viet hoa By http://tranhba.com  �ӵ��Ӿ���

function main(nItemIndex) 
local nphase = GetTask(TSK_ZHUANSHENG_XIANDAN); 

if (nphase == 1) then 
if (ST_IsTransLife() == 1) then 
local n_itemexp = GetItemParam(nItemIndex, 1); 
if (n_itemexp > 0 and n_itemexp <= 19900) then 
tl_addPlayerExp(n_itemexp*10000000); 

SetTask(TSK_ZHUANSHENG_XIANDAN, 2); 

Msg2Player(format("��t ���c %d ng�n v�n kinh nghi�m .", n_itemexp)); 
WriteLog(format("[%s]\t%s\tName:%s\tAccount:%s\tUsed,LEVEL:%d,FACTION:%d,AddExp:%d0000000", 
" b�c ��u ti�n �an ", 
GetLocalDate("%Y-%m-%d %X"),GetName(), GetAccount(), 
GetLevel(), GetLastFactionNumber(), n_itemexp)); 
else 
return 1; 
end 
else 
Say("C�n ch�a s�ng l�i th� kh�ng th� s� d�ng b�c ��u ti�n �an .", 0); 
return 1; 
end 
else 
Say("N�n b�c ��u ti�n �an kh�ng ph�i l� ��i hi�p ��ch , cho n�n kh�ng th� s� d�ng .", 0); 
return 1; 
end 
end 

function GetDesc(nItemIndex) 
local n_itemexp = GetItemParam(nItemIndex, 1); 
return format(" � ti�n �an trong c� #%d ng�n v�n kinh nghi�m .", n_itemexp); 
end 
