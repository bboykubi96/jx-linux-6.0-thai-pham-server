Include("\\script\\battles\\battleinfo.lua")
--�����
function main(sel)
--Say("H�u doanh do ta ph� tr�ch! Ng��i c� c�n gi�p �� g� kh�ng?",3,"Mua d��c ph�m/salemedicine","T�m hi�u quy t�c T�ng Kim ��i chi�n/help_sjbattle","Kh�ng c�n ��u! C�m �n!/cancel")
Say("H�u doanh do ta ph� tr�ch! Ng��i c� c�n gi�p �� g� kh�ng?",3,"Mua d��c ph�m/salemedicine","Mua d��c nhanh/buymaunhanh","Kh�ng c�n ��u! C�m �n!/cancel")
end;

function salemedicine(sel)
Sale(99, 1)
end

function buymaunhanh()
	local pri = 100
	local totalcount =CalcFreeItemCellCount();
	local money = GetCash()
	local moneymin = (money - mod(money,pri)) / pri
	if totalcount == 0 then 
                       Say("<color=yellow>��i hi�p �� c� ��y r��ng m�u.",0)
	return
	end
	if moneymin >= totalcount then
		tbAwardTemplet:GiveAwardByList({{szName = "Ng� hoa ng�c l� ho�n", tbProp ={ 1,2,0,5,0,0,0,0}, nRate = 100, nCount= totalcount }}, format("Get %s", "Than pham 1"))
		Pay(totalcount * pri)
	else
	tbAwardTemplet:GiveAwardByList({{szName = "Ng� hoa ng�c l� ho�n", tbProp ={ 1,2,0,5,0,0,0,0}, nRate = 100, nCount= moneymin }}, format("Get %s", "Than pham 1"))
		Pay(moneymin * pri)
end
end