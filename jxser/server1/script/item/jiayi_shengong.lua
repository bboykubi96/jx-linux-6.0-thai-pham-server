
-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n online chuy�n sinh nhi�m v� b�c ��u tr��ng sanh thu�t tr� c�t thi�n ��o c� 
-- script viet hoa By http://tranhba.com  FileName: jiayi_shengong.lua 
-- script viet hoa By http://tranhba.com  Edited: t� kh�ng ph�i l� c� 
-- script viet hoa By http://tranhba.com  2007-03-30 20:14:00 

-- script viet hoa By http://tranhba.com  ====================================================== 

Include("\\script\\task\\metempsychosis\\task_func.lua")

function main() 

if (check_zhuansheng_level() == 1) then 

if (GetTask(TSK_ZHUANSHENG_FLAG) == 0) then 
Msg2Player(format("�� h�c ���c %s, c�n h�c %s m�i c� th� c�ng th�nh danh to�i .", "< b�c ��u tr��ng sanh thu�t - tr� c�t thi�n >", "< b�c ��u tr��ng sanh thu�t - t�m ph�p thi�n >")); 
Say(format("�� h�c ���c %s, nh�ng l� , v� c�ng nh� c� c�n ch�a th�ng c�p , tho�t nh�n n�i n�y c�n c� b� m�t kh�ng c� ph� gi�i %s<color=yellow> %s<color> th� m� m�t c�i tin t�c .", 
"< b�c ��u tr��ng sanh thu�t - tr� c�t thi�n >","Tr�ng s�ng tr�n ","B�c ��u l�o nh�n "), 0); 

SetTask(TSK_ZHUANSHENG_FLAG,1); 

WriteLog(format("[ s�ng l�i nhi�m v� ]\t%s\tName:%s\tAccount:%s\t h�c t�p c�p b�c :%d, m�n ph�i :%d", 
GetLocalDate("%Y-%m-%d %X"),GetName(), GetAccount(), 
GetLevel(), GetLastFactionNumber())); 
return 0; 
else 
Msg2Player("�� h�c < b�c ��u tr��ng sanh thu�t - tr� c�t thi�n > li�u , ch� c� th� l�i h�c < b�c ��u tr��ng sanh thu�t - t�m ph�p thi�n > l� c� th� c�ng th�nh danh to�i li�u ."); 
return 1; 
end 

end 
return 1; 
end 
