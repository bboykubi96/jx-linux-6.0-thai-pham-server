Include("\\script\\battles\\battleinfo.lua")
--�����
function main(sel)
--Say("H�u doanh do ta ph� tr�ch! Ng��i c� c�n gi�p �� g� kh�ng?",3,"Mua d��c ph�m/salemedicine","T�m hi�u quy t�c T�ng Kim ��i chi�n/help_sjbattle","Kh�ng c�n ��u! C�m �n!/cancel")
Say("H�u doanh do ta ph� tr�ch! Ng��i c� c�n gi�p �� g� kh�ng?",3,"Mua d��c ph�m/salemedicine","Mua m�u nhanh (1 l��ng - 1 b�nh)/buymaunhanh","Kh�ng c�n ��u! C�m �n!/cancel")
end;

function salemedicine(sel)
Sale(99, 1)
end
function muachienco()
	if CalcFreeItemCellCount()>3 and CalcEquiproomItemCount(4,417,1,1)>=5 then
	ConsumeEquiproomItem(5,4,417,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Chi�n C�",tbProp={6,1,156,1,1},nCount=100},}, "test", 1);
		Msg2SubWorld("<color=green> ��i Gia <color=yellow>"..GetName().." <color>�� mua <color=cyan>100 Chi�n C�<color> � Qu�n Nhu Quan.")
	else
	Say("H�nh trang kh�ng �� 3 � tr�ng ho�c kh�ng �� 5 xu.")
end
end
function muamautongkim()
	if CalcFreeItemCellCount()>3 and CalcEquiproomItemCount(4,417,1,1)>=2 then
	ConsumeEquiproomItem(2,4,417,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "M�u t�ng kim ��i",tbProp={6,1,215,1,1},nCount=500},}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{szName = "M�u t�ng kim ��i",tbProp={6,1,215,1,1},nCount=500},}, "test", 1);
		--Msg2SubWorld("<color=green> ��i Gia <color=yellow>"..GetName().." <color>�� mua <color=cyan>100 Chi�n C�<color> � Qu�n Nhu Quan.")
	else
	Say("H�nh trang kh�ng �� 3 � tr�ng ho�c kh�ng �� 2 xu.")
end
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
	if money>=totalcount then
	tbAwardTemplet:GiveAwardByList({{szName = "Ng� hoa ng�c l� ho�n", tbProp ={ 1,2,0,5,0,0,0,0}, nRate = 100, nCount= totalcount,nBindState=-2 }}, format("Get %s", "Than pham 1"))
	Pay(totalcount)
	end
end