-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n in t� n�t b�n m�t 90 c�p ��i th�a b� t�ch 
-- script viet hoa By http://tranhba.com  b�n ph�i ki�n �i�m k�ch s� d�ng , nh�ng t�ng l�n 90 c�p �� thu�n th�c k� n�ng ��n 20 c�p . 
-- script viet hoa By http://tranhba.com  6 1 2424 
-- script viet hoa By http://tranhba.com  Edited by t� kh�ng ph�i l� ng� 
-- script viet hoa By http://tranhba.com  2010/06/29 15:21 

-- script viet hoa By http://tranhba.com  ====================================================== 

Include("\\script\\task\\system\\task_string.lua")

function main(nItemIdx) 
local n_fac = GetLastFactionNumber(); 
if (n_fac < 0) then 
Talk(1, "","Gi�ng nh� quy�n s�ch n�y mi�u t� ch�nh l� c�c m�n ph�i cao c�p v� c�ng , ng��i kh�ng bi�t b�n h� huy�n c� "); 
return 1; 
end 

local tb_90skill = { 
[0] = {318, 319, 321}, 
[1] = {322, 325, 323}, 
[2] = {339, 302, 342}, 
[3] = {353, 355}, 
[4] = {380, 328}, 
[5] = {336, 337}, 
[6] = {357, 359}, 
[7] = {361, 362}, 
[8] = {365, 368}, 
[9] = {372, 375}, 
}; 

local tb_Desc = {}; 
for i = 1, getn(tb_90skill[n_fac]) do 
local skill = HaveMagic(tb_90skill[n_fac][i]); 
if (skill ~= -1 and skill ~= 20) then 
tinsert(tb_Desc, format("Th�ng c�p ".."%s/#upgrade_skilllevel(%d)", GetSkillName(tb_90skill[n_fac][i]), tb_90skill[n_fac][i])); 
end 
end 

if (getn(tb_Desc) == 0) then 
Talk(1, "","K� n�ng ��t t�i cao c�p nh�t ho�c l� c�n ch�a h�c ."); 
return 1; 
end 

tinsert(tb_Desc, 1, " l�a ch�n c�n th�ng c�p ��ch k� n�ng :"); 
tinsert(tb_Desc,"K�t th�c ��i tho�i /OnCancel"); 
CreateTaskSay(tb_Desc); 
return 1; 
end 

function upgrade_skilllevel(n_skillid) 
if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 20) then 
return 
end 

if (ConsumeItem(3, 1, 6, 1, 2424, -1) == 1) then 
AddMagic(n_skillid, 20); 
WriteLog(format("[%s]\t%s\tAccount:%s\tName:%s\tUpGrade Skill:%d", 
" ��i th�nh b� t�ch 90", 
GetLocalDate("%Y-%m-%d %X"), 
GetAccount(), 
GetName(), 
n_skillid )); 
end 
end 


function OnCancel() 
end 
