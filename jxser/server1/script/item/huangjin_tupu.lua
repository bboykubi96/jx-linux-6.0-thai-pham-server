-- script viet hoa By http://tranhba.com  ho�ng kim �� ph� kh�ch h�ng b�ng mi�u t� 
-- script viet hoa By http://tranhba.com - ho�ng kim �� ph� r�i xu�ng ch� vi�t BUG ( bi�u hi�n v� th� ��a ph� ) 

IncludeLib("FILESYS") 

HUANGJIN_TUPU_DES = {} 

function LoadHuangjinTupuDes() 
	local b1 = TabFile_Load("\\settings\\item\\huangjintupu.txt", "huangjintupuData")
if b1~=1 then 
print("Load Failed HuangJinTuPuData!!!!") 
return 
end 
local nRowCount = TabFile_GetRowCount("huangjintupuData") 
for y = 2, nRowCount do 
local nGenre = tonumber(TabFile_GetCell("huangjintupuData", y, "ItemGenre")); 
local nDetail = tonumber(TabFile_GetCell("huangjintupuData", y, "DetailType")); 
local nPartlar = tonumber(TabFile_GetCell("huangjintupuData", y, "ParticularType")); 
local szDes = TabFile_GetCell("huangjintupuData", y, "Descript"); 
local szName = TabFile_GetCell("huangjintupuData", y, "Name"); 
local szKey = format("%d,%d,%d", nGenre,nDetail,nPartlar); 
HUANGJIN_TUPU_DES[szKey] = {szName, szDes}; 
end 
-- script viet hoa By http://tranhba.com TabFile_UnLoad("huangjintupuData") 
end 

LoadHuangjinTupuDes(); 

function GetDesc(nItem) 

local ng, nd, np, nlvl = GetItemProp(nItem); 

local szKey = format("%d,%d,%d",ng,nd,np); 

local szDes = HUANGJIN_TUPU_DES[szKey][2]; 
if (not szDes) then 
return " ng�y �� b� phi�n " 
else 
return format("%s<enter>%s", szDes,"Ng�y �� b� phi�n ") 
end; 
end;
