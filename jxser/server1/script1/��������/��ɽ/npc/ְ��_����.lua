--Hoa son xa phu edit by mcteam
-- script viet hoa By http://tranhba.com  Hoa S�n # ch�c n�ng # phu xe 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-09-16) 

CurStation = 7 
Include("\\script\\global\\station.lua")

function main(sel) 
Say("Tranh t�i k�t th�c ? ��i hi�p mu�n �i ��u ?", 4,"Nh�ng n�i �� �i qua /WayPointFun","Th�nh th� �� �i qua /StationFun","Tr� v� ��a �i�m c� /TownPortalFun","Kh�ng c�n /OnCancel") 
end; 

function OnCancel() 
Talk(1,"","C� ti�n s� tr� l�i ") 
end; 
