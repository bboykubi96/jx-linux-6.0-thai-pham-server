-- script viet hoa By http://tranhba.com  th�nh ph� th�ng b�o b�i 
function SayCityStatus() 
nCityID = GetCityArea(); 
Say(GetCitySummary(nCityID) .. "\n" .. NW_GetSealInfo(), 0); 
end; 

function ManageCity() 
nCityID = GetCityArea(); 
OpenCityManageUI(nCityID); 
end; 

function main() 
nCityID = GetCityArea(); 
if (nCityID >= 1 and nCityID <= 7) then 
TongName, MasterName = GetCityOwner(nCityID); 
if (MasterName == GetName()) then 
Say("Nh�m ch�c Th�i th� , ng��i mu�n m�i t�ng thu� thu� sao ?", 2,"Mu�n /ManageCity","Kh�ng c�n , ta ch� mu�n nh�n th�nh ph� ��ch th�ng tin ? /SayCityStatus"); 
else 
SayCityStatus(); 
end; 
else 
Say("Khu v�c kh�ng c� �� � l� ", 0); 
end; 
end; 
