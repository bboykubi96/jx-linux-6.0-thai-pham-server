-- script viet hoa By http://tranhba.com  thµnh phè th«ng b¸o bµi 
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
Say("NhËm chøc Th¸i thó , ng­¬i muèn míi t¨ng thuÕ thuÕ sao ?", 2,"Muèn /ManageCity","Kh«ng cÇn , ta chØ muèn nh×n thµnh phè ®Ých th«ng tin ? /SayCityStatus"); 
else 
SayCityStatus(); 
end; 
else 
Say("Khu vùc kh«ng cã ®Ó ý lý ", 0); 
end; 
end; 
