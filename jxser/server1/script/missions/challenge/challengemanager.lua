-- script viet hoa By http://tranhba.com  d� thi l�u tr�nh 
-- script viet hoa By http://tranhba.com 1# c�ng ch� nh�p kh�u ��ch Npc ��i tho�i , l�a ch�n ti�n v�o th� m�y c� chi�n khu 
-- script viet hoa By http://tranhba.com 2# n�u nh� ph� h�p �i�u ki�n d� thi l� ti�n v�o chi�n khu b�n trong # kh�c m�t t�m b�n �� # , c�ng l�y 0 tr�n doanh m� th�c ti�n v�o 
-- script viet hoa By http://tranhba.com 3# nh� ch�i c�ng hai b�n Npc ��i tho�i , t� do l�a ch�n tham d� ��ch tr�n doanh . 
-- script viet hoa By http://tranhba.com 4# nh� ch�i Pk t� vong sau �em t� ��ng b� v�n ra s�n b�n ngo�i , nh�ng � b�n ��a �� b�n trong 
-- script viet hoa By http://tranhba.com 5# khi nh� ch�i t� vong l�c , s� t� ��ng h��ng c�ng b�n �� ��ch t�t c� nh� ch�i c�ng b� tr��c m�t ��ch chi�n hu�ng . 
-- script viet hoa By http://tranhba.com 6# n�u nh� c� th� , c� th� t� Npc ��i tho�i trung hi�u r� tr��c m�t ��ch t�ng ��ng h�ng th� 
-- script viet hoa By http://tranhba.com 7# tranh t�i c� th� d�a theo c�p b�c chia l�m c�c lo�i cu�c so t�i tr�ng 
-- script viet hoa By http://tranhba.com  v�o chi�n khu ��ch Npc# l�a ch�n tr�n doanh ��ch Npc 
Include("\\script\\missions\\challenge\\challengehead.lua");

MapTab = {}; 

MapTab[1]= {209, 1568, 3278}; 
MapTab[2]= {210, 1568, 3278}; 
MapTab[3]= {211, 1568, 3278}; 

MapCount = getn(MapTab); 

function main() 
if (GetCamp() == 0) then 
Say("Ng��i kh�ng ph�i l� giang h� nh�n s� , kh�ng th� v�o chi�n khu !",0); 
return 
end; 

-- script viet hoa By http://tranhba.com  thi�t tr� tr� v� �i�m 
SetTask(300, 80); 
SetTask(301, 1908); 
SetTask(302, 2844); 
Say("Hoan ngh�nh tham gia tranh t�i # ch� c� �� g�n ��n ghi danh ��ch tuy�n th� m�i c� th� ti�n v�o v� tr�ng # ng��i mu�n �i v�o c�i n�o chi�n khu ?", 4 ,"Tr�n chi�n ��u ti�n khu /DoJoin","Th� hai chi�n khu /DoJoin","Th� ba chi�n khu /DoJoin","Ta kh�ng ph�i l� tham gia so t�i tuy�n th� , ta kh�ng �i v�o . /OnCancel"); 
end; 

function DoJoin(nSel) 
	if (nSel + 1 > MapCount) then
return 
end; 
LeaveTeam(); 
	WantToJoin(MapTab[nSel + 1][1], MapTab[nSel + 1][2], MapTab[nSel + 1][3]);
end; 


function WantToJoin(nMapId, nX, nY) 
SetFightState(0); 
SetLogoutRV(1); 
SetTaskTemp(200,1);-- script viet hoa By http://tranhba.com  l�c n�y kh�ng c�ch n�o s�a ��i bang h�i tr�n doanh 
w, x, y = GetLeavePos(); 
SetTempRevPos(w, x * 32 , y * 32); -- script viet hoa By http://tranhba.com  thi�t tr� t�m th�i s�ng l�i �i�m v� ghi danh �i�m ph� c�n 
NewWorld(nMapId, nX, nY); 
end; 

function OnCancel() 

end; 
