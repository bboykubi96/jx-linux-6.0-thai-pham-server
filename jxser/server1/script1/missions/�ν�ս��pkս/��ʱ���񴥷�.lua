GLB_BATTLESTATE = 30 
function main() 
SetGlbValue(GLB_BATTLESTATE, 0) -- script viet hoa By http://tranhba.com  thi�t tr� n�n to�n c�c thay ��i l��ng v� 1 , d�u hi�u tr��c m�t ph�c v� kh� �ang ��ng � t�ng kim chi�n d�ch giai �o�n , l�c n�y t��ng d��ng ho�c Chu ti�n tr�n ��ch xu�t kh�u �i�m t� ��ng thi�t � t�ng kim chi�n d�ch ��ch ghi danh �i�m , n�u kh�ng l� thi�t � nguy�n t�ng kim chi�n tr��ng b�n �� 
idx = SubWorldID2Idx(44); 
if (idx == -1) then 
return 
end; 

SubWorld = idx; 
OpenMission(1); 

end;
