-- script viet hoa By http://tranhba.com  phong v�n l�nh b�i - ��i v�i c�c tay m�i �i�u ch�nh s�ng l�i th�i gian - Modified By DinhHQ - 20110926 
Include("\\script\\activitysys\\config\\1005\\check_func.lua")
BOX_SIHAIXIAOYAO = { 
ID = {6, 1, 2398, 1}, 
Name = " t� h�i ti�u dao �an h�p qu� ", 
Pill = { 
Name = " t� h�i ti�u dao �an ", 
ID = {6, 1, 2378, 1}, 
Count = 10, 
}, 
} 

BOX_WUZHOULINGKONG = { 
ID = {6, 1, 2399, 1}, 
Name = " n�m ch�u l�ng kh�ng �an h�p qu� ", 
Pill = { 
Name = " n�m ch�u l�ng kh�ng �an ", 
ID = {6, 1, 2397, 1}, 
Count = 10, 
}, 
} 

BOX_JIUTIANYUNYOU = { 
ID = {6, 1, 2400, 1}, 
Name = " c�u thi�n d�o ch�i �an h�p qu� ", 
Pill = { 
Name = " c�u thi�n d�o ch�i �an ", 
ID = {6, 1, 2379, 1}, 
Count = 10, 
}, 
} 

function use(box) 
if (not box) then 
return 1 
end 
local pill = box.Pill 
if (CalcFreeItemCellCount() < 10) then 
Say(format(" �t nh�t c�n 10 c� ch� tr�ng t�i ch�a ��ng <color=red>%s<color>.", pill.Name)) 
return 1 
end 
-- script viet hoa By http://tranhba.com  phong v�n l�nh b�i - tay m�i s� d�ng ra v�t ph�m kh�a - Modified By DinhHQ - 20110926 
if tbPVLB_Check:IsNewPlayer() == 1 and tbPVLB_Check:CheckTime() == 1 then 
for i = 1, pill.Count do 
local nidx = AddItem(pill.ID[1], pill.ID[2], pill.ID[3], pill.ID[4], 0, 0) 
SetItemBindState(nidx, -2) 
end 
else 
for i = 1, pill.Count do 
AddItem(pill.ID[1], pill.ID[2], pill.ID[3], pill.ID[4], 0, 0) 
end 
end 

Msg2Player(format("Ng�i ��t ���c %d %s", pill.Count, pill.Name)) 
return 0 
end 
