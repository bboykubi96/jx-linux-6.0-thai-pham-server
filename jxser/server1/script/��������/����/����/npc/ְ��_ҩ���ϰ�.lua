-- script viet hoa By http://tranhba.com  ��i L� ch�c n�ng ti�m thu�c l�o b�n 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-09-16) 
Include( "\\script\\event\\teacherday\\teacherdayhead.lua" )
Include( "\\script\\event\\teacherday\\medicine.lua" )

OPTIONS = {} 

function refine() 
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end 

function main() 
Say("Ti�m c�a ta d�a v�o �i�m th��ng s�n cu�c s�ng , ph�a tr�n c� h�n ng�n lo�i th�o d��c .", 
getn(OPTIONS), 
OPTIONS) 
end; 

function yes() 
Sale(12) -- script viet hoa By http://tranhba.com  b�n ra giao d�ch khu�ng 
end 

if TEACHERSWITCH then 
tinsert(OPTIONS,"Gi�p ta �� thu�c r��u /brew") 
end 
tinsert(OPTIONS,"Giao d�ch /yes") 
tinsert(OPTIONS,"Ta mu�n luy�n ch� h�n nguy�n linh l� refine") 
tinsert(OPTIONS,"Kh�ng giao d�ch /Cancel") 
