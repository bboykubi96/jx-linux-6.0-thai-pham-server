tab_dw_material = 
{ 
head = {"§Çu rång ", {6,1,428},}, 
tail = {"§u«i rång ",{6,1,431}}, 
body = {" long th©n ",{6,1,429}}, 
bone = {" long cèt ",{6,1,430}}, 
oar = {"T­ëng ",{6,1,432}}, 
helm = {"Tay l¸i ", {6,1,433}}, 
drum = {"Cæ ",{6,1,434}}, 
smallboat = { " tiÓu Long chu ", {6,1,422}, {{"head",1},{ "tail", 1}, {"body",1}, {"bone",1}, {"oar",4}, {"helm",1}, {"drum",1}} , 100 , " lµm tiÓu Long chu cÇn 1 c¸ ®Çu rång , 1 ®u«i rång , 1 long th©n , 4 t­ëng , 1 c¸ tay l¸i , 1 c¸ cæ ." , "dw_convert_sb" }, 
boat = {"TruyÒn thèng long chu ", {6,1,423}, { {"smallboat",1}, {"oar",4}} ,50 , " lµm truyÒn thèng long chu cÇn 1 tiÓu Long chu cïng 4 t­ëng ", "dw_convert_nb" }, 
horseboat = { " m· ®Çu long chu ", {6,1,424}, {{"smallboat",1}, {"boat",1}, {"head", 1} } , 40 ," lµm m· ®Çu long chu cÇn 1 tiÓu Long chu 1 truyÒn thèng long chu cïng 1 ®Çu rång " , "dw_convert_hb" }, 
birdboat = {"§iÓu ®Çu long chu ", {6,1,425}, {{"horseboat",1}, {"boat",1} , {"head",1} }, 30 , " lµm ®iÓu ®Çu long chu cÇn 1 m· ®Çu long chu , 1 truyÒn thèng long chu cïng 1 ®Çu rång " , "dw_convert_bb" }, 
beastboat = {"H×nh thó long chu ", {6,1,426}, {{"birdboat",1}, {"horseboat",1}, {"head",1} }, 20 ," lµm thó vËt h×nh long chu c# 1 ®iÓu ®Çu long chu , 1 m· ®Çu long chu cïng 1 ®Çu rång " ,"dw_convert_stb" }, 
hugeboat = {"§¹i long chu ", {6,1,427}, { {"beastboat",1}, {"birdboat",1}, {"horseboat",1} } ,20 ," lµm ®¹i long chu l cÇn 1 h×nh thó long chu 1 ®iÓu ®Çu long chu cïng 1 m· ®Çu long chu " ,"dw_convert_hgb" }, 
} 

function printinfo(something) 
print("CÇn chÕ t¹o "..tab_dw_material[something][1]..":") 
for i = 1, getn(tab_dw_material[something][3]) do 
print(tab_dw_material[something][3][i][2].." c¸ "..tab_dw_material[tab_dw_material[something][3][i][1]][1]) 
end 
print("Hîp thµnh tû lÖ "..tab_dw_material[something][4]) 

end 

function duanwu_convert() 
Say("ChÕ t¹o c¸c lo¹i long chu chØ cÇn <color=red>10000 hai <color>, nÕu nh­ thÊt b¹i , toµn bé còng sÏ mÊt ®i ! ng­¬i x¸c ®Þnh chÕ t¹o sao ", 7,"TiÓu Long chu /#dw_convert_first('smallboat')","TruyÒn thèng long chu /#dw_convert_first('boat')","M· ®Çu long chu /#dw_convert_first('horseboat')","§iÓu ®Çu long chu /#dw_convert_first('birdboat')","Thó vËt long chu /#dw_convert_first('beastboat')","§¹i long chu /#dw_convert_first('hugeboat')","Kh«ng cÇn !/OnCancel") 
end 

function dw_convert_first(item) 
if (GetCash() < 10000) then 
Say("ChÕ t¹o c¸c lo¹i long chu chØ cÇn <color=red>10000 hai <color>, tiÒn cña ng­¬i kh«ng ®ñ #.",0) 
return 
end 
GiveItemUI("Hîp thµnh long chu ",tab_dw_material[item][5], tab_dw_material[item][6]) 
end 

function dw_convert(itemname , count) 
if(count == 0) then 
Talk(1,"","<#> lÔ quan c­êi nãi # cã c¸i g× cho ta kh«ng ? '","Ng­¬i g·i ®Çu mét c¸i # chÕt , ta quªn mÊt ! '") 
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
Say("Ng­¬i cÇn hîp thµnh nguyªn liÖu sè l­îng cïng thùc tÕ sè l­îng kh«ng hîp , ng­¬i cã ph¶i hay kh«ng nghÜ sai råi ?", 2,"§Ó cho ta n÷a hîp thµnh mét lÇn /duanwu_convert","ThËt xin lçi ! ta sai lÇm råi ! ta nh×n l¹i mét c¸i /OnCancel") 
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
Say("Ng­¬i bá vµo ®Ých nguyªn liÖu kh«ng ®óng , xin/mêi kiÓm tra !",0) 
return 
end 
break 
end 
end 
if (bValid == 0) then 
Say("Ng­¬i bá vµo ®Ých nguyªn liÖu kh«ng ®óng , xin/mêi kiÓm tra !", 0) 
return 
end 
end 

if (Pay(10000) == 0) then 
Say("ChÕ t¹o c¸c lo¹i long chu chØ cÇn <color=red>10000 hai <color>, tiÒn cña ng­¬i kh«ng ®ñ #.",0) 
return 
end 
for i=1,count do 
RemoveItemByIndex(GetGiveItemUnit(i)) 
end 

ran = random(1,100) 
if (ran <= tab_dw_material[itemname][4]) then 
AddItem(tab_dw_material[itemname][2][1], tab_dw_material[itemname][2][2], tab_dw_material[itemname][2][3],1,1,1 ) 
WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: lµm th yªu h 1"..tab_dw_material[itemname][1]); 
Say("Chóc mõng ng­¬i , "..tab_dw_material[itemname][1].." # ®· chÕ t¹o thµnh c«ng !",0) 
else 
Say("ThËt xin lçi ! l·o phu cßn ch­a quen thuéc chÕ t¹o c«ng nghÖ , luyÖn chÕ thÊt b¹i !",0) 
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
