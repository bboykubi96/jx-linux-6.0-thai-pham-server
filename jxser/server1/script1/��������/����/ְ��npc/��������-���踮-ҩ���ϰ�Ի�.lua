-- script viet hoa By http://tranhba.com  t�y b�c nam khu ph��ng t��ng ph� ti�m thu�c l�o b�n ��i tho�i 
Include( "\\script\\event\\teacherday\\teacherdayhead.lua" )
Include( "\\script\\event\\teacherday\\medicine.lua" )

-- script viet hoa By http://tranhba.com  luy�n ch� h�n nguy�n linh l� 
function refine() 
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end 

OPTIONS = {} 

function main(sel) 
Say("Hi�u Thu�c: ta ��y n�i n�y b�n th�o d��c c� b�nh ch�a b�nh # v� b�nh d��ng sinh . gi�ng nh� c�c ng��i lo�i n�y � v�t �ao th��ng ki�m s�ng ng��i , c�ng l� c�ch kh�ng ���c nh�ng th� n�y m�ng s�ng ��ch th�o d��c . ", 
getn(OPTIONS), 
OPTIONS) 
end 

function yes() 
Sale(12) -- script viet hoa By http://tranhba.com  b�n ra giao d�ch khu�ng 
end; 

if TEACHERSWITCH then 
tinsert(OPTIONS,"Gi�p h�n c�t thu�c r��u /brew") 
end 
tinsert(OPTIONS,"Giao d�ch /yes") 
tinsert(OPTIONS, " luy�n ch� h�n nguy�n linh l� /refine") 
tinsert(OPTIONS,"Kh�ng giao d�ch /Cancel") 
