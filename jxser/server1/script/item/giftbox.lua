-- script viet hoa By http://tranhba.com  l� ph�m h�p 
-- script viet hoa By http://tranhba.com 2007-04-04 
-- script viet hoa By http://tranhba.com by ti�u l�ng nhi�u h�n 

TB_GIFT = { 
-- script viet hoa By http://tranhba.com  v�t ph�m t�n x�c su�t v�t ph�m ID 
100000, -- script viet hoa By http://tranhba.com  t�ng x�c su�t 
{0.25, {"Thi�t La H�n ", 6,1,23,0,0,0}}, 
{0.25, {"Ph�c duy�n l� ( ��i ) ", 6,1,124,0,0,0}}, 
{0.02, {"Tinh luy�n th�ch ", 6,1,2280,1,0,0}}, 
{0.02, {"Tinh luy�n th�ch ", 6,1,2280,1,0,0}}, 
{0.02, {"Tinh luy�n th�ch ", 6,1,2280,1,0,0}}, 
{0.02, {"Tinh luy�n th�ch ", 6,1,2280,1,0,0}}, 
{0.02, {"Tinh luy�n th�ch ", 6,1,2280,1,0,0}}, 
{0.02, {"Tinh luy�n th�ch ", 6,1,2280,1,0,0}}, 
{0.02, {"Tinh luy�n th�ch ", 6,1,2280,1,0,0}}, 
{0.02, {"Tinh luy�n th�ch ", 6,1,2280,1,0,0}}, 
{0.02, {"Ng�c lon ", 6,1,2311,1,0,0}}, 
{0.2, {"��i b� th�n �an ", 6,1,1398,0,0,0 }}, 
{0.1, {"M��i to�n ��i b� th�n �an ", 6,1,1399,0,0,0}}, 
{0.0288, {"Ti�n th�o l� ",6,1,71,0,0,0}}, 
} 
function main(sel) 
if CalcFreeItemCellCount() < 12 then 
Say("��i hi�p ��ch trang b� qu� nhi�u , c� th� s� ��t ���c chi�m r�t nhi�u ch� tr�ng ��ch trang b� , xin/m�i �i tr� v�t ph�m , b�o ��m c� 12 c� ch� tr�ng sau m� ra ",0); 
return 1; 
end 
local prob = TB_GIFT[1]; 
local sum = 0; 
local num = random(1,prob); 
-- script viet hoa By http://tranhba.com print(num.."\t"..getn(TB_GIFT).."\t") 
for i = 2,getn(TB_GIFT) do 
local odds = TB_GIFT[i][1]; 
local item = TB_GIFT[i][2]; 
		sum = sum + odds * prob;
if num < sum then 
-- script viet hoa By http://tranhba.com print(item[1]); 
award_item(item); 
break; 
end 
end 
end 

function award_item(item) 
if getn(item) == 3 then 
AddGoldItem(item[2], item[3]); 
elseif getn(item) == 7 then 
AddItem(item[2], item[3], item[4], item[5], item[6], item[7]); 
end 
WriteLog(format("[chuanguanGiftBox]\t date:%s \t Account:%s \t Name:%s \t GetItem:%s \t",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),item[1])); 
end
