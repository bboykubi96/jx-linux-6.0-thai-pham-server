-- script viet hoa By http://tranhba.com  n�m ��c ng��i �i ���ng NPC m�c chu tr�i ch� tang ch�u 10 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 

-- script viet hoa By http://tranhba.com  s�a ��i sau c�ng t� gi�o ch� tuy�n t��ng quan tang ch�u ch�n v�n 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2005/01/18 

Include("\\script\\task\\newtask\\newtask_head.lua");
Include("\\script\\task\\newtask\\lib_setmembertask.lua");
Include("\\script\\task\\newtask\\master\\xiepai\\maintask.lua");

Include("\\script\\global\\skills_table.lua");

function main() 

-- script viet hoa By http://tranhba.com  nhi�m v� m�i h� th�ng c�ng t� gi�o ch� tuy�n t��ng quan ch�n v�n -- script viet hoa By http://tranhba.com  

local myTaskValue = GetTask(1003) 
local myCamp = nt_getCamp() 


if (myTaskValue==150) then 
task_level30_14(); 
return 
end 


-- script viet hoa By http://tranhba.com  nhi�m v� m�i h� th�ng c�ng t� gi�o ch� tuy�n t��ng quan ch�n v�n -- script viet hoa By http://tranhba.com  


UTask_wu = GetTask(10) 
if (GetSeries() == 1) and (GetFaction() == "wudu") then 
		if (UTask_wu == 10*256+10) then		-- script viet hoa By http://tranhba.com 10�����������
i = GetItemCount(86) 
if (i >= 10) and (HaveItem(220) == 1) then 
Talk(1,"L10_prise","Tang tr�i ch� , ��y l� ng��i mu�n con nh�n c�ng t� s��ng ") 
else 
Talk(1,"","��c v�t c�n ch�a �� , th� n�o ch�m nh� v�y , nhanh l�n m�t ch�t !") 
end 
elseif ((UTask_wu == 10*256) and (GetLevel() >= 10)) then -- script viet hoa By http://tranhba.com 10 c�p nhi�m v� 
Say(" l�o th�n luy�n c�ng t�i li�u kh�ng �� , ng��i ��n Nh�n ��ng s�n th��ng cho ta b�t m��i con con nh�n , l�i �i mua 10 t�i t� s��ng t�i ",2,"Tu�n l�nh !/L10_get_yes","T�i h� c�n c� vi�c trong ng��i !/L10_get_no") 
else -- script viet hoa By http://tranhba.com  th��ng quy ��i tho�i 
Talk(1,"","H�n b�t �i con ta ��ch t�nh c�nh c�n s� s� � tr��c m�t . �� cho ta b�t ���c h�n ta mu�n r�t h�n c�t , sau d�ng th�n th� c�a h�n t�i luy�n con nh�n ��c . ta mu�n cho h�n th�ng kh� , c�u sinh kh�ng th� , mu�n ch�t kh�ng ph�i !") 
end 
else 
Talk(1,"","Kh�ng bi�t con ta b�y gi� th� n�o , c� hay kh�ng b�nh an v� s� . ") 
end 

end; 

function L10_get_yes() 
Talk(1, "","Nhanh �i mau tr� l�i # ta ch� mu�n !") 
	SetTask(10,10*256+10)
AddNote("Tr� gi�p tang ch�u t�m ���c 10 ch� con nh�n c�ng 100 t�i t� s��ng .") 
Msg2Player("Tr� gi�p tang ch�u t�m ���c 10 ch� con nh�n c�ng 100 t�i t� s��ng .") 
end; 

function L10_get_no() 
Talk(1,"","Thi�t l� ! th�t l� kh�ng th� tin !") 
end; 

function L10_prise() 
Talk(1,"","R�t t�t ! ng��i mau �i ra ! kh�ng mu�n l�m tr� ng�i s� luy�n c�ng c�a ta !") 
DelItem(220) 
for i = 1, GetItemCount(86) do DelItem(86) end 
SetTask(10,20*256) 
SetRank(50) 
-- script viet hoa By http://tranhba.com  AddMagic(62) 
-- script viet hoa By http://tranhba.com  AddMagic(60) 
-- script viet hoa By http://tranhba.com  AddMagic(67) 
add_wu(20) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
Msg2Player("Ch�c m�ng ng��i ! ng��i t�n th�ng l�m �o�t h�n t�n nh�n ! h�c ���c v� c�ng # n�m ��c �ao ph�p # n�m ��c ca t�ng ph�p # n�m ��c ch��ng ph�p # c�u thi�n x�u l�i .") 
AddNote("Tr� gi�p tang ch�u t�m ���c con nh�n c�ng t� s��ng . b� ��ng c�a v� �o�t h�n t�n nh�n . ") 
end; 
