-- script viet hoa By http://tranhba.com CheckCondition() c�n n�n h�m s� d�ng cho ki�m tra c� hay kh�ng ph� h�p gia nh�p �i�u ki�n 
Include("\\script\\missions\\csbattlelib\\csbattlehead.lua");

function main() 

if (GetMissionV(1) == 1) then 
-- script viet hoa By http://tranhba.com  kh�ng ti�n v�o chi�n tr��ng b�ng quan 
if (GetTaskTemp(JOINSTATE) == 0) then 
Say("Ng��i ngh� gia nh�p ho�ng ph��ng c�n l� t� ph��ng ?", 4,"Ta mu�n gia nh�p ho�ng ph��ng /ChooseCamp","Ta mu�n gia nh�p t� ph��ng /ChooseCamp","Ta mu�n tr��c quan s�t , sau l�i n�i ! /ChooseCamp","Ta mu�n mu�n nh�n /OnCancel"); 
return 
-- script viet hoa By http://tranhba.com  �ang b�ng quan 
else 
if (GetCurCamp() == 0) then 
Say("Ng��i ngh� gia nh�p ho�ng ph��ng c�n l� t� ph��ng ?", 4,"Ta mu�n gia nh�p ho�ng ph��ng /ChooseCamp","Ta mu�n gia nh�p t� ph��ng /ChooseCamp","Ta mu�n v�a ngh� /OnCancel","Ta mu�n r�i �i chi�n tr��ng . /ChooseLeave"); 
return 
else 
Say("Ng��i ngh� r�i �i chi�n tr��ng sao ?", 2, " �/d� , ��ng v�y /ChooseLeave","Ta c�n kh�ng c� ��nh xong , c�n kh�ng mu�n r�i �i . /OnCancel"); 
return 
end 
end 
else 
Say("C�n ch�a t�i th�i gian chi�n ��u !",0); 
return 
end; 
end; 

function ChooseCamp(nSel) 

if (CheckCondition() == 0) then 
return 
end; 

if (nSel == 0) then 
JoinCamp(1) 
elseif (nSel == 1) then 
JoinCamp(2) 
else 
SetTaskTemp(JOINSTATE, 1); 
SetPos(CS_CampPos0[2], CS_CampPos0[3]); 
end; 
end; 

function OnCancel() 

end; 

function ChooseLeave() 
LeaveGame(0) 
end; 
