-- script viet hoa By http://tranhba.com  t�y b�c nam khu v�nh nh�c tr�n ti�m thu�c l�o b�n ��i tho�i 
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")


function main(sel) 
Say("H�nh t�u giang h� , chu�n b� �i�m thu�c ph�ng th�n l� kh�ng th� thi�u ��ch !", 3,"Giao d�ch /yes","Mua M�u Nhanh (2000 l��ng - 1 b�nh)/okmuamau","Kh�ng giao d�ch /no"); 
end; 


function yes() 
Sale(12); -- script viet hoa By http://tranhba.com  b�n ra giao d�ch khu�ng 
end; 


function no() 
end; 

function okmuamau()
	local pri = 100
	local totalcount =CalcFreeItemCellCount();
	local money = GetCash()
	local moneymin = (money - mod(money,pri)) / pri
	if totalcount == 0 then 
                       Say("<color=yellow>��i hi�p �� c� ��y r��ng m�u.",0)
	return
	end
	if money>=totalcount*2000 then
	tbAwardTemplet:GiveAwardByList({{szName = "Ng� hoa ng�c l� ho�n", tbProp ={ 1,2,0,5,0,0,0,0}, nRate = 100, nCount= totalcount }}, format("Get %s", "Than pham 1"))
	Pay(totalcount*2000)
	else
		Say("��i hi�p kh�ng �� ng�n l��ng �� mua m�u nhanh.")
		return
	end
end