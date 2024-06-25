tab_dw_material = 
{ 
head = {"��u r�ng ", {6,1,428},}, 
tail = {"�u�i r�ng ",{6,1,431}}, 
body = {" long th�n ",{6,1,429}}, 
bone = {" long c�t ",{6,1,430}}, 
oar = {"T��ng ",{6,1,432}}, 
helm = {"Tay l�i ", {6,1,433}}, 
drum = {"C� ",{6,1,434}}, 
smallboat = { " ti�u Long chu ", {6,1,422}, {{"head",1},{ "tail", 1}, {"body",1}, {"bone",1}, {"oar",4}, {"helm",1}, {"drum",1}} , 100 , " l�m ti�u Long chu c�n 1 c� ��u r�ng , 1 �u�i r�ng , 1 long th�n , 4 t��ng , 1 c� tay l�i , 1 c� c� ." , "dw_convert_sb" }, 
boat = {"Truy�n th�ng long chu ", {6,1,423}, { {"smallboat",1}, {"oar",4}} ,50 , " l�m truy�n th�ng long chu c�n 1 ti�u Long chu c�ng 4 t��ng ", "dw_convert_nb" }, 
horseboat = { " m� ��u long chu ", {6,1,424}, {{"smallboat",1}, {"boat",1}, {"head", 1} } , 40 ," l�m m� ��u long chu c�n 1 ti�u Long chu 1 truy�n th�ng long chu c�ng 1 ��u r�ng " , "dw_convert_hb" }, 
birdboat = {"�i�u ��u long chu ", {6,1,425}, {{"horseboat",1}, {"boat",1} , {"head",1} }, 30 , " l�m �i�u ��u long chu c�n 1 m� ��u long chu , 1 truy�n th�ng long chu c�ng 1 ��u r�ng " , "dw_convert_bb" }, 
beastboat = {"H�nh th� long chu ", {6,1,426}, {{"birdboat",1}, {"horseboat",1}, {"head",1} }, 20 ," l�m th� v�t h�nh long chu c# 1 �i�u ��u long chu , 1 m� ��u long chu c�ng 1 ��u r�ng " ,"dw_convert_stb" }, 
hugeboat = {"��i long chu ", {6,1,427}, { {"beastboat",1}, {"birdboat",1}, {"horseboat",1} } ,20 ," l�m ��i long chu l c�n 1 h�nh th� long chu 1 �i�u ��u long chu c�ng 1 m� ��u long chu " ,"dw_convert_hgb" }, 
} 

function printinfo(something) 
print("C�n ch� t�o "..tab_dw_material[something][1]..":") 
for i = 1, getn(tab_dw_material[something][3]) do 
print(tab_dw_material[something][3][i][2].." c� "..tab_dw_material[tab_dw_material[something][3][i][1]][1]) 
end 
print("H�p th�nh t� l� "..tab_dw_material[something][4]) 

end 

function duanwu_convert() 
Say("Ch� t�o c�c lo�i long chu ch� c�n <color=red>10000 hai <color>, n�u nh� th�t b�i , to�n b� c�ng s� m�t �i ! ng��i x�c ��nh ch� t�o sao ", 7,"Ti�u Long chu /#dw_convert_first('smallboat')","Truy�n th�ng long chu /#dw_convert_first('boat')","M� ��u long chu /#dw_convert_first('horseboat')","�i�u ��u long chu /#dw_convert_first('birdboat')","Th� v�t long chu /#dw_convert_first('beastboat')","��i long chu /#dw_convert_first('hugeboat')","Kh�ng c�n !/OnCancel") 
end 

function dw_convert_first(item) 
if (GetCash() < 10000) then 
Say("Ch� t�o c�c lo�i long chu ch� c�n <color=red>10000 hai <color>, ti�n c�a ng��i kh�ng �� #.",0) 
return 
end 
GiveItemUI("H�p th�nh long chu ",tab_dw_material[item][5], tab_dw_material[item][6]) 
end 

function dw_convert(itemname , count) 
if(count == 0) then 
Talk(1,"","<#> l� quan c��i n�i # c� c�i g� cho ta kh�ng ? '","Ng��i g�i ��u m�t c�i # ch�t , ta qu�n m�t ! '") 
return nil 
end 
local tab = {} 
local reqcount = 0 
for i = 1, getn(tab_dw_material[itemname][3]) do 
tab[i] = {} 
tab[i][1] = tab_dw_material[itemname][3][i][1] 
tab[i][2] = tab_dw_material[itemname][3][i][2] 
		reqcount = reqcount + tab[i][2]
end 

if (reqcount ~= count) then 
Say("Ng��i c�n h�p th�nh nguy�n li�u s� l��ng c�ng th�c t� s� l��ng kh�ng h�p , ng��i c� ph�i hay kh�ng ngh� sai r�i ?", 2,"�� cho ta n�a h�p th�nh m�t l�n /duanwu_convert","Th�t xin l�i ! ta sai l�m r�i ! ta nh�n l�i m�t c�i /OnCancel") 
return 
end 

for i = 1, count do 
local itemIdx = GetGiveItemUnit( i ) 
local g,d,p = GetItemProp(itemIdx) 

local bValid = 0 
for j = 1, getn(tab) do 
if (tab_dw_material[tab[j][1]][2][1] == g and tab_dw_material[tab[j][1]][2][2] == d and tab_dw_material[tab[j][1]][2][3] == p) then 
bValid = 1 
tab[j][2] = tab[j][2] - 1 
if (tab[j][2] < 0) then 
Say("Ng��i b� v�o ��ch nguy�n li�u kh�ng ��ng , xin/m�i ki�m tra !",0) 
return 
end 
break 
end 
end 
if (bValid == 0) then 
Say("Ng��i b� v�o ��ch nguy�n li�u kh�ng ��ng , xin/m�i ki�m tra !", 0) 
return 
end 
end 

if (Pay(10000) == 0) then 
Say("Ch� t�o c�c lo�i long chu ch� c�n <color=red>10000 hai <color>, ti�n c�a ng��i kh�ng �� #.",0) 
return 
end 
for i=1,count do 
RemoveItemByIndex(GetGiveItemUnit(i)) 
end 

ran = random(1,100) 
if (ran <= tab_dw_material[itemname][4]) then 
AddItem(tab_dw_material[itemname][2][1], tab_dw_material[itemname][2][2], tab_dw_material[itemname][2][3],1,1,1 ) 
WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: l�m th y�u h 1"..tab_dw_material[itemname][1]); 
Say("Ch�c m�ng ng��i , "..tab_dw_material[itemname][1].." # �� ch� t�o th�nh c�ng !",0) 
else 
Say("Th�t xin l�i ! l�o phu c�n ch�a quen thu�c ch� t�o c�ng ngh� , luy�n ch� th�t b�i !",0) 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function dw_convert_sb(count) 
dw_convert("smallboat", count) 
end 

function dw_convert_nb(count) 
dw_convert("boat", count) 
end 

function dw_convert_hb(count) 
dw_convert("horseboat", count) 
end 

function dw_convert_bb(count) 
dw_convert("birdboat", count) 
end 

function dw_convert_stb(count) 
dw_convert("beastboat", count) 
end 

function dw_convert_hgb(count) 
dw_convert("hugeboat", count) 
end
