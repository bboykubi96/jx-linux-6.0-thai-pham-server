-- �ٰ���ְ�ܡ�ҩ���ϰ�
-- by��Dan_Deng(2003-09-16)

-- ���ƻ�Ԫ�颶
function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

function main()
	Say(10855,
		3,
		"Giao d�ch/yes",
		"Mua M�u Nhanh (2000 l��ng - 1 b�nh)/okmuamau",
		-- "Luy�n ch?h�n nguy�n linh l?refine",
		"Kh�ng giao d�ch/Cancel")
end;

function yes()
	Sale(12)  				--�������׿�
end


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