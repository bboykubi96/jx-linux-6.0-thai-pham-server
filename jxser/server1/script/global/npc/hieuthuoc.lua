Include("\\script\\lib\\awardtemplet.lua")
function main() 
Say("Thu�c nh�p kh�u tr� b�ch b�nh !", 3,"Giao d�ch /yes","Mua M�u Nhanh (100 L��ng - 1 B�nh)/buymaunhanh","Kh�ng giao d�ch /no") 
end; 

function yes() 
Sale(12);  			--�������׿�
end; 

function no() 
end; 

function buymaunhanh()

	local pri = 100
	local totalcount =CalcFreeItemCellCount();
	local money = GetCash()
	local moneymin = (money - mod(money,pri)) / pri
	if totalcount == 0 then 
                       Say("<color=yellow>��i hi�p �� c� ��y r��ng m�u.",0)
	return
	end
	if money>=totalcount then
	tbAwardTemplet:GiveAwardByList({{szName = "Ng� hoa ng�c l� ho�n", tbProp ={1,8,0,1,1,1}, nRate = 100, nCount= totalcount,nBindState=-2 }}, format("Get %s", "Than pham 1"))
	Pay(totalcount)
	end
end
function nhanhquamuamau11()
	local totalcount =CalcFreeItemCellCount();
	if totalcount == 0 then 
                                                                                  Say("<color=yellow>��i hi�p �� c� ��y r��ng mana m�u.",0)
		return
	end	
	for k=1,totalcount do 		
	AddItem(1,8,0,1,1,1);
	end
end