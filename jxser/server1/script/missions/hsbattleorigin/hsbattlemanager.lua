-- script viet hoa By http://tranhba.com  d� thi l�u tr�nh 
-- script viet hoa By http://tranhba.com 1# c�ng ch� nh�p kh�u ��ch Npc ��i tho�i , l�a ch�n ti�n v�o th� m�y c� chi�n khu 
-- script viet hoa By http://tranhba.com 2# n�u nh� ph� h�p �i�u ki�n d� thi l� ti�n v�o chi�n khu b�n trong # kh�c m�t t�m b�n �� # , c�ng l�y 0 tr�n doanh m� th�c ti�n v�o 
-- script viet hoa By http://tranhba.com 3# nh� ch�i c�ng hai b�n Npc ��i tho�i , t� do l�a ch�n tham d� ��ch tr�n doanh . 
-- script viet hoa By http://tranhba.com 4# nh� ch�i Pk t� vong sau �em t� ��ng b� v�n ra s�n b�n ngo�i , nh�ng � b�n ��a �� b�n trong 
-- script viet hoa By http://tranhba.com 5# khi nh� ch�i t� vong l�c , s� t� ��ng h��ng c�ng b�n �� ��ch t�t c� nh� ch�i c�ng b� tr��c m�t ��ch chi�n hu�ng . 
-- script viet hoa By http://tranhba.com 6# n�u nh� c� th� , c� th� t� Npc ��i tho�i trung hi�u r� tr��c m�t ��ch t�ng ��ng h�ng th� 
-- script viet hoa By http://tranhba.com 7# tranh t�i c� th� d�a theo c�p b�c chia l�m c�c lo�i cu�c so t�i tr�ng 
-- script viet hoa By http://tranhba.com  v�o chi�n khu ��ch Npc# l�a ch�n tr�n doanh ��ch Npc 
Include("\\script\\missions\\csbattlelib\\csbattlehead.lua");
Include("\\script\\missions\\hsbattle\\hshead.lua");
MapTab = {}; 
MapCount = 1; 
MapTab[1]= {212, 1577, 3288}; 

function main() 
-- script viet hoa By http://tranhba.com  thi�t tr� tr� v� �i�m 
SetTask(300, 2); 
SetTask(301, 2605); 
SetTask(302, 3592); 
idx = SubWorldID2Idx(MapTab[1][1]); 
if (idx == -1) then 
Say("Tr��c m�t v�n ch�a c� ng��i n�o ghi danh l�i ��i m�t m�nh ��u . ngh�a s� mu�n th� m�t ch�t sao ?",0) 
return 
end 

OldSubWorld = SubWorld; 
SubWorld = idx; 
if (GetMissionV(1) ~= 1) then 
Say("Tr��c m�t v�n ch�a c� ng��i n�o ghi danh l�i ��i m�t m�nh ��u . ngh�a s� mu�n th� m�t ch�t sao ?",0) 
return 
end; 

SubWorld = OldSubWorld; 

Say("Tr��c m�t v�n ch�a c� ng��i n�o ghi danh l�i ��i m�t m�nh ��u , ch� c�n 60 c�p tr� l�n , ph� 10000 ti�n ghi danh d�ng li�n c� th� th� !", 2,"H�o , ta mu�n th� m�t ch�t c�c v� h�o ki�t ��ch t�i ngh� . /JoinHS","Kh�ng tham gia /OnCancel"); 
end; 

function JoinHS() 
LeaveTeam(); 
if (CheckCondition() == 0) then 
Say("Ng��i ch�a �� c�p b�c ho�c l� mang ��ch kh�ng �� ti�n , ho�c l� kh�ng ph�i l� ng��i trong giang h� , kh�ng th� th��ng Hoa S�n tuy�t ��nh ", 0); 
return 
end; 

if (PrePay(MS_SIGN_MONEY) == 1) then 
NewWorld(MapTab[1][1], MapTab[1][2], MapTab[1][3]); 
idx = SubWorldID2Idx(MapTab[1][1]); 
if (idx == -1) then 
return 
end; 
SubWorld = idx; 
JoinCamp(4); 
return 
end; 
end; 


function CheckCondition() 
if ( GetLevel() >= 60 and GetCamp() ~= 0 ) then 
if (GetCash() >= MS_SIGN_MONEY) then 
return 1; 
end; 
end; 
return 0; 
end; 

function OnCancel() 
end; 
