-- script viet hoa By http://tranhba.com  ��i L� # ch�c n�ng ti�m t�p h�a l�o b�n 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-09-16) 
Include("\\script\\global\\global_zahuodian.lua");

function main(sel) 
local Buttons = store_sel_extend(); 
Say("Ta ��y ��ch �� l�i ti�n nghi l�i h�o b�n , ng�y h�m qua m�i v�a v�o m�i h�ng tr� l�i , th�t vui v� ", getn(Buttons), Buttons) 
end; 

function yes() 
Sale(17) 
end; 

function BuyChristmasCard() 
Sale(97); 
end 

function no() 
end; 
