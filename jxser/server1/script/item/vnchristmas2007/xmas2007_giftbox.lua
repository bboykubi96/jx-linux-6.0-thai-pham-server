-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##xmas2007_giftbox.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ##zhongchaolong 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2007-11-26 14:42:26 

-- script viet hoa By http://tranhba.com  th�i gian #2008 n�m 01 th�ng 13 ng�y 24#00 
-- script viet hoa By http://tranhba.com  th�i h�n #2008 n�m 01 th�ng 31 ng�y 24#00 
-- script viet hoa By http://tranhba.com  c� th� # giao d�ch , v�t b� , b�y s�p , b�n �i�m = 0 hai , �i�p gia 50 c� / v� 
-- script viet hoa By http://tranhba.com  s� d�ng : b�n ph�i ki�n �i�m k�ch s� d�ng ��t ���c c�c lo�i b�ng tinh 

Include("\\script\\event\\xmas07_makesnowman\\head.lua")
xmas2007_GiftBox_tbItemList = 
{ 
--   t�n ,{ v�t ph�m Prop}, x�c su�t %, 
{"Kim b�ng tinh ",{6,1,1628,1,0,0},10}, 
{"M�c b�ng tinh ",{6,1,1629,1,0,0},15}, 
{"Th�y B�ng Tinh ",{6,1,1630,1,0,0},20}, 
{"H�a B�ng Tinh",{6,1,1631,1,0,0},25}, 
{"Th� B�ng Tinh",{6,1,1632,1,0,0},25}, 
{"Ng� S�c B�ng Tinh",{6,1,1633,1,0,0},5},
} 

function main() 
if xmas07_makeSnowMan_isActPeriod() == 0 then 
Msg2Player("V�t ph�m �� qua s� d�ng k� , �em bi�n m�t .") 
return 0; 
end 
xmas2007_SnowManItem_GiveRandomItem(xmas2007_GiftBox_tbItemList); 
end 
