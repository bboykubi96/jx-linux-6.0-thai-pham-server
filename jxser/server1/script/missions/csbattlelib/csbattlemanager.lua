
-- script viet hoa By http://tranhba.com  d� thi l�u tr�nh 
-- script viet hoa By http://tranhba.com 1# c�ng ch� nh�p kh�u ��ch Npc ��i tho�i , l�a ch�n ti�n v�o th� m�y c� chi�n khu 
-- script viet hoa By http://tranhba.com 2# n�u nh� ph� h�p �i�u ki�n d� thi l� ti�n v�o chi�n khu b�n trong # kh�c m�t t�m b�n �� # , c�ng l�y 0( tay m�i ) tr�n doanh m� th�c ti�n v�o 
-- script viet hoa By http://tranhba.com 3# nh� ch�i c�ng hai b�n Npc ��i tho�i , t� do l�a ch�n tham d� ��ch tr�n doanh ti�n v�o chi�n ��u khu v�c . ho�c l� l�a ch�n xem cu�c chi�n m� th�c . sau khi ti�n v�o s� thu l�y 5000 nguy�n . 
-- script viet hoa By http://tranhba.com 4# nh� ch�i Pk t� vong sau �em t� ��ng b� v�n ra s�n b�n ngo�i , nh�ng � b�n ��a �� b�n trong . 
-- script viet hoa By http://tranhba.com 5# khi nh� ch�i t� vong l�c , s� t� ��ng h��ng c�ng b�n �� ��ch t�t c� nh� ch�i c�ng b� tr��c m�t ��ch chi�n hu�ng . 
-- script viet hoa By http://tranhba.com 6# tranh t�i c� th� d�a theo c�p b�c chia l�m c�c lo�i cu�c so t�i tr�ng 
-- script viet hoa By http://tranhba.com 7. v�ng chi�n PK ��c th� ng��i c�a , s� ��t ���c 3000 nguy�n ��ch t��ng th��ng . 
-- script viet hoa By http://tranhba.com 8# n�u nh� mu�n r�i �i chi�n ��u , �ang chi�n ��u khu v�c ��ch nh� ch�i c� th� c�ng Npc ��i tho�i , n�i mu�n th�i lui ra , b� n�m t�i b�n ngo�i s�n . 
-- script viet hoa By http://tranhba.com 9# t�i ch� b�n ngo�i ng��i c�a , c� th� �i xu�ng m�t �i , ��p ��n trap �i�m , r�i �i chi�n khu , nh�y ��n D��ng Ch�u . 
-- script viet hoa By http://tranhba.com 10. ti�n v�o chi�n khu l�c , kh�ng c�ch n�o h�p th�nh ��i # v� t� vong tr�ng ph�t ch� 


-- script viet hoa By http://tranhba.com  Hoa S�n c�ng lo�i n�y th�c , b�t ��ng l�c 
-- script viet hoa By http://tranhba.com 1# c�ng Hoa S�n ng��i c�a ��i tho�i sau , t� ��ng ti�n v�o chi�n ��u khu v�c chi�n ��u . 
-- script viet hoa By http://tranhba.com 2# c�p b�c h�n ch� � 60 c�p tr� l�n , 10000 hai ti�n ghi danh d�ng . 
-- script viet hoa By http://tranhba.com 3# r�i �i chi�n khu l�c , t� ��ng nh�y ��n Hoa S�n . 
-- script viet hoa By http://tranhba.com 4#PK ��c th� l�c , ��t ���c 6000 nguy�n t��ng th��ng . 


-- script viet hoa By http://tranhba.com  b�y gi� c� m�t c�i y�u c�u , ch�nh l� 3 c� di�n v� tr��ng ��ch b�n �� c�ng D��ng Ch�u ��t � m�t m�y ph�c v� kh� th��ng , Hoa S�n c�ng Hoa S�n tuy�t ��nh c�ng ��t � m�t m�y ph�c v� kh� th��ng 
function DoJoin(nSel) 
	if (nSel + 1 > MapCount) then
return 
end; 
LeaveTeam(); 
	WantToJoin(MapTab[nSel + 1][1], MapTab[nSel + 1][2], MapTab[nSel + 1][3]);
end; 


function WantToJoin(nMapId, nX, nY) 
SetCurCamp(0); 
SetFightState(0); 
SetLogoutRV(1); 
SetTaskTemp(200,1);-- script viet hoa By http://tranhba.com  l�c n�y kh�ng c�ch n�o s�a ��i bang h�i tr�n doanh 
w, x, y = GetLeavePos(); 
SetTempRevPos(w, x * 32 , y * 32); -- script viet hoa By http://tranhba.com  thi�t tr� t�m th�i s�ng l�i �i�m v� ghi danh �i�m ph� c�n 
NewWorld(nMapId, nX, nY); 
end; 

function OnCancel() 

end; 
