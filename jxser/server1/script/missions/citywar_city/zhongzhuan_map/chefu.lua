-- script viet hoa By http://tranhba.com  c�ng th�nh chi�n phu xe ��i tho�i 
CurStation = 1; 
Include("\\script\\global\\station.lua")

function main(sel) 
SetCurCamp(GetCamp()) 
SetFightState(0) 
BT_LeaveBattle() 
Say("Ch�ng ta tr�n chi�n tr��ng ��ch phu xe v�o sanh ra t� , d�ng t�nh m�ng c�a m�nh ki�m ti�n # xin/m�i cho m�t �t ng�n l��ng !", 5,"Nh�ng ��a ph��ng kia �� �i qua /WayPointFun","Nh�ng th� kia th�nh ph� �� �i qua /StationFun","Tr� l�i t�i ch� /TownPortalFun","R�i �i chi�n tr��ng /LeaveChefu","Kh�ng c�n /OnCancel"); 
end; 

function OnCancel() 
end; 

function LeaveChefu() 
w,x,y = RevID2WXY(GetPlayerRev()); 
NewWorld(w,x/32, y/32); 
end;
